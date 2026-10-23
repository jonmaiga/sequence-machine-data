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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A018700: Divisors of 882.

The programs for A018700, there is no canonical definition to state claims against.
-/

/-! ## A018700.P18376596130933229704

`record[gcd(n+1, A195321(A017185(n)))]`
-/

namespace A018700.P18376596130933229704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A195321 (A017185 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018700.P18376596130933229704

/-! ## A018700.P14834926865780716543

`record[gcd(A050985(n+1), A064802(n+1))]`
-/

namespace A018700.P14834926865780716543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050985 (n + 1)) (A064802 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018700.P14834926865780716543

/-! ## A018700.P13829377504817188863

`record[gcd(A011245(n)+2, A092038(n+1))]`
-/

namespace A018700.P13829377504817188863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011245 n + 2) (A092038 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018700.P13829377504817188863

/-! ## A018700.P12793365900188134367

`∪[2*A018458(n+1), A018458(n+1)]`
-/

namespace A018700.P12793365900188134367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018700.P12793365900188134367

/-! ## A018700.P12205217827925449308

`∩[A108319(n+1), A387181(n+1)]`
-/

namespace A018700.P12205217827925449308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018700.P12205217827925449308

/-!
# A018701: Divisors of 884.

The programs for A018701, there is no canonical definition to state claims against.
-/

/-! ## A018701.P15352271053549863920

`A057889(A018625(n+1))`
-/

namespace A018701.P15352271053549863920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A018625 (n + 1)).toNat

end

end A018701.P15352271053549863920

/-! ## A018701.P2066873579941076512

`A267099(A018385(n+1))`
-/

namespace A018701.P2066873579941076512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A018385 (n + 1)).toNat

end

end A018701.P2066873579941076512

/-! ## A018701.P2340013628332114148

`eq[gcd(4, n), A106618(A106614(n))]`
-/

namespace A018701.P2340013628332114148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A106614 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018701.P2340013628332114148

/-! ## A018701.P8331144229427278760

`record[gcd(A269437(n+1), A323161(n+1))]`
-/

namespace A018701.P8331144229427278760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A269437 (n + 1)) (A323161 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018701.P8331144229427278760

/-! ## A018701.P8345071585109372184

`A235027(∪[2*A018420(n+1), A018420(n+1)])`
-/

namespace A018701.P8345071585109372184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018420 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A018701.P8345071585109372184

/-!
# A018702: Divisors of 885.

The programs for A018702, there is no canonical definition to state claims against.
-/

/-! ## A018702.P6073675930836404053

`record[gcd(n+2, A160836(n))]`
-/

namespace A018702.P6073675930836404053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A160836 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018702.P6073675930836404053

/-! ## A018702.P17578651834738168430

`A318661(5*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A018702.P17578651834738168430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A318661 (5 * a (n - 2)).toNat

end

end A018702.P17578651834738168430

/-! ## A018702.P8564500644809815058

`∏{p}[A019565(n), A243755(#)]`
-/

namespace A018702.P8564500644809815058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A243755 p

end

end A018702.P8564500644809815058

/-! ## A018702.P11368325538959664105

`∏{p}[A053576(n), A286267(#)]`
-/

namespace A018702.P11368325538959664105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A286267 p

end

end A018702.P11368325538959664105

/-!
# A018703: Divisors of 888.

The programs for A018703, there is no canonical definition to state claims against.
-/

/-! ## A018703.P12832260966345863493

`record[gcd(A035878(2*n), A103391(n+1))]`
-/

namespace A018703.P12832260966345863493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035878 (2 * n)) (A103391 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018703.P12832260966345863493

/-! ## A018703.P14245293720132809771

`∑[A036054(A225121(n))]`
-/

namespace A018703.P14245293720132809771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036054 (A225121 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018703.P14245293720132809771

/-! ## A018703.P2051177490861635220

`A347966(A296111(n+1))`
-/

namespace A018703.P2051177490861635220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347966 (A296111 (n + 1)).toNat

end

end A018703.P2051177490861635220

/-! ## A018703.P1936043649063029662

`record[A161710(n)-A309711(n)]`
-/

namespace A018703.P1936043649063029662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161710 n - A309711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018703.P1936043649063029662

/-! ## A018703.P5579443947795927414

`∑[A253187(∑[A056329(n+1)])]`
-/

namespace A018703.P5579443947795927414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056329 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253187 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018703.P5579443947795927414

/-!
# A018704: Divisors of 890.

The programs for A018704, there is no canonical definition to state claims against.
-/

/-! ## A018704.P4992968027165452270

`A235200(A018506(n+1))`
-/

namespace A018704.P4992968027165452270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235200 (A018506 (n + 1)).toNat

end

end A018704.P4992968027165452270

/-! ## A018704.P15165367762879398112

`A332808(A018648(n+1))`
-/

namespace A018704.P15165367762879398112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018648 (n + 1)).toNat

end

end A018704.P15165367762879398112

/-! ## A018704.P4409261614983008817

`∏{p}[A019565(n), A030426(#)]`
-/

namespace A018704.P4409261614983008817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030426 p

end

end A018704.P4409261614983008817

/-! ## A018704.P1852026537514769339

`∏{p}[A053576(n), A191437(#)]`
-/

namespace A018704.P1852026537514769339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A191437 p

end

end A018704.P1852026537514769339

/-!
# A018705: Divisors of 891.

The programs for A018705, there is no canonical definition to state claims against.
-/

/-! ## A018705.P9792741552606598247

`A003597(A008815(n))`
-/

namespace A018705.P9792741552606598247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003597 (A008815 n).toNat

end

end A018705.P9792741552606598247

/-! ## A018705.P14839717906549536399

`A003597(A298434(n))`
-/

namespace A018705.P14839717906549536399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003597 (A298434 n).toNat

end

end A018705.P14839717906549536399

/-! ## A018705.P5609538927759592864

`A006046(A018275(n+1))`
-/

namespace A018705.P5609538927759592864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A018275 (n + 1)).toNat

end

end A018705.P5609538927759592864

/-! ## A018705.P10920192859517837312

`A003961(A128395(n+1))`
-/

namespace A018705.P10920192859517837312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A128395 (n + 1)).toNat

end

end A018705.P10920192859517837312

/-! ## A018705.P524154800221087644

`∩[A060141(n), A113522(n+1)]`
-/

namespace A018705.P524154800221087644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060141 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018705.P524154800221087644

/-!
# A018706: Divisors of 892.

The programs for A018706, there is no canonical definition to state claims against.
-/

/-! ## A018706.P17773742609028525891

`A269171(A018611(n+1))`
-/

namespace A018706.P17773742609028525891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A018611 (n + 1)).toNat

end

end A018706.P17773742609028525891

/-!
# A018707: Divisors of 894.

The programs for A018707, there is no canonical definition to state claims against.
-/

/-! ## A018707.P12017285476636080465

`record[gcd(∑[(n+1)²]+n, n^3+n)]`
-/

namespace A018707.P12017285476636080465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f2 j + n) (n ^ 3 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018707.P12017285476636080465

/-! ## A018707.P7098393456437550487

`A160102(A018574(n+1))`
-/

namespace A018707.P7098393456437550487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A018574 (n + 1)).toNat

end

end A018707.P7098393456437550487

/-! ## A018707.P16211972994803519612

`A332808(A018734(n+1))`
-/

namespace A018707.P16211972994803519612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018734 (n + 1)).toNat

end

end A018707.P16211972994803519612

/-! ## A018707.P16328903085331433520

`∏{p}[A018415(n+1), A051532(#)]`
-/

namespace A018707.P16328903085331433520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A051532 p

end

end A018707.P16328903085331433520

/-!
# A018708: Divisors of 896.

The programs for A018708, there is no canonical definition to state claims against.
-/

/-! ## A018708.P15187929435109365139

`record[lcm(3, A177500(n+1))/3]`
-/

namespace A018708.P15187929435109365139
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A177500 (n + 1)) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018708.P15187929435109365139

/-! ## A018708.P3413181948443218386

`A029746(lt[n/(n%2+1), 13])`
-/

namespace A018708.P3413181948443218386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A018708.P3413181948443218386

/-! ## A018708.P11297065823248620492

`A029746(lt[ceil(lcm(2, n+1)/4), 8])`
-/

namespace A018708.P11297065823248620492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (n + 1) : ℚ) / 4⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A018708.P11297065823248620492

/-! ## A018708.P8169818786741226531

`A029746(lt[(n+1)/2^val(n+1, 2), 14])`
-/

namespace A018708.P8169818786741226531
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A018708.P8169818786741226531

/-!
# A018709: Divisors of 897.

The programs for A018709, there is no canonical definition to state claims against.
-/

/-! ## A018709.P15227715199658187545

`∏{p}[A018540(n+1), or(1, #)]`
-/

namespace A018709.P15227715199658187545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018540 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 1 p

end

end A018709.P15227715199658187545

/-! ## A018709.P7264605852294181071

`∏{p}[A018730(n+1), xor(6, #)]`
-/

namespace A018709.P7264605852294181071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.xor 6 p

end

end A018709.P7264605852294181071

/-! ## A018709.P7087218958529529342

`record[gcd(or(1, n), A100163(5*n+2))]`
-/

namespace A018709.P7087218958529529342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.lor 1 n : ℤ) (A100163 (5 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018709.P7087218958529529342

/-! ## A018709.P9361335554488396093

`record[gcd((n+1)/2^val(n+1, 2), A100163(4*n+1))]`
-/

namespace A018709.P9361335554488396093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A100163 (4 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018709.P9361335554488396093

/-!
# A018710: Divisors of 900.

The programs for A018710, there is no canonical definition to state claims against.
-/

/-! ## A018710.P8711077868784887036

`record[A007948(A035303(n+1))]`
-/

namespace A018710.P8711077868784887036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A035303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018710.P8711077868784887036

/-! ## A018710.P6778142233181746243

`record[A007948(A051037(n+1))]`
-/

namespace A018710.P6778142233181746243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A051037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018710.P6778142233181746243

/-! ## A018710.P12763062896623467655

`record[A007948(A329469(n+1))]`
-/

namespace A018710.P12763062896623467655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A329469 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018710.P12763062896623467655

/-! ## A018710.P15626783607680844191

`record[A025480(A329469(n+2))]`
-/

namespace A018710.P15626783607680844191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A329469 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018710.P15626783607680844191

/-! ## A018710.P2837022212179278867

`record[A032742(A329469(n+3))]`
-/

namespace A018710.P2837022212179278867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A329469 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018710.P2837022212179278867

/-!
# A018711: Divisors of 902.

The programs for A018711, there is no canonical definition to state claims against.
-/

/-! ## A018711.P7713068815990014380

`A116912(A018497(n+1))`
-/

namespace A018711.P7713068815990014380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116912 (A018497 (n + 1)).toNat

end

end A018711.P7713068815990014380

/-! ## A018711.P3736779844784002722

`∏{p}[A018296(n+1), A167409(#)]`
-/

namespace A018711.P3736779844784002722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A167409 p

end

end A018711.P3736779844784002722

/-! ## A018711.P4883921081478063895

`∏{p}[A018386(n+1), A275603(#)]`
-/

namespace A018711.P4883921081478063895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A275603 p

end

end A018711.P4883921081478063895

/-! ## A018711.P1878103246683675531

`∏{p}[A018349(n+1), A276625(#)]`
-/

namespace A018711.P1878103246683675531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A276625 p

end

end A018711.P1878103246683675531

/-!
# A018712: Divisors of 903.

The programs for A018712, there is no canonical definition to state claims against.
-/

/-! ## A018712.P13011967557572278232

`a(n-gcd(4, n))+2*a(n-1)` with `a(0)=1`
-/

namespace A018712.P13011967557572278232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - Nat.gcd 4 n) + 2 * a (n - 1)

end

end A018712.P13011967557572278232

/-! ## A018712.P7529668555828552888

`a(and(n, n-1))+2*a(n-1)` with `a(0)=1`
-/

namespace A018712.P7529668555828552888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 2 * a (n - 1)

end

end A018712.P7529668555828552888

/-! ## A018712.P10808185775847920761

`a(and(n, n-1))+a(n-1)/sqrt(1/4)` with `a(0)=1`
-/

namespace A018712.P10808185775847920761
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + a (n - 1) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A018712.P10808185775847920761

/-! ## A018712.P15675803628788125307

`A191614(Δ[n²])`
-/

namespace A018712.P15675803628788125307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191614 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A018712.P15675803628788125307

/-!
# A018713: Divisors of 904.

The programs for A018713, there is no canonical definition to state claims against.
-/

/-! ## A018713.P3502278265401507802

`or(2^n, A018640(n+1))`
-/

namespace A018713.P3502278265401507802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A018640 (n + 1))

end

end A018713.P3502278265401507802

/-! ## A018713.P3100654368538104374

`A057889(A018523(n+1))`
-/

namespace A018713.P3100654368538104374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A018523 (n + 1)).toNat

