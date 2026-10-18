import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A018300: Divisors of 138.

The programs for A018300, there is no canonical definition to state claims against.
-/

/-! ## A018300.P10939755833175230106

`record[∏{p}[A018369(n+1), #]]`
-/

namespace A018300.P10939755833175230106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018369 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018300.P10939755833175230106

/-! ## A018300.P16538683543190412271

`A007733(A050614(n))`
-/

namespace A018300.P16538683543190412271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A050614 n).toNat

end

end A018300.P16538683543190412271

/-! ## A018300.P2805834093544202484

`A064989(A018454(n+1))`
-/

namespace A018300.P2805834093544202484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A018454 (n + 1)).toNat

end

end A018300.P2805834093544202484

/-! ## A018300.P438632159537283721

`A245453(A018390(n+1))`
-/

namespace A018300.P438632159537283721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245453 (A018390 (n + 1)).toNat

end

end A018300.P438632159537283721

/-!
# A018301: Divisors of 140.

The programs for A018301, there is no canonical definition to state claims against.
-/

/-! ## A018301.P6274748442185705516

`eq[10, lcm(10, lcm(14, n)/14)]`
-/

namespace A018301.P6274748442185705516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 10 (SequenceMachineLib.roundAway ((Nat.lcm 14 n : ℚ) / 14))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018301.P6274748442185705516

/-! ## A018301.P17284340804030113175

`record[gcd(81*n+22, floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A018301.P17284340804030113175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (81 * n + 22 : ℤ) (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018301.P17284340804030113175

/-! ## A018301.P14750132030221822730

`eq[7, A106621(lcm(7, n))]`
-/

namespace A018301.P14750132030221822730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (Nat.lcm 7 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018301.P14750132030221822730

/-! ## A018301.P17944300499224148073

`eq[10, lcm(10, A106615(n))]`
-/

namespace A018301.P17944300499224148073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 10 (A106615 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018301.P17944300499224148073

/-! ## A018301.P3622844657959864453

`eq[14, lcm(14, A106611(n))]`
-/

namespace A018301.P3622844657959864453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 14 (A106611 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018301.P3622844657959864453

/-!
# A018302: Divisors of 144.

The programs for A018302, there is no canonical definition to state claims against.
-/

/-! ## A018302.P3429606964299708802

`eq[12, lcm(12, lcm(12, n)/12)]`
-/

namespace A018302.P3429606964299708802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 12 (SequenceMachineLib.roundAway ((Nat.lcm 12 n : ℚ) / 12))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018302.P3429606964299708802

/-! ## A018302.P18196856314463363953

`record[gcd((11*n+10)², ceil(lcm(2, n+1)/4))]`
-/

namespace A018302.P18196856314463363953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((11 * n + 10) ^ 2 : ℤ) ⌈(Nat.lcm 2 (n + 1) : ℚ) / 4⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018302.P18196856314463363953

/-! ## A018302.P18161486285136606359

`record[gcd(floor(n/(xor(n, n+1)+1))+1, (6*n)²)]`
-/

namespace A018302.P18161486285136606359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) ((6 * n) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018302.P18161486285136606359

/-! ## A018302.P1645347158583682578

`∪[2*(lt[(72*n)%(n+1), 1]+1), lt[(72*n)%(n+1), 1]+1]`
-/

namespace A018302.P1645347158583682578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n % (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n % (n + 1)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f5 j < f6 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = x) n

end

end A018302.P1645347158583682578

/-! ## A018302.P13783165208396966186

`A133021(n+29)`
-/

namespace A018302.P13783165208396966186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133021 (n + 29)

end

end A018302.P13783165208396966186

/-!
# A018303: Divisors of 147.

The programs for A018303, there is no canonical definition to state claims against.
-/

/-! ## A018303.P10822048975256381829

`ogf((1+3x)/(1-7x^2))`
-/

namespace A018303.P10822048975256381829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 0, -7] n

end

end A018303.P10822048975256381829

/-!
# A018304: Divisors of 148.

The programs for A018304, there is no canonical definition to state claims against.
-/

/-! ## A018304.P4412710402417212594

`37*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018304.P4412710402417212594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  37 * a (n - 3)

end

end A018304.P4412710402417212594

/-!
# A018305: Divisors of 150.

The programs for A018305, there is no canonical definition to state claims against.
-/

/-! ## A018305.P2510481774360438772

`eq[15, lcm(15, lcm(10, n)/10)]`
-/

namespace A018305.P2510481774360438772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 15 (SequenceMachineLib.roundAway ((Nat.lcm 10 n : ℚ) / 10))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018305.P2510481774360438772

/-! ## A018305.P4640902239892304637

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 6*(24*n+23))]`
-/

namespace A018305.P4640902239892304637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (6 * (24 * n + 23) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018305.P4640902239892304637

/-! ## A018305.P830618127527936235

`record[gcd(3*(9*n-1)*(3*n-2), (n+1)/4^val(n+1, 4))]`
-/

namespace A018305.P830618127527936235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * (((9 * n : ℤ) - 1) * ((3 * n : ℤ) - 2))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018305.P830618127527936235

/-! ## A018305.P17873229594365386753

`eq[10, lcm(10, A106616(n))]`
-/

namespace A018305.P17873229594365386753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 10 (A106616 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018305.P17873229594365386753

/-! ## A018305.P6394344305408272167

`A018626(comp[12*n²])`
-/

namespace A018305.P6394344305408272167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018626 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018305.P6394344305408272167

/-!
# A018306: Divisors of 152.

The programs for A018306, there is no canonical definition to state claims against.
-/

/-! ## A018306.P633676546640521315

`ogf(1/(1-2x-3x^4+6x^5))`
-/

namespace A018306.P633676546640521315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 0, 0, -3, 6] n

end

end A018306.P633676546640521315

/-! ## A018306.P2375683522672861492

`19*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A018306.P2375683522672861492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  19 * a (n - 4)

end

end A018306.P2375683522672861492

/-! ## A018306.P18084577825809414771

`∑[round(3*2^n/5)]-char[or(3, n)]`
-/

namespace A018306.P18084577825809414771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((2 ^ n : ℚ) / 5))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A018306.P18084577825809414771

/-! ## A018306.P4458132932570058504

`record[gcd(2^floor(log2(n+1))+n, 19*n)]`
-/

namespace A018306.P4458132932570058504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 ^ Nat.log 2 (n + 1) + n) (19 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018306.P4458132932570058504

/-!
# A018307: Divisors of 153.

The programs for A018307, there is no canonical definition to state claims against.
-/

/-! ## A018307.P12162767115116775003

`ogf((-1+10x^3)/(-1+3x))`
-/

namespace A018307.P12162767115116775003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -10] [1, -3] n

end

end A018307.P12162767115116775003

/-!
# A018308: Divisors of 154.

The programs for A018308, there is no canonical definition to state claims against.
-/

/-! ## A018308.P6689860425123957783

`eq[22, lcm(22, lcm(7, n)/7)]`
-/

namespace A018308.P6689860425123957783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 22 (SequenceMachineLib.roundAway ((Nat.lcm 7 n : ℚ) / 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018308.P6689860425123957783

/-! ## A018308.P6373639920363066443

`eq[11, A106615(lcm(11, n))]`
-/

namespace A018308.P6373639920363066443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (Nat.lcm 11 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018308.P6373639920363066443

/-! ## A018308.P4687076741197791737

`eq[gcd(11, n), A106615(n)]`
-/

namespace A018308.P4687076741197791737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 11 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018308.P4687076741197791737

/-! ## A018308.P7962704933516920628

`record[∏{p}[A018552(n+1), #]]`
-/

namespace A018308.P7962704933516920628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018552 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018308.P7962704933516920628

/-!
# A018309: Divisors of 156.

The programs for A018309, there is no canonical definition to state claims against.
-/

/-! ## A018309.P12437960999519119718

`lt[((67*n-89)%(n+1))², 2]+1`
-/

namespace A018309.P12437960999519119718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((67 * n : ℤ) - 89) (n + 1 : ℤ) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A018309.P12437960999519119718

/-! ## A018309.P13422537568773332125

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 4*(25*n+11))]`
-/

namespace A018309.P13422537568773332125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (4 * (25 * n + 11) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018309.P13422537568773332125

/-! ## A018309.P7477239077626782398

`A245481(n+1)+char[12]`
-/

namespace A018309.P7477239077626782398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245481 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A018309.P7477239077626782398

/-! ## A018309.P6598956245334723441

`A245481(lcm(13, n)/13+1)`
-/

namespace A018309.P6598956245334723441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245481 (SequenceMachineLib.roundAway ((Nat.lcm 13 n : ℚ) / 13 + 1)).toNat

end

end A018309.P6598956245334723441

/-! ## A018309.P11280375250299522593

`A245481(∑[ceil((n+1)/17)])`
-/

namespace A018309.P11280375250299522593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 17⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245481 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018309.P11280375250299522593

/-!
# A018310: Divisors of 160.

The programs for A018310, there is no canonical definition to state claims against.
-/

/-! ## A018310.P11901874547961007540

`eq[10, lcm(10, lcm(16, n)/16)]`
-/

namespace A018310.P11901874547961007540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 10 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018310.P11901874547961007540

/-! ## A018310.P4598977683028007442

`A018391(comp[11*n])`
-/

namespace A018310.P4598977683028007442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018391 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018310.P4598977683028007442

/-! ## A018310.P17087477232573971910

`eq[5, A227140(lcm(5, n))]`
-/

namespace A018310.P17087477232573971910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (Nat.lcm 5 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018310.P17087477232573971910

/-! ## A018310.P16121193180991419143

`eq[5, or(4, A227140(n))]`
-/

namespace A018310.P16121193180991419143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A227140 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018310.P16121193180991419143

/-! ## A018310.P6914852788674548084

`eq[8, lcm(8, A106621(n))]`
-/

namespace A018310.P6914852788674548084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A106621 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018310.P6914852788674548084

/-!
# A018311: Divisors of 162.

The programs for A018311, there is no canonical definition to state claims against.
-/

/-! ## A018311.P8493867001389956131

`3*a(and(7, n-2))` with `a(0)=1, a(1)=2`
-/

namespace A018311.P8493867001389956131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (Int.land 7 ((n : ℤ) - 2)).toNat

end

end A018311.P8493867001389956131

/-! ## A018311.P16899824946444134181

`∑[3^floor(n*(2/3)²)]`
-/

namespace A018311.P16899824946444134181
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℚ) * ((2 : ℚ) / 3) ^ 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018311.P16899824946444134181

/-! ## A018311.P1860497919271779313

`3*a(n-2)%n²` with `a(0)=1, a(1)=2`
-/

namespace A018311.P1860497919271779313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (a (n - 2) % n ^ 2)

end

end A018311.P1860497919271779313

/-! ## A018311.P960804096619277823

`(3-floor(n/11))*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A018311.P960804096619277823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 - ⌊(n : ℚ) / 11⌋) * a (n - 2)