end

end A018713.P3100654368538104374

/-! ## A018713.P8851680779961941045

`A073122(A018422(n+1))`
-/

namespace A018713.P8851680779961941045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073122 (A018422 (n + 1)).toNat

end

end A018713.P8851680779961941045

/-! ## A018713.P14738704955747242114

`A116912(A018694(n+1))`
-/

namespace A018713.P14738704955747242114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116912 (A018694 (n + 1)).toNat

end

end A018713.P14738704955747242114

/-!
# A018714: Divisors of 906.

The programs for A018714, there is no canonical definition to state claims against.
-/

/-! ## A018714.P8109066610318034245

`record[gcd(n+5, A006484(n)+1)]`
-/

namespace A018714.P8109066610318034245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 5 : ℤ) (A006484 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018714.P8109066610318034245

/-! ## A018714.P157383248744803630

`record[gcd(n+1, A243011(6*n+1))]`
-/

namespace A018714.P157383248744803630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A243011 (6 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018714.P157383248744803630

/-! ## A018714.P13220514673560825204

`A160102(A018588(n+1))`
-/

namespace A018714.P13220514673560825204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A018588 (n + 1)).toNat

end

end A018714.P13220514673560825204

/-! ## A018714.P5166136263595233668

`A290641(A018340(n+1))`
-/

namespace A018714.P5166136263595233668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (A018340 (n + 1)).toNat

end

end A018714.P5166136263595233668

/-!
# A018715: Divisors of 908.

The programs for A018715, there is no canonical definition to state claims against.
-/

/-! ## A018715.P1094917382770426570

`A133036(comp[4*n])`
-/

namespace A018715.P1094917382770426570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133036 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018715.P1094917382770426570

/-!
# A018716: Divisors of 909.

The programs for A018716, there is no canonical definition to state claims against.
-/

/-! ## A018716.P395323845536826084

`A360423(∑[gcd(3, n)]-2)`
-/

namespace A018716.P395323845536826084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360423 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A018716.P395323845536826084

/-!
# A018717: Divisors of 910.

The programs for A018717, there is no canonical definition to state claims against.
-/

/-! ## A018717.P18014791965161093467

`A076752(A018614(n+1))`
-/

namespace A018717.P18014791965161093467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076752 (A018614 (n + 1)).toNat

end

end A018717.P18014791965161093467

/-! ## A018717.P10560991645548649073

`A235027(A018636(n+1))`
-/

namespace A018717.P10560991645548649073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A018636 (n + 1)).toNat

end

end A018717.P10560991645548649073

/-! ## A018717.P6967594357819497713

`∏{p}[A194359(n), A100116(#)]`
-/

namespace A018717.P6967594357819497713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A100116 p

end

end A018717.P6967594357819497713

/-! ## A018717.P3215449975680515882

`filter[A198343(n+1), A359377(#)]`
-/

namespace A018717.P3215449975680515882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A018717.P3215449975680515882

/-! ## A018717.P124998007080261020

`∏{p}[A018636(n+1), A007094(#)]`
-/

namespace A018717.P124998007080261020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007094 p

end

end A018717.P124998007080261020

/-!
# A018718: Divisors of 912.

The programs for A018718, there is no canonical definition to state claims against.
-/

/-! ## A018718.P1394365240847816786

`eq[76, lcm(76, A051724(n))]`
-/

namespace A018718.P1394365240847816786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  76

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 76 (A051724 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018718.P1394365240847816786

/-! ## A018718.P4642704125577237722

`record[gcd(n+1, A192791(A008458(n)))]`
-/

namespace A018718.P4642704125577237722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A192791 (A008458 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018718.P4642704125577237722

/-! ## A018718.P11059640910162367754

`record[gcd(A152030(n+1), A260429(n+1))]`
-/

namespace A018718.P11059640910162367754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A152030 (n + 1)) (A260429 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018718.P11059640910162367754

/-! ## A018718.P9773554717638049363

`record[gcd(A035598(2*n), A325564(n+1))]`
-/

namespace A018718.P9773554717638049363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035598 (2 * n)) (A325564 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018718.P9773554717638049363

/-! ## A018718.P6319149921143637913

`∪[4*A018343(n+1), A018343(n+1)]`
-/

namespace A018718.P6319149921143637913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A018343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018718.P6319149921143637913

/-!
# A018719: Divisors of 915.

The programs for A018719, there is no canonical definition to state claims against.
-/

/-! ## A018719.P18198957026907933194

`record[gcd(C(4*n+2, 2)², A133263(n))]`
-/

namespace A018719.P18198957026907933194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (4 * n + 2) 2 ^ 2 : ℤ) (A133263 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018719.P18198957026907933194

/-! ## A018719.P2946237805690027519

`A332213(A050614(n))`
-/

namespace A018719.P2946237805690027519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A050614 n).toNat

end

end A018719.P2946237805690027519

/-! ## A018719.P9326595625925037406

`A003961(A018409(n+1))`
-/

namespace A018719.P9326595625925037406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A018409 (n + 1)).toNat

end

end A018719.P9326595625925037406

/-! ## A018719.P17915070717177671788

`A018804(A018324(n+1))`
-/

namespace A018719.P17915070717177671788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (A018324 (n + 1)).toNat

end

end A018719.P17915070717177671788

/-!
# A018720: Divisors of 916.

The programs for A018720, there is no canonical definition to state claims against.
-/

/-! ## A018720.P10140323063687769447

`round(2^A351650(n+1)/sqrt(5))`
-/

namespace A018720.P10140323063687769447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 : ℚ) ^ (A351650 (n + 1) : ℤ) : ℝ) / Real.sqrt (5 : ℝ))

end

end A018720.P10140323063687769447

/-!
# A018721: Divisors of 918.

The programs for A018721, there is no canonical definition to state claims against.
-/

/-! ## A018721.P7229613078312464532

`∪[A018384(n+1), A008585(A018384(n+1))]`
-/

namespace A018721.P7229613078312464532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A018384 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018721.P7229613078312464532

/-! ## A018721.P16474788286363991452

`record[gcd(round((n-1)/2)+2, A008458(8*n+15))]`
-/

namespace A018721.P16474788286363991452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2) (A008458 (8 * n + 15))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018721.P16474788286363991452

/-! ## A018721.P5816778926931018869

`∪[A018338(2*n+1), A018284(n+2)]`
-/

namespace A018721.P5816778926931018869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018338 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018284 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018721.P5816778926931018869

/-! ## A018721.P12587148639904708348

`record[gcd(n+1, A165677(A155212(2*(n+1))+1))]`
-/

namespace A018721.P12587148639904708348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A165677 (A155212 (2 * (n + 1)) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018721.P12587148639904708348

/-! ## A018721.P683588642943019548

`∩[A029463(n+1), A349294(n+1)]`
-/

namespace A018721.P683588642943019548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018721.P683588642943019548

/-!
# A018722: Divisors of 920.

The programs for A018722, there is no canonical definition to state claims against.
-/

/-! ## A018722.P11754180733232315246

`A257174(A018594(n+1))`
-/

namespace A018722.P11754180733232315246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257174 (A018594 (n + 1)).toNat

end

end A018722.P11754180733232315246

/-! ## A018722.P2858833360920800286

`∑{d}[A018594(n+1), A326401(#)]`
-/

namespace A018722.P2858833360920800286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A326401 d

end

end A018722.P2858833360920800286

/-! ## A018722.P8399698216187142697

`∪[2*A018467(n+1), A018467(n+1)]`
-/

namespace A018722.P8399698216187142697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018722.P8399698216187142697

/-! ## A018722.P15977736118070711878

`∪[5*A018323(n+1), A018323(n+1)]`
-/

namespace A018722.P15977736118070711878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A018323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018722.P15977736118070711878

/-! ## A018722.P17043849262089837332

`∩[A010443(n+1), A193159(n+1)]`
-/

namespace A018722.P17043849262089837332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018722.P17043849262089837332

/-!
# A018723: Divisors of 924.

The programs for A018723, there is no canonical definition to state claims against.
-/

/-! ## A018723.P99405993861886436

`record[A060791(A245809(n+1))]`
-/

namespace A018723.P99405993861886436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (A245809 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018723.P99405993861886436

/-! ## A018723.P5769759392785581584

`filter[A245809(n+1), A011558(#)]`
-/

namespace A018723.P5769759392785581584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A018723.P5769759392785581584

/-! ## A018723.P15430624407262929788

`∩[A004144(n+1), A245809(n+1)]`
-/

namespace A018723.P15430624407262929788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018723.P15430624407262929788

/-! ## A018723.P6403841188447883199

`∩[A047201(n+1), A245809(n+1)]`
-/

namespace A018723.P6403841188447883199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018723.P6403841188447883199

/-! ## A018723.P10059266007226300372

`∩[A081754(n+1), A245809(n+1)]`
-/

namespace A018723.P10059266007226300372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018723.P10059266007226300372

/-!
# A018724: Divisors of 925.

The programs for A018724, there is no canonical definition to state claims against.
-/

/-! ## A018724.P21381073367324374

`37*a(n-3)` with `a(0)=1, a(1)=5, a(2)=25`
-/

namespace A018724.P21381073367324374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25] fun n a =>
  37 * a (n - 3)

end

end A018724.P21381073367324374

/-!
# A018725: Divisors of 927.

The programs for A018725, there is no canonical definition to state claims against.
-/

/-! ## A018725.P18412581287229550612

`A003961(A018435(n+1))`
-/

namespace A018725.P18412581287229550612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A018435 (n + 1)).toNat

end

end A018725.P18412581287229550612

/-!
# A018726: Divisors of 928.

The programs for A018726, there is no canonical definition to state claims against.
-/

/-! ## A018726.P12187094801287345618

`eq[lcm(32, n)/32, A025177(lcm(32, n)/32)]`
-/

namespace A018726.P12187094801287345618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 32 n : ℚ) / 32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (SequenceMachineLib.roundAway ((Nat.lcm 32 n : ℚ) / 32)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A018726.P12187094801287345618

/-! ## A018726.P14772809172908515933

`A057889(A018618(n+1))`
-/

namespace A018726.P14772809172908515933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A018618 (n + 1)).toNat

end

end A018726.P14772809172908515933

/-! ## A018726.P4101584729054693744

`A072010(A018763(n+1))`
-/

namespace A018726.P4101584729054693744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072010 (A018763 (n + 1)).toNat

end

end A018726.P4101584729054693744

/-! ## A018726.P2748794317116761980

`A053645(3*A018763(n+1))`
-/

namespace A018726.P2748794317116761980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (3 * A018763 (n + 1)).toNat

end

end A018726.P2748794317116761980

/-! ## A018726.P2025493849022673262

`A184997(4*A018763(n+1))`
-/

namespace A018726.P2025493849022673262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184997 (4 * A018763 (n + 1)).toNat

end

end A018726.P2025493849022673262

/-!
# A018727: Divisors of 930.

The programs for A018727, there is no canonical definition to state claims against.
-/

/-! ## A018727.P7956308270173423569

`record[gcd(A007913(n+1), A186864(3*(n+1)))]`
-/

namespace A018727.P7956308270173423569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007913 (n + 1)) (A186864 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018727.P7956308270173423569

/-! ## A018727.P2770134550081260650

`A167743(A166966(n))`
-/

namespace A018727.P2770134550081260650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167743 (A166966 n).toNat

end

end A018727.P2770134550081260650

/-! ## A018727.P7278324055942087722

`eq[A109700(n), A372344(n)]`
-/

namespace A018727.P7278324055942087722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018727.P7278324055942087722

/-! ## A018727.P9309097954305139340

`eq[A219946(n), A332012(n)]`
-/

namespace A018727.P9309097954305139340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018727.P9309097954305139340

/-!
# A018728: Divisors of 931.

The programs for A018728, there is no canonical definition to state claims against.
-/

/-! ## A018728.P2398440477281677136

`a(n-2)*a(n-3)` with `a(0)=1, a(1)=7, a(2)=19, a(3)=49`
-/

namespace A018728.P2398440477281677136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 19, 49] fun n a =>
  a (n - 2) * a (n - 3)

end

end A018728.P2398440477281677136

/-!
# A018729: Divisors of 932.

The programs for A018729, there is no canonical definition to state claims against.
-/

/-! ## A018729.P15851838308184628042

`A033860(A007090(n+1))`
-/

namespace A018729.P15851838308184628042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033860 (A007090 (n + 1)).toNat

end

end A018729.P15851838308184628042

/-!
# A018730: Divisors of 935.

The programs for A018730, there is no canonical definition to state claims against.
-/

/-! ## A018730.P15398945050097097252

`∏{p}[A133029(n+1), #-2]`
-/

namespace A018730.P15398945050097097252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 2)

end

end A018730.P15398945050097097252

/-! ## A018730.P6343101688052769255

`A064988(A057743(n))`
-/

namespace A018730.P6343101688052769255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A057743 n).toNat

end

end A018730.P6343101688052769255

/-! ## A018730.P2160311409476566749

`A064988(A194360(n))`
-/

namespace A018730.P2160311409476566749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A194360 n).toNat

end

end A018730.P2160311409476566749

/-! ## A018730.P8727535663939906430

`A003961(A018367(n+1))`
-/

namespace A018730.P8727535663939906430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A018367 (n + 1)).toNat

end

end A018730.P8727535663939906430

/-!
# A018731: Divisors of 936.

The programs for A018731, there is no canonical definition to state claims against.
-/

/-! ## A018731.P17678837619811975022

`eq[52, lcm(52, A106619(n))]`
-/

namespace A018731.P17678837619811975022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 52 (A106619 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018731.P17678837619811975022

/-! ## A018731.P12470475821139911860

`eq[n, gcd(n, A157796(n+6))]`
-/

namespace A018731.P12470475821139911860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A157796 (n + 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018731.P12470475821139911860

/-! ## A018731.P16787239918232079040

`eq[gcd(78, A051724(n)), A051724(n)]`
-/

namespace A018731.P16787239918232079040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 78 (A051724 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018731.P16787239918232079040

/-! ## A018731.P5551685489237101408

`record[gcd(A025480(n)+1, A167549(n+1))]`
-/

namespace A018731.P5551685489237101408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025480 n + 1) (A167549 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018731.P5551685489237101408

/-! ## A018731.P5007912721770414396

`record[gcd(A187165(n+1), A291329(n+2))]`
-/

namespace A018731.P5007912721770414396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A187165 (n + 1)) (A291329 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018731.P5007912721770414396

/-!
# A018732: Divisors of 938.

The programs for A018732, there is no canonical definition to state claims against.
-/

/-! ## A018732.P6805057512104682366

`∏{p}[A018584(n+1), or(2, #)]`
-/

namespace A018732.P6805057512104682366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018584 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 2 p

end

end A018732.P6805057512104682366

/-! ## A018732.P18000378704316114200

`A160102(A018472(n+1))`
-/

namespace A018732.P18000378704316114200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A018472 (n + 1)).toNat

end

end A018732.P18000378704316114200

/-! ## A018732.P16636332329538260543

`A332808(A132997(n+1))`
-/

namespace A018732.P16636332329538260543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A132997 (n + 1)).toNat

end

end A018732.P16636332329538260543

/-! ## A018732.P7612349022501272189

`∏{p}[A001317(n), A253275(#)]`
-/

namespace A018732.P7612349022501272189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A253275 p

end

end A018732.P7612349022501272189

/-!
# A018734: Divisors of 942.

The programs for A018734, there is no canonical definition to state claims against.
-/

/-! ## A018734.P7435934311968589829

`record[gcd(n-1-∑[n²], n*(C(n, 2)-2))]`
-/

namespace A018734.P7435934311968589829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) ((n : ℤ) * ((Nat.choose n 2 : ℤ) - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018734.P7435934311968589829

/-! ## A018734.P4967400146047297960

`record[gcd(A006503(n), A116668(n))]`
-/

namespace A018734.P4967400146047297960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006503 n) (A116668 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018734.P4967400146047297960

/-! ## A018734.P9072505635754430675

`record[gcd(A046691(n), A245301(n))]`
-/

namespace A018734.P9072505635754430675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046691 n) (A245301 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018734.P9072505635754430675

/-! ## A018734.P5579864186462511074

`record[gcd(A050533(n), A299646(n))]`
-/

namespace A018734.P5579864186462511074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050533 n) (A299646 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018734.P5579864186462511074

/-!
# A018735: Divisors of 944.

The programs for A018735, there is no canonical definition to state claims against.
-/

/-! ## A018735.P516761056602579154

`A091202(A018575(n+1))`
-/

namespace A018735.P516761056602579154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A018575 (n + 1)).toNat

end

end A018735.P516761056602579154

/-! ## A018735.P8746628896253768368

`A266401(A018593(n+1))`
-/

namespace A018735.P8746628896253768368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266401 (A018593 (n + 1)).toNat

end

end A018735.P8746628896253768368

/-! ## A018735.P13241451054803884250

`A002472(2*A018754(n+1))`
-/

namespace A018735.P13241451054803884250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (2 * A018754 (n + 1)).toNat

end

end A018735.P13241451054803884250

/-! ## A018735.P16630911133485391674

`A038554(2*A018575(n+1))`
-/

namespace A018735.P16630911133485391674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (2 * A018575 (n + 1)).toNat

end

end A018735.P16630911133485391674

/-! ## A018735.P9990658193715194984

`A184997(4*A018754(n+1))`
-/

namespace A018735.P9990658193715194984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184997 (4 * A018754 (n + 1)).toNat

end

end A018735.P9990658193715194984

/-!
# A018736: Divisors of 945.

The programs for A018736, there is no canonical definition to state claims against.
-/

/-! ## A018736.P16610535581014361785

`record[∏{digits}[A119253(n+1), #]]`
-/

namespace A018736.P16610535581014361785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119253 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018736.P16610535581014361785

/-! ## A018736.P15210413751949795491

`∏{digits}[A119260(n+1), #+1]`
-/

namespace A018736.P15210413751949795491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A018736.P15210413751949795491

/-! ## A018736.P10175529458914649618

`∩[2*n+1, A178859(n+1)]`
-/

namespace A018736.P10175529458914649618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018736.P10175529458914649618

/-! ## A018736.P8878111762888816699

`∩[2*n+1, A178861(n+1)]`
-/

namespace A018736.P8878111762888816699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018736.P8878111762888816699

/-! ## A018736.P5726578102760742047

`∩[2*n+1, A200001(n+1)]`
-/

namespace A018736.P5726578102760742047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018736.P5726578102760742047

/-!
# A018737: Divisors of 946.

The programs for A018737, there is no canonical definition to state claims against.
-/

/-! ## A018737.P18382876159401753941

`∏{p}[A018711(n+1), or(2, #)]`
-/

namespace A018737.P18382876159401753941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018711 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 2 p

end

end A018737.P18382876159401753941

/-! ## A018737.P1453090070262023384

`record[∏{p}[A276086(n), A024493(#)]]`
-/

namespace A018737.P1453090070262023384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A024493 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018737.P1453090070262023384

/-! ## A018737.P15824289153566631924

`∏{p}[A018349(n+1), A104192(#)]`
-/

namespace A018737.P15824289153566631924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A104192 p

end

end A018737.P15824289153566631924

/-! ## A018737.P6717117364153670300

`∏{p}[A018711(n+1), A129674(#)]`
-/

namespace A018737.P6717117364153670300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A129674 p

end

end A018737.P6717117364153670300

/-!
# A018738: Divisors of 948.

The programs for A018738, there is no canonical definition to state claims against.
-/

/-! ## A018738.P12256518596743316118

`A332808(A018683(n+1))`
-/

namespace A018738.P12256518596743316118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018683 (n + 1)).toNat

end

end A018738.P12256518596743316118

/-! ## A018738.P17324494050530725180

`2*A018698(n+1)-A018655(n+1)`
-/

namespace A018738.P17324494050530725180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018698 (n + 1) - A018655 (n + 1)

end

end A018738.P17324494050530725180

/-! ## A018738.P14621168295035631937

`∪[2*A018474(n+1), A018474(n+1)]`
-/

namespace A018738.P14621168295035631937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018738.P14621168295035631937

/-! ## A018738.P2220456463666063586

`∪[3*A018389(n+1), A018389(n+1)]`
-/

namespace A018738.P2220456463666063586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A018389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018738.P2220456463666063586

/-!
# A018739: Divisors of 950.

The programs for A018739, there is no canonical definition to state claims against.
-/

/-! ## A018739.P17561271252382229350

`record[gcd(n+3, A249127(10*n+5))]`
-/

namespace A018739.P17561271252382229350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A249127 (10 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018739.P17561271252382229350

/-! ## A018739.P18253243576805395514

`record[A032742(A133040(n+1))]`
-/

namespace A018739.P18253243576805395514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A133040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018739.P18253243576805395514

/-! ## A018739.P15271152031251670725

`filter[A133040(n+1), A166486(#)]`
-/

namespace A018739.P15271152031251670725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A018739.P15271152031251670725

/-! ## A018739.P3434204883744357471

`filter[A133040(n+1), A341625(#)]`
-/

namespace A018739.P3434204883744357471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A018739.P3434204883744357471

/-! ## A018739.P13407145221432065245

`filter[A133040(n+1), A359374(#)]`
-/

namespace A018739.P13407145221432065245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A018739.P13407145221432065245

/-!
# A018740: Divisors of 952.

The programs for A018740, there is no canonical definition to state claims against.
-/

/-! ## A018740.P13458381055009099047

`eq[gcd(7, n), A106618(lcm(8, n)/8)]`
-/

namespace A018740.P13458381055009099047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 7 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018740.P13458381055009099047

/-! ## A018740.P4323699706509733127

`A235201(A018396(n+1))`
-/

namespace A018740.P4323699706509733127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A018396 (n + 1)).toNat

end

end A018740.P4323699706509733127

/-! ## A018740.P11027797852998391707

`record[A235201(A018578(n+1))]`
-/

namespace A018740.P11027797852998391707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A018578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018740.P11027797852998391707

/-! ## A018740.P557292283924487260

`eq[gcd(8, n), A106618(A106608(n))]`
-/

namespace A018740.P557292283924487260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 8 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A106608 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018740.P557292283924487260

/-! ## A018740.P5455463064105543681

`A235201(record[∏{p}[A018762(n+1), #]])`
-/

namespace A018740.P5455463064105543681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018762 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A018740.P5455463064105543681

/-!
# A018741: Divisors of 954.

The programs for A018741, there is no canonical definition to state claims against.
-/

/-! ## A018741.P3769436022653921932

`record[gcd(A032742(n+3), A304836(2*n+1))]`
-/