end

end A018311.P960804096619277823

/-! ## A018311.P6405684561110143943

`(3*a(n-2))%(4*n*n)` with `a(0)=1, a(1)=2`
-/

namespace A018311.P6405684561110143943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 2) % (4 * (n * n))

end

end A018311.P6405684561110143943

/-!
# A018312: Divisors of 164.

The programs for A018312, there is no canonical definition to state claims against.
-/

/-! ## A018312.P760675042586094380

`41*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018312.P760675042586094380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  41 * a (n - 3)

end

end A018312.P760675042586094380

/-!
# A018313: Divisors of 165.

The programs for A018313, there is no canonical definition to state claims against.
-/

/-! ## A018313.P6042256491165411958

`eq[11, lcm(11, lcm(15, n)/15)]`
-/

namespace A018313.P6042256491165411958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 11 (SequenceMachineLib.roundAway ((Nat.lcm 15 n : ℚ) / 15))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018313.P6042256491165411958

/-! ## A018313.P6153223803772035655

`record[∏{p}[n, A039714(#)]]`
-/

namespace A018313.P6153223803772035655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A039714 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018313.P6153223803772035655

/-! ## A018313.P10183410196930197367

`record[A319986(∏{p}[n, #])]`
-/

namespace A018313.P10183410196930197367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319986 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018313.P10183410196930197367

/-! ## A018313.P16437903404629522970

`record[∏{p}[A018486(n+1), #]]`
-/

namespace A018313.P16437903404629522970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018486 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018313.P16437903404629522970

/-!
# A018314: Divisors of 168.

The programs for A018314, there is no canonical definition to state claims against.
-/

/-! ## A018314.P405458777416536484

`eq[lcm(n, 168), 168]`
-/

namespace A018314.P405458777416536484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n 168

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  168

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018314.P405458777416536484

/-! ## A018314.P175959005123984751

`record[gcd(floor(n/(xor(n, n+1)+1))+1, (12*n+11)²-1)]`
-/

namespace A018314.P175959005123984751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (((12 * n + 11) ^ 2 : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018314.P175959005123984751

/-! ## A018314.P14945219661905891126

`A135938(n+8)`
-/

namespace A018314.P14945219661905891126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135938 (n + 8)

end

end A018314.P14945219661905891126

/-! ## A018314.P13310586579093713871

`A222266(762+n)`
-/

namespace A018314.P13310586579093713871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (762 + n)

end

end A018314.P13310586579093713871

/-! ## A018314.P11537938277910112180

`A027750(879+n)`
-/

namespace A018314.P11537938277910112180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (879 + n)

end

end A018314.P11537938277910112180

/-!
# A018315: Divisors of 170.

The programs for A018315, there is no canonical definition to state claims against.
-/

/-! ## A018315.P3321322492455612067

`eq[lcm(n, 170), 170]`
-/

namespace A018315.P3321322492455612067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n 170

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  170

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018315.P3321322492455612067

/-! ## A018315.P11776871700582837997

`17*a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`
-/

namespace A018315.P11776871700582837997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 10] fun n a =>
  17 * a (n - 4)

end

end A018315.P11776871700582837997

/-! ## A018315.P7059384488279566553

`record[∏{p}[n, A266415(#)]]`
-/

namespace A018315.P7059384488279566553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A266415 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018315.P7059384488279566553

/-! ## A018315.P11416914173690484050

`eq[gcd(10, n), A106618(n)]`
-/

namespace A018315.P11416914173690484050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018315.P11416914173690484050

/-!
# A018316: Divisors of 171.

The programs for A018316, there is no canonical definition to state claims against.
-/

/-! ## A018316.P14406316844557885165

`ogf((-1+8x^3)/(-1+3x))`
-/

namespace A018316.P14406316844557885165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -8] [1, -3] n

end

end A018316.P14406316844557885165

/-!
# A018317: Divisors of 172.

The programs for A018317, there is no canonical definition to state claims against.
-/

/-! ## A018317.P5156087216322747054

`43*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018317.P5156087216322747054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  43 * a (n - 3)

end

end A018317.P5156087216322747054

/-!
# A018318: Divisors of 174.

The programs for A018318, there is no canonical definition to state claims against.
-/

/-! ## A018318.P2242417795164031783

`eq[gcd(58, n), A051176(n)]`
-/

namespace A018318.P2242417795164031783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 58 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018318.P2242417795164031783

/-! ## A018318.P14498055701200171591

`record[∏{p}[A018405(n+1), #]]`
-/

namespace A018318.P14498055701200171591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018405 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018318.P14498055701200171591

/-! ## A018318.P5909349378398264879

`record[∏{p}[A018597(n+1), #]]`
-/

namespace A018318.P5909349378398264879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018597 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018318.P5909349378398264879

/-! ## A018318.P3145164837884294580

`record[gcd(A001015(n)+1, n+7)]`
-/

namespace A018318.P3145164837884294580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001015 n + 1) (n + 7 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018318.P3145164837884294580

/-!
# A018319: Divisors of 175.

The programs for A018319, there is no canonical definition to state claims against.
-/

/-! ## A018319.P6427220049161730262

`eq[25, lcm(25, lcm(7, n)/7)]`
-/

namespace A018319.P6427220049161730262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 25 (SequenceMachineLib.roundAway ((Nat.lcm 7 n : ℚ) / 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018319.P6427220049161730262

/-!
# A018320: Divisors of 176.

The programs for A018320, there is no canonical definition to state claims against.
-/

/-! ## A018320.P5511114663293054705

`eq[11, lcm(11, lcm(16, n)/16)]`
-/

namespace A018320.P5511114663293054705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 11 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018320.P5511114663293054705

/-! ## A018320.P5864763394943284749

`ogf((-1+5x^4+6x^5+10x^6)/(-1+2x))`
-/

namespace A018320.P5864763394943284749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, -5, -6, -10] [1, -2] n

end

end A018320.P5864763394943284749

/-! ## A018320.P1311830215481513465

`A018408(comp[8*n])`
-/

namespace A018320.P1311830215481513465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018408 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018320.P1311830215481513465

/-! ## A018320.P3093207174860732012

`eq[11, A106617(lcm(11, n))]`
-/

namespace A018320.P3093207174860732012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (Nat.lcm 11 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018320.P3093207174860732012

/-! ## A018320.P12672847970937504244

`eq[16, lcm(16, A106612(n))]`
-/

namespace A018320.P12672847970937504244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 16 (A106612 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018320.P12672847970937504244

/-!
# A018321: Divisors of 180.

The programs for A018321, there is no canonical definition to state claims against.
-/

/-! ## A018321.P7598520646587121335

`eq[12, lcm(12, lcm(15, n)/15)]`
-/

namespace A018321.P7598520646587121335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 12 (SequenceMachineLib.roundAway ((Nat.lcm 15 n : ℚ) / 15))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018321.P7598520646587121335

/-! ## A018321.P16976015084713342269

`record[gcd(floor(n/(xor(n, n+1)+1))+1, (n+1)*180)]`
-/

namespace A018321.P16976015084713342269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) ((n + 1) * 180 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018321.P16976015084713342269

/-! ## A018321.P1217179541155049085

`A081532(154+n)`
-/

namespace A018321.P1217179541155049085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (154 + n)

end

end A018321.P1217179541155049085

/-! ## A018321.P16808658289152986709

`A027750(954+n)`
-/

namespace A018321.P16808658289152986709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (954 + n)

end

end A018321.P16808658289152986709

/-! ## A018321.P13125817758581327413

`eq[9, A106621(lcm(9, n))]`
-/

namespace A018321.P13125817758581327413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (Nat.lcm 9 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018321.P13125817758581327413

/-!
# A018322: Divisors of 182.

The programs for A018322, there is no canonical definition to state claims against.
-/

/-! ## A018322.P2302931974397107728

`eq[13, A106615(lcm(13, n))]`
-/

namespace A018322.P2302931974397107728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (Nat.lcm 13 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018322.P2302931974397107728

/-! ## A018322.P11039244497105682811

`eq[14, lcm(14, A106614(n))]`
-/

namespace A018322.P11039244497105682811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 14 (A106614 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018322.P11039244497105682811

/-! ## A018322.P61224201802568427

`eq[gcd(13, n), A106615(n)]`
-/

namespace A018322.P61224201802568427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 13 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018322.P61224201802568427

/-! ## A018322.P9699854262845310383

`record[∏{p}[A018414(n+1), #]]`
-/

namespace A018322.P9699854262845310383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018414 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018322.P9699854262845310383

/-!
# A018323: Divisors of 184.

The programs for A018323, there is no canonical definition to state claims against.
-/

/-! ## A018323.P6440412380592135922

`eq[23, lcm(23, lcm(8, n)/8)]`
-/

namespace A018323.P6440412380592135922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 23 (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018323.P6440412380592135922

/-! ## A018323.P15205255402545373986

`ogf((1+7x^4)/(1-2x))`
-/

namespace A018323.P15205255402545373986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 7] [1, -2] n

end

end A018323.P15205255402545373986

/-! ## A018323.P2396574039464267431

`floor(A298590(n)/2)`
-/

namespace A018323.P2396574039464267431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A298590 n : ℚ) / 2⌋

end

end A018323.P2396574039464267431

/-! ## A018323.P14074837896534129425

`eq[2, A033758(2*n)]`
-/

namespace A018323.P14074837896534129425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033758 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018323.P14074837896534129425

/-!
# A018324: Divisors of 186.

The programs for A018324, there is no canonical definition to state claims against.
-/

/-! ## A018324.P4166878349070794711

`record[∏{p}[A018623(n+1), #]]`
-/

namespace A018324.P4166878349070794711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018623 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018324.P4166878349070794711

/-! ## A018324.P16358460246000622474

`∏{p}[eq[3, lcm(n, (20/2)²+2)/34], A328320(#)]`
-/

namespace A018324.P16358460246000622474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (((20 : ℚ) / 2) ^ 2 + 2)) : ℚ) / 34

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A328320 p

end

end A018324.P16358460246000622474

/-! ## A018324.P7895815305513185033

`A271246(n+5)+(val(n, 2)+2)*a(and(n, n-1))` with `a(0)=1`
-/

namespace A018324.P7895815305513185033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271246 (n + 5) + (SequenceMachineLib.valuation n 2 + 2 : ℤ) * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A018324.P7895815305513185033

/-! ## A018324.P13743853901558368719

`A057020(A018719(n+1))`
-/

namespace A018324.P13743853901558368719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (A018719 (n + 1)).toNat

end

end A018324.P13743853901558368719

/-!
# A018325: Divisors of 188.

The programs for A018325, there is no canonical definition to state claims against.
-/

/-! ## A018325.P11968692066153108138

`47*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018325.P11968692066153108138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  47 * a (n - 3)

end

end A018325.P11968692066153108138

/-!
# A018326: Divisors of 189.

The programs for A018326, there is no canonical definition to state claims against.
-/

/-! ## A018326.P8937997897583666253

`eq[21, lcm(21, lcm(9, n)/9)]`
-/

namespace A018326.P8937997897583666253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 21 (SequenceMachineLib.roundAway ((Nat.lcm 9 n : ℚ) / 9))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018326.P8937997897583666253

/-! ## A018326.P7031857244290250404

`a(ceil(n/6))*a(n-2)` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A018326.P7031857244290250404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  a ⌈(n : ℚ) / 6⌉.toNat * a (n - 2)

end

end A018326.P7031857244290250404

/-! ## A018326.P17198074270298001171

`∪[ceil(7*3^(n-2)), 3^(2^n+1)]`
-/

namespace A018326.P17198074270298001171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (2 ^ n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A018326.P17198074270298001171

/-! ## A018326.P5288830285463696276

`record[a(floor((n+1)/4))*a(n-2)]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=3, a(4)=7, a(5)=3, a(6)=7`
-/

namespace A018326.P5288830285463696276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 3, 7, 3, 7] fun n f1 =>
  f1 ⌊(n + 1 : ℚ) / 4⌋.toNat * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018326.P5288830285463696276

/-!
# A018327: Divisors of 190.

The programs for A018327, there is no canonical definition to state claims against.
-/

/-! ## A018327.P10858826408988522474

`19*a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`
-/

namespace A018327.P10858826408988522474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 10] fun n a =>
  19 * a (n - 4)

end

end A018327.P10858826408988522474

/-! ## A018327.P9470020598372399793

`record[gcd((19*n)²+19, (n+1)/4^val(n+1, 4))]`
-/

namespace A018327.P9470020598372399793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((19 * n) ^ 2 + 19 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018327.P9470020598372399793

/-! ## A018327.P9378608722968638995

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 5*n*(3*n²-3*n+1))]`
-/

namespace A018327.P9378608722968638995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (5 * ((n : ℤ) * ((3 * n ^ 2 : ℤ) - (3 * n : ℤ) + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018327.P9378608722968638995

/-! ## A018327.P11664229539564602359

`eq[10, A106620(lcm(10, n))]`
-/

namespace A018327.P11664229539564602359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 (Nat.lcm 10 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018327.P11664229539564602359

/-!
# A018328: Divisors of 192.

The programs for A018328, there is no canonical definition to state claims against.
-/

/-! ## A018328.P4675304487961258226

`eq[12, lcm(12, lcm(16, n)/16)]`
-/

namespace A018328.P4675304487961258226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 12 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018328.P4675304487961258226

/-! ## A018328.P8181437858859649037

`round(log(n))*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6`
-/

namespace A018328.P8181437858859649037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 6] fun n a =>
  SequenceMachineLib.roundAway (Real.log (n : ℝ)) * a (n - 2)

end

end A018328.P8181437858859649037

/-! ## A018328.P12968944709796137721

`a(n-2)*p?[floor(log(n+1))]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A018328.P12968944709796137721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A018328.P12968944709796137721

/-! ## A018328.P2218138003967122045

`record[ceil(root(n, 4))*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=2, a(6)=3`
-/

namespace A018328.P2218138003967122045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 1, 2, 3] fun n f1 =>
  ⌈(n : ℝ) ^ (1 / (4 : ℝ))⌉ * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018328.P2218138003967122045

/-! ## A018328.P6515495976454287306

`A081532(n+92)`
-/

namespace A018328.P6515495976454287306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (n + 92)

end

end A018328.P6515495976454287306

/-!
# A018329: Divisors of 195.

The programs for A018329, there is no canonical definition to state claims against.
-/

/-! ## A018329.P8686002671131892564

`record[∏{p}[n, A126059(#)]]`
-/

namespace A018329.P8686002671131892564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A126059 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018329.P8686002671131892564

/-! ## A018329.P2537488142120932666

`record[∏{p}[n, A171710(#)]]`
-/

namespace A018329.P2537488142120932666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A171710 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018329.P2537488142120932666

/-! ## A018329.P4866529167513835148

`eq[13, A106616(lcm(13, n))]`
-/

namespace A018329.P4866529167513835148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (Nat.lcm 13 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018329.P4866529167513835148

/-! ## A018329.P11686650942261300195

`record[∏{p}[A018533(n+1), #]]`
-/

namespace A018329.P11686650942261300195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018533 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018329.P11686650942261300195

/-!
# A018330: Divisors of 196.

The programs for A018330, there is no canonical definition to state claims against.
-/

/-! ## A018330.P658358285757201026

`7*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018330.P658358285757201026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  7 * a (n - 3)

end

end A018330.P658358285757201026

/-! ## A018330.P16291295283888721393

`ogf((1+2x+4x^2)/(1-7x^3))`
-/

namespace A018330.P16291295283888721393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4] [1, 0, 0, -7] n

end

end A018330.P16291295283888721393

/-! ## A018330.P7174547774225981694

`record[gcd(10*10*n+4, floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A018330.P7174547774225981694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (10 * (10 * n) + 4 : ℤ) (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018330.P7174547774225981694

/-! ## A018330.P14150611410432862219

`A235487(2^n)`
-/

namespace A018330.P14150611410432862219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (2 ^ n)

end

end A018330.P14150611410432862219

/-! ## A018330.P11482825639681324403

`eq[2, A033726(n)]`
-/

namespace A018330.P11482825639681324403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033726 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018330.P11482825639681324403

/-!
# A018331: Divisors of 198.

The programs for A018331, there is no canonical definition to state claims against.
-/

/-! ## A018331.P163367363126794572

`eq[11, lcm(11, lcm(18, n)/18)]`
-/

namespace A018331.P163367363126794572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 11 (SequenceMachineLib.roundAway ((Nat.lcm 18 n : ℚ) / 18))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018331.P163367363126794572

/-! ## A018331.P134028150500940311

`eq[gcd(11, n), A106619(n)]`
-/

namespace A018331.P134028150500940311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 11 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018331.P134028150500940311

/-! ## A018331.P6463064849133395251

`eq[99, lcm(99, A026741(n))]`
-/

namespace A018331.P6463064849133395251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  99

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 99 (A026741 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018331.P6463064849133395251

/-! ## A018331.P18365594172972760564

`record[gcd(n+1, A004966(n))]`
-/

namespace A018331.P18365594172972760564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A004966 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018331.P18365594172972760564

/-! ## A018331.P9155504042661453278

`eq[1, A007954(lcm(18, n)/18)]`
-/

namespace A018331.P9155504042661453278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.roundAway ((Nat.lcm 18 n : ℚ) / 18)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018331.P9155504042661453278

/-!
# A018332: Divisors of 200.

The programs for A018332, there is no canonical definition to state claims against.
-/

/-! ## A018332.P16239623177305928265

`eq[lcm(n, 200), 200]`
-/

namespace A018332.P16239623177305928265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n 200

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  200

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018332.P16239623177305928265

/-! ## A018332.P6091110003394559821

`eq[gcd((10*(n+1)²)², ∑[n]), ∑[n]]`
-/

namespace A018332.P6091110003394559821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((10 * (n + 1) ^ 2) ^ 2) (∑ j ∈ Finset.range (n + 1), f2 j)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A018332.P6091110003394559821

/-! ## A018332.P8887930466087322870

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 10*20*(n+1))]`
-/

namespace A018332.P8887930466087322870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (10 * (20 * (n + 1)) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018332.P8887930466087322870

/-! ## A018332.P14341778275006723621

`A018767(∑[A210964(n)])`
-/

namespace A018332.P14341778275006723621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018767 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018332.P14341778275006723621

/-! ## A018332.P18434096886801934633

`A018433(∑[A382857(n)])`
-/

namespace A018332.P18434096886801934633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018433 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018332.P18434096886801934633

/-!
# A018333: Divisors of 204.

The programs for A018333, there is no canonical definition to state claims against.
-/

/-! ## A018333.P8764028365148378533

`eq[17, lcm(17, lcm(12, n)/12)]`
-/

namespace A018333.P8764028365148378533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 17 (SequenceMachineLib.roundAway ((Nat.lcm 12 n : ℚ) / 12))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018333.P8764028365148378533

/-! ## A018333.P3248937896434618132

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 12*(18*n+19))]`
-/

namespace A018333.P3248937896434618132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (12 * (18 * n + 19) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018333.P3248937896434618132

/-! ## A018333.P14769186700211349429

`eq[12, A106618(lcm(12, n))]`
-/

namespace A018333.P14769186700211349429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (Nat.lcm 12 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018333.P14769186700211349429

/-! ## A018333.P5392905082687080722

`eq[gcd(12, n), A106618(n)]`
-/

namespace A018333.P5392905082687080722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 12 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018333.P5392905082687080722

/-! ## A018333.P10551826441044399951

`A071786(A018683(n+1))`
-/

namespace A018333.P10551826441044399951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A018683 (n + 1)).toNat

end

end A018333.P10551826441044399951

/-!
# A018334: Divisors of 207.

The programs for A018334, there is no canonical definition to state claims against.
-/

/-! ## A018334.P9230390182080235738

`ogf(1/(1-3x+4x^3-12x^4))`
-/

namespace A018334.P9230390182080235738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 0, 4, -12] n

end

end A018334.P9230390182080235738

/-!
# A018335: Divisors of 208.

The programs for A018335, there is no canonical definition to state claims against.
-/

/-! ## A018335.P13376586243648640463

`eq[13, lcm(13, lcm(16, n)/16)]`
-/

namespace A018335.P13376586243648640463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 13 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018335.P13376586243648640463

/-! ## A018335.P5666554259387188306

`A018442(comp[8*n])`
-/

namespace A018335.P5666554259387188306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018442 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018335.P5666554259387188306

/-! ## A018335.P16403370582126681870

`eq[13, A106617(lcm(13, n))]`
-/

namespace A018335.P16403370582126681870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (Nat.lcm 13 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018335.P16403370582126681870

/-! ## A018335.P5027780854723893145

`eq[16, lcm(16, A106614(n))]`
-/

namespace A018335.P5027780854723893145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 16 (A106614 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018335.P5027780854723893145

/-! ## A018335.P5081472383139399623

`eq[gcd(13, n), A106617(n)]`
-/

namespace A018335.P5081472383139399623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 13 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018335.P5081472383139399623

/-!
# A018336: Divisors of 210.

The programs for A018336, there is no canonical definition to state claims against.
-/

/-! ## A018336.P3381040415051474179

`record[∏{p}[n, dr(#)]]`
-/

namespace A018336.P3381040415051474179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.digitalRoot (p : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018336.P3381040415051474179

/-! ## A018336.P4299358881580880099

`record[∏{p}[n, #%8]]`
-/

namespace A018336.P4299358881580880099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p % 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018336.P4299358881580880099

/-! ## A018336.P11952573214595824430

`record[∏{p}[n, and(7, #)]]`
-/

namespace A018336.P11952573214595824430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.land 7 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018336.P11952573214595824430

/-! ## A018336.P6705740641561537247

`eq[n, ∏{p}[n, dr(#)]]`
-/

namespace A018336.P6705740641561537247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), SequenceMachineLib.digitalRoot (p : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018336.P6705740641561537247

/-! ## A018336.P17830160427649937943

`eq[lcm(15, n)/15, gcd(14, n)]`
-/

namespace A018336.P17830160427649937943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 15 n : ℚ) / 15

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 14 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A018336.P17830160427649937943

/-!
# A018337: Divisors of 212.

The programs for A018337, there is no canonical definition to state claims against.
-/

/-! ## A018337.P3750208845306813332

`53*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018337.P3750208845306813332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  53 * a (n - 3)

end

end A018337.P3750208845306813332

/-!
# A018338: Divisors of 216.

The programs for A018338, there is no canonical definition to state claims against.
-/

/-! ## A018338.P15767764186373283197

`eq[12, lcm(12, lcm(18, n)/18)]`
-/

namespace A018338.P15767764186373283197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 12 (SequenceMachineLib.roundAway ((Nat.lcm 18 n : ℚ) / 18))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018338.P15767764186373283197

/-! ## A018338.P11515913797996065046

`record[gcd((n+1)/10^val(n+1, 10), (12*n+6)^3)]`
-/

namespace A018338.P11515913797996065046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))) ((12 * n + 6) ^ 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018338.P11515913797996065046

/-! ## A018338.P8452301523259497136

`record[gcd(floor(n/(xor(n, n+1)+1))+1, (4*n+2)^3)]`
-/

namespace A018338.P8452301523259497136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) ((4 * n + 2) ^ 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018338.P8452301523259497136

/-! ## A018338.P14032518009200065265

`eq[12, lcm(12, A106619(n))]`
-/

namespace A018338.P14032518009200065265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 12 (A106619 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018338.P14032518009200065265

/-! ## A018338.P18003671302331778761

`eq[18, lcm(18, A051724(n))]`
-/

namespace A018338.P18003671302331778761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 18 (A051724 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018338.P18003671302331778761

/-!
# A018339: Divisors of 220.

The programs for A018339, there is no canonical definition to state claims against.
-/

/-! ## A018339.P15844007044394886822

`record[A328009(n+1)]`
-/

namespace A018339.P15844007044394886822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018339.P15844007044394886822

/-! ## A018339.P1053016070995609529

`A328009(comp[∑[4*n]²])`
-/

namespace A018339.P1053016070995609529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328009 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018339.P1053016070995609529

/-! ## A018339.P6742283253849213792

`A328009(n+1)+A011726(n)`
-/

namespace A018339.P6742283253849213792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328009 (n + 1) + A011726 n

end

end A018339.P6742283253849213792

/-! ## A018339.P3620451089305380131

`A328009(n+1)+A011727(n)`
-/

namespace A018339.P3620451089305380131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328009 (n + 1) + A011727 n

end

end A018339.P3620451089305380131

/-! ## A018339.P4649942314684139120

`A328009(n+1)+A011728(n)`
-/

namespace A018339.P4649942314684139120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328009 (n + 1) + A011728 n

end

end A018339.P4649942314684139120

/-!
# A018340: Divisors of 222.

The programs for A018340, there is no canonical definition to state claims against.
-/

/-! ## A018340.P6621058577810898263

`record[∏{p}[A018460(n+1), #]]`
-/

namespace A018340.P6621058577810898263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018460 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018340.P6621058577810898263

/-! ## A018340.P14763829944950510953

`record[∏{p}[A018703(n+1), #]]`
-/

namespace A018340.P14763829944950510953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018703 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018340.P14763829944950510953

/-! ## A018340.P2019303775686561773

`record[gcd(37*n, A327640(n))]`
-/

namespace A018340.P2019303775686561773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (37 * n : ℤ) (A327640 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018340.P2019303775686561773

/-! ## A018340.P2374856167191523059

`record[gcd(n+1, A006468(2*(n+2)))]`
-/

namespace A018340.P2374856167191523059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A006468 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018340.P2374856167191523059

/-!
# A018341: Divisors of 224.

The programs for A018341, there is no canonical definition to state claims against.
-/

/-! ## A018341.P4767978451482732865

`eq[14, lcm(14, lcm(16, n)/16)]`
-/

namespace A018341.P4767978451482732865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 14 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018341.P4767978451482732865

/-! ## A018341.P17551854055425761673

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 8*(15*n+2))]`
-/

namespace A018341.P17551854055425761673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (8 * (15 * n + 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018341.P17551854055425761673

/-! ## A018341.P6869120658133324742

`eq[7, A227140(lcm(7, n))]`
-/

namespace A018341.P6869120658133324742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (Nat.lcm 7 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018341.P6869120658133324742

/-! ## A018341.P10406407480282763354

`eq[14, lcm(14, A106617(n))]`
-/

namespace A018341.P10406407480282763354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 14 (A106617 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018341.P10406407480282763354

/-! ## A018341.P11286450621627728973

`lt[A006577(3*(n+1)), 13]+1`
-/

namespace A018341.P11286450621627728973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A018341.P11286450621627728973

/-!
# A018342: Divisors of 225.

The programs for A018342, there is no canonical definition to state claims against.
-/

/-! ## A018342.P16611588064329597646

`eq[15, lcm(15, lcm(15, n)/15)]`
-/

namespace A018342.P16611588064329597646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 15 (SequenceMachineLib.roundAway ((Nat.lcm 15 n : ℚ) / 15))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018342.P16611588064329597646

/-! ## A018342.P14409248550964042830

`record[gcd((8*n+1)², ceil(lcm(2, n+1)/4))]`
-/

namespace A018342.P14409248550964042830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((8 * n + 1) ^ 2 : ℤ) ⌈(Nat.lcm 2 (n + 1) : ℚ) / 4⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018342.P14409248550964042830

/-! ## A018342.P17335868065764273994

`record[gcd(floor(n/(xor(n, n+1)+1))+1, (10*n+5)²)]`
-/

namespace A018342.P17335868065764273994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) ((10 * n + 5) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018342.P17335868065764273994

/-! ## A018342.P13860865140476086997

`eq[15, lcm(15, A106616(n))]`
-/

namespace A018342.P13860865140476086997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 15 (A106616 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018342.P13860865140476086997

/-! ## A018342.P2409075847749530429

`A003593(comp[10-(n-4)^n]+1)`
-/

namespace A018342.P2409075847749530429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - ((n : ℤ) - 4) ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A018342.P2409075847749530429

/-!
# A018343: Divisors of 228.

The programs for A018343, there is no canonical definition to state claims against.
-/

/-! ## A018343.P15292443741332614282

`eq[12, A106620(lcm(12, n))]`
-/

namespace A018343.P15292443741332614282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 (Nat.lcm 12 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018343.P15292443741332614282

/-! ## A018343.P6103895776942131376

`eq[19, lcm(19, A051724(n))]`
-/

namespace A018343.P6103895776942131376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 19 (A051724 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018343.P6103895776942131376

/-! ## A018343.P5939323244941138577

`record[gcd((n+1)/10^val(n+1, 10), A277990(2*(n+2)))]`
-/

namespace A018343.P5939323244941138577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))) (A277990 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018343.P5939323244941138577

/-! ## A018343.P3369657400107360969

`A332213(A245481(n+1))`
-/

namespace A018343.P3369657400107360969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A245481 (n + 1)).toNat

end

end A018343.P3369657400107360969

/-! ## A018343.P5285713870440017319

`eq[1, A106620(A051724(n))]`
-/

namespace A018343.P5285713870440017319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 (A051724 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018343.P5285713870440017319

/-!
# A018344: Divisors of 230.

The programs for A018344, there is no canonical definition to state claims against.
-/

/-! ## A018344.P16114204996133186804

`ogf((-1-2x+2x^4+4x^5)/(-1+5x^2))`
-/

namespace A018344.P16114204996133186804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 0, -2, -4] [1, 0, -5] n

end

end A018344.P16114204996133186804

/-! ## A018344.P1717342710442810434

`5*a(n-2)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10, a(4)=23, a(5)=46`
-/

namespace A018344.P1717342710442810434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 10, 23, 46] fun n a =>
  5 * a (n - 2)

end

end A018344.P1717342710442810434

/-! ## A018344.P6400480310909772261

`A160102(2^n)`
-/

namespace A018344.P6400480310909772261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (2 ^ n)

end

end A018344.P6400480310909772261

/-! ## A018344.P6526760990470950398

`A018467(comp[3*n])`
-/

namespace A018344.P6526760990470950398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018467 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018344.P6526760990470950398

/-!
# A018345: Divisors of 231.

The programs for A018345, there is no canonical definition to state claims against.
-/

/-! ## A018345.P8745354850623330622

`eq[33, lcm(33, lcm(7, n)/7)]`
-/

namespace A018345.P8745354850623330622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 33 (SequenceMachineLib.roundAway ((Nat.lcm 7 n : ℚ) / 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018345.P8745354850623330622

/-! ## A018345.P1466491466736253646

`eq[21, A106612(lcm(21, n))]`
-/

namespace A018345.P1466491466736253646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (Nat.lcm 21 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018345.P1466491466736253646

/-! ## A018345.P4603722026081314126

`record[∏{p}[A018596(n+1), #]]`
-/

namespace A018345.P4603722026081314126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018596 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018345.P4603722026081314126

/-! ## A018345.P14768811461220226245

`A143275(A057743(n))`
-/

namespace A018345.P14768811461220226245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143275 (A057743 n).toNat

end

end A018345.P14768811461220226245

/-!
# A018346: Divisors of 232.

The programs for A018346, there is no canonical definition to state claims against.
-/

/-! ## A018346.P3793074516086982602

`ogf((1+13x^4)/(1-2x))`
-/

namespace A018346.P3793074516086982602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 13] [1, -2] n

end

end A018346.P3793074516086982602

/-! ## A018346.P7145276104207688862

`record[gcd(n, A255298(n))]`
-/

namespace A018346.P7145276104207688862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A255298 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018346.P7145276104207688862

/-! ## A018346.P4072790456650765014

`A018469(∑[∏{e}[n, #]])`
-/

namespace A018346.P4072790456650765014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018469 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018346.P4072790456650765014

/-! ## A018346.P7572152458918556073

`A367172(n+2)/2`
-/

namespace A018346.P7572152458918556073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367172 (n + 2) : ℚ) / 2

end

end A018346.P7572152458918556073

/-!
# A018347: Divisors of 234.

The programs for A018347, there is no canonical definition to state claims against.
-/

/-! ## A018347.P10505631876442577047

`eq[13, lcm(13, lcm(18, n)/18)]`
-/

namespace A018347.P10505631876442577047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 13 (SequenceMachineLib.roundAway ((Nat.lcm 18 n : ℚ) / 18))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018347.P10505631876442577047

/-! ## A018347.P2919510544341361625

`eq[13, A106619(lcm(13, n))]`
-/

namespace A018347.P2919510544341361625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (Nat.lcm 13 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018347.P2919510544341361625

/-! ## A018347.P13265452584653007076

`eq[18, lcm(18, A106614(n))]`
-/

namespace A018347.P13265452584653007076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 18 (A106614 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018347.P13265452584653007076

/-! ## A018347.P6918969218757170829

`eq[gcd(13, n), A106619(n)]`
-/

namespace A018347.P6918969218757170829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 13 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018347.P6918969218757170829

/-! ## A018347.P1168415285802077583

`A018599(∑[A034327(n)])`
-/

namespace A018347.P1168415285802077583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018599 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018347.P1168415285802077583

/-!
# A018348: Divisors of 236.

The programs for A018348, there is no canonical definition to state claims against.
-/

/-! ## A018348.P13836161947229840070

`59*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018348.P13836161947229840070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  59 * a (n - 3)

end

end A018348.P13836161947229840070

/-!
# A018349: Divisors of 238.

The programs for A018349, there is no canonical definition to state claims against.
-/

/-! ## A018349.P9213176848538332140

`17*a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=14`
-/

namespace A018349.P9213176848538332140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 7, 14] fun n a =>
  17 * a (n - 4)

end

end A018349.P9213176848538332140

/-! ## A018349.P3386868286446435947

`eq[17, A106615(lcm(17, n))]`
-/

namespace A018349.P3386868286446435947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (Nat.lcm 17 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018349.P3386868286446435947

/-! ## A018349.P13660974367568445395

`record[∏{p}[A018740(n+1), #]]`
-/

namespace A018349.P13660974367568445395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018740 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018349.P13660974367568445395

/-! ## A018349.P201264314955180651

`record[gcd(n+1, A152390(n+17))]`
-/

namespace A018349.P201264314955180651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A152390 (n + 17))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018349.P201264314955180651

/-!
# A018350: Divisors of 240.

The programs for A018350, there is no canonical definition to state claims against.
-/

/-! ## A018350.P6808003648079696462

`eq[15, lcm(15, lcm(16, n)/16)]`
-/

namespace A018350.P6808003648079696462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 15 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018350.P6808003648079696462

/-! ## A018350.P7951768022117160589

`record[gcd(floor(n/(xor(n, n+1)+1))+1, (16*(n+1))²-16)]`
-/

namespace A018350.P7951768022117160589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (((16 * (n + 1)) ^ 2 : ℤ) - 16)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018350.P7951768022117160589

/-! ## A018350.P4204589743142727406

`eq[12, lcm(12, A106621(n))]`
-/

namespace A018350.P4204589743142727406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 12 (A106621 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018350.P4204589743142727406

/-! ## A018350.P7653072747805847364

`eq[15, A106617(lcm(15, n))]`
-/

namespace A018350.P7653072747805847364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (Nat.lcm 15 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018350.P7653072747805847364

/-! ## A018350.P5242260652047829472

`eq[16, lcm(16, A106616(n))]`
-/

namespace A018350.P5242260652047829472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 16 (A106616 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018350.P5242260652047829472

/-!
# A018351: Divisors of 242.

The programs for A018351, there is no canonical definition to state claims against.
-/

/-! ## A018351.P17645292289279852462

`ogf((1+2x)/(1-11x^2))`
-/

namespace A018351.P17645292289279852462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -11] n

end

end A018351.P17645292289279852462

/-!
# A018352: Divisors of 244.

The programs for A018352, there is no canonical definition to state claims against.
-/

/-! ## A018352.P14077726377117345999

`61*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018352.P14077726377117345999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  61 * a (n - 3)

end

end A018352.P14077726377117345999

/-!
# A018353: Divisors of 245.

The programs for A018353, there is no canonical definition to state claims against.
-/

/-! ## A018353.P18069632960304191604

`ogf((1+5x)/(1-7x^2))`
-/

namespace A018353.P18069632960304191604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, 0, -7] n

end

end A018353.P18069632960304191604

/-!
# A018354: Divisors of 246.

The programs for A018354, there is no canonical definition to state claims against.
-/

/-! ## A018354.P4204980258029180374

`record[∏{p}[A018484(n+1), #]]`
-/

namespace A018354.P4204980258029180374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018484 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018354.P4204980258029180374

/-! ## A018354.P8507366078583082335

`record[∏{p}[A018619(n+1), #]]`
-/

namespace A018354.P8507366078583082335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018619 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018354.P8507366078583082335

/-! ## A018354.P7770509616299204419

`A018484(comp[2*(n+1)*∑{p}[n+1, ceil(n/#)]])`
-/

namespace A018354.P7770509616299204419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * (∑ p ∈ Nat.primeFactors (f2 n), ⌈(n : ℚ) / (p : ℚ)⌉)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018484 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A018354.P7770509616299204419

/-! ## A018354.P11998110881549799434

`A064989(A018568(n+1))`
-/

namespace A018354.P11998110881549799434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A018568 (n + 1)).toNat

end

end A018354.P11998110881549799434

/-!
# A018355: Divisors of 248.

The programs for A018355, there is no canonical definition to state claims against.
-/

/-! ## A018355.P16325368497907274010

`eq[31, lcm(31, lcm(8, n)/8)]`
-/

namespace A018355.P16325368497907274010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 31 (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018355.P16325368497907274010

/-! ## A018355.P11347849810740360488

`2^(n+1)-2^(n%4)`
-/

namespace A018355.P11347849810740360488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (2 ^ (n % 4) : ℤ)

end

end A018355.P11347849810740360488

/-! ## A018355.P11043829297087229686

`2^(n+1)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A018355.P11043829297087229686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  (2 ^ (n + 1) : ℤ) - a (n - 4)

end

end A018355.P11043829297087229686

/-!
# A018356: Divisors of 250.

The programs for A018356, there is no canonical definition to state claims against.
-/

/-! ## A018356.P2190326857522808187

`char[8]+5*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A018356.P2190326857522808187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 5 * a (n - 2)

end

end A018356.P2190326857522808187

/-! ## A018356.P14406500824600838408

`(5*a(n-2))%n²²` with `a(0)=1, a(1)=2`
-/

namespace A018356.P14406500824600838408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  5 * a (n - 2) % (n ^ 2) ^ 2

end

end A018356.P14406500824600838408

/-! ## A018356.P5916332313783903621

`a(n-1)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10, a(4)=25, a(5)=50, a(6)=125, a(7)=250`
-/

namespace A018356.P5916332313783903621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 10, 25, 50, 125, 250] fun n a =>
  a (n - 1)

end

end A018356.P5916332313783903621

/-! ## A018356.P15371925983629691738

`A026383(∑{digits}[n, #])`
-/

namespace A018356.P15371925983629691738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A018356.P15371925983629691738

/-!
# A018357: Divisors of 252.

The programs for A018357, there is no canonical definition to state claims against.
-/

/-! ## A018357.P3891445765999688492

`record[gcd(14*18*n, (n+1)/10^val(n+1, 10))]`
-/

namespace A018357.P3891445765999688492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (14 * (18 * n) : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018357.P3891445765999688492

/-! ## A018357.P5796526803666449997

`eq[1, A293483(2*(n+1))]+1`
-/

namespace A018357.P5796526803666449997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293483 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A018357.P5796526803666449997

/-! ## A018357.P906248768764142189

`eq[1, A106619(A106615(n))]`
-/

namespace A018357.P906248768764142189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A106615 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018357.P906248768764142189

/-! ## A018357.P16896154180799971888

`record[A007948(A018490(n+1))]`
-/

namespace A018357.P16896154180799971888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A018490 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018357.P16896154180799971888

/-! ## A018357.P10401153661403453524

`record[A007948(A018629(n+1))]`
-/

namespace A018357.P10401153661403453524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A018629 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018357.P10401153661403453524

/-!
# A018358: Divisors of 255.

The programs for A018358, there is no canonical definition to state claims against.
-/

/-! ## A018358.P18378906400403489032

`17*a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=15`
-/

namespace A018358.P18378906400403489032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 15] fun n a =>
  17 * a (n - 4)

end

end A018358.P18378906400403489032

/-! ## A018358.P8993609812160696036

`a(n-1)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=15, a(4)=17, a(5)=51, a(6)=85, a(7)=255, a(8)=3`
-/

namespace A018358.P8993609812160696036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 15, 17, 51, 85, 255, 3] fun n a =>
  a (n - 1)

end

end A018358.P8993609812160696036

/-! ## A018358.P12899480906976738789

`A319583(n+2)`
-/

namespace A018358.P12899480906976738789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319583 (n + 2)

end

end A018358.P12899480906976738789

/-! ## A018358.P17006798695857047515

`A133179(n+8)`
-/

namespace A018358.P17006798695857047515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (n + 8)

end

end A018358.P17006798695857047515

/-!
# A018359: Divisors of 258.

The programs for A018359, there is no canonical definition to state claims against.
-/

/-! ## A018359.P6677820329586730436

`record[∏{p}[A018496(n+1), #]]`
-/

namespace A018359.P6677820329586730436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018496 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018359.P6677820329586730436

/-! ## A018359.P8586554147792156355

`∏{p}[A018646(n+1), #%44]`
-/

namespace A018359.P8586554147792156355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018646 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p % 44

end

end A018359.P8586554147792156355

/-! ## A018359.P6718561676478857645

`lt[n-2, A245971(n+1)]+1`
-/

namespace A018359.P6718561676478857645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A018359.P6718561676478857645

/-! ## A018359.P6489178008306179379

`A018638(comp[xor(1, 3*n)+3]+1)`
-/

namespace A018359.P6489178008306179379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018638 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A018359.P6489178008306179379

/-!
# A018360: Divisors of 260.

The programs for A018360, there is no canonical definition to state claims against.
-/

/-! ## A018360.P9131520509490120050

`A003965(A328009(n+1))`
-/

namespace A018360.P9131520509490120050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003965 (A328009 (n + 1)).toNat

end

end A018360.P9131520509490120050

/-! ## A018360.P11639900408348277361

`A064383(A377357(n+1))`
-/

namespace A018360.P11639900408348277361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064383 (A377357 (n + 1)).toNat

end

end A018360.P11639900408348277361

/-! ## A018360.P5150705040800777924

`eq[1, A106621(A106614(n))]`
-/

namespace A018360.P5150705040800777924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A106614 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018360.P5150705040800777924

/-! ## A018360.P7496697480933423057

`A018498(A280950(n)+n)`
-/

namespace A018360.P7496697480933423057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018498 (A280950 n + (n : ℤ)).toNat

end

end A018360.P7496697480933423057

/-! ## A018360.P5158316781921162854

`A018498(∑[A001221(n+2)])`
-/

namespace A018360.P5158316781921162854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018498 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018360.P5158316781921162854

/-!
# A018361: Divisors of 261.

The programs for A018361, there is no canonical definition to state claims against.
-/

/-! ## A018361.P18401764691197986897

`floor(3^n/tanh(2)²)`
-/

namespace A018361.P18401764691197986897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ n : ℝ) / Real.tanh (2 : ℝ) ^ 2⌋

end

end A018361.P18401764691197986897

/-!
# A018362: Divisors of 264.

The programs for A018362, there is no canonical definition to state claims against.
-/

/-! ## A018362.P4147950280758949872

`record[A032742(A018502(n))]`
-/

namespace A018362.P4147950280758949872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A018502 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018362.P4147950280758949872

/-! ## A018362.P17742068756532105934

`filter[A018502(n), A307430(#)]`
-/

namespace A018362.P17742068756532105934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A018362.P17742068756532105934

/-! ## A018362.P15620955011856355166

`filter[A018502(n), A370598(#)]`
-/

namespace A018362.P15620955011856355166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A018362.P15620955011856355166

/-! ## A018362.P6111889757180942296

`record[A142150(A018502(n+1))]`
-/

namespace A018362.P6111889757180942296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A018502 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018362.P6111889757180942296

/-! ## A018362.P12484427588847489466

`eq[1, A106612(A051712(n+1))]`
-/

namespace A018362.P12484427588847489466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A051712 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018362.P12484427588847489466

/-!
# A018363: Divisors of 266.

The programs for A018363, there is no canonical definition to state claims against.
-/

/-! ## A018363.P14542490798368221863

`19*a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=14`
-/

namespace A018363.P14542490798368221863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 7, 14] fun n a =>
  19 * a (n - 4)

end

end A018363.P14542490798368221863

/-! ## A018363.P3794662659484234919

`A325094(comp[or(2, n)])`
-/

namespace A018363.P3794662659484234919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325094 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018363.P3794662659484234919

/-! ## A018363.P2521293312401594097

`record[∏{p}[A018505(n+1), #]]`
-/

namespace A018363.P2521293312401594097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018505 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018363.P2521293312401594097

/-! ## A018363.P9592510443917541489

`eq[1, A106620(lcm(14, n)/14)]`
-/

namespace A018363.P9592510443917541489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 (SequenceMachineLib.roundAway ((Nat.lcm 14 n : ℚ) / 14)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018363.P9592510443917541489

/-!
# A018364: Divisors of 268.

The programs for A018364, there is no canonical definition to state claims against.
-/

/-! ## A018364.P6912093158503061264

`67*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018364.P6912093158503061264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  67 * a (n - 3)

end

end A018364.P6912093158503061264

/-!
# A018365: Divisors of 270.

The programs for A018365, there is no canonical definition to state claims against.
-/

/-! ## A018365.P4135177773557557700

`eq[1, A106619(A106616(n))]`
-/

namespace A018365.P4135177773557557700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A106616 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018365.P4135177773557557700

/-! ## A018365.P12918026528181205557

`record[A103627(A018659(n+1))]`
-/

namespace A018365.P12918026528181205557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A018659 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018365.P12918026528181205557

/-! ## A018365.P17113029126406597580

`record[A032742(A134950(n+1))]`
-/

namespace A018365.P17113029126406597580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A134950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018365.P17113029126406597580

/-! ## A018365.P4318775120884060933

`record[A106620(A133030(n+1))]`
-/

namespace A018365.P4318775120884060933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 (A133030 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018365.P4318775120884060933

/-! ## A018365.P923591388412104062

`record[A025480(A134950(n+2))]`
-/

namespace A018365.P923591388412104062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A134950 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018365.P923591388412104062

/-!
# A018366: Divisors of 272.

The programs for A018366, there is no canonical definition to state claims against.
-/

/-! ## A018366.P13949711656659325369

`A055964(a(n-1))` with `a(0)=1`
-/

namespace A018366.P13949711656659325369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055964 (a (n - 1)).toNat

end

end A018366.P13949711656659325369

/-! ## A018366.P13266520894641625277

`A292248(2^n-floor(n/5))`
-/

namespace A018366.P13266520894641625277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292248 ((2 ^ n : ℤ) - ⌊(n : ℚ) / 5⌋).toNat

end

end A018366.P13266520894641625277

/-! ## A018366.P14740703201298492823

`2^(n+1)-A018627(n+1)`
-/

namespace A018366.P14740703201298492823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A018627 (n + 1)

end

end A018366.P14740703201298492823

/-! ## A018366.P11963549078638737038

`A053165(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A018366.P11963549078638737038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053165 (a (n - 1)).toNat + a (n - 1)

end

end A018366.P11963549078638737038

/-! ## A018366.P9273251598020984952

`A056962(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A018366.P9273251598020984952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056962 (a (n - 1)).toNat + a (n - 1)

end

end A018366.P9273251598020984952

/-!
# A018367: Divisors of 273.

The programs for A018367, there is no canonical definition to state claims against.
-/

/-! ## A018367.P153519352783815717

`record[gcd(68*n²+1, ceil(lcm(2, n+1)/4))]`
-/

namespace A018367.P153519352783815717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (68 * n ^ 2 + 1 : ℤ) ⌈(Nat.lcm 2 (n + 1) : ℚ) / 4⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018367.P153519352783815717

/-! ## A018367.P6707389387518245092

`record[∏{p}[n, A058285(#)]]`
-/

namespace A018367.P6707389387518245092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A058285 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018367.P6707389387518245092

/-! ## A018367.P15628896583374142260

`record[∏{p}[n, A065175(#)]]`
-/

namespace A018367.P15628896583374142260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A065175 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018367.P15628896583374142260

/-! ## A018367.P11078594990324710028

`A177817(n+2)/3`
-/

namespace A018367.P11078594990324710028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177817 (n + 2) : ℚ) / 3

end

end A018367.P11078594990324710028

/-!
# A018368: Divisors of 275.

The programs for A018368, there is no canonical definition to state claims against.
-/

/-! ## A018368.P9123046407991458610

`n*a(n-1)` with `a(0)=1, a(1)=5, a(2)=11, a(3)=25, a(4)=55`
-/

namespace A018368.P9123046407991458610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 11, 25, 55] fun n a =>
  n * a (n - 1)

end

end A018368.P9123046407991458610

/-!
# A018369: Divisors of 276.

The programs for A018369, there is no canonical definition to state claims against.
-/

/-! ## A018369.P4126654311267568946

`A332808(A018405(n+1))`
-/

namespace A018369.P4126654311267568946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018405 (n + 1)).toNat

end

end A018369.P4126654311267568946

/-! ## A018369.P11057679231070109416

`record[A007948(A018515(n+1))]`
-/

namespace A018369.P11057679231070109416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A018515 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018369.P11057679231070109416

/-! ## A018369.P3183665587624443965

`record[A038387(A018669(n+1))]`
-/

namespace A018369.P3183665587624443965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (A018669 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018369.P3183665587624443965

/-! ## A018369.P497061536611678115

`filter[A018515(n+1), A071023(#)]`
-/

namespace A018369.P497061536611678115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071023 (f1 j).toNat = 1) n)

end

end A018369.P497061536611678115

/-! ## A018369.P11348360812250507380

`filter[A018515(n+1), A166280(#)]`
-/

namespace A018369.P11348360812250507380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166280 (f1 j).toNat = 1) n)

end

end A018369.P11348360812250507380

/-!
# A018370: Divisors of 279.

The programs for A018370, there is no canonical definition to state claims against.
-/

/-! ## A018370.P14731437495879804992

`ogf((1+4x^3)/(1-3x))`
-/

namespace A018370.P14731437495879804992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 4] [1, -3] n

end

end A018370.P14731437495879804992

/-!
# A018371: Divisors of 280.

The programs for A018371, there is no canonical definition to state claims against.
-/

/-! ## A018371.P13677908177111979818

`record[gcd(xor(n, -1), A327948(2*n+3))]`
-/

namespace A018371.P13677908177111979818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A327948 (2 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018371.P13677908177111979818

/-! ## A018371.P6969263668724330617

`record[A038502(A214950(n))]`
-/

namespace A018371.P6969263668724330617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A214950 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018371.P6969263668724330617

/-! ## A018371.P14778145368689157129

`eq[1, A106621(A106615(n))]`
-/

namespace A018371.P14778145368689157129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A106615 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018371.P14778145368689157129

/-! ## A018371.P17068618475385654111

`record[A032742(A018519(n+1))]`
-/

namespace A018371.P17068618475385654111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A018519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018371.P17068618475385654111

/-! ## A018371.P8690935900238680838

`record[A038502(A018676(n+1))]`
-/

namespace A018371.P8690935900238680838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A018676 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018371.P8690935900238680838

/-!
# A018372: Divisors of 282.

The programs for A018372, there is no canonical definition to state claims against.
-/

/-! ## A018372.P7840840316211294650

`eq[94, lcm(94, lcm(3, n)/3)]`
-/

namespace A018372.P7840840316211294650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  94

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 94 (SequenceMachineLib.roundAway ((Nat.lcm 3 n : ℚ) / 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018372.P7840840316211294650

/-! ## A018372.P3859337221112305287

`record[∏{p}[A018521(n+1), #]]`
-/

namespace A018372.P3859337221112305287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018521 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018372.P3859337221112305287

/-! ## A018372.P13116184394295032023

`A018521(comp[2*(n+1)*∑{p}[n+1, ceil(n/#)]])`
-/

namespace A018372.P13116184394295032023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * (∑ p ∈ Nat.primeFactors (f2 n), ⌈(n : ℚ) / (p : ℚ)⌉)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018521 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A018372.P13116184394295032023

/-!
# A018373: Divisors of 284.

The programs for A018373, there is no canonical definition to state claims against.
-/

/-! ## A018373.P7214549348097776680

`71*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018373.P7214549348097776680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  71 * a (n - 3)

end

end A018373.P7214549348097776680

/-!
# A018374: Divisors of 285.

The programs for A018374, there is no canonical definition to state claims against.
-/

/-! ## A018374.P1153679984336772139

`19*a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=15`
-/

namespace A018374.P1153679984336772139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 15] fun n a =>
  19 * a (n - 4)

end

end A018374.P1153679984336772139

/-! ## A018374.P15539853126158070705

`record[∏{p}[n+1, A020481(#²)]]`
-/

namespace A018374.P15539853126158070705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A020481 (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018374.P15539853126158070705

/-! ## A018374.P8839718725213202959

`record[gcd(or(1, n), A157862(n+1))]`
-/

namespace A018374.P8839718725213202959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.lor 1 n : ℤ) (A157862 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018374.P8839718725213202959

/-! ## A018374.P13638465206216460161

`A018685(ceil(3*n/2)+floor(acot(n)))`
-/

namespace A018374.P13638465206216460161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018685 (⌈3 * ((n : ℚ) / 2)⌉ + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A018374.P13638465206216460161

/-!
# A018375: Divisors of 286.

The programs for A018375, there is no canonical definition to state claims against.
-/

/-! ## A018375.P11231084550186801609

`eq[26, A106612(lcm(26, n))]`
-/

namespace A018375.P11231084550186801609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (Nat.lcm 26 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018375.P11231084550186801609

/-! ## A018375.P16756002571539456103

`record[∏{p}[A018525(n+1), #]]`
-/

namespace A018375.P16756002571539456103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018525 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018375.P16756002571539456103

/-! ## A018375.P15352281326209862646

`A235201(A018569(n+1))`
-/

namespace A018375.P15352281326209862646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A018569 (n + 1)).toNat

end

end A018375.P15352281326209862646

/-! ## A018375.P17151476927044329781

`A341515(A018579(n+1))`
-/

namespace A018375.P17151476927044329781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341515 (A018579 (n + 1)).toNat

end

end A018375.P17151476927044329781

/-!
# A018376: Divisors of 288.

The programs for A018376, there is no canonical definition to state claims against.
-/

/-! ## A018376.P16269302758602189395

`∪[4*eq[72, lcm(72, n)], lt[(72*n)%(n+1), 1]+1]`
-/

namespace A018376.P16269302758602189395
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 72 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n % (n + 1)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f5 j < f6 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = x) n

end

end A018376.P16269302758602189395

/-! ## A018376.P834918971490581622

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 9*(17*n+2))]`
-/

namespace A018376.P834918971490581622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (9 * (17 * n + 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018376.P834918971490581622

/-! ## A018376.P10824302730248123347

`eq[24, lcm(24, A051724(n))]`
-/

namespace A018376.P10824302730248123347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 24 (A051724 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018376.P10824302730248123347

/-! ## A018376.P8794926194240490649

`eq[gcd(9, n), A227140(n)]`
-/

namespace A018376.P8794926194240490649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 9 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018376.P8794926194240490649

/-! ## A018376.P1969552004275820471

`eq[1, A227140(lcm(9, n)/9)]`
-/

namespace A018376.P1969552004275820471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (SequenceMachineLib.roundAway ((Nat.lcm 9 n : ℚ) / 9)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018376.P1969552004275820471

/-!
# A018377: Divisors of 290.

The programs for A018377, there is no canonical definition to state claims against.
-/

/-! ## A018377.P10250716022347354949

`ogf((1+2x+4x^4+8x^5)/(1-5x^2))`
-/

namespace A018377.P10250716022347354949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 0, 4, 8] [1, 0, -5] n

end

end A018377.P10250716022347354949

/-! ## A018377.P16218752053823868637

`3*a(n-1)-a(n-gcd(4, n))` with `a(0)=1`
-/

namespace A018377.P16218752053823868637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - a (n - Nat.gcd 4 n)

end

end A018377.P16218752053823868637

/-! ## A018377.P2552832543698484658

`3*a(n-1)-a(and(n, n-1))` with `a(0)=1`
-/

namespace A018377.P2552832543698484658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A018377.P2552832543698484658

/-! ## A018377.P10855326869860027181

`A018530(comp[3*n])`
-/

namespace A018377.P10855326869860027181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018530 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018377.P10855326869860027181

/-!
# A018378: Divisors of 292.

The programs for A018378, there is no canonical definition to state claims against.
-/

/-! ## A018378.P5261345620006510540

`73*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018378.P5261345620006510540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  73 * a (n - 3)

end

end A018378.P5261345620006510540

/-!
# A018379: Divisors of 294.

The programs for A018379, there is no canonical definition to state claims against.
-/

/-! ## A018379.P14204871817446698724

`A245479(n+1)%790`
-/

namespace A018379.P14204871817446698724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245479 (n + 1)) 790

end

end A018379.P14204871817446698724

/-! ## A018379.P9790640208864889657

`A245479(comp[15*C(n, 4)])`
-/

namespace A018379.P9790640208864889657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * Nat.choose n 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245479 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018379.P9790640208864889657

/-! ## A018379.P952008334094173447

`7*A007947(a(n-4))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A018379.P952008334094173447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  7 * A007947 (a (n - 4)).toNat

end

end A018379.P952008334094173447

/-! ## A018379.P15828555643695450395

`A245479(comp[a(n-1)+a(n-2)])` with `a(0)=15, a(1)=0, a(2)=21`
-/

namespace A018379.P15828555643695450395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 0, 21] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245479 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018379.P15828555643695450395

/-! ## A018379.P11829634059907098975

`A245479(∑[(n+1)/gcd(n+1, ∏{p}[n+1, #]^3)])`
-/

namespace A018379.P11829634059907098975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd (n + 1) ((∏ p ∈ Nat.primeFactors (f2 n), p) ^ 3) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245479 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A018379.P11829634059907098975

/-!
# A018380: Divisors of 296.

The programs for A018380, there is no canonical definition to state claims against.
-/

/-! ## A018380.P11539695930733203731

`2*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=37`
-/

namespace A018380.P11539695930733203731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8, 37] fun n a =>
  2 * a (n - 1)

end

end A018380.P11539695930733203731

/-! ## A018380.P17138393520340688392

`record[gcd(((n+2)^4-(n+2))/2, (12*n+8)^3)]`
-/

namespace A018380.P17138393520340688392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((((n + 2) ^ 4 : ℤ) - (n + 2 : ℤ) : ℚ) / 2)) ((12 * n + 8) ^ 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018380.P17138393520340688392

/-! ## A018380.P5296208983056388668

`A018536(comp[5*n])`
-/

namespace A018380.P5296208983056388668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018536 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018380.P5296208983056388668

/-! ## A018380.P2192770485198419933

`A018681(n+2)-2^n`
-/

namespace A018380.P2192770485198419933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018681 (n + 2) - (2 ^ n : ℤ)

end

end A018380.P2192770485198419933

/-!
# A018381: Divisors of 297.

The programs for A018381, there is no canonical definition to state claims against.
-/

/-! ## A018381.P394629171325812394

`A018705(comp[7*n])`
-/

namespace A018381.P394629171325812394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018705 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018381.P394629171325812394

/-! ## A018381.P17063149447363529762

`∏{p}[A018607(n+1), #-2]`
-/

namespace A018381.P17063149447363529762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 2)

end

end A018381.P17063149447363529762

/-! ## A018381.P6824583276597298915

`record[gcd(n%2+3*n, A003597(n+1))]`
-/

namespace A018381.P6824583276597298915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 + 3 * n : ℕ) : ℤ) (A003597 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018381.P6824583276597298915

/-! ## A018381.P15033826105700683972

`A060141(A392540(n))`
-/

namespace A018381.P15033826105700683972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060141 (A392540 n).toNat

end

end A018381.P15033826105700683972

/-!
# A018382: Divisors of 300.

The programs for A018382, there is no canonical definition to state claims against.
-/

/-! ## A018382.P6138236290658337327

`record[gcd(3*n², A126759(n))]`
-/

namespace A018382.P6138236290658337327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * n ^ 2 : ℤ) (A126759 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018382.P6138236290658337327

/-! ## A018382.P2438444629814495472

`eq[1, A106621(A106616(n))]`
-/

namespace A018382.P2438444629814495472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A106616 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018382.P2438444629814495472

/-! ## A018382.P11283078853793037638

`record[A007948(record[A194459(n)])]`
-/

namespace A018382.P11283078853793037638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194459 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018382.P11283078853793037638

/-! ## A018382.P15438293621310971606

`record[A050985(record[A194459(n)])]`
-/

namespace A018382.P15438293621310971606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194459 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018382.P15438293621310971606

/-! ## A018382.P3032570121353899876

`record[A066990(record[A194459(n)])]`
-/

namespace A018382.P3032570121353899876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194459 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018382.P3032570121353899876

/-!
# A018383: Divisors of 304.

The programs for A018383, there is no canonical definition to state claims against.
-/

/-! ## A018383.P11323863418407226362

`2*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=19`
-/

namespace A018383.P11323863418407226362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 19] fun n a =>
  2 * a (n - 1)

end

end A018383.P11323863418407226362

/-! ## A018383.P9865207005813996053

`record[Δ[A277704(n+1)]]`
-/

namespace A018383.P9865207005813996053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277704 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018383.P9865207005813996053

/-! ## A018383.P18401006180841041182

`A320425(n+1)+char[12]`
-/

namespace A018383.P18401006180841041182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320425 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A018383.P18401006180841041182

/-! ## A018383.P10091045715261648954

`A320425(A005496(n))`
-/

namespace A018383.P10091045715261648954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320425 (A005496 n).toNat

end

end A018383.P10091045715261648954

/-!
# A018384: Divisors of 306.

The programs for A018384, there is no canonical definition to state claims against.
-/

/-! ## A018384.P7197065507288094562

`record[gcd((17*n)²+17, (n+1)/4^val(n+1, 4))]`
-/

namespace A018384.P7197065507288094562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((17 * n) ^ 2 + 17 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018384.P7197065507288094562

/-! ## A018384.P3021589347353431998

`eq[gcd(17, n), A106619(n)]`
-/

namespace A018384.P3021589347353431998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 17 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018384.P3021589347353431998

/-! ## A018384.P15468638244141347275

`∪[eq[1, lcm(18, n)/18], A070869(n+2)]`
-/

namespace A018384.P15468638244141347275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 18 n : ℚ) / 18

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070869 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A018384.P15468638244141347275

/-! ## A018384.P16970831492110690948

`eq[1, A106619(A106618(n))]`
-/

namespace A018384.P16970831492110690948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A106618 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018384.P16970831492110690948

/-! ## A018384.P1734691008853958926

`record[A032742(A018550(n+1))]`
-/

namespace A018384.P1734691008853958926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A018550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018384.P1734691008853958926

/-!
# A018385: Divisors of 308.

The programs for A018385, there is no canonical definition to state claims against.
-/

/-! ## A018385.P3279089618878507917

`eq[gcd(44, n), A106608(n)]`
-/

namespace A018385.P3279089618878507917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 44 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018385.P3279089618878507917

/-! ## A018385.P795116782172524169

`A018552(∑[A002635(n)])`
-/

namespace A018385.P795116782172524169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018552 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018385.P795116782172524169

/-! ## A018385.P13775305903718522913

`A235027(A018414(n+1))`
-/

namespace A018385.P13775305903718522913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A018414 (n + 1)).toNat

end

end A018385.P13775305903718522913

/-! ## A018385.P13438064683702787706

`A267099(A018701(n+1))`
-/

namespace A018385.P13438064683702787706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A018701 (n + 1)).toNat

end

end A018385.P13438064683702787706

/-! ## A018385.P16249500488090566474

`record[A000026(A018552(n+1))]`
-/

namespace A018385.P16249500488090566474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A018552 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018385.P16249500488090566474

/-!
# A018386: Divisors of 310.

The programs for A018386, there is no canonical definition to state claims against.
-/

/-! ## A018386.P1646155045864445190

`A018554(comp[3*n])`
-/

namespace A018386.P1646155045864445190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018554 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018386.P1646155045864445190

/-! ## A018386.P10760217172642824030

`record[gcd(round(acot(n)+n), A133263(7*n+17))]`
-/

namespace A018386.P10760217172642824030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))) (A133263 (7 * n + 17))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018386.P10760217172642824030

/-! ## A018386.P18069071137735791287

`A064614(A018470(n+1))`
-/

namespace A018386.P18069071137735791287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A018470 (n + 1)).toNat

end

end A018386.P18069071137735791287

/-! ## A018386.P42290324575552537

`A064989(A018641(n+1))`
-/

namespace A018386.P42290324575552537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A018641 (n + 1)).toNat

end

end A018386.P42290324575552537

/-!
# A018387: Divisors of 312.

The programs for A018387, there is no canonical definition to state claims against.
-/

/-! ## A018387.P7748778132847728092

`eq[24, A106614(lcm(24, n))]`
-/

namespace A018387.P7748778132847728092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (Nat.lcm 24 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018387.P7748778132847728092

/-! ## A018387.P164591590719433472

`eq[26, lcm(26, A051724(n))]`
-/

namespace A018387.P164591590719433472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 26 (A051724 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018387.P164591590719433472

/-! ## A018387.P3827445205293743078

`A116912(A018438(n+1))`
-/

namespace A018387.P3827445205293743078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116912 (A018438 (n + 1)).toNat

end

end A018387.P3827445205293743078

/-! ## A018387.P5267846851513651819

`record[A078898(A018556(n+1))]`
-/

namespace A018387.P5267846851513651819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A018556 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018387.P5267846851513651819

/-! ## A018387.P888974628283834889

`record[A142150(A018556(n+2))]`
-/

namespace A018387.P888974628283834889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A018556 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018387.P888974628283834889

/-!
# A018388: Divisors of 315.

The programs for A018388, there is no canonical definition to state claims against.
-/

/-! ## A018388.P7484620792839062301

`record[gcd(n, A189976(n+9))]`
-/

namespace A018388.P7484620792839062301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A189976 (n + 9))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018388.P7484620792839062301

/-! ## A018388.P3296898991804809882

`record[gcd(lcm(2, n+2)/2, A333321(n))]`
-/

namespace A018388.P3296898991804809882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 2) : ℚ) / 2)) (A333321 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018388.P3296898991804809882

/-! ## A018388.P6755074388610487014

`record[A000265(A178858(n+1))]`
-/

namespace A018388.P6755074388610487014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A178858 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018388.P6755074388610487014

/-!
# A018389: Divisors of 316.

The programs for A018389, there is no canonical definition to state claims against.
-/

/-! ## A018389.P10825178845347283631

`79*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018389.P10825178845347283631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  79 * a (n - 3)

end

end A018389.P10825178845347283631

/-!
# A018390: Divisors of 318.

The programs for A018390, there is no canonical definition to state claims against.
-/

/-! ## A018390.P11138109577264431301

`A325094(A126007(n))`
-/

namespace A018390.P11138109577264431301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325094 (A126007 n).toNat

end

end A018390.P11138109577264431301

/-! ## A018390.P6435395688916666487

`A064989(A018702(n+1))`
-/

namespace A018390.P6435395688916666487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A018702 (n + 1)).toNat

end

end A018390.P6435395688916666487

/-! ## A018390.P8318413170305179187

`A235201(A018323(n+1))`
-/

namespace A018390.P8318413170305179187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A018323 (n + 1)).toNat

end

end A018390.P8318413170305179187

/-! ## A018390.P6623139088860133762

`A245453(A018300(n+1))`
-/

namespace A018390.P6623139088860133762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245453 (A018300 (n + 1)).toNat

end

end A018390.P6623139088860133762

/-!
# A018391: Divisors of 320.

The programs for A018391, there is no canonical definition to state claims against.
-/

/-! ## A018391.P10629908751691766776

`eq[1, A227140(lcm(10, n)/10)]`
-/

namespace A018391.P10629908751691766776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (SequenceMachineLib.roundAway ((Nat.lcm 10 n : ℚ) / 10)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018391.P10629908751691766776

/-! ## A018391.P10897657033223150669

`A094958(∑[a(n-1)+val(n, 12)])` with `a(0)=1`
-/

namespace A018391.P10897657033223150669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018391.P10897657033223150669

/-! ## A018391.P11742204796680469397

`A018565(record[floor((4*n-2)/a(n-1))])` with `a(0)=1`
-/

namespace A018391.P11742204796680469397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊((4 * n : ℤ) - 2 : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018565 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A018391.P11742204796680469397

/-! ## A018391.P5589292114169658873

`A094958(A008730(n))`
-/

namespace A018391.P5589292114169658873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (A008730 n).toNat

end

end A018391.P5589292114169658873

/-! ## A018391.P12992440137124725157

`A018565(∑[A242784(n)])`
-/

namespace A018391.P12992440137124725157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018565 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018391.P12992440137124725157

/-!
# A018392: Divisors of 322.

The programs for A018392, there is no canonical definition to state claims against.
-/

/-! ## A018392.P3483110126328329815

`∏{p}[A334110(n), #²-2]`
-/

namespace A018392.P3483110126328329815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p ^ 2 : ℤ) - 2)

end

end A018392.P3483110126328329815

/-! ## A018392.P1244025964612411925

`record[∏{p}[A018567(n+1), #]]`
-/

namespace A018392.P1244025964612411925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018567 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018392.P1244025964612411925

/-! ## A018392.P13395907953815364629

`A321322(A019565(n))`
-/

namespace A018392.P13395907953815364629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321322 (A019565 n).toNat

end

end A018392.P13395907953815364629

/-!
# A018393: Divisors of 324.

The programs for A018393, there is no canonical definition to state claims against.
-/

/-! ## A018393.P16002863664299845272

`A000792(comp[15*n])`
-/

namespace A018393.P16002863664299845272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018393.P16002863664299845272

/-! ## A018393.P11062288007303078394

`floor(A018752(n+4)/3)`
-/

namespace A018393.P11062288007303078394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018752 (n + 4) : ℚ) / 3⌋

end

end A018393.P11062288007303078394

/-! ## A018393.P17472344131927448725

`record[A141396(comp[10*(n+2)])]`
-/

namespace A018393.P17472344131927448725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141396 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018393.P17472344131927448725

/-! ## A018393.P12239203801291595560

`record[A036561(n)%(lcm(32, n)+25)]`
-/

namespace A018393.P12239203801291595560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036561 n) (Nat.lcm 32 n + 25 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018393.P12239203801291595560

/-! ## A018393.P10669628948307821343

`record[A000792(A286934(n))]`
-/

namespace A018393.P10669628948307821343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A286934 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018393.P10669628948307821343

/-!
# A018394: Divisors of 325.

The programs for A018394, there is no canonical definition to state claims against.
-/

/-! ## A018394.P3345769732059822702

`a(n-2)*a(n-3)` with `a(0)=1, a(1)=5, a(2)=13, a(3)=25`
-/

namespace A018394.P3345769732059822702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 13, 25] fun n a =>
  a (n - 2) * a (n - 3)

end

end A018394.P3345769732059822702

/-!
# A018395: Divisors of 328.

The programs for A018395, there is no canonical definition to state claims against.
-/

/-! ## A018395.P4152066571528905808

`A018575(comp[5*n])`
-/

namespace A018395.P4152066571528905808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018575 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018395.P4152066571528905808

/-! ## A018395.P17912951613035102258

`record[gcd(n+9, A017367(n))]`
-/

namespace A018395.P17912951613035102258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 9 : ℤ) (A017367 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018395.P17912951613035102258

/-! ## A018395.P5578896806513178146

`A018605(n+1)%(3*2^n)`
-/

namespace A018395.P5578896806513178146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018605 (n + 1)) (3 * 2 ^ n : ℤ)

end

end A018395.P5578896806513178146

/-! ## A018395.P744553746363090147

`A005079(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A018395.P744553746363090147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005079 (n + 1) + 2 * a (n - 1)

end

end A018395.P744553746363090147

/-!
# A018396: Divisors of 330.

The programs for A018396, there is no canonical definition to state claims against.
-/

/-! ## A018396.P10073395270536875100

`record[∏{p}[A018762(n+1), #]]`
-/

namespace A018396.P10073395270536875100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018762 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018396.P10073395270536875100

/-! ## A018396.P974767820881266291

`A097246(A018457(n+1))`
-/

namespace A018396.P974767820881266291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (A018457 (n + 1)).toNat

end

end A018396.P974767820881266291

/-! ## A018396.P9470657369739751053

`A235201(A018740(n+1))`
-/

namespace A018396.P9470657369739751053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A018740 (n + 1)).toNat

end

end A018396.P9470657369739751053

/-! ## A018396.P10941100576894695379

`A332808(A018429(n+1))`
-/

namespace A018396.P10941100576894695379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018429 (n + 1)).toNat

end

end A018396.P10941100576894695379

/-! ## A018396.P6240316792238148209

`record[A046530(record[A246867(n)])]`
-/

namespace A018396.P6240316792238148209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246867 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018396.P6240316792238148209

/-!
# A018397: Divisors of 332.

The programs for A018397, there is no canonical definition to state claims against.
-/

/-! ## A018397.P9464618651326448843

`83*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018397.P9464618651326448843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  83 * a (n - 3)

end

end A018397.P9464618651326448843

/-!
# A018398: Divisors of 333.

The programs for A018398, there is no canonical definition to state claims against.
-/

/-! ## A018398.P6056948147566667165

`ogf((1+10x^3)/(1-3x))`
-/

namespace A018398.P6056948147566667165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 10] [1, -3] n

end

end A018398.P6056948147566667165

/-!
# A018399: Divisors of 336.

The programs for A018399, there is no canonical definition to state claims against.
-/

/-! ## A018399.P8934184285711544107

`eq[gcd(48, n), A106608(n)]`
-/

namespace A018399.P8934184285711544107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 48 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018399.P8934184285711544107

/-! ## A018399.P3983755642810114558

`record[A032742(A018585(n+1))]`
-/

namespace A018399.P3983755642810114558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A018585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018399.P3983755642810114558

/-! ## A018399.P11511012194183183366

`record[A072438(A178878(n+1))]`
-/

namespace A018399.P11511012194183183366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A178878 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018399.P11511012194183183366

/-! ## A018399.P17636333400497601930

`record[A025480(A018585(n+2))]`
-/

namespace A018399.P17636333400497601930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A018585 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018399.P17636333400497601930

/-! ## A018399.P8536841636526664687

`record[A135997(A018772(n+2))]`
-/

namespace A018399.P8536841636526664687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A018772 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018399.P8536841636526664687