namespace A018741.P3769436022653921932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032742 (n + 3)) (A304836 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018741.P3769436022653921932

/-! ## A018741.P7450718033269087459

`∪[2*A018477(n+1), A018477(n+1)]`
-/

namespace A018741.P7450718033269087459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018741.P7450718033269087459

/-!
# A018742: Divisors of 956.

The programs for A018742, there is no canonical definition to state claims against.
-/

/-! ## A018742.P12905037075760424491

`a(n-3)*A183194(n+1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018742.P12905037075760424491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 3) * A183194 (n + 1)

end

end A018742.P12905037075760424491

/-!
# A018743: Divisors of 957.

The programs for A018743, there is no canonical definition to state claims against.
-/

/-! ## A018743.P3517952064202323827

`record[gcd(lcm(2, n+2)/2, A276704(8*n+2))]`
-/

namespace A018743.P3517952064202323827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 2) : ℚ) / 2)) (A276704 (8 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018743.P3517952064202323827

/-! ## A018743.P9830880028511305251

`∏{p}[A018270(n+1), A000032(#)]`
-/

namespace A018743.P9830880028511305251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000032 p

end

end A018743.P9830880028511305251

/-! ## A018743.P11574903521146730511

`∏{p}[A018411(n+1), A037468(#)]`
-/

namespace A018743.P11574903521146730511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A037468 p

end

end A018743.P11574903521146730511

/-! ## A018743.P2161795786914130363

`∏{p}[A018420(n+1), A117928(#)]`
-/

namespace A018743.P2161795786914130363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A117928 p

end

end A018743.P2161795786914130363

/-!
# A018744: Divisors of 960.

The programs for A018744, there is no canonical definition to state claims against.
-/

/-! ## A018744.P15554352369520942910

`eq[30, lcm(30, A227140(n))]`
-/

namespace A018744.P15554352369520942910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 30 (A227140 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018744.P15554352369520942910

/-! ## A018744.P15146440020231885752

`record[gcd(24*(24*n+8), A106466(n))]`
-/

namespace A018744.P15146440020231885752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (24 * (24 * n + 8) : ℤ) (A106466 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018744.P15146440020231885752

/-! ## A018744.P998185327581508052

`record[A343721(A178862(n+1))]`
-/

namespace A018744.P998185327581508052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343721 (A178862 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018744.P998185327581508052

/-! ## A018744.P14088730052621188327

`filter[A178862(n+1), A336477(#)]`
-/

namespace A018744.P14088730052621188327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A018744.P14088730052621188327

/-! ## A018744.P14652002733788268909

`filter[A245030(n+1), A336477(#)]`
-/

namespace A018744.P14652002733788268909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A018744.P14652002733788268909

/-!
# A018745: Divisors of 962.

The programs for A018745, there is no canonical definition to state claims against.
-/

/-! ## A018745.P3596379848137215590

`A267099(A018392(n+1))`
-/

namespace A018745.P3596379848137215590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A018392 (n + 1)).toNat

end

end A018745.P3596379848137215590

/-! ## A018745.P13994095885948179482

`A332808(A018590(n+1))`
-/

namespace A018745.P13994095885948179482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018590 (n + 1)).toNat

end

end A018745.P13994095885948179482

/-! ## A018745.P16946796619287102296

`record[gcd(A154277(n), A266977(n))]`
-/

namespace A018745.P16946796619287102296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154277 n) (A266977 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018745.P16946796619287102296

/-! ## A018745.P1594657335118801137

`filter[A064392(n+1), A295890(#)]`
-/

namespace A018745.P1594657335118801137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295890 (f1 j).toNat = 1) n)

end

end A018745.P1594657335118801137

/-!
# A018746: Divisors of 963.

The programs for A018746, there is no canonical definition to state claims against.
-/

/-! ## A018746.P12410945326823793995

`A047270(∏{p}[n+1, #^val(n+1, #²)]²*a(n-1))` with `a(0)=1`
-/

namespace A018746.P12410945326823793995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047270 ((((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℤ) * a (n - 1)).toNat

end

end A018746.P12410945326823793995

/-!
# A018747: Divisors of 964.

The programs for A018747, there is no canonical definition to state claims against.
-/

/-! ## A018747.P10650637104685100267

`A044916(2^comp[Δ[lcm(3, n)]])`
-/

namespace A018747.P10650637104685100267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044916 (2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A018747.P10650637104685100267

/-!
# A018748: Divisors of 966.

The programs for A018748, there is no canonical definition to state claims against.
-/

/-! ## A018748.P11058480442894015197

`record[gcd(A007913(n+1), A259060(n+4))]`
-/

namespace A018748.P11058480442894015197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007913 (n + 1)) (A259060 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018748.P11058480442894015197

/-! ## A018748.P5937596338653495564

`∪[2*A018479(n+1), A018479(n+1)]`
-/

namespace A018748.P5937596338653495564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018748.P5937596338653495564

/-! ## A018748.P15112110443128770172

`∪[3*A018392(n+1), A018392(n+1)]`
-/

namespace A018748.P15112110443128770172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A018392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018748.P15112110443128770172

/-! ## A018748.P3680648280798401494

`record[A317971(n+1)/A001175(A317971(n+1))]`
-/

namespace A018748.P3680648280798401494
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317971 (n + 1) : ℚ) / (A001175 (A317971 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018748.P3680648280798401494

/-!
# A018749: Divisors of 968.

The programs for A018749, there is no canonical definition to state claims against.
-/

/-! ## A018749.P17527310106472436012

`11*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A018749.P17527310106472436012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  11 * a (n - 4)

end

end A018749.P17527310106472436012

/-! ## A018749.P9544232795871737108

`record[gcd((n+1)/3^val(n+1, 3), A017391(3*n+1))]`
-/

namespace A018749.P9544232795871737108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) (A017391 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018749.P9544232795871737108

/-! ## A018749.P3170852223046751455

`A171397(A004655(n))`
-/

namespace A018749.P3170852223046751455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A004655 n).toNat

end

end A018749.P3170852223046751455

/-! ## A018749.P5120198067848459096

`eq[A056960(n), A109011(n)]`
-/

namespace A018749.P5120198067848459096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018749.P5120198067848459096

/-! ## A018749.P16731902807639578218

`eq[A109011(n), A118541(n)]`
-/

namespace A018749.P16731902807639578218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109011 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018749.P16731902807639578218

/-!
# A018750: Divisors of 969.

The programs for A018750, there is no canonical definition to state claims against.
-/

/-! ## A018750.P5551216041419817782

`∏{p}[A018569(n+1), or(1, #)]`
-/

namespace A018750.P5551216041419817782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018569 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 1 p

end

end A018750.P5551216041419817782

/-! ## A018750.P5727545955868403317

`record[gcd(n+2, A100164(2*n+1))]`
-/

namespace A018750.P5727545955868403317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A100164 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018750.P5727545955868403317

/-! ## A018750.P17531616344100744766

`A003961(A018459(n+1))`
-/

namespace A018750.P17531616344100744766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A018459 (n + 1)).toNat

end

end A018750.P17531616344100744766

/-! ## A018750.P7543462772559683733

`A137894(A018569(n+1))`
-/

namespace A018750.P7543462772559683733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137894 (A018569 (n + 1)).toNat

end

end A018750.P7543462772559683733

/-!
# A018751: Divisors of 970.

The programs for A018751, there is no canonical definition to state claims against.
-/

/-! ## A018751.P425338719413848955

`A057889(A018584(n+1))`
-/

namespace A018751.P425338719413848955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A018584 (n + 1)).toNat

end

end A018751.P425338719413848955

/-! ## A018751.P10031813513922721296

`A071786(A018648(n+1))`
-/

namespace A018751.P10031813513922721296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A018648 (n + 1)).toNat

end

end A018751.P10031813513922721296

/-! ## A018751.P12481059453559482287

`A332808(A018773(n+1))`
-/

namespace A018751.P12481059453559482287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018773 (n + 1)).toNat

end

end A018751.P12481059453559482287

/-! ## A018751.P6565364171282299993

`∏{p}[A001317(n), A105471(#)]`
-/

namespace A018751.P6565364171282299993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A105471 p

end

end A018751.P6565364171282299993

/-!
# A018752: Divisors of 972.

The programs for A018752, there is no canonical definition to state claims against.
-/

/-! ## A018752.P2761324754511139789

`A000792(comp[18*n])`
-/

namespace A018752.P2761324754511139789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018752.P2761324754511139789

/-! ## A018752.P1647556202461700562

`record[A036561(round(n²/44))]`
-/

namespace A018752.P1647556202461700562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 44)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018752.P1647556202461700562

/-! ## A018752.P1868054245404012021

`∪[3*a(n-2), A067500(n+1)]` with `a(0)=2, a(1)=4`
-/

namespace A018752.P1868054245404012021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  3 * f1 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018752.P1868054245404012021

/-! ## A018752.P10289036345076449164

`record[A000792(n)%(2*C(∑{d}[n+1, #]+1, 2)+1)]`
-/

namespace A018752.P10289036345076449164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000792 n) (2 * Nat.choose (∑ d ∈ Nat.divisors (f2 n), d + 1) 2 + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018752.P10289036345076449164

/-! ## A018752.P390005146230272749

`record[A000792(A025873(n))]`
-/

namespace A018752.P390005146230272749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A025873 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018752.P390005146230272749

/-!
# A018753: Divisors of 975.

The programs for A018753, there is no canonical definition to state claims against.
-/

/-! ## A018753.P17827992545822213860

`record[gcd(Δ[n²], A055999(7*n+16))]`
-/

namespace A018753.P17827992545822213860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) (A055999 (7 * n + 16))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018753.P17827992545822213860

/-! ## A018753.P17593391306557145291

`A332808(A018667(n+1))`
-/

namespace A018753.P17593391306557145291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018667 (n + 1)).toNat

end

end A018753.P17593391306557145291

/-! ## A018753.P15004601557110323369

`record[gcd(A000539(n), A117451(n))]`
-/

namespace A018753.P15004601557110323369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000539 n) (A117451 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018753.P15004601557110323369

/-! ## A018753.P11127083556143966717

`record[gcd(A078371(n+3), A272127(n))]`
-/

namespace A018753.P11127083556143966717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078371 (n + 3)) (A272127 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018753.P11127083556143966717

/-! ## A018753.P11253721427369192029

`∩[A325128(n+1), A395852(n+1)]`
-/

namespace A018753.P11253721427369192029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018753.P11253721427369192029

/-!
# A018754: Divisors of 976.

The programs for A018754, there is no canonical definition to state claims against.
-/

/-! ## A018754.P5255764856537829174

`2^(n+1)-A101943(n)`
-/

namespace A018754.P5255764856537829174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A101943 n

end

end A018754.P5255764856537829174

/-! ## A018754.P15581047136260742892

`or(2^n, A018469(n+1))`
-/

namespace A018754.P15581047136260742892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A018469 (n + 1))

end

end A018754.P15581047136260742892

/-! ## A018754.P8937866091493814198

`2^(n+1)-A050124(n+1)`
-/

namespace A018754.P8937866091493814198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A050124 (n + 1)

end

end A018754.P8937866091493814198

/-! ## A018754.P12151382532267641315

`2^(n+1)-A331440(n+1)`
-/

namespace A018754.P12151382532267641315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A331440 (n + 1)

end

end A018754.P12151382532267641315

/-! ## A018754.P1251437656453953285

`2^(n+1)-A378106(n+1)`
-/

namespace A018754.P1251437656453953285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A378106 (n + 1)

end

end A018754.P1251437656453953285

/-!
# A018755: Divisors of 978.

The programs for A018755, there is no canonical definition to state claims against.
-/

/-! ## A018755.P4218506375691836775

`record[gcd(C(n+1, 3)+1+n, A141631(n+1))]`
-/

namespace A018755.P4218506375691836775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (n + 1) 3 + 1 + n : ℤ) (A141631 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018755.P4218506375691836775

/-! ## A018755.P12353398652797725487

`A160102(A018632(n+1))`
-/

namespace A018755.P12353398652797725487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A018632 (n + 1)).toNat

end

end A018755.P12353398652797725487

/-! ## A018755.P7341039169517828909

`A332808(A018714(n+1))`
-/

namespace A018755.P7341039169517828909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018714 (n + 1)).toNat

end

end A018755.P7341039169517828909

/-! ## A018755.P1395075969941522112

`record[gcd(A050441(n), A056109(n))]`
-/

namespace A018755.P1395075969941522112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050441 n) (A056109 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018755.P1395075969941522112

/-!
# A018756: Divisors of 980.

The programs for A018756, there is no canonical definition to state claims against.
-/

/-! ## A018756.P17887318218284916065

`record[gcd(n+1, A195322(A017305(n)))]`
-/

namespace A018756.P17887318218284916065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A195322 (A017305 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018756.P17887318218284916065

/-! ## A018756.P11944366337863791815

`record[gcd(A003602(n+1), A117798(n+1))]`
-/

namespace A018756.P11944366337863791815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003602 (n + 1)) (A117798 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018756.P11944366337863791815

/-! ## A018756.P5615583883497515971

`record[gcd(A066990(n+1), A157652(n+1))]`
-/

namespace A018756.P5615583883497515971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066990 (n + 1)) (A157652 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018756.P5615583883497515971

/-! ## A018756.P11633223035961513507

`eq[lcm(n, A157515(n+1)), A157515(n+1)]`
-/

namespace A018756.P11633223035961513507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A157515 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018756.P11633223035961513507

/-! ## A018756.P16945041651521323878

`∪[2*A018483(n+1), A018483(n+1)]`
-/

namespace A018756.P16945041651521323878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018756.P16945041651521323878

/-!
# A018757: Divisors of 981.

The programs for A018757, there is no canonical definition to state claims against.
-/

/-! ## A018757.P12788559623742647567

`record[gcd(2*n+1, (A052905(n+7)-4)²)]`
-/

namespace A018757.P12788559623742647567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) ((A052905 (n + 7) - 4) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018757.P12788559623742647567

/-!
# A018758: Divisors of 984.

The programs for A018758, there is no canonical definition to state claims against.
-/

/-! ## A018758.P15655937978944268075

`∑[A187199(A002995(n)²)]`
-/

namespace A018758.P15655937978944268075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187199 (A002995 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018758.P15655937978944268075

/-! ## A018758.P3160818855042573390

`∑[A332277(A049887(n+1))]`
-/

namespace A018758.P3160818855042573390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332277 (A049887 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018758.P3160818855042573390

/-! ## A018758.P16670574977525989139

`record[A309711(n)+A161710(n)]`
-/

namespace A018758.P16670574977525989139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309711 n + A161710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018758.P16670574977525989139

/-! ## A018758.P15444279231180668406

`∑[∑[A089840(A138196(n+1))]]`
-/

namespace A018758.P15444279231180668406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 (A138196 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018758.P15444279231180668406

/-! ## A018758.P2961519701607106551

`record[gcd(A158416(n), A362116(n+1))]`
-/

namespace A018758.P2961519701607106551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158416 n) (A362116 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018758.P2961519701607106551

/-!
# A018759: Divisors of 986.

The programs for A018759, there is no canonical definition to state claims against.
-/

/-! ## A018759.P847401637104346572

`record[gcd(n+5, A317594(n+1)-8)]`
-/

namespace A018759.P847401637104346572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 5 : ℤ) (A317594 (n + 1) - 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018759.P847401637104346572

/-! ## A018759.P4470573253014875779

`record[gcd(n+4, A055998(9*n+2))]`
-/

namespace A018759.P4470573253014875779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 4 : ℤ) (A055998 (9 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018759.P4470573253014875779

/-! ## A018759.P2483156950140944651

`A332808(A018643(n+1))`
-/

namespace A018759.P2483156950140944651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018643 (n + 1)).toNat

end

end A018759.P2483156950140944651

/-! ## A018759.P13824580532905247287

`record[gcd(A002522(3*(n+1)), A261327(n))]`
-/

namespace A018759.P13824580532905247287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002522 (3 * (n + 1))) (A261327 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018759.P13824580532905247287

/-!
# A018760: Divisors of 987.

The programs for A018760, there is no canonical definition to state claims against.
-/

/-! ## A018760.P3780678339503547485

`A133021(n+58)`
-/

namespace A018760.P3780678339503547485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133021 (n + 58)

end

end A018760.P3780678339503547485

/-! ## A018760.P14921329864724118893

`A050614(∑{digits}[n, #])`
-/

namespace A018760.P14921329864724118893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050614 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A018760.P14921329864724118893

/-! ## A018760.P9908377609716074359

`A050614(∏{digits}[n, #])`
-/

namespace A018760.P9908377609716074359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050614 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A018760.P9908377609716074359

/-! ## A018760.P14522054249015682279

`A050614(n)+char[8]`
-/

namespace A018760.P14522054249015682279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050614 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A018760.P14522054249015682279

/-!
# A018761: Divisors of 988.

The programs for A018761, there is no canonical definition to state claims against.
-/

/-! ## A018761.P17061305744752459170

`A332808(A018674(n+1))`
-/

namespace A018761.P17061305744752459170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018674 (n + 1)).toNat

end

end A018761.P17061305744752459170

/-! ## A018761.P6318884704909777616

`eq[gcd(4, n), A106620(A106614(n))]`
-/

namespace A018761.P6318884704909777616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 (A106614 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018761.P6318884704909777616

/-! ## A018761.P10532302484265189651

`record[gcd(A054776(n)+2, A260429(n+1))]`
-/

namespace A018761.P10532302484265189651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054776 n + 2) (A260429 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018761.P10532302484265189651

/-! ## A018761.P12260742320364406418

`∪[2*A018485(n+1), A018485(n+1)]`
-/

namespace A018761.P12260742320364406418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018761.P12260742320364406418

/-! ## A018761.P95059086067255644

`∪[A018485(n+1), A022998(A018485(n+1))]`
-/

namespace A018761.P95059086067255644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A018485 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018761.P95059086067255644

/-!
# A018762: Divisors of 990.

The programs for A018762, there is no canonical definition to state claims against.
-/

/-! ## A018762.P2227485062315801359

`record[gcd(n+1, A317594(n+1)-8)]`
-/

namespace A018762.P2227485062315801359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A317594 (n + 1) - 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018762.P2227485062315801359

/-! ## A018762.P2223948636015084226

`record[gcd(A054776(n), A260429(n+1))]`
-/

namespace A018762.P2223948636015084226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054776 n) (A260429 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018762.P2223948636015084226

/-! ## A018762.P17271270841333702253

`eq[lcm(n, A154378(n+4)), A154378(n+4)]`
-/

namespace A018762.P17271270841333702253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A154378 (n + 4))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154378 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018762.P17271270841333702253

/-! ## A018762.P12325935604226909516

`record[gcd(A003602(n+2), A050534(4*n+3))]`
-/

namespace A018762.P12325935604226909516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003602 (n + 2)) (A050534 (4 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018762.P12325935604226909516

/-! ## A018762.P18166479488186498334

`∪[2*A018486(n+1), A018486(n+1)]`
-/

namespace A018762.P18166479488186498334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018762.P18166479488186498334

/-!
# A018763: Divisors of 992.

The programs for A018763, there is no canonical definition to state claims against.
-/

/-! ## A018763.P1088063311264939302

`ceil(A287118(n+1)/88)`
-/

namespace A018763.P1088063311264939302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A287118 (n + 1) : ℚ) / 88⌉

end

end A018763.P1088063311264939302

/-! ## A018763.P4435087675398789179

`A072010(A018726(n+1))`
-/

namespace A018763.P4435087675398789179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072010 (A018726 (n + 1)).toNat

end

end A018763.P4435087675398789179

/-! ## A018763.P9853463573839329459

`A091204(A018547(n+1))`
-/

namespace A018763.P9853463573839329459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 (A018547 (n + 1)).toNat

end

end A018763.P9853463573839329459

/-! ## A018763.P8225084330462311706

`A053645(5*A018547(n+1))`
-/

namespace A018763.P8225084330462311706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (5 * A018547 (n + 1)).toNat

end

end A018763.P8225084330462311706

/-! ## A018763.P3606154975279339727

`A053645(lcm(5, A018547(n+1)))`
-/

namespace A018763.P3606154975279339727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (Int.lcm 5 (A018547 (n + 1)))

end

end A018763.P3606154975279339727

/-!
# A018764: Divisors of 994.

The programs for A018764, there is no canonical definition to state claims against.
-/

/-! ## A018764.P7152972766807268502

`lt[(C(n+33, 2)-n)%(n+1), 1]+1`
-/

namespace A018764.P7152972766807268502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose (n + 33) 2 : ℤ) - (n : ℤ)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A018764.P7152972766807268502

/-! ## A018764.P18276029310482066446

`record[gcd(n+5, A317594(n+1))]`
-/

namespace A018764.P18276029310482066446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 5 : ℤ) (A317594 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018764.P18276029310482066446

/-! ## A018764.P6115942782638100115

`record[gcd((n+2)*(1/(n+2)-C(n, 2)), A033994(n+2))]`
-/

namespace A018764.P6115942782638100115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 2 : ℚ) * (1 / (n + 2 : ℚ) - (Nat.choose n 2 : ℚ)))) (A033994 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018764.P6115942782638100115

/-! ## A018764.P8221548442461779861

`A235201(A018615(n+1))`
-/

namespace A018764.P8221548442461779861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A018615 (n + 1)).toNat

end

end A018764.P8221548442461779861

/-!
# A018765: Divisors of 996.

The programs for A018765, there is no canonical definition to state claims against.
-/

/-! ## A018765.P13227042969627257384

`eq[gcd(83, n), A051724(n)]`
-/

namespace A018765.P13227042969627257384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 83 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018765.P13227042969627257384

/-! ## A018765.P12400380953527296884

`A116912(A018738(n+1))`
-/

namespace A018765.P12400380953527296884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116912 (A018738 (n + 1)).toNat

end

end A018765.P12400380953527296884

/-! ## A018765.P11161454775578195077

`or(A018343(n+1), A018655(n+1))`
-/

namespace A018765.P11161454775578195077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018343 (n + 1)) (A018655 (n + 1))

end

end A018765.P11161454775578195077

/-! ## A018765.P13039105299237413421

`2*A018561(n+1)-A018369(n+1)`
-/

namespace A018765.P13039105299237413421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018561 (n + 1) - A018369 (n + 1)

end

end A018765.P13039105299237413421

/-! ## A018765.P7360301117788345689

`A005843(A018561(n+1))-A018369(n+1)`
-/

namespace A018765.P7360301117788345689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A018561 (n + 1)).toNat - A018369 (n + 1)

end

end A018765.P7360301117788345689

/-!
# A018766: Divisors of 999.

The programs for A018766, there is no canonical definition to state claims against.
-/

/-! ## A018766.P6793021506915778034

`A027889(comp[6*n])`
-/

namespace A018766.P6793021506915778034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027889 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018766.P6793021506915778034

/-! ## A018766.P16982741106019149452

`eq[n, gcd(n, A317594(n+1))]`
-/

namespace A018766.P16982741106019149452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A317594 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018766.P16982741106019149452

/-! ## A018766.P7153394327453184098

`a(n-1)+A237292(a(n-1))-1` with `a(0)=1`
-/

namespace A018766.P7153394327453184098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A237292 (a (n - 1)).toNat - 1)

end

end A018766.P7153394327453184098

/-! ## A018766.P16147135878537648094

`a(n-1)*A126071(n+2)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=37`
-/

namespace A018766.P16147135878537648094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 27, 37] fun n a =>
  a (n - 1) * A126071 (n + 2)

end

end A018766.P16147135878537648094

/-!
# A018767: Divisors of 1000.

The programs for A018767, there is no canonical definition to state claims against.
-/

/-! ## A018767.P18152514226907998550

`record[A000190(A033846(n+1))]`
-/

namespace A018767.P18152514226907998550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (A033846 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018767.P18152514226907998550

/-! ## A018767.P965271795828424928

`record[A053165(A003592(n+1))]`
-/

namespace A018767.P965271795828424928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (A003592 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018767.P965271795828424928

/-! ## A018767.P4348834969201354251

`record[A032742(A133075(n+1))]`
-/

namespace A018767.P4348834969201354251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A133075 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018767.P4348834969201354251

/-! ## A018767.P14607404128926634129

`record[A053165(A133020(n+1))]`
-/

namespace A018767.P14607404128926634129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (A133020 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018767.P14607404128926634129

/-! ## A018767.P17299210987613590015

`record[A038502(A178479(n+1))]`
-/

namespace A018767.P17299210987613590015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A178479 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018767.P17299210987613590015

/-!
# A018768: Divisors of 1001.

The programs for A018768, there is no canonical definition to state claims against.
-/

/-! ## A018768.P4270849209815193431

`record[∏{p}[n, A086762(#)]]`
-/

namespace A018768.P4270849209815193431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A086762 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018768.P4270849209815193431

/-! ## A018768.P5618287117129442413

`record[∏{p}[n, A206546(#)]]`
-/

namespace A018768.P5618287117129442413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A206546 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018768.P5618287117129442413

/-! ## A018768.P3211249417809982485

`eq[9, A257345(lcm(7, n))]`
-/

namespace A018768.P3211249417809982485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257345 (Nat.lcm 7 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018768.P3211249417809982485

/-! ## A018768.P9763274255053324688

`eq[n, A324472(n+1)]+1`
-/

namespace A018768.P9763274255053324688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A018768.P9763274255053324688

/-!
# A018769: Divisors of 1002.

The programs for A018769, there is no canonical definition to state claims against.
-/

/-! ## A018769.P12484082886176265741

`A160102(A018646(n+1))`
-/

namespace A018769.P12484082886176265741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A018646 (n + 1)).toNat

end

end A018769.P12484082886176265741

/-! ## A018769.P16305067967653377724

`A263272(A018665(n+1))`
-/

namespace A018769.P16305067967653377724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A018665 (n + 1)).toNat

end

end A018769.P16305067967653377724

/-! ## A018769.P10287863955228742989

`record[gcd(A004068(n), A179903(n))]`
-/

namespace A018769.P10287863955228742989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004068 n) (A179903 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018769.P10287863955228742989

/-! ## A018769.P15438695156011390580

`record[gcd(A005891(n), A215862(n))]`
-/

namespace A018769.P15438695156011390580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005891 n) (A215862 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018769.P15438695156011390580

/-!
# A018770: Divisors of 1004.

The programs for A018770, there is no canonical definition to state claims against.
-/

/-! ## A018770.P1845867666749473517

`A250250(A018611(n+1))`
-/

namespace A018770.P1845867666749473517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (A018611 (n + 1)).toNat

end

end A018770.P1845867666749473517

/-!
# A018771: Divisors of 1005.

The programs for A018771, there is no canonical definition to state claims against.
-/

/-! ## A018771.P15830650416213944656

`∏{p}[A018584(n+1), or(1, #)]`
-/

namespace A018771.P15830650416213944656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018584 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 1 p

end

end A018771.P15830650416213944656

/-! ## A018771.P11643416142938478110

`A003961(A018415(n+1))`
-/

namespace A018771.P11643416142938478110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A018415 (n + 1)).toNat

end

end A018771.P11643416142938478110

/-! ## A018771.P14263076009757184945

`A080512(A018584(n+1))`
-/

namespace A018771.P14263076009757184945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (A018584 (n + 1)).toNat

end

end A018771.P14263076009757184945

/-! ## A018771.P14783040193387319398

`∏{p}[A053576(n), A056960(#)]`
-/

namespace A018771.P14783040193387319398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056960 p

end

end A018771.P14783040193387319398

/-!
# A018772: Divisors of 1008.

The programs for A018772, there is no canonical definition to state claims against.
-/

/-! ## A018772.P16060614840607591325

`record[A072438(A178858(n+1))]`
-/

namespace A018772.P16060614840607591325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A178858 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018772.P16060614840607591325

/-! ## A018772.P308366916910480207

`record[A072438(A178863(n+1))]`
-/

namespace A018772.P308366916910480207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A178863 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018772.P308366916910480207

/-! ## A018772.P6798195960995324554

`filter[A178858(n+1), A011558(#)]`
-/

namespace A018772.P6798195960995324554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A018772.P6798195960995324554

/-! ## A018772.P3154666124988772685

`filter[A178863(n+1), A011558(#)]`
-/

namespace A018772.P3154666124988772685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A018772.P3154666124988772685

/-! ## A018772.P9572342801769070012

`filter[A178858(n+1), A236862(#)]`
-/

namespace A018772.P9572342801769070012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236862 (f1 j).toNat = 1) n)

end

end A018772.P9572342801769070012

/-!
# A018773: Divisors of 1010.

The programs for A018773, there is no canonical definition to state claims against.
-/

/-! ## A018773.P13990236933190501574

`eq[10, lcm(10, A257345(n))]`
-/

namespace A018773.P13990236933190501574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 10 (A257345 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018773.P13990236933190501574

/-! ## A018773.P15206783483300184739

`record[gcd(A224410(n+4)+1, n+1)]`
-/

namespace A018773.P15206783483300184739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A224410 (n + 4) + 1) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018773.P15206783483300184739

/-! ## A018773.P5089862473529225856

`∏{p}[eq[3, lcm(n, (20/2)²+2)/34], A265759(#)]`
-/

namespace A018773.P5089862473529225856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (((20 : ℚ) / 2) ^ 2 + 2)) : ℚ) / 34

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A265759 p

end

end A018773.P5089862473529225856

/-! ## A018773.P5805896173074875767

`A029939(A082616(n+1))`
-/

namespace A018773.P5805896173074875767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029939 (A082616 (n + 1)).toNat

end

end A018773.P5805896173074875767

/-!
# A018774: Divisors of 1012.

The programs for A018774, there is no canonical definition to state claims against.
-/

/-! ## A018774.P16863432561582443496

`A319525(A328009(n+1))`
-/

namespace A018774.P16863432561582443496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319525 (A328009 (n + 1)).toNat

end

end A018774.P16863432561582443496

/-! ## A018774.P324749235793814662

`∪[2*A018491(n+1), A018491(n+1)]`
-/

namespace A018774.P324749235793814662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018774.P324749235793814662

/-! ## A018774.P9624344066818083199

`∪[A018491(n+1), A004277(A018491(n+1))]`
-/

namespace A018774.P9624344066818083199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A018491 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018774.P9624344066818083199

/-!
# A018775: Divisors of 1014.

The programs for A018775, there is no canonical definition to state claims against.
-/

/-! ## A018775.P6861051851049821259

`13*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A018775.P6861051851049821259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  13 * a (n - 4)

end

end A018775.P6861051851049821259

/-! ## A018775.P15272566873219128167

`A245481(A039019(n+1))`
-/

namespace A018775.P15272566873219128167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245481 (A039019 (n + 1)).toNat

end

end A018775.P15272566873219128167

/-! ## A018775.P10574070912745362662

`A245481(A047255(n+1))`
-/

namespace A018775.P10574070912745362662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245481 (A047255 (n + 1)).toNat

end

end A018775.P10574070912745362662

/-! ## A018775.P12040620805821609255

`A245481(A062062(n+1))`
-/

namespace A018775.P12040620805821609255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245481 (A062062 (n + 1)).toNat

end

end A018775.P12040620805821609255

/-! ## A018775.P452902771708773302

`A064554(A245479(n+1))`
-/

namespace A018775.P452902771708773302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064554 (A245479 (n + 1)).toNat

end

end A018775.P452902771708773302

/-!
# A018776: Divisors of 1015.

The programs for A018776, there is no canonical definition to state claims against.
-/

/-! ## A018776.P15454501159323045294

`A332808(A018656(n+1))`
-/

namespace A018776.P15454501159323045294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018656 (n + 1)).toNat

end

end A018776.P15454501159323045294

/-! ## A018776.P16828170930313500435

`∏{p}[A161715(n), A119450(#)]`
-/

namespace A018776.P16828170930313500435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A119450 p

end

end A018776.P16828170930313500435

/-! ## A018776.P5218324238207953948

`record[gcd(A004271(n), A008417(n))]`
-/

namespace A018776.P5218324238207953948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004271 n) (A008417 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018776.P5218324238207953948

/-! ## A018776.P280932534999808763

`∏{p}[A018464(n+1), A122619(#)]`
-/

namespace A018776.P280932534999808763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A122619 p

end

end A018776.P280932534999808763

/-!
# A018777: Divisors of 1016.

The programs for A018777, there is no canonical definition to state claims against.
-/

/-! ## A018777.P11048295022239705140

`eq[dr(n), A120769(n)]`
-/

namespace A018777.P11048295022239705140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018777.P11048295022239705140

/-! ## A018777.P5891644729400975689

`A332212(A083593(n))`
-/

namespace A018777.P5891644729400975689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (A083593 n).toNat

end

end A018777.P5891644729400975689

/-! ## A018777.P15830644095973595562

`A138814(A059590(n)+1)`
-/

namespace A018777.P15830644095973595562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138814 (A059590 n + 1).toNat

end

end A018777.P15830644095973595562

/-! ## A018777.P15467221142915625439

`A269854(A018422(n+1))`
-/

namespace A018777.P15467221142915625439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269854 (A018422 (n + 1)).toNat

end

end A018777.P15467221142915625439

/-!
# A018778: Divisors of 1017.

The programs for A018778, there is no canonical definition to state claims against.
-/

/-! ## A018778.P8371764461831043337

`A003961(A018455(n+1))`
-/

namespace A018778.P8371764461831043337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A018455 (n + 1)).toNat

end

end A018778.P8371764461831043337

/-!
# A018779: Divisors of 1020.

The programs for A018779, there is no canonical definition to state claims against.
-/

/-! ## A018779.P9616787786839433541

`record[gcd(A003602(n+1), A157515(n+1))]`
-/

namespace A018779.P9616787786839433541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003602 (n + 1)) (A157515 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018779.P9616787786839433541

/-! ## A018779.P1089890698685674234

`record[gcd(A103391(n+1), A158230(n+1))]`
-/

namespace A018779.P1089890698685674234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103391 (n + 1)) (A158230 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018779.P1089890698685674234

/-! ## A018779.P3428662608207382189

`record[gcd(A028310(n), A157948(4*(n+1)))]`
-/

namespace A018779.P3428662608207382189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A157948 (4 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018779.P3428662608207382189

/-! ## A018779.P8782711231912572782

`record[A007948(A151764(A003401(n+1)))]`
-/

namespace A018779.P8782711231912572782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A151764 (A003401 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018779.P8782711231912572782

/-! ## A018779.P701773407288360783

`∪[2*A018494(n+1), A018494(n+1)]`
-/

namespace A018779.P701773407288360783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018779.P701773407288360783

/-!
# A018780: Divisors of 1022.

The programs for A018780, there is no canonical definition to state claims against.
-/

/-! ## A018780.P14285454210146686128

`A132997(∑{digits}[n+1, #])`
-/

namespace A018780.P14285454210146686128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132997 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A018780.P14285454210146686128

/-! ## A018780.P1094989792291294087

`A132997(n+1)+char[10]`
-/

namespace A018780.P1094989792291294087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132997 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A018780.P1094989792291294087

/-! ## A018780.P1363698546201721193

`record[(n+1)%3*A117981(n)]`
-/

namespace A018780.P1363698546201721193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 3 : ℕ) : ℤ) * A117981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018780.P1363698546201721193

/-! ## A018780.P17266898824912303538

`record[gcd(n+5, A000566(3*n+1))]`
-/

namespace A018780.P17266898824912303538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 5 : ℤ) (A000566 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018780.P17266898824912303538

/-!
# A018782: Smallest k such that circle x^2 + y^2 = k passes through exactly 4n integer points.

The programs for A018782, there is no canonical definition to state claims against.
-/

/-! ## A018782.P9086740887886396421

`A340388(A043320(n+1))`
-/

namespace A018782.P9086740887886396421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340388 (A043320 (n + 1)).toNat

end

end A018782.P9086740887886396421

/-! ## A018782.P8194776289134083502

`A340388(A044917(n+1))`
-/

namespace A018782.P8194776289134083502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340388 (A044917 (n + 1)).toNat

end

end A018782.P8194776289134083502

/-! ## A018782.P8854029169560965089

`A340388(A161953(n+1))`
-/

namespace A018782.P8854029169560965089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340388 (A161953 (n + 1)).toNat

end

end A018782.P8854029169560965089

/-! ## A018782.P1334380133773359021

`A340388(A187829(n+1))`
-/

namespace A018782.P1334380133773359021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340388 (A187829 (n + 1)).toNat

end

end A018782.P1334380133773359021

/-! ## A018782.P6164812953003533212

`A340388(A246337(n+1))`
-/

namespace A018782.P6164812953003533212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340388 (A246337 (n + 1)).toNat

end

end A018782.P6164812953003533212

/-!
# A018783: Number of partitions of n into parts having a common factor.

The programs for A018783, there is no canonical definition to state claims against.
-/

/-! ## A018783.P17933616741065099853

`A000041(n)-A000837(n)`
-/

namespace A018783.P17933616741065099853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A000837 n

end

end A018783.P17933616741065099853

/-! ## A018783.P249527062875013161

`A338554(n)+A032741(n)`
-/

namespace A018783.P249527062875013161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338554 n + A032741 n

end

end A018783.P249527062875013161

/-! ## A018783.P3485874963669539030

`∑[A002865(n)]-A000837(n)`
-/

namespace A018783.P3485874963669539030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000837 n

end

end A018783.P3485874963669539030

/-! ## A018783.P6845011334531898238

`A000065(n)+1-A000837(n)`
-/

namespace A018783.P6845011334531898238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A000837 n)

end

end A018783.P6845011334531898238

/-! ## A018783.P5778392505415409249

`A133041(n)-(A000837(n)+n)`
-/

namespace A018783.P5778392505415409249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A000837 n + (n : ℤ))

end

end A018783.P5778392505415409249

/-! ## A018783.P1065601804617415611

`A000009(n)+A047967(n)-A000837(n)`
-/

namespace A018783.P1065601804617415611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A000837 n)

end

end A018783.P1065601804617415611

/-! ## A018783.P14233662818588031733

`A035363(n)+A086543(n)-A000837(n)`
-/

namespace A018783.P14233662818588031733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A086543 n - A000837 n)

end

end A018783.P14233662818588031733

/-! ## A018783.P1824540066033983023

`A168015(n)-(A168014(n)+A000837(n))`
-/

namespace A018783.P1824540066033983023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168015 n - (A168014 n + A000837 n)

end

end A018783.P1824540066033983023

/-! ## A018783.P15065507375835130537

`A338553(n)+A338554(n)-A000837(n)`
-/

namespace A018783.P15065507375835130537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338553 n + (A338554 n - A000837 n)

end

end A018783.P15065507375835130537

/-! ## A018783.P10430775699586000052

`Δ[A000837(n)]-A302698(n+1)`
-/

namespace A018783.P10430775699586000052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A302698 (n + 1)

end

end A018783.P10430775699586000052

/-! ## A018783.P3100640527092304758

`A000837(n+1)-(A302698(n+1)+A000837(n))`
-/

namespace A018783.P3100640527092304758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) - (A302698 (n + 1) + A000837 n)

end

end A018783.P3100640527092304758

/-! ## A018783.P18171895443867728311

`A139582(n)/2-A000837(n)`
-/

namespace A018783.P18171895443867728311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A000837 n : ℚ)

end

end A018783.P18171895443867728311

/-! ## A018783.P10051230746772950601

`A007690(n)+A183558(n)-A000837(n)`
-/

namespace A018783.P10051230746772950601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007690 n + (A183558 n - A000837 n)

end

end A018783.P10051230746772950601

/-! ## A018783.P7079967326543867683

`A035363(2*n)-A000837(n)`
-/

namespace A018783.P7079967326543867683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A000837 n

end

end A018783.P7079967326543867683

/-! ## A018783.P4962721197048337526

`A119620(2*n)-A000837(n)`
-/

namespace A018783.P4962721197048337526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A000837 n

end

end A018783.P4962721197048337526

/-! ## A018783.P11619509405273120253

`A035377(3*n)-A000837(n)`
-/

namespace A018783.P11619509405273120253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * n) - A000837 n

end

end A018783.P11619509405273120253

/-! ## A018783.P1558163848647320932

`A332280(n)+A332281(n)-A000837(n)`
-/

namespace A018783.P1558163848647320932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n + (A332281 n - A000837 n)

end

end A018783.P1558163848647320932

/-! ## A018783.P4643480415978521409

`A100824(2*n)-A000837(n)`
-/

namespace A018783.P4643480415978521409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A000837 n

end

end A018783.P4643480415978521409

/-! ## A018783.P5957687615131808127

`(A200976(n)*A328672(n))%A328673(n)`
-/

namespace A018783.P5957687615131808127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200976 n * A328672 n) (A328673 n)

end

end A018783.P5957687615131808127

/-! ## A018783.P9681046887887404028

`A000041(n)-A168532(A152947(n+1))`
-/

namespace A018783.P9681046887887404028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A168532 (A152947 (n + 1)).toNat

end

end A018783.P9681046887887404028

/-!
# A018784: Numbers n such that sigma(phi(n)) = n.

The programs for A018784, there is no canonical definition to state claims against.
-/

/-! ## A018784.P12050065448932284937

`∑{d}[A001229(n+1), #]`
-/

namespace A018784.P12050065448932284937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001229 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A018784.P12050065448932284937

/-! ## A018784.P6629874525718913886

`record[∑{d}[A066471(n+1), #]]`
-/

namespace A018784.P6629874525718913886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066471 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018784.P6629874525718913886

/-! ## A018784.P10499526281177103140

`∑{d}[floor(A266165(n+1)/2), #]`
-/

namespace A018784.P10499526281177103140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266165 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A018784.P10499526281177103140

/-! ## A018784.P14490020575635941961

`A067144(∑[A184616(n)!])`
-/

namespace A018784.P14490020575635941961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A184616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067144 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018784.P14490020575635941961

/-! ## A018784.P2265661943223976232

`∑{d}[(A266165(n+1)/2-1/2)^(A000040(n+1)%2), #]`
-/

namespace A018784.P2265661943223976232
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A266165 (n + 1) : ℚ) / 2 - (1 : ℚ) / 2) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A018784.P2265661943223976232

/-!
# A018785: Terms of A001273 with trailing 9's stripped (at n=13 term becomes periodic with period 49).

The programs for A018785, there is no canonical definition to state claims against.
-/

/-! ## A018785.P10967433729675950907

`A004184(A001273(n))`
-/

namespace A018785.P10967433729675950907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A001273 n).toNat

end

end A018785.P10967433729675950907

/-!
# A018788: Number of subsets of {1,...,n} containing an arithmetic progression of length 3.

The programs for A018788, there is no canonical definition to state claims against.
-/

/-! ## A018788.P17041011174021428053

`2^n-A051013(n)`
-/

namespace A018788.P17041011174021428053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A051013 n

end

end A018788.P17041011174021428053

/-! ## A018788.P3118548211034272948

`2^n-∑[A334893(n)]`
-/

namespace A018788.P3118548211034272948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018788.P3118548211034272948

/-! ## A018788.P3706425638645367278

`abs(A000079(n)-A051013(n))`
-/

namespace A018788.P3706425638645367278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A051013 n|

end

end A018788.P3706425638645367278

/-! ## A018788.P3819474179172618534

`and(-A051013(n), A000225(n))`
-/

namespace A018788.P3819474179172618534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A051013 n) (A000225 n)

end

end A018788.P3819474179172618534

/-! ## A018788.P9263223840714779049

`A000051(n)-(A051013(n)+1)`
-/

namespace A018788.P9263223840714779049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A051013 n + 1)

end

end A018788.P9263223840714779049

/-! ## A018788.P15135396509655564326

`A136299(n+1)-(A139790(n)+A051013(n))`
-/

namespace A018788.P15135396509655564326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136299 (n + 1) - (A139790 n + A051013 n)

end

end A018788.P15135396509655564326

/-!
# A018789: Number of subsets of { 1, ..., n } containing an arithmetic progression of length 4.

The programs for A018789, there is no canonical definition to state claims against.
-/

/-! ## A018789.P3985153322981836954

`2^n-A066369(n)`
-/

namespace A018789.P3985153322981836954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A066369 n

end

end A018789.P3985153322981836954

/-! ## A018789.P6180718824340333032

`abs(A000079(n)-A066369(n))`
-/

namespace A018789.P6180718824340333032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A066369 n|

end

end A018789.P6180718824340333032

/-! ## A018789.P1628989857063257156

`and(-A066369(n), A000225(n))`
-/

namespace A018789.P1628989857063257156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A066369 n) (A000225 n)

end

end A018789.P1628989857063257156

/-! ## A018789.P14678546010147292369

`A000051(n)-(A066369(n)+1)`
-/

namespace A018789.P14678546010147292369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A066369 n + 1)

end

end A018789.P14678546010147292369

/-! ## A018789.P1503897383048742073

`abs(A011782(n+1)-A066369(n))`
-/

namespace A018789.P1503897383048742073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (n + 1) - A066369 n|

end

end A018789.P1503897383048742073

/-!
# A018790: Number of subsets of { 1, ..., n } containing an A.P. of length 5.

The programs for A018790, there is no canonical definition to state claims against.
-/

/-! ## A018790.P2790988742697200994

`floor(A321253(n)/A047257(n+1))`
-/

namespace A018790.P2790988742697200994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A321253 n : ℚ) / (A047257 (n + 1) : ℚ)⌋

end

end A018790.P2790988742697200994

/-! ## A018790.P974556374650967823

`A102823(A178457(n))`
-/

namespace A018790.P974556374650967823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102823 (A178457 n).toNat

end

end A018790.P974556374650967823

/-! ## A018790.P2539240819301580410

`A334222(A038381(n))`
-/

namespace A018790.P2539240819301580410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334222 (A038381 n).toNat

end

end A018790.P2539240819301580410

/-! ## A018790.P5435319041010833967

`A098357(A014431(n+1))`
-/

namespace A018790.P5435319041010833967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098357 (A014431 (n + 1)).toNat

end

end A018790.P5435319041010833967

/-! ## A018790.P8295224374416480693

`A320847(A001432(n+1))`
-/

namespace A018790.P8295224374416480693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320847 (A001432 (n + 1)).toNat

end

end A018790.P8295224374416480693

/-!
# A018793: Number of subsets of { 1, ..., n } containing an A.P. of length 8.

The programs for A018793, there is no canonical definition to state claims against.
-/

/-! ## A018793.P13187295752690272705

`A053646(A066178(n))`
-/

namespace A018793.P13187295752690272705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A066178 n).toNat

end

end A018793.P13187295752690272705

/-! ## A018793.P1870396861898974661

`A018794(A043320(n+1))`
-/

namespace A018793.P1870396861898974661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018794 (A043320 (n + 1)).toNat

end

end A018793.P1870396861898974661

/-! ## A018793.P13484875183931798599

`A018794(A044917(n+1))`
-/

namespace A018793.P13484875183931798599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018794 (A044917 (n + 1)).toNat

end

end A018793.P13484875183931798599

/-! ## A018793.P14382144917944767564

`A018794(A055645(n+1))`
-/

namespace A018793.P14382144917944767564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018794 (A055645 (n + 1)).toNat

end

end A018793.P14382144917944767564

/-! ## A018793.P6098366837012687358

`A018794(A055646(n)+1)`
-/

namespace A018793.P6098366837012687358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018794 (A055646 n + 1).toNat

end

end A018793.P6098366837012687358

/-!
# A018794: Number of subsets of { 1, ..., n } containing an A.P. of length 9.

The programs for A018794, there is no canonical definition to state claims against.
-/

/-! ## A018794.P17718933544484040632

`A018795(A132033(n+1))`
-/

namespace A018794.P17718933544484040632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018795 (A132033 (n + 1)).toNat

end

end A018794.P17718933544484040632

/-! ## A018794.P11949672803576438751

`A018795(Δ[A078256(n+1)])`
-/

namespace A018794.P11949672803576438751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018795 (f1 (n + 1) - f1 n).toNat

end

end A018794.P11949672803576438751

/-! ## A018794.P7241550302242138382

`filter[A018795(n+1), A071028(#)]`
-/

namespace A018794.P7241550302242138382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071028 (f1 j).toNat = 1) n)

end

end A018794.P7241550302242138382

/-! ## A018794.P6359851007435900742

`filter[A018795(n+1), A071030(#)]`
-/

namespace A018794.P6359851007435900742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071030 (f1 j).toNat = 1) n)

end

end A018794.P6359851007435900742

/-! ## A018794.P5295547145066484923

`filter[A018795(n+1), A071036(#)]`
-/

namespace A018794.P5295547145066484923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071036 (f1 j).toNat = 1) n)

end

end A018794.P5295547145066484923

/-!
# A018795: Number of subsets of { 1, ..., n } containing an A.P. of length 10.

The programs for A018795, there is no canonical definition to state claims against.
-/

/-! ## A018795.P10789323840861267682

`Δ[A159756(∑[A218530(n)])]`
-/

namespace A018795.P10789323840861267682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159756 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018795.P10789323840861267682

/-! ## A018795.P14636523084383410654

`A074206(lcm(floor(n/10), A061509(n)))`
-/

namespace A018795.P14636523084383410654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (Int.lcm ⌊(n : ℚ) / 10⌋ (A061509 n))

end

end A018795.P14636523084383410654

/-! ## A018795.P9317566257329054785

`Δ[A025480(A000337(A131242(n)))]`
-/

namespace A018795.P9317566257329054785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A000337 (A131242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018795.P9317566257329054785

/-! ## A018795.P16123915108669879584

`A002265(A000051(n)-A172318(n))`
-/

namespace A018795.P16123915108669879584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A000051 n - A172318 n).toNat

end

end A018795.P16123915108669879584

/-! ## A018795.P451357315135066274

`A172320(n)-A000027(A172319(n))`
-/

namespace A018795.P451357315135066274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172320 n - A000027 (A172319 n).toNat

end

end A018795.P451357315135066274

/-!
# A018796: Smallest square that begins with n.

The programs for A018796, there is no canonical definition to state claims against.
-/

/-! ## A018796.P8784798406177183400

`A018851(n)²`
-/

namespace A018796.P8784798406177183400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 n ^ 2

end

end A018796.P8784798406177183400

/-! ## A018796.P9680788087165101554

`A018851(2*n-n)^2`
-/

namespace A018796.P9680788087165101554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (2 * n - n) ^ 2

end

end A018796.P9680788087165101554

/-! ## A018796.P17271953371869643947

`A018851(n)*A018851(n%(n+1))`
-/

namespace A018796.P17271953371869643947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 n * A018851 (n % (n + 1))

end

end A018796.P17271953371869643947

/-! ## A018796.P2830366742244639119

`A018851(n)*A018851(A028310(n))`
-/

namespace A018796.P2830366742244639119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 n * A018851 (A028310 n).toNat

end

end A018796.P2830366742244639119

/-! ## A018796.P9541765200398853605

`A018851(A000007(n)+n)*A018851(n)`
-/

namespace A018796.P9541765200398853605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A000007 n + (n : ℤ)).toNat * A018851 n

end

end A018796.P9541765200398853605

/-! ## A018796.P7482947357715951950

`A018851(or(n, A000007(n)))*A018851(n)`
-/

namespace A018796.P7482947357715951950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (Int.lor (n : ℤ) (A000007 n)).toNat * A018851 n

end

end A018796.P7482947357715951950

/-! ## A018796.P14259850808315933105

`A018851(A026741(2*n))*A018851(n)`
-/

namespace A018796.P14259850808315933105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A026741 (2 * n)).toNat * A018851 n

end

end A018796.P14259850808315933105

/-! ## A018796.P11400260896970105507

`A000290(2*A018851(n)-A018851(n))`
-/

namespace A018796.P11400260896970105507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A018851 n - A018851 n).toNat

end

end A018796.P11400260896970105507

/-! ## A018796.P8422790262642755442

`A001222(A062584(n))*A018851(n)*A018851(n)`
-/

namespace A018796.P8422790262642755442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062584 n).toNat * A018851 n * A018851 n

end

end A018796.P8422790262642755442

/-! ## A018796.P12061616533746099410

`A000290(A018851(n)%A232237(n+1))`
-/

namespace A018796.P12061616533746099410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A018851 n) (A232237 (n + 1))).toNat

end

end A018796.P12061616533746099410

/-! ## A018796.P3547997239004498595

`(A018851(n)+A008683(A030666(n+1)))*A018851(n)`
-/

namespace A018796.P3547997239004498595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018851 n + A008683 (A030666 (n + 1)).toNat) * A018851 n

end

end A018796.P3547997239004498595

/-!
# A018797: Smallest cube that begins with n.

The programs for A018797, there is no canonical definition to state claims against.
-/

/-! ## A018797.P11116659900047193402

`A018852(n)^3`
-/

namespace A018797.P11116659900047193402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 n ^ 3

end

end A018797.P11116659900047193402

/-! ## A018797.P8743639786196088892

`A018852(n)²*A018852(n%(n+1))`
-/

namespace A018797.P8743639786196088892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 n ^ 2 * A018852 (n % (n + 1))

end

end A018797.P8743639786196088892

/-! ## A018797.P14370322473923010096

`A018852(sqrt(A000290(n)))²*A018852(n)`
-/

namespace A018797.P14370322473923010096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat ^ 2 * A018852 n

end

end A018797.P14370322473923010096

/-! ## A018797.P8759483547172469529

`A018852(A000007(n)+n)²*A018852(n)`
-/

namespace A018797.P8759483547172469529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 (A000007 n + (n : ℤ)).toNat ^ 2 * A018852 n

end

end A018797.P8759483547172469529

/-! ## A018797.P15615937609433421704

`(A018852(n)%A189925(n))²*A018852(n)`
-/

namespace A018797.P15615937609433421704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018852 n) (A189925 n) ^ 2 * A018852 n

end

end A018797.P15615937609433421704

/-! ## A018797.P18273551863694869284

`A000578(A018852(n))`
-/

namespace A018797.P18273551863694869284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A018852 n).toNat

end

end A018797.P18273551863694869284

/-! ## A018797.P2200304785635811208

`∑{d}[A018852(n), A059376(#)]`
-/

namespace A018797.P2200304785635811208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059376 d

end

end A018797.P2200304785635811208

/-! ## A018797.P12310412374735731018

`A018796(A018852(n)²)*A018852(n)`
-/

namespace A018797.P12310412374735731018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A018852 n ^ 2).toNat * A018852 n

end

end A018797.P12310412374735731018

/-!
# A018798: Smallest 4th power that begins with n.

The programs for A018798, there is no canonical definition to state claims against.
-/

/-! ## A018798.P11115576702377487422

`A018853(n)^4`
-/

namespace A018798.P11115576702377487422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018853 n ^ 4

end

end A018798.P11115576702377487422

/-! ## A018798.P18143504214859133390

`A018853((n+n)/2)²²`
-/

namespace A018798.P18143504214859133390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018853 (SequenceMachineLib.roundAway ((n + n : ℚ) / 2)).toNat ^ 2) ^ 2

end

end A018798.P18143504214859133390

/-! ## A018798.P14350391415812880370

`(A018853(n)%A045449(n+1))²²`
-/

namespace A018798.P14350391415812880370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A018853 n) (A045449 (n + 1)) ^ 2) ^ 2

end

end A018798.P14350391415812880370

/-! ## A018798.P15148757459342944943

`(A018853(n)*A018853(n%(n+1)))²`
-/

namespace A018798.P15148757459342944943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018853 n * A018853 (n % (n + 1))) ^ 2

end

end A018798.P15148757459342944943

/-! ## A018798.P884849048316737244

`A000583(A018853(n))`
-/

namespace A018798.P884849048316737244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A018853 n).toNat

end

end A018798.P884849048316737244

/-! ## A018798.P8665481890829898568

`A018796(A018853(n)²)²`
-/

namespace A018798.P8665481890829898568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A018853 n ^ 2).toNat ^ 2

end

end A018798.P8665481890829898568

/-!
# A018799: Smallest nonnegative integer m such that m! begins with n in base 10.

The programs for A018799, there is no canonical definition to state claims against.
-/

/-! ## A018799.P7256977916766005608

`A076219(n+1)-floor(acot(n))`
-/

namespace A018799.P7256977916766005608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076219 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A018799.P7256977916766005608

/-! ## A018799.P14852014070972892775

`A087156(A076219(n+1))`
-/

namespace A018799.P14852014070972892775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A076219 (n + 1)).toNat

end

end A018799.P14852014070972892775

/-! ## A018799.P8457777814284285314

`A199969(A076219(n+1)+1)`
-/

namespace A018799.P8457777814284285314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A076219 (n + 1) + 1).toNat

end

end A018799.P8457777814284285314

/-! ## A018799.P11422489124840842969

`A076219(n+1)-A000007(n)`
-/

namespace A018799.P11422489124840842969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076219 (n + 1) - A000007 n

end

end A018799.P11422489124840842969

/-! ## A018799.P8949641778724970265

`A057427(n)*A076219(n+1)`
-/

namespace A018799.P8949641778724970265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A076219 (n + 1)

end

end A018799.P8949641778724970265

/-! ## A018799.P4114121005293531350

`A076219(n+1)%A000132(n)`
-/

namespace A018799.P4114121005293531350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076219 (n + 1)) (A000132 n)

end

end A018799.P4114121005293531350

/-! ## A018799.P1570954939131849797

`and(A057428(n), A076219(n+1))`
-/

namespace A018799.P1570954939131849797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A076219 (n + 1))

end

end A018799.P1570954939131849797

/-! ## A018799.P6498711921887061262

`and(A076219(n+1), A087323(n))`
-/

namespace A018799.P6498711921887061262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076219 (n + 1)) (A087323 n)

end

end A018799.P6498711921887061262

/-! ## A018799.P12255518897110446766

`and(A024036(n), A076219(n+1))`
-/

namespace A018799.P12255518897110446766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024036 n) (A076219 (n + 1))

end

end A018799.P12255518897110446766

/-! ## A018799.P1938277953289582877

`and(A076219(n+1), A389172(n+1))`
-/

namespace A018799.P1938277953289582877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076219 (n + 1)) (A389172 (n + 1))

end

end A018799.P1938277953289582877

/-! ## A018799.P11267398903185122946

`and(A076219(n+1), A198693(n))`
-/

namespace A018799.P11267398903185122946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076219 (n + 1)) (A198693 n)

end

end A018799.P11267398903185122946

/-! ## A018799.P7542363421854777672

`and(A076219(n+1), A114569(n))`
-/

namespace A018799.P7542363421854777672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076219 (n + 1)) (A114569 n)

end

end A018799.P7542363421854777672

/-! ## A018799.P3681358656628498285

`and(A076219(n+1), A156760(n))`
-/

namespace A018799.P3681358656628498285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076219 (n + 1)) (A156760 n)

end

end A018799.P3681358656628498285

/-! ## A018799.P13532427249799259533

`and(A076219(n+1), A198694(n))`
-/

namespace A018799.P13532427249799259533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076219 (n + 1)) (A198694 n)

end

end A018799.P13532427249799259533

/-! ## A018799.P529304103207673517

`and(A076219(n+1), A198695(n))`
-/

namespace A018799.P529304103207673517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076219 (n + 1)) (A198695 n)

end

end A018799.P529304103207673517

