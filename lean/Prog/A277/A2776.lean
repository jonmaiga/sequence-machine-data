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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A277600: (1/2)*A277593.

The programs for A277600, there is no canonical definition to state claims against.
-/

/-! ## A277600.P5303079246707912615

`A277593(n+1)/2`
-/

namespace A277600.P5303079246707912615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277593 (n + 1) : ℚ) / 2

end

end A277600.P5303079246707912615

/-! ## A277600.P11158542850143058547

`A014682(A277593(n+1))`
-/

namespace A277600.P11158542850143058547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A277593 (n + 1)).toNat

end

end A277600.P11158542850143058547

/-! ## A277600.P16310074092416551082

`∪[A277590(n+1), A277595(n+1)]`
-/

namespace A277600.P16310074092416551082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277600.P16310074092416551082

/-! ## A277600.P2595562066578037830

`gcd(A000217(A277593(n+1)-1), A277593(n+1))`
-/

namespace A277600.P2595562066578037830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A277593 (n + 1) - 1).toNat) (A277593 (n + 1))

end

end A277600.P2595562066578037830

/-! ## A277600.P2685322459118226326

`eq[3, A004086(A004086(n))%5]`
-/

namespace A277600.P2685322459118226326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A004086 n).toNat) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277600.P2685322459118226326

/-! ## A277600.P17130452006356099137

`lt[A222232(n+1), A222232(n)]+1`
-/

namespace A277600.P17130452006356099137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277600.P17130452006356099137

/-! ## A277600.P1865986090378908431

`A004526(A277593(n+1)+1)`
-/

namespace A277600.P1865986090378908431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A277593 (n + 1) + 1).toNat

end

end A277600.P1865986090378908431

/-! ## A277600.P12281641118736038143

`A001057(A277593(n+1)-1)`
-/

namespace A277600.P12281641118736038143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A277593 (n + 1) - 1).toNat

end

end A277600.P12281641118736038143

/-! ## A277600.P13629670226674643838

`A115384(A277593(n+1)-1)`
-/

namespace A277600.P13629670226674643838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A277593 (n + 1) - 1).toNat

end

end A277600.P13629670226674643838

/-! ## A277600.P1777039462480969945

`A106621(2*A044392(n+1))/2`
-/

namespace A277600.P1777039462480969945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106621 (2 * A044392 (n + 1)).toNat : ℚ) / 2

end

end A277600.P1777039462480969945

/-!
# A277601: (1/2)*A277595.

The programs for A277601, there is no canonical definition to state claims against.
-/

/-! ## A277601.P6088512778542297963

`A277595(n+1)/2`
-/

namespace A277601.P6088512778542297963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277595 (n + 1) : ℚ) / 2

end

end A277601.P6088512778542297963

/-! ## A277601.P17836216151927322039

`A014682(A277595(n+1))`
-/

namespace A277601.P17836216151927322039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A277595 (n + 1)).toNat

end

end A277601.P17836216151927322039

/-! ## A277601.P2330812308049377179

`∪[A277591(n+1), A277596(n+1)]`
-/

namespace A277601.P2330812308049377179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277601.P2330812308049377179

/-! ## A277601.P8455156270588768609

`A089389(A277595(n+1)-2)-1`
-/

namespace A277601.P8455156270588768609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (A277595 (n + 1) - 2).toNat - 1

end

end A277601.P8455156270588768609

/-! ## A277601.P16603746534152247139

`eq[4, A004086(A004086(n))%5]`
-/

namespace A277601.P16603746534152247139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A004086 n).toNat) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277601.P16603746534152247139

/-! ## A277601.P5049304203121720986

`eq[A010371(n+1)+1, A010371(n)]+1`
-/

namespace A277601.P5049304203121720986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277601.P5049304203121720986

/-! ## A277601.P6653361249513072715

`A004526(A277595(n+1)+1)`
-/

namespace A277601.P6653361249513072715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A277595 (n + 1) + 1).toNat

end

end A277601.P6653361249513072715

/-! ## A277601.P14365395755217326206

`A175542(A277595(n+1)+1)`
-/

namespace A277601.P14365395755217326206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (A277595 (n + 1) + 1).toNat

end

end A277601.P14365395755217326206

/-! ## A277601.P2918347719220156886

`A106621(2*A044412(n+1))/2`
-/

namespace A277601.P2918347719220156886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106621 (2 * A044412 (n + 1)).toNat : ℚ) / 2

end

end A277601.P2918347719220156886

/-! ## A277601.P8031725227816605663

`A165190(2*A044411(n+1))/2`
-/

namespace A277601.P8031725227816605663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165190 (2 * A044411 (n + 1)).toNat : ℚ) / 2

end

end A277601.P8031725227816605663

/-!
# A277602: List of indices n such that A092488(n) < A068527(n).

The programs for A277602, there is no canonical definition to state claims against.
-/

/-! ## A277602.P11910357117999521607

`lt[A092488(A233583(n+1)), A068527(n)]`
-/

namespace A277602.P11910357117999521607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092488 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277602.P11910357117999521607

/-! ## A277602.P16568082518328462301

`lt[A068568(n), A053186(A020703(n+1))]`
-/

namespace A277602.P16568082518328462301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A020703 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277602.P16568082518328462301

/-! ## A277602.P743608395655982329

`lt[A068568(n), A249142(n²+1+n)]`
-/

namespace A277602.P743608395655982329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249142 (n ^ 2 + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277602.P743608395655982329

/-! ## A277602.P14198581208121158185

`lt[A068568(n), A053615(A048761(n)+n²)]`
-/

namespace A277602.P14198581208121158185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A048761 n + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277602.P14198581208121158185

/-! ## A277602.P5116231761398063201

`lt[A092488(A233583(n+1)), A249142(n²+1+n)]`
-/

namespace A277602.P5116231761398063201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092488 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249142 (n ^ 2 + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277602.P5116231761398063201

/-!
# A277604: Array of coefficients T(k,n) of the formal power series A(k,x) read by upwards antidiagonals, where A(k,x) = sqrt(1 + 2*x*A(k,x) + (4*k+1)*x^2*(A(k,x))^2), k >= 0.

The programs for A277604, there is no canonical definition to state claims against.
-/

/-! ## A277604.P4448211760630204371

`A350470(n)+A048105(A056220(3*n+1))`
-/

namespace A277604.P4448211760630204371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350470 n + A048105 (A056220 (3 * n + 1)).toNat

end

end A277604.P4448211760630204371

/-! ## A277604.P1029792744461813068

`A235027(A350470(n)%A353285(2*n+5))`
-/

namespace A277604.P1029792744461813068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (Int.tmod (A350470 n) (A353285 (2 * n + 5))).toNat

end

end A277604.P1029792744461813068

/-!
# A277605: Numbers not in a Fibonacci sequence starting with two 1-digit numbers.

The programs for A277605, there is no canonical definition to state claims against.
-/

/-! ## A277605.P6915167585418890181

`lt[9, A286326(n)]`
-/

namespace A277605.P6915167585418890181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A277605.P6915167585418890181

/-! ## A277605.P14852111497393757579

`lt[9, A097368(n+2)]+2`
-/

namespace A277605.P14852111497393757579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097368 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A277605.P14852111497393757579

/-! ## A277605.P12017513142393909821

`comp[A291179(n+1)]%A195318(3*n+3)`
-/

namespace A277605.P12017513142393909821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291179 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A195318 (3 * n + 3))

end

end A277605.P12017513142393909821

/-! ## A277605.P11557295272574747580

`comp[A291179(n+1)]+3*A010892(3*n+2)`
-/

namespace A277605.P11557295272574747580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291179 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + 3 * A010892 (3 * n + 2)

end

end A277605.P11557295272574747580

/-! ## A277605.P11718608715253581716

`lt[9, A097368(A233583(n+1))]`
-/

namespace A277605.P11718608715253581716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097368 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A277605.P11718608715253581716

/-!
# A277606: Frequency of n in A245499.

The programs for A277606, there is no canonical definition to state claims against.
-/

/-! ## A277606.P13910828697950147141

`gcd(n!, A087165(A191868(n+1)))`
-/

namespace A277606.P13910828697950147141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A087165 (A191868 (n + 1)).toNat)

end

end A277606.P13910828697950147141

/-! ## A277606.P16204876332186089393

`gcd(A000203(n+1), A072797(∑[2^n]/3^(n%2)))`
-/

namespace A277606.P16204876332186089393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A072797 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (3 ^ (n % 2) : ℚ))).toNat)

end

end A277606.P16204876332186089393

/-! ## A277606.P9465432453709998678

`A347705(A161952(n+1))+A288318(n)`
-/

namespace A277606.P9465432453709998678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347705 (A161952 (n + 1)).toNat + A288318 n

end

end A277606.P9465432453709998678

/-! ## A277606.P6466374664798870593

`gcd(A010461(n+1), A316724(A103421(n+2)))`
-/

namespace A277606.P6466374664798870593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010461 (n + 1)) (A316724 (A103421 (n + 2)).toNat)

end

end A277606.P6466374664798870593

/-! ## A277606.P13510000556806424570

`gcd(A249569(A249579(3*n+1)), A249617(3*(n+1)))`
-/

namespace A277606.P13510000556806424570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A249569 (A249579 (3 * n + 1)).toNat) (A249617 (3 * (n + 1)))

end

end A277606.P13510000556806424570

/-!
# A277607: Smallest of four consecutive primes in arithmetic progression with common difference 42 and all digit sums prime.

The programs for A277607, there is no canonical definition to state claims against.
-/

/-! ## A277607.P10246646112232030260

`p?[∑[A049275(n+1)+A049247(3*n+2)]]`
-/

namespace A277607.P10246646112232030260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049275 (n + 1) + A049247 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277607.P10246646112232030260

/-!
# A277608: Least number of fractions of the form (k+1)/k, for k a positive integer, whose product equals n.

The programs for A277608, there is no canonical definition to state claims against.
-/

/-! ## A277608.P12216181990833566776

`or(val(A003065(n), 61), A003313(n+1))`
-/

namespace A277608.P12216181990833566776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (A003065 n).toNat 61 : ℤ) (A003313 (n + 1))

end

end A277608.P12216181990833566776

/-! ## A277608.P8757222314202592519

`A117497(n+1)-A257000(A265644(n))`
-/

namespace A277608.P8757222314202592519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117497 (n + 1) - A257000 (A265644 n).toNat

end

end A277608.P8757222314202592519

/-! ## A277608.P17923158859545533722

`A117498(n+1)-A257000(A265644(n))`
-/

namespace A277608.P17923158859545533722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117498 (n + 1) - A257000 (A265644 n).toNat

end

end A277608.P17923158859545533722

/-! ## A277608.P4484512631761601390

`A010815(A061428(n+1))+A003313(n+1)`
-/

namespace A277608.P4484512631761601390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A061428 (n + 1)).toNat + A003313 (n + 1)

end

end A277608.P4484512631761601390

/-!
# A277609: Fourth column of Euler's difference table in A068106. It is 6 times the sequence A000261.

The programs for A277609, there is no canonical definition to state claims against.
-/

/-! ## A277609.P15025773387068702421

`6*A000261(A028310(n))`
-/

namespace A277609.P15025773387068702421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000261 (A028310 n).toNat

end

end A277609.P15025773387068702421

/-! ## A277609.P14338523103512298170

`A047920(∑[(n+2)*A060576(n)])`
-/

namespace A277609.P14338523103512298170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A060576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277609.P14338523103512298170

/-! ## A277609.P7737700258525563719

`A047920(A175631(n+2)+2*n)`
-/

namespace A277609.P7737700258525563719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A175631 (n + 2) + (2 * n : ℤ)).toNat

end

end A277609.P7737700258525563719

/-! ## A277609.P10311178568748938421

`A047920(A046691(A000007(n)+n))`
-/

namespace A277609.P10311178568748938421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A046691 (A000007 n + (n : ℤ)).toNat).toNat

end

end A277609.P10311178568748938421

/-! ## A277609.P41160403316666719

`A047920(A027379(n)-A158388(n))`
-/

namespace A277609.P41160403316666719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A027379 n - A158388 n).toNat

end

end A277609.P41160403316666719

/-! ## A277609.P7200420627484482623

`A047920(lcm(A046691(n), A054977(n)))`
-/

namespace A277609.P7200420627484482623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (Int.lcm (A046691 n) (A054977 n))

end

end A277609.P7200420627484482623

/-! ## A277609.P14034595519521510236

`A047920(abs(A000007(n)-A046691(n)))`
-/

namespace A277609.P14034595519521510236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 |A000007 n - A046691 n|.toNat

end

end A277609.P14034595519521510236

/-!
# A277610: G.f.: 1 / (1 - Sum_{k>=1} k^k * x^k ).

The programs for A277610, there is no canonical definition to state claims against.
-/

/-! ## A277610.P16011309259340017994

`A307828(A006125(n))+A305306(n)`
-/

namespace A277610.P16011309259340017994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307828 (A006125 n).toNat + A305306 n

end

end A277610.P16011309259340017994

/-! ## A277610.P15108100582982119824

`A050351(n)-A045763(A006125(n))`
-/

namespace A277610.P15108100582982119824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050351 n - A045763 (A006125 n).toNat

end

end A277610.P15108100582982119824

/-!
# A277611: Expansion of 1 / (1 - Sum_{k>=1} k^(k-2) * x^k ).

The programs for A277611, there is no canonical definition to state claims against.
-/

/-! ## A277611.P4323428184895187277

`A003991(n^round(n²/6))`
-/

namespace A277611.P4323428184895187277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (SequenceMachineLib.roundAway ((n : ℚ) ^ (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 6) : ℤ))).toNat

end

end A277611.P4323428184895187277

/-! ## A277611.P16699484433035746266

`floor(∏[sqrt(A274168(3*(n+1)))])`
-/

namespace A277611.P16699484433035746266
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A274168 (3 * (n + 1)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A277611.P16699484433035746266

/-!
# A277612: E.g.f. satisfies: A(x - sin(x)^2) = x + sin(x)^2.

The programs for A277612, there is no canonical definition to state claims against.
-/

/-! ## A277612.P1939725037090589641

`2*A143134(n+1)-A151933(n)`
-/

namespace A277612.P1939725037090589641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143134 (n + 1) - A151933 n

end

end A277612.P1939725037090589641

/-! ## A277612.P16375181166003078077

`2*A143134(n+1)-A151935(n)`
-/

namespace A277612.P16375181166003078077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143134 (n + 1) - A151935 n

end

end A277612.P16375181166003078077

/-! ## A277612.P5295655720131490955

`gcd(2, A000079(n))*A143134(n+1)`
-/

namespace A277612.P5295655720131490955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000079 n) : ℤ) * A143134 (n + 1)

end

end A277612.P5295655720131490955

/-! ## A277612.P4669908853605561724

`A006530(A001316(n))*A143134(n+1)`
-/

namespace A277612.P4669908853605561724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001316 n).toNat * A143134 (n + 1)

end

end A277612.P4669908853605561724

/-! ## A277612.P13658687654912426314

`A000032(A151933(n))*A143134(n+1)`
-/

namespace A277612.P13658687654912426314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A151933 n).toNat * A143134 (n + 1)

end

end A277612.P13658687654912426314

/-! ## A277612.P12097154223874878118

`A000032(A151935(n))*A143134(n+1)`
-/

namespace A277612.P12097154223874878118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A151935 n).toNat * A143134 (n + 1)

end

end A277612.P12097154223874878118

/-!
# A277613: Logarithmic derivative of the g.f. of the solid partitions A000293.

The programs for A277613, there is no canonical definition to state claims against.
-/

/-! ## A277613.P7033302221866770511

`∑{d}[n+1, #*A037452(#)]`
-/

namespace A277613.P7033302221866770511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A037452 d

end

end A277613.P7033302221866770511

/-! ## A277613.P11585212392304586495

`A143128(n+1)-∑[∑[A198318(n²)]]`
-/

namespace A277613.P11585212392304586495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143128 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277613.P11585212392304586495

/-!
# A277614: a(n) is the coefficient of x^n/n! in exp(x + n*x^2/2).

The programs for A277614, there is no canonical definition to state claims against.
-/

/-! ## A277614.P1550516006089982336

`A359762(∑[4*n])`
-/

namespace A277614.P1550516006089982336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359762 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277614.P1550516006089982336

/-! ## A277614.P13926652400292616283

`A194165(A187018(n))+1`
-/

namespace A277614.P13926652400292616283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194165 (A187018 n).toNat + 1

end

end A277614.P13926652400292616283

/-!
# A277616: Lexicographically earliest sequence such that |a(n+1)-a(n)| is a square > 1 (for all n) and no number occurs twice; a(0) = 0.

The programs for A277616, there is no canonical definition to state claims against.
-/

/-! ## A277616.P2142631238994952906

`A277617(n+1)-1`
-/

namespace A277616.P2142631238994952906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277617 (n + 1) - 1

end

end A277616.P2142631238994952906

/-! ## A277616.P1372754994570712796

`A354347(A052180(n+2))+A277617(n+1)`
-/

namespace A277616.P1372754994570712796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (A052180 (n + 2)).toNat + A277617 (n + 1)

end

end A277616.P1372754994570712796

/-! ## A277616.P7674205920886737957

`A023443(A277617(n+1))`
-/

namespace A277616.P7674205920886737957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A277617 (n + 1)).toNat

end

end A277616.P7674205920886737957

/-! ## A277616.P10411067952932892813

`A289207(A277617(n+1)+1)`
-/

namespace A277616.P10411067952932892813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A277617 (n + 1) + 1).toNat

end

end A277616.P10411067952932892813

/-! ## A277616.P12639845467165763820

`A023445(A277617(n+1)+1)+1`
-/

namespace A277616.P12639845467165763820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A277617 (n + 1) + 1).toNat + 1

end

end A277616.P12639845467165763820

/-! ## A277616.P13422482697678019428

`A023445(A277617(n+1)+2)`
-/

namespace A277616.P13422482697678019428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A277617 (n + 1) + 2).toNat

end

end A277616.P13422482697678019428

/-! ## A277616.P7961783405587391490

`A023446(A277617(n+1)+3)`
-/

namespace A277616.P7961783405587391490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A277617 (n + 1) + 3).toNat

end

end A277616.P7961783405587391490

/-! ## A277616.P6593790834862894415

`A023449(A277617(n+1)+6)`
-/

namespace A277616.P6593790834862894415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023449 (A277617 (n + 1) + 6).toNat

end

end A277616.P6593790834862894415

/-! ## A277616.P3617163158484100163

`A065423(2*A277617(n+1))`
-/

namespace A277616.P3617163158484100163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A277617 (n + 1)).toNat

end

end A277616.P3617163158484100163

/-! ## A277616.P8569495019556111135

`A140106(2*A277617(n+1))`
-/

namespace A277616.P8569495019556111135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A277617 (n + 1)).toNat

end

end A277616.P8569495019556111135

/-! ## A277616.P9448882327978298669

`A321804(xor(n, n+1))+A277617(n+1)`
-/

namespace A277616.P9448882327978298669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (Nat.xor n (n + 1)) + A277617 (n + 1)

end

end A277616.P9448882327978298669

/-!
# A277617: Lexicographically earliest positive sequence such that a(n+1)-a(n) is a square > 1 and no number occurs twice; a(1) = 1.

The programs for A277617, there is no canonical definition to state claims against.
-/

/-! ## A277617.P13912565320538822564

`A277616(n)+1`
-/

namespace A277617.P13912565320538822564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277616 n + 1

end

end A277617.P13912565320538822564

/-! ## A277617.P12345557100755975659

`A008619(2*A277616(n))`
-/

namespace A277617.P12345557100755975659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A277616 n).toNat

end

end A277617.P12345557100755975659

/-! ## A277617.P5597273810254091083

`A052938(2*A277616(n))`
-/

namespace A277617.P5597273810254091083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A277616 n).toNat

end

end A277617.P5597273810254091083

/-! ## A277617.P4402680248668973103

`A028242(2*A277616(n))`
-/

namespace A277617.P4402680248668973103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A277616 n).toNat

end

end A277617.P4402680248668973103

/-! ## A277617.P10036079990952229477

`A080513(2*A277616(n))`
-/

namespace A277617.P10036079990952229477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A277616 n).toNat

end

end A277617.P10036079990952229477

/-! ## A277617.P10808306815740546196

`A008611(3*A277616(n))`
-/

namespace A277617.P10808306815740546196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A277616 n).toNat

end

end A277617.P10808306815740546196

/-! ## A277617.P14658806496175114089

`A008620(3*A277616(n))`
-/

namespace A277617.P14658806496175114089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A277616 n).toNat

end

end A277617.P14658806496175114089

/-! ## A277617.P4626588147710631787

`A008621(4*A277616(n))`
-/

namespace A277617.P4626588147710631787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A277616 n).toNat

end

end A277617.P4626588147710631787

/-! ## A277617.P13469777469321786607

`A008612(6*A277616(n))`
-/

namespace A277617.P13469777469321786607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A277616 n).toNat

end

end A277617.P13469777469321786607

/-! ## A277617.P2270521203612166066

`A117448(6*A277616(n))`
-/

namespace A277617.P2270521203612166066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117448 (6 * A277616 n).toNat

end

end A277617.P2270521203612166066

/-!
# A277618: Lexicographically earliest nonnegative sequence such that |a(n+1)-a(n)| is a prime number, and no number occurs twice; a(0) = 0.

The programs for A277618, the canonical program `A277618.P14141087191266251503` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277618 has offset 0).

The definition of A277618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277618.P14141087191266251503

`a(n-5)+5` with `a(0)=0, a(1)=2, a(2)=4, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277618

/-- `a(n-5)+5` -/
def P14141087191266251503.Spec : Prop :=
  ∀ n, (P14141087191266251503.a n : ℤ) = A277618 n

theorem P14141087191266251503.correct : P14141087191266251503.Spec := by
  intro n
  simp only [A277618]

end A277618

/-! ## A277618.P17386799800984641266

`A065186(n+1)-1`
-/

namespace A277618.P17386799800984641266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065186 (n + 1) - 1

end

end A277618.P17386799800984641266

namespace A277618

/-- `A065186(n+1)-1` -/
def P17386799800984641266.Spec : Prop :=
  ∀ n, P17386799800984641266.a n = A277618 n

end A277618

/-! ## A277618.P10837161898570353884

`(n+2)%5-2+n`
-/

namespace A277618.P10837161898570353884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) % 5 : ℕ) : ℤ) - 2 + (n : ℤ)

end

end A277618.P10837161898570353884

namespace A277618

/-- `(n+2)%5-2+n` -/
def P10837161898570353884.Spec : Prop :=
  ∀ n, P10837161898570353884.a n = A277618 n

end A277618

/-! ## A277618.P1923544047483501854

`2*n-5*round(n/5)`
-/

namespace A277618.P1923544047483501854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 5 * SequenceMachineLib.roundAway ((n : ℚ) / 5)

end

end A277618.P1923544047483501854

namespace A277618

/-- `2*n-5*round(n/5)` -/
def P1923544047483501854.Spec : Prop :=
  ∀ n, P1923544047483501854.a n = A277618 n

end A277618

/-! ## A277618.P9290973505245384543

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=-3, a(4)=2, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A277618.P9290973505245384543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2, -3, 2, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277618.P9290973505245384543

namespace A277618

/-- `∑[floor(a(n-5))]` -/
def P9290973505245384543.Spec : Prop :=
  ∀ n, P9290973505245384543.a n = A277618 n

end A277618

/-! ## A277618.P1296354800921413622

`abs(A117444(n)+n)`
-/

namespace A277618.P1296354800921413622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117444 n + (n : ℤ)|

end

end A277618.P1296354800921413622

namespace A277618

/-- `abs(A117444(n)+n)` -/
def P1296354800921413622.Spec : Prop :=
  ∀ n, P1296354800921413622.a n = A277618 n

end A277618

/-! ## A277618.P1036021495748200344

`A023443(A065186(n+1))`
-/

namespace A277618.P1036021495748200344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A065186 (n + 1)).toNat

end

end A277618.P1036021495748200344

namespace A277618

/-- `A023443(A065186(n+1))` -/
def P1036021495748200344.Spec : Prop :=
  ∀ n, P1036021495748200344.a n = A277618 n

end A277618

/-! ## A277618.P7782895823067473387

`A023443(A023443(n)+A010874(n+2))`
-/

namespace A277618.P7782895823067473387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A023443 n + A010874 (n + 2)).toNat

end

end A277618.P7782895823067473387

namespace A277618

/-- `A023443(A023443(n)+A010874(n+2))` -/
def P7782895823067473387.Spec : Prop :=
  ∀ n, P7782895823067473387.a n = A277618 n

end A277618

/-! ## A277618.P15043408910536479284

`A029926(A029925(n+2)-A177154(n+3))`
-/

namespace A277618.P15043408910536479284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029926 (A029925 (n + 2) - A177154 (n + 3)).toNat

end

end A277618.P15043408910536479284

namespace A277618

/-- `A029926(A029925(n+2)-A177154(n+3))` -/
def P15043408910536479284.Spec : Prop :=
  ∀ n, P15043408910536479284.a n = A277618 n

end A277618

/-! ## A277618.P9899758143526249536

`A169933(2*n)/2`
-/

namespace A277618.P9899758143526249536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169933 (2 * n) : ℚ) / 2

end

end A277618.P9899758143526249536

namespace A277618

/-- `A169933(2*n)/2` -/
def P9899758143526249536.Spec : Prop :=
  ∀ n, P9899758143526249536.a n = (A277618 n : ℚ)

end A277618

/-! ## A277618.P15902790132033340399

`floor(A133311(2*n)/2)`
-/

namespace A277618.P15902790132033340399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133311 (2 * n) : ℚ) / 2⌋

end

end A277618.P15902790132033340399

namespace A277618

/-- `floor(A133311(2*n)/2)` -/
def P15902790132033340399.Spec : Prop :=
  ∀ n, P15902790132033340399.a n = A277618 n

end A277618

/-! ## A277618.P11609835543918694227

`A004526(A133311(2*n))`
-/

namespace A277618.P11609835543918694227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A133311 (2 * n)).toNat

end

end A277618.P11609835543918694227

namespace A277618

/-- `A004526(A133311(2*n))` -/
def P11609835543918694227.Spec : Prop :=
  ∀ n, P11609835543918694227.a n = A277618 n

end A277618

/-! ## A277618.P8626626926754339927

`A008604(n)%A311807(n)`
-/

namespace A277618.P8626626926754339927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008604 n) (A311807 n)

end

end A277618.P8626626926754339927

namespace A277618

/-- `A008604(n)%A311807(n)` -/
def P8626626926754339927.Spec : Prop :=
  ∀ n, P8626626926754339927.a n = A277618 n

end A277618

/-! ## A277618.P1231540356540636929

`A315610(n)%A311807(n)`
-/

namespace A277618.P1231540356540636929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315610 n) (A311807 n)

end

end A277618.P1231540356540636929

namespace A277618

/-- `A315610(n)%A311807(n)` -/
def P1231540356540636929.Spec : Prop :=
  ∀ n, P1231540356540636929.a n = A277618 n

end A277618

/-! ## A277618.P17163745717063098705

`A305548(n)%A313873(n)`
-/

namespace A277618.P17163745717063098705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305548 n) (A313873 n)

end

end A277618.P17163745717063098705

namespace A277618

/-- `A305548(n)%A313873(n)` -/
def P17163745717063098705.Spec : Prop :=
  ∀ n, P17163745717063098705.a n = A277618 n

end A277618

/-! ## A277618.P18126718443213738328

`and(A095121(n+1), A133311(2*n))/2`
-/

namespace A277618.P18126718443213738328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A095121 (n + 1)) (A133311 (2 * n)) : ℚ) / 2

end

end A277618.P18126718443213738328

namespace A277618

/-- `and(A095121(n+1), A133311(2*n))/2` -/
def P18126718443213738328.Spec : Prop :=
  ∀ n, P18126718443213738328.a n = (A277618 n : ℚ)

end A277618

/-! ## A277618.P10759113103297863766

`and(A027383(2*n), A133311(2*n))/2`
-/

namespace A277618.P10759113103297863766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A027383 (2 * n)) (A133311 (2 * n)) : ℚ) / 2

end

end A277618.P10759113103297863766

namespace A277618

/-- `and(A027383(2*n), A133311(2*n))/2` -/
def P10759113103297863766.Spec : Prop :=
  ∀ n, P10759113103297863766.a n = (A277618 n : ℚ)

end A277618

/-! ## A277618.P1493340176752868517

`and(A133311(2*n), A134067(n+1))/2`
-/

namespace A277618.P1493340176752868517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A133311 (2 * n)) (A134067 (n + 1)) : ℚ) / 2

end

end A277618.P1493340176752868517

namespace A277618

/-- `and(A133311(2*n), A134067(n+1))/2` -/
def P1493340176752868517.Spec : Prop :=
  ∀ n, P1493340176752868517.a n = (A277618 n : ℚ)

end A277618

/-! ## A277618.P5685698722516044538

`and(A117867(n+2), A133311(2*n))/2`
-/

namespace A277618.P5685698722516044538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A117867 (n + 2)) (A133311 (2 * n)) : ℚ) / 2

end

end A277618.P5685698722516044538

namespace A277618

/-- `and(A117867(n+2), A133311(2*n))/2` -/
def P5685698722516044538.Spec : Prop :=
  ∀ n, P5685698722516044538.a n = (A277618 n : ℚ)

end A277618

/-! ## A277618.P16349186435685630047

`Δ[A081596(n²-n)]`
-/

namespace A277618.P16349186435685630047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081596 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277618.P16349186435685630047

namespace A277618

/-- `Δ[A081596(n²-n)]` -/
def P16349186435685630047.Spec : Prop :=
  ∀ n, P16349186435685630047.a n = A277618 n

end A277618

/-!
# A277620: Positive integers that are composed of prime factors 2,3,5 and 11.

The programs for A277620, there is no canonical definition to state claims against.
-/

/-! ## A277620.P9704653922988287955

`record[A094521(3*(n+1))]`
-/

namespace A277620.P9704653922988287955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094521 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277620.P9704653922988287955

/-! ## A277620.P3566504643806236255

`record[A009195(33*(n+1))]`
-/

namespace A277620.P3566504643806236255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (33 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277620.P3566504643806236255

/-! ## A277620.P11380202850931560178

`record[gcd(n+1, A000010(33*(n+1)))]`
-/

namespace A277620.P11380202850931560178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000010 (33 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277620.P11380202850931560178

/-! ## A277620.P6444909509607305171

`eq[n+1, A094521(3*n+3)]+1`
-/

namespace A277620.P6444909509607305171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094521 (3 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277620.P6444909509607305171

/-! ## A277620.P9564599436542078164

`record[A106608(A051038(n+1))]`
-/

namespace A277620.P9564599436542078164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A051038 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277620.P9564599436542078164

/-! ## A277620.P11163532594828329480

`record[A198328(A319985(n+1))]`
-/

namespace A277620.P11163532594828329480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198328 (A319985 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277620.P11163532594828329480

/-! ## A277620.P3423351184778608773

`filter[A051038(n+1), A109720(#)]`
-/

namespace A277620.P3423351184778608773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A277620.P3423351184778608773

/-! ## A277620.P9384024603642563377

`record[gcd(A008620(n), A094521(n+2))]`
-/

namespace A277620.P9384024603642563377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008620 n) (A094521 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277620.P9384024603642563377

/-! ## A277620.P5446587884812172361

`record[gcd(A094457(n+2), A117910(n))]`
-/

namespace A277620.P5446587884812172361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094457 (n + 2)) (A117910 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277620.P5446587884812172361

/-! ## A277620.P2784150592721066218

`record[and(A049347(n), A094521(n+2))]`
-/

namespace A277620.P2784150592721066218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049347 n) (A094521 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277620.P2784150592721066218

/-!
# A277623: Each odd term "t" of the sequence is followed by t even terms and each odd digit "k" of the sequence is followed by k even digits.

The programs for A277623, there is no canonical definition to state claims against.
-/

/-! ## A277623.P13745415801064874117

`C(A277519(n+1), A329720(A350649(n)))`
-/

namespace A277623.P13745415801064874117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A277519 (n + 1)).toNat (A329720 (A350649 n).toNat).toNat

end

end A277623.P13745415801064874117

/-! ## A277623.P6318304334089645039

`C(A277519(n+1), A329720(A027960(n+3)!))`
-/

namespace A277623.P6318304334089645039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A277519 (n + 1)).toNat (A329720 (Nat.factorial (A027960 (n + 3)).toNat)).toNat

end

end A277623.P6318304334089645039

/-!
# A277624: Composite numbers which have a dominant prime factor. A prime factor p of n is dominant if floor(sqrt(p)) > (n/p).

The programs for A277624, there is no canonical definition to state claims against.
-/

/-! ## A277624.P17021620655126791182

`lt[A001749(A326851(n)), A078898(n)]`
-/

namespace A277624.P17021620655126791182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (A326851 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277624.P17021620655126791182

/-! ## A277624.P4138257540752287710

`A097247(A169804(n+2))`
-/

namespace A277624.P4138257540752287710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097247 (A169804 (n + 2)).toNat

end

end A277624.P4138257540752287710

/-! ## A277624.P14966921653677603791

`∩[A089585(n+1), A169804(n+1)]`
-/

namespace A277624.P14966921653677603791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277624.P14966921653677603791

/-! ## A277624.P12185540998293875953

`∩[A169804(n+1), A323733(n+1)]`
-/

namespace A277624.P12185540998293875953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277624.P12185540998293875953

/-! ## A277624.P3525038583752641641

`lt[A240850(n), A318581(A008615(2*(n+2)))]`
-/

namespace A277624.P3525038583752641641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240850 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318581 (A008615 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277624.P3525038583752641641

/-!
# A277627: Square array read by antidiagonals downwards: T(n,k), n>=0, k>=0, in which column 0 is equal to A057427: 0, 1, 1, 1, ..., and for k > 0 column k lists two zeros followed by the partial sums of column k-1.

The programs for A277627, the canonical program `A277627.P6584579301111323018` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277627 has offset 0).

The definition of A277627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277627.P6584579301111323018

`C(A181940(n), A025581(A080036(n)))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A277627

/-- `C(A181940(n), A025581(A080036(n)))` -/
def P6584579301111323018.Spec : Prop :=
  ∀ n, (P6584579301111323018.a n : ℤ) = A277627 n

theorem P6584579301111323018.correct : P6584579301111323018.Spec := by
  intro n
  simp only [A277627]

end A277627

/-! ## A277627.P7409030186530478090

`C(A181940(n), A025581(A066182(n+1)))`
-/

namespace A277627.P7409030186530478090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A181940 n).toNat (A025581 (A066182 (n + 1)).toNat).toNat

end

end A277627.P7409030186530478090

namespace A277627

/-- `C(A181940(n), A025581(A066182(n+1)))` -/
def P7409030186530478090.Spec : Prop :=
  ∀ n, (P7409030186530478090.a n : ℤ) = A277627 n

end A277627

/-! ## A277627.P17846017668095464394

`A056973(A295679(n))^A246106(n)`
-/

namespace A277627.P17846017668095464394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056973 (A295679 n).toNat : ℚ) ^ (A246106 n : ℤ)

end

end A277627.P17846017668095464394

namespace A277627

/-- `A056973(A295679(n))^A246106(n)` -/
def P17846017668095464394.Spec : Prop :=
  ∀ n, P17846017668095464394.a n = (A277627 n : ℚ)

end A277627

/-! ## A277627.P12402494774888533726

`C(A134022(A340986(n)), A071919(n))`
-/

namespace A277627.P12402494774888533726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134022 (A340986 n).toNat).toNat (A071919 n).toNat

end

end A277627.P12402494774888533726

namespace A277627

/-- `C(A134022(A340986(n)), A071919(n))` -/
def P12402494774888533726.Spec : Prop :=
  ∀ n, (P12402494774888533726.a n : ℤ) = A277627 n

end A277627

/-! ## A277627.P12563352393130732790

`C(A024504(A287417(n)), A287698(n))`
-/

namespace A277627.P12563352393130732790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A024504 (A287417 n).toNat).toNat (A287698 n).toNat

end

end A277627.P12563352393130732790

namespace A277627

/-- `C(A024504(A287417(n)), A287698(n))` -/
def P12563352393130732790.Spec : Prop :=
  ∀ n, (P12563352393130732790.a n : ℤ) = A277627 n

end A277627

/-!
# A277629: Number of aperiodic necklaces (Lyndon words) with k<=5 black beads and n-k white beads.

The programs for A277629, there is no canonical definition to state claims against.
-/

/-! ## A277629.P6152680802921400669

`or(A001371(n), A175078(A303058(n)))`
-/

namespace A277629.P6152680802921400669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001371 n) (A175078 (A303058 n).toNat)

end

end A277629.P6152680802921400669

/-!
# A277631: Number of aperiodic necklaces (Lyndon words) with k<=6 black beads and n-k white beads.

The programs for A277631, there is no canonical definition to state claims against.
-/

/-! ## A277631.P6510041377918619305

`A027196(3*n+5)+A011558(A291248(n+3))`
-/

namespace A277631.P6510041377918619305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027196 (3 * n + 5) + A011558 (A291248 (n + 3)).toNat

end

end A277631.P6510041377918619305

/-! ## A277631.P9674527718274654553

`A086017(ceil(20^(n/3)))+A054650(n+1)`
-/

namespace A277631.P9674527718274654553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086017 ⌈(20 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉.toNat + A054650 (n + 1)

end

end A277631.P9674527718274654553

/-! ## A277631.P11497711681245949103

`A001037(n)-A000045(A165877(n))`
-/

namespace A277631.P11497711681245949103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 n - A000045 (A165877 n).toNat

end

end A277631.P11497711681245949103

/-! ## A277631.P2340631759628545670

`A001037(n)-A285006(A228864(n))`
-/

namespace A277631.P2340631759628545670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 n - A285006 (A228864 n).toNat

end

end A277631.P2340631759628545670

/-!
# A277633: Number of aperiodic necklaces (Lyndon words) with k<=8 black beads and n-k white beads.

The programs for A277633, there is no canonical definition to state claims against.
-/

/-! ## A277633.P14459288591256793988

`A001037(n)-A137579(a(n-1))` with `a(0)=1`
-/

namespace A277633.P14459288591256793988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001037 n - A137579 (a (n - 1)).toNat

end

end A277633.P14459288591256793988

/-! ## A277633.P5123631482694431365

`A001037(n)-A067169(A000048(n))`
-/

namespace A277633.P5123631482694431365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 n - A067169 ((A000048 n).toNat + 11)

end

end A277633.P5123631482694431365

/-! ## A277633.P568428817121579674

`A001037(n)-A356607(A185293(n))`
-/

namespace A277633.P568428817121579674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 n - A356607 (A185293 n).toNat

end

end A277633.P568428817121579674

/-! ## A277633.P4901256032424155247

`xor(A001037(n), A185284(A298784(n)))`
-/

namespace A277633.P4901256032424155247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001037 n) (A185284 (A298784 n).toNat)

end

end A277633.P4901256032424155247

/-! ## A277633.P13656817266535416699

`A014072(A205799(n))+A001037(n)`
-/

namespace A277633.P13656817266535416699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014072 (A205799 n).toNat + A001037 n

end

end A277633.P13656817266535416699

/-!
# A277635: Number of 7's appearing in the sequence of consecutive natural numbers from 1 to A007908(n), where A007908 = (1, 12, 123, 1234, ...).

The programs for A277635, there is no canonical definition to state claims against.
-/

/-! ## A277635.P10254738086478066920

`A277837(n+1)`
-/

namespace A277635.P10254738086478066920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277837 (n + 1)

end

end A277635.P10254738086478066920

/-! ## A277635.P8265737736493057362

`∑[abs(Δ[A277837(n)])]`
-/

namespace A277635.P8265737736493057362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277837 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277635.P8265737736493057362

/-! ## A277635.P17621567940618131135

`record[A277837(∏{digits}[n, #])]`
-/

namespace A277635.P17621567940618131135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277837 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277635.P17621567940618131135

/-! ## A277635.P9420016246124920585

`record[A277837(ceil(xor(1, n)/2))]`
-/

namespace A277635.P9420016246124920585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277837 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277635.P9420016246124920585

/-! ## A277635.P3664070830256315514

`record[A277837(n-gcd(n, ∑[n]))]`
-/

namespace A277635.P3664070830256315514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277837 (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277635.P3664070830256315514

/-!
# A277636: Number of 3 X 3 matrices having all elements in {0,...,n} with determinant = permanent.

The programs for A277636, the canonical program `A277636.P10937141613604448744` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277636 has offset 0).

The definition of A277636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277636.P10937141613604448744

`(3*n²+3*n+1)^3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277636

/-- `(3*n²+3*n+1)^3` -/
def P10937141613604448744.Spec : Prop :=
  ∀ n, (P10937141613604448744.a n : ℤ) = A277636 n

theorem P10937141613604448744.correct : P10937141613604448744.Spec := by
  intro n
  simp only [A277636]

end A277636

/-! ## A277636.P8887179048212250977

`floor(∑[a(n-1)+6]^3)` with `a(0)=1, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A277636.P8887179048212250977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A277636.P8887179048212250977

namespace A277636

/-- `floor(∑[a(n-1)+6]^3)` -/
def P8887179048212250977.Spec : Prop :=
  ∀ n, (P8887179048212250977.a n : ℤ) = A277636 n

end A277636

/-! ## A277636.P11098308976950701435

`or(1, ∑[6*n])²*or(1, ∑[6*n])`
-/

namespace A277636.P11098308976950701435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A277636.P11098308976950701435

namespace A277636

/-- `or(1, ∑[6*n])²*or(1, ∑[6*n])` -/
def P11098308976950701435.Spec : Prop :=
  ∀ n, (P11098308976950701435.a n : ℤ) = A277636 n

end A277636

/-! ## A277636.P13693219064647828575

`xor(1, ∑[6*n])²*xor(1, ∑[6*n])`
-/

namespace A277636.P13693219064647828575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A277636.P13693219064647828575

namespace A277636

/-- `xor(1, ∑[6*n])²*xor(1, ∑[6*n])` -/
def P13693219064647828575.Spec : Prop :=
  ∀ n, (P13693219064647828575.a n : ℤ) = A277636 n

end A277636

/-! ## A277636.P9148034385495437593

`(lcm(6, ∑[6*n])+1)*(lcm(6, ∑[6*n])+1)²`
-/

namespace A277636.P9148034385495437593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 6 (∑ j ∈ Finset.range (n + 1), f1 j) + 1) * (Nat.lcm 6 (∑ j ∈ Finset.range (n + 1), f2 j) + 1) ^ 2

end

end A277636.P9148034385495437593

namespace A277636

/-- `(lcm(6, ∑[6*n])+1)*(lcm(6, ∑[6*n])+1)²` -/
def P9148034385495437593.Spec : Prop :=
  ∀ n, (P9148034385495437593.a n : ℤ) = A277636 n

end A277636

/-! ## A277636.P8793282117498249884

`abs(∑[A271114(n)-1]^3)`
-/

namespace A277636.P8793282117498249884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) ^ 3|

end

end A277636.P8793282117498249884

namespace A277636

/-- `abs(∑[A271114(n)-1]^3)` -/
def P8793282117498249884.Spec : Prop :=
  ∀ n, P8793282117498249884.a n = A277636 n

end A277636

/-! ## A277636.P9593003805532069976

`A003215(n)²*A003215(n)`
-/

namespace A277636.P9593003805532069976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n ^ 2 * A003215 n

end

end A277636.P9593003805532069976

namespace A277636

/-- `A003215(n)²*A003215(n)` -/
def P9593003805532069976.Spec : Prop :=
  ∀ n, P9593003805532069976.a n = A277636 n

theorem P9593003805532069976.correct : P9593003805532069976.Spec := by
  intro n
  simp only [A277636, Nat.add_sub_cancel, A277636.P9593003805532069976.a, A277636.P10937141613604448744.a, A003215, A003215.P5851317289441473820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277636

/-! ## A277636.P5842559627258165075

`∑[A008458(n)]²*∑[A008458(n)]`
-/

namespace A277636.P5842559627258165075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A277636.P5842559627258165075

namespace A277636

/-- `∑[A008458(n)]²*∑[A008458(n)]` -/
def P5842559627258165075.Spec : Prop :=
  ∀ n, P5842559627258165075.a n = A277636 n

end A277636

/-! ## A277636.P10136704329450493160

`ceil(A003154(n+1)/2)²*∑[A271114(n)-1]`
-/

namespace A277636.P10136704329450493160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003154 (n + 1) : ℚ) / 2⌉ ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277636.P10136704329450493160

namespace A277636

/-- `ceil(A003154(n+1)/2)²*∑[A271114(n)-1]` -/
def P10136704329450493160.Spec : Prop :=
  ∀ n, P10136704329450493160.a n = A277636 n

end A277636

/-! ## A277636.P17192002503343237501

`abs((A014255(2*n)-n)^3)`
-/

namespace A277636.P17192002503343237501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A014255 (2 * n) - (n : ℤ)) ^ 3|

end

end A277636.P17192002503343237501

namespace A277636

/-- `abs((A014255(2*n)-n)^3)` -/
def P17192002503343237501.Spec : Prop :=
  ∀ n, P17192002503343237501.a n = A277636 n

end A277636

/-! ## A277636.P9659938853683267585

`abs((∑[A007310(2*n+1)]-n)^3)`
-/

namespace A277636.P9659938853683267585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) ^ 3|

end

end A277636.P9659938853683267585

namespace A277636

/-- `abs((∑[A007310(2*n+1)]-n)^3)` -/
def P9659938853683267585.Spec : Prop :=
  ∀ n, P9659938853683267585.a n = A277636 n

end A277636

/-! ## A277636.P9924912170861062511

`A077043(2*n+1)*A212503(2*n+1)`
-/

namespace A277636.P9924912170861062511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (2 * n + 1) * A212503 (2 * n + 1)

end

end A277636.P9924912170861062511

namespace A277636

/-- `A077043(2*n+1)*A212503(2*n+1)` -/
def P9924912170861062511.Spec : Prop :=
  ∀ n, P9924912170861062511.a n = A277636 n

end A277636

/-! ## A277636.P10241037878980257158

`A194073(2*n+1)²*A194073(2*n+1)`
-/

namespace A277636.P10241037878980257158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194073 (2 * n + 1) ^ 2 * A194073 (2 * n + 1)

end

end A277636.P10241037878980257158

namespace A277636

/-- `A194073(2*n+1)²*A194073(2*n+1)` -/
def P10241037878980257158.Spec : Prop :=
  ∀ n, P10241037878980257158.a n = A277636 n

end A277636

/-! ## A277636.P17128607053013051159

`A309805(2*n+1)²*A309805(2*n+1)`
-/

namespace A277636.P17128607053013051159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (2 * n + 1) ^ 2 * A309805 (2 * n + 1)

end

end A277636.P17128607053013051159

namespace A277636

/-- `A309805(2*n+1)²*A309805(2*n+1)` -/
def P17128607053013051159.Spec : Prop :=
  ∀ n, P17128607053013051159.a n = A277636 n

end A277636

/-! ## A277636.P446875176173929922

`A317790(2*n+1)²*A317790(2*n+1)`
-/

namespace A277636.P446875176173929922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317790 (2 * n + 1) ^ 2 * A317790 (2 * n + 1)

end

end A277636.P446875176173929922

namespace A277636

/-- `A317790(2*n+1)²*A317790(2*n+1)` -/
def P446875176173929922.Spec : Prop :=
  ∀ n, P446875176173929922.a n = A277636 n

end A277636

/-! ## A277636.P10689118216227434771

`A329482(2*n+1)²*A329482(2*n+1)`
-/

namespace A277636.P10689118216227434771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329482 (2 * n + 1) ^ 2 * A329482 (2 * n + 1)

end

end A277636.P10689118216227434771

namespace A277636

/-- `A329482(2*n+1)²*A329482(2*n+1)` -/
def P10689118216227434771.Spec : Prop :=
  ∀ n, P10689118216227434771.a n = A277636 n

end A277636

/-! ## A277636.P16833010255616523424

`A016923(∑[n])`
-/

namespace A277636.P16833010255616523424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277636.P16833010255616523424

namespace A277636

/-- `A016923(∑[n])` -/
def P16833010255616523424.Spec : Prop :=
  ∀ n, P16833010255616523424.a n = A277636 n

end A277636

/-! ## A277636.P9741063998334390029

`sqrt(A016926(∑[n]))`
-/

namespace A277636.P9741063998334390029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016926 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A277636.P9741063998334390029

namespace A277636

/-- `sqrt(A016926(∑[n]))` -/
def P9741063998334390029.Spec : Prop :=
  ∀ n, P9741063998334390029.a n = (A277636 n : ℝ)

end A277636

/-! ## A277636.P6571557341630368799

`A016779(∑[2*n])`
-/

namespace A277636.P6571557341630368799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277636.P6571557341630368799

namespace A277636

/-- `A016779(∑[2*n])` -/
def P6571557341630368799.Spec : Prop :=
  ∀ n, P6571557341630368799.a n = A277636 n

end A277636

/-! ## A277636.P14446566275247145435

`sqrt(A016782(∑[2*n]))`
-/

namespace A277636.P14446566275247145435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016782 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A277636.P14446566275247145435

namespace A277636

/-- `sqrt(A016782(∑[2*n]))` -/
def P14446566275247145435.Spec : Prop :=
  ∀ n, P14446566275247145435.a n = (A277636 n : ℝ)

end A277636

/-!
# A277637: Partial sums of A007004.

The programs for A277637, there is no canonical definition to state claims against.
-/

/-! ## A277637.P16214087394749178134

`∑[1/(n+1)*C(2*n, n)*C(3*n, n)]`
-/

namespace A277637.P16214087394749178134
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ) * (Nat.choose (3 * n) n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277637.P16214087394749178134

/-! ## A277637.P15979716531544388444

`∑[A007004(n)]`
-/

namespace A277637.P15979716531544388444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277637.P15979716531544388444

/-! ## A277637.P3913692370196001175

`∑[∑[n+1]*A005789(n)]`
-/

namespace A277637.P3913692370196001175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A005789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277637.P3913692370196001175

/-! ## A277637.P10365556616497476362

`∑[C(3*n, n)*A000108(n)]`
-/

namespace A277637.P10365556616497476362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277637.P10365556616497476362

/-! ## A277637.P14440284640644113791

`A215287(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A277637.P14440284640644113791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A215287 (2 * n) + a (n - 1)

end

end A277637.P14440284640644113791

/-! ## A277637.P11778245813004107073

`A215294(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A277637.P11778245813004107073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A215294 (2 * n) + a (n - 1)

end

end A277637.P11778245813004107073

/-! ## A277637.P16205398487345176202

`∑[A215287(comp[2*(n+1)]+1)]`
-/

namespace A277637.P16205398487345176202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215287 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277637.P16205398487345176202

/-! ## A277637.P13867334287874279869

`∑[A000108(n)*A005809(n)]`
-/

namespace A277637.P13867334287874279869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A005809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277637.P13867334287874279869

/-! ## A277637.P1638127452288870778

`∑[A000108(n)*A269956(∑[n])]`
-/

namespace A277637.P1638127452288870778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A269956 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277637.P1638127452288870778

/-!
# A277638: Binomial partial sums of sequence A007004.

The programs for A277638, there is no canonical definition to state claims against.
-/

/-! ## A277638.P11419342646400063577

`∑[A188946(n)]/(n+1)`
-/

namespace A277638.P11419342646400063577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188946 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A277638.P11419342646400063577

/-!
# A277643: Partial sums of number of overpartitions (A015128).

The programs for A277643, there is no canonical definition to state claims against.
-/

/-! ## A277643.P2610453394289370015

`∑[A015128(n)]`
-/

namespace A277643.P2610453394289370015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277643.P2610453394289370015

/-! ## A277643.P18295445431222706126

`∑[abs(A004402(n))]`
-/

namespace A277643.P18295445431222706126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004402 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277643.P18295445431222706126

/-! ## A277643.P11220496008247264280

`∑[∑[A211971(n)]]`
-/

namespace A277643.P11220496008247264280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211971 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277643.P11220496008247264280

/-! ## A277643.P10860188201462504161

`∑[A304627(n)+2]-2`
-/

namespace A277643.P10860188201462504161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304627 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A277643.P10860188201462504161

/-! ## A277643.P14495112342915500038

`A309266(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A277643.P14495112342915500038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A309266 n + a (n - 2)

end

end A277643.P14495112342915500038

/-! ## A277643.P10787800090354217171

`a(n-1)+2*A014968(n)` with `a(0)=1`
-/

namespace A277643.P10787800090354217171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A014968 n

end

end A277643.P10787800090354217171

/-! ## A277643.P4559008162548529122

`∑[A230441(n)+A000041(n)]`
-/

namespace A277643.P4559008162548529122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230441 n + A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277643.P4559008162548529122

/-! ## A277643.P16694683792499076050

`∑[lcm(A000034(n), A004402(n))]`
-/

namespace A277643.P16694683792499076050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A004402 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277643.P16694683792499076050

/-! ## A277643.P9124118547367860255

`∑[ratio[A057077(n)]*A004402(n)]`
-/

namespace A277643.P9124118547367860255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) * (A004402 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277643.P9124118547367860255

/-! ## A277643.P1531139083892143437

`∑[gcd(A004402(n), A035444(2*n+1))]`
-/

namespace A277643.P1531139083892143437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004402 n) (A035444 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277643.P1531139083892143437

/-! ## A277643.P12423805699400336462

`∑[∑[A300415(abs(1-n))+A300415(n)]]`
-/

namespace A277643.P12423805699400336462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300415 |1 - (n : ℤ)|.toNat + A300415 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277643.P12423805699400336462

/-! ## A277643.P11582490707067097962

`∑[2*A207641(n)]-A207641(n)`
-/

namespace A277643.P11582490707067097962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A207641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A207641 n

end

end A277643.P11582490707067097962

/-! ## A277643.P2324019423812459921

`∑[A004402(n)*A057077(2*n)]`
-/

namespace A277643.P2324019423812459921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004402 n * A057077 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277643.P2324019423812459921

/-! ## A277643.P2352162348542829934

`∑[A004402(n)/A057077(A004277(n))]`
-/

namespace A277643.P2352162348542829934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004402 n : ℚ) / (A057077 (A004277 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277643.P2352162348542829934

/-! ## A277643.P15112966068173459362

`∑[A004402(n)/A057077(A005408(n))]`
-/

namespace A277643.P15112966068173459362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004402 n : ℚ) / (A057077 (A005408 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277643.P15112966068173459362

/-! ## A277643.P2634268331883841851

`∑[A321884(∑[n+3])]`
-/

namespace A277643.P2634268331883841851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321884 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277643.P2634268331883841851

/-!
# A277644: Beatty sequence for sqrt(6)/2.

The programs for A277644, the canonical program `A277644.P15546226932184128949` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277644 has offset 1).

The definition of A277644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277644.P1178265666357457139

`floor((n+1)*sqrt(6)/2)`
-/

namespace A277644.P1178265666357457139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (6 : ℝ) / 2⌋

end

end A277644.P1178265666357457139

namespace A277644

/-- `floor((n+1)*sqrt(6)/2)` -/
def P1178265666357457139.Spec : Prop :=
  ∀ n, P1178265666357457139.a n = A277644 (n + 1)

end A277644

/-! ## A277644.P15546226932184128949

`A000196(A032528(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A277644

/-- `A000196(A032528(n+1))` -/
def P15546226932184128949.Spec : Prop :=
  ∀ n, P15546226932184128949.a n = A277644 (n + 1)

theorem P15546226932184128949.correct : P15546226932184128949.Spec := by
  intro n
  simp only [A277644, Nat.add_sub_cancel]

end A277644

/-! ## A277644.P8074427697732967780

`ceil(sqrt(∑[or(1, n)]+(n+1)²))-1`
-/

namespace A277644.P8074427697732967780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2 : ℕ) : ℝ)⌉ - 1

end

end A277644.P8074427697732967780

namespace A277644

/-- `ceil(sqrt(∑[or(1, n)]+(n+1)²))-1` -/
def P8074427697732967780.Spec : Prop :=
  ∀ n, P8074427697732967780.a n = A277644 (n + 1)

end A277644

/-! ## A277644.P8898936740808587994

`A184809(n+1)-(n+1)`
-/

namespace A277644.P8898936740808587994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184809 (n + 1) - (n + 1 : ℤ)

end

end A277644.P8898936740808587994

namespace A277644

/-- `A184809(n+1)-(n+1)` -/
def P8898936740808587994.Spec : Prop :=
  ∀ n, P8898936740808587994.a n = A277644 (n + 1)

end A277644

/-! ## A277644.P9053947440344870094

`ceil(sqrt(∑[3*A109613(n)]))-1`
-/

namespace A277644.P9053947440344870094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉ - 1

end

end A277644.P9053947440344870094

namespace A277644

/-- `ceil(sqrt(∑[3*A109613(n)]))-1` -/
def P9053947440344870094.Spec : Prop :=
  ∀ n, P9053947440344870094.a n = A277644 (n + 1)

end A277644

/-! ## A277644.P2955773872433298116

`A194146(n+1)-2*(n+1)`
-/

namespace A277644.P2955773872433298116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194146 (n + 1) - (2 * (n + 1) : ℤ)

end

end A277644.P2955773872433298116

namespace A277644

/-- `A194146(n+1)-2*(n+1)` -/
def P2955773872433298116.Spec : Prop :=
  ∀ n, P2955773872433298116.a n = A277644 (n + 1)

end A277644

/-! ## A277644.P6611720002530684354

`A189362(n+1)-A003152(n+1)`
-/

namespace A277644.P6611720002530684354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189362 (n + 1) - A003152 (n + 1)

end

end A277644.P6611720002530684354

namespace A277644

/-- `A189362(n+1)-A003152(n+1)` -/
def P6611720002530684354.Spec : Prop :=
  ∀ n, P6611720002530684354.a n = A277644 (n + 1)

theorem P6611720002530684354.correct : P6611720002530684354.Spec := by
  intro n
  simp only [A277644, Nat.add_sub_cancel, A277644.P6611720002530684354.a, A277644.P15546226932184128949.a, A000196, A000196.P15434771586934192083.a, A003152, A003152.P8355508272175907392.a, A032528, A032528.P6916664106980979500.a, A189362, A189362.P16228109364574491910.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A277644

/-! ## A277644.P2088657543715011337

`A189368(n+1)-A003151(n+1)`
-/

namespace A277644.P2088657543715011337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189368 (n + 1) - A003151 (n + 1)

end

end A277644.P2088657543715011337

namespace A277644

/-- `A189368(n+1)-A003151(n+1)` -/
def P2088657543715011337.Spec : Prop :=
  ∀ n, P2088657543715011337.a n = A277644 (n + 1)

end A277644

/-! ## A277644.P4894978362761808923

`A189385(n+1)-A054088(n+1)`
-/

namespace A277644.P4894978362761808923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189385 (n + 1) - A054088 (n + 1)

end

end A277644.P4894978362761808923

namespace A277644

/-- `A189385(n+1)-A054088(n+1)` -/
def P4894978362761808923.Spec : Prop :=
  ∀ n, P4894978362761808923.a n = A277644 (n + 1)

end A277644

/-! ## A277644.P369208875600969266

`ceil(sqrt(A238410(n+2)))-1`
-/

namespace A277644.P369208875600969266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A238410 (n + 2) : ℝ)⌉ - 1

end

end A277644.P369208875600969266

namespace A277644

/-- `ceil(sqrt(A238410(n+2)))-1` -/
def P369208875600969266.Spec : Prop :=
  ∀ n, P369208875600969266.a n = A277644 (n + 1)

end A277644

/-! ## A277644.P7843903948581794399

`A171975(2*(n+1))`
-/

namespace A277644.P7843903948581794399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171975 (2 * (n + 1))

end

end A277644.P7843903948581794399

namespace A277644

/-- `A171975(2*(n+1))` -/
def P7843903948581794399.Spec : Prop :=
  ∀ n, P7843903948581794399.a n = A277644 (n + 1)

end A277644

/-! ## A277644.P683367618329952929

`A001478(n+1)-A001478(A194146(n+1)+A001478(n+1))`
-/

namespace A277644.P683367618329952929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) - A001478 (A194146 (n + 1) + A001478 (n + 1)).toNat

end

end A277644.P683367618329952929

namespace A277644

/-- `A001478(n+1)-A001478(A194146(n+1)+A001478(n+1))` -/
def P683367618329952929.Spec : Prop :=
  ∀ n, P683367618329952929.a n = A277644 (n + 1)

end A277644

/-! ## A277644.P36337941866957665

`A004526(A022840(n+1))`
-/

namespace A277644.P36337941866957665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022840 (n + 1)).toNat

end

end A277644.P36337941866957665

namespace A277644

/-- `A004526(A022840(n+1))` -/
def P36337941866957665.Spec : Prop :=
  ∀ n, P36337941866957665.a n = A277644 (n + 1)

end A277644

/-! ## A277644.P2738622170212930290

`A004526(A198083(n+1)-1)`
-/

namespace A277644.P2738622170212930290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198083 (n + 1) - 1).toNat

end

end A277644.P2738622170212930290

namespace A277644

/-- `A004526(A198083(n+1)-1)` -/
def P2738622170212930290.Spec : Prop :=
  ∀ n, P2738622170212930290.a n = A277644 (n + 1)

end A277644

/-! ## A277644.P10668820085755317204

`A065033(A198083(n+1)-2)`
-/

namespace A277644.P10668820085755317204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A198083 (n + 1) - 2).toNat

end

end A277644.P10668820085755317204

namespace A277644

/-- `A065033(A198083(n+1)-2)` -/
def P10668820085755317204.Spec : Prop :=
  ∀ n, P10668820085755317204.a n = A277644 (n + 1)

end A277644

/-! ## A277644.P2421842398943149318

`A172476(3*(n+1))`
-/

namespace A277644.P2421842398943149318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (3 * (n + 1))

end

end A277644.P2421842398943149318

namespace A277644

/-- `A172476(3*(n+1))` -/
def P2421842398943149318.Spec : Prop :=
  ∀ n, P2421842398943149318.a n = A277644 (n + 1)

end A277644

/-! ## A277644.P15383202989958110721

`A194986(3*(n+1))-1`
-/

namespace A277644.P15383202989958110721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194986 (3 * (n + 1)) - 1

end

end A277644.P15383202989958110721

namespace A277644

/-- `A194986(3*(n+1))-1` -/
def P15383202989958110721.Spec : Prop :=
  ∀ n, P15383202989958110721.a n = A277644 (n + 1)

end A277644

/-!
# A277645: Beatty sequence for 3+sqrt(6).

The programs for A277645, the canonical program `A277645.P18154289466191058935` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277645 has offset 1).

The definition of A277645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277645.P3961069398241044043

`floor((n+1)*(3+sqrt(6)))`
-/

namespace A277645.P3961069398241044043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (3 + Real.sqrt (6 : ℝ))⌋

end

end A277645.P3961069398241044043

namespace A277645

/-- `floor((n+1)*(3+sqrt(6)))` -/
def P3961069398241044043.Spec : Prop :=
  ∀ n, P3961069398241044043.a n = A277645 (n + 1)

end A277645

/-! ## A277645.P18154289466191058935

`3*(n+1)+A000196(A033581(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A277645

/-- `3*(n+1)+A000196(A033581(n+1))` -/
def P18154289466191058935.Spec : Prop :=
  ∀ n, P18154289466191058935.a n = A277645 (n + 1)

theorem P18154289466191058935.correct : P18154289466191058935.Spec := by
  intro n
  simp only [A277645, Nat.add_sub_cancel]

end A277645

/-! ## A277645.P3447645494865382529

`∑[A276856(n+1)+3]`
-/

namespace A277645.P3447645494865382529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276856 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277645.P3447645494865382529

namespace A277645

/-- `∑[A276856(n+1)+3]` -/
def P3447645494865382529.Spec : Prop :=
  ∀ n, P3447645494865382529.a n = A277645 (n + 1)

end A277645

/-! ## A277645.P11537594925186816666

`A022840(n+1)+3*(n+1)`
-/

namespace A277645.P11537594925186816666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1) + (3 * (n + 1) : ℤ)

end

end A277645.P11537594925186816666

namespace A277645

/-- `A022840(n+1)+3*(n+1)` -/
def P11537594925186816666.Spec : Prop :=
  ∀ n, P11537594925186816666.a n = A277645 (n + 1)

end A277645

/-! ## A277645.P7823297095047096058

`A194145(n+1)+4*(n+1)`
-/

namespace A277645.P7823297095047096058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194145 (n + 1) + (4 * (n + 1) : ℤ)

end

end A277645.P7823297095047096058

namespace A277645

/-- `A194145(n+1)+4*(n+1)` -/
def P7823297095047096058.Spec : Prop :=
  ∀ n, P7823297095047096058.a n = A277645 (n + 1)

end A277645

/-! ## A277645.P18141025546194160968

`3*n+A198083(n+1)+2`
-/

namespace A277645.P18141025546194160968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A198083 (n + 1) + 2)

end

end A277645.P18141025546194160968

namespace A277645

/-- `3*n+A198083(n+1)+2` -/
def P18141025546194160968.Spec : Prop :=
  ∀ n, P18141025546194160968.a n = A277645 (n + 1)

end A277645

/-! ## A277645.P14011658752088816548

`A190365(n+1)-A171974(n+1)`
-/

namespace A277645.P14011658752088816548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190365 (n + 1) - A171974 (n + 1)

end

end A277645.P14011658752088816548

namespace A277645

/-- `A190365(n+1)-A171974(n+1)` -/
def P14011658752088816548.Spec : Prop :=
  ∀ n, P14011658752088816548.a n = A277645 (n + 1)

end A277645

/-! ## A277645.P4521218085938719717

`A190367(n+1)-A184809(n+1)`
-/

namespace A277645.P4521218085938719717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190367 (n + 1) - A184809 (n + 1)

end

end A277645.P4521218085938719717

namespace A277645

/-- `A190367(n+1)-A184809(n+1)` -/
def P4521218085938719717.Spec : Prop :=
  ∀ n, P4521218085938719717.a n = A277645 (n + 1)

end A277645

/-! ## A277645.P13390704012653667888

`A184809(2*(n+1))+n+1`
-/

namespace A277645.P13390704012653667888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184809 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A277645.P13390704012653667888

namespace A277645

/-- `A184809(2*(n+1))+n+1` -/
def P13390704012653667888.Spec : Prop :=
  ∀ n, P13390704012653667888.a n = A277645 (n + 1)

end A277645

/-! ## A277645.P7336364617985189812

`A194146(2*(n+1))-(n+1)`
-/

namespace A277645.P7336364617985189812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194146 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A277645.P7336364617985189812

namespace A277645

/-- `A194146(2*(n+1))-(n+1)` -/
def P7336364617985189812.Spec : Prop :=
  ∀ n, P7336364617985189812.a n = A277645 (n + 1)

end A277645

/-! ## A277645.P7854026491064944594

`A277644(2*(n+1))+3*(n+1)`
-/

namespace A277645.P7854026491064944594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (2 * (n + 1)) + (3 * (n + 1) : ℤ)

end

end A277645.P7854026491064944594

namespace A277645

/-- `A277644(2*(n+1))+3*(n+1)` -/
def P7854026491064944594.Spec : Prop :=
  ∀ n, P7854026491064944594.a n = A277645 (n + 1)

end A277645

/-! ## A277645.P17925481905596167962

`A194146(2*(n+1))+A001478(n+2)+1`
-/

namespace A277645.P17925481905596167962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194146 (2 * (n + 1)) + A001478 (n + 2) + 1

end

end A277645.P17925481905596167962

namespace A277645

/-- `A194146(2*(n+1))+A001478(n+2)+1` -/
def P17925481905596167962.Spec : Prop :=
  ∀ n, P17925481905596167962.a n = A277645 (n + 1)

end A277645

/-! ## A277645.P4418188561444109487

`A184808(3*(n+1))`
-/

namespace A277645.P4418188561444109487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184808 (3 * (n + 1))

end

end A277645.P4418188561444109487

namespace A277645

/-- `A184808(3*(n+1))` -/
def P4418188561444109487.Spec : Prop :=
  ∀ n, P4418188561444109487.a n = A277645 (n + 1)

end A277645

/-!
# A277646: Triangle T(n,k) = floor(n^2/k) for 1 <= k <= n^2, read by rows.

The programs for A277646, there is no canonical definition to state claims against.
-/

/-! ## A277646.P15464432765163050606

`A278111(2*(n+1))`
-/

namespace A277646.P15464432765163050606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (2 * (n + 1))

end

end A277646.P15464432765163050606

/-! ## A277646.P781624954117933395

`A278111(n+2+n)%(n+2)²`
-/

namespace A277646.P781624954117933395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278111 (n + 2 + n)) ((n + 2) ^ 2 : ℤ)

end

end A277646.P781624954117933395

/-! ## A277646.P12907992471926328803

`A000027(A278111(n+2+n))`
-/

namespace A277646.P12907992471926328803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A278111 (n + 2 + n)).toNat

end

end A277646.P12907992471926328803

/-! ## A277646.P4608532187532722401

`or(A000007(n), A278111(-xor(2*n, -2)))`
-/

namespace A277646.P4608532187532722401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A278111 (-Int.xor (2 * n : ℤ) (-2)).toNat)

end

end A277646.P4608532187532722401

/-! ## A277646.P756104234347124746

`A278111(n+2+n)+A001489(n)+n`
-/

namespace A277646.P756104234347124746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (n + 2 + n) + (A001489 n + (n : ℤ))

end

end A277646.P756104234347124746

/-! ## A277646.P12343310595228629456

`A278111(n+2+n)+A011734(Δ[A008576(n)])`
-/

namespace A277646.P12343310595228629456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (n + 2 + n) + A011734 (f1 (n + 1) - f1 n).toNat

end

end A277646.P12343310595228629456

/-! ## A277646.P10912250612816405544

`A278111(n+2+n)/A001222(A076567(n+1))`
-/

namespace A277646.P10912250612816405544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278111 (n + 2 + n) : ℚ) / (A001222 (A076567 (n + 1)).toNat : ℚ)

end

end A277646.P10912250612816405544

/-! ## A277646.P13229289974245170125

`A278111(n+2+n)^A001222(A008578(n+1))`
-/

namespace A277646.P13229289974245170125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278111 (n + 2 + n) : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A277646.P13229289974245170125

/-! ## A277646.P8538076347229854497

`A278111(n+2+n)^A001221(A028233(n+1))`
-/

namespace A277646.P8538076347229854497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278111 (n + 2 + n) : ℚ) ^ (A001221 (A028233 (n + 1)).toNat : ℤ)

end

end A277646.P8538076347229854497

/-!
# A277647: Triangle T(n,k) = floor(n/sqrt(k)) for 1 <= k <= n^2, read by rows.

The programs for A277647, there is no canonical definition to state claims against.
-/

/-! ## A277647.P3791231148824176805

`A000196(A277646(n+1))`
-/

namespace A277647.P3791231148824176805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A277646 (n + 1)).toNat

end

end A277647.P3791231148824176805

/-! ## A277647.P11738492978072140631

`A278112(2*(n+1))`
-/

namespace A277647.P11738492978072140631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278112 (2 * (n + 1))

end

end A277647.P11738492978072140631

/-! ## A277647.P4802327488610807658

`floor(sqrt(A278111(2*(n+1))))`
-/

namespace A277647.P4802327488610807658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A278111 (2 * (n + 1)))

end

end A277647.P4802327488610807658

/-! ## A277647.P13814738961790431967

`A000196(A278111(2*(n+1)))`
-/

namespace A277647.P13814738961790431967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A278111 (2 * (n + 1))).toNat

end

end A277647.P13814738961790431967

/-!
# A277648: Triangle T(n,k) = A277647(n, A005117(k)), read by rows.

The programs for A277648, there is no canonical definition to state claims against.
-/

/-! ## A277648.P13180496693325575842

`A000188(A278101(n+1))`
-/

namespace A277648.P13180496693325575842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A278101 (n + 1)).toNat

end

end A277648.P13180496693325575842

/-! ## A277648.P5023207551140352007

`A337101(2*A278101(n+1))`
-/

namespace A277648.P5023207551140352007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * A278101 (n + 1)).toNat

end

end A277648.P5023207551140352007

/-! ## A277648.P14306784530315311624

`A057918(A278101(n+1))+A008836(n+1)²`
-/

namespace A277648.P14306784530315311624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A278101 (n + 1)).toNat + A008836 (n + 1) ^ 2

end

end A277648.P14306784530315311624

/-! ## A277648.P5913738447375153515

`A057918(A278101(n+1))+A001221(A096916(n+1))`
-/

namespace A277648.P5913738447375153515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A278101 (n + 1)).toNat + A001221 (A096916 (n + 1)).toNat

end

end A277648.P5913738447375153515

/-! ## A277648.P18263853048104962419

`A057918(A278101(n+1))+A056594(2*(n+1))²`
-/

namespace A277648.P18263853048104962419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A278101 (n + 1)).toNat + A056594 (2 * (n + 1)) ^ 2

end

end A277648.P18263853048104962419

/-! ## A277648.P13038465964425959374

`A057918(A278101(n+1))-A008683(A023246(n+1))`
-/

namespace A277648.P13038465964425959374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A278101 (n + 1)).toNat - A008683 (A023246 (n + 1)).toNat

end

end A277648.P13038465964425959374

/-! ## A277648.P12974912842028260917

`A088911(n²-n)+A057918(A278101(n+1))`
-/

namespace A277648.P12974912842028260917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 (n ^ 2 - n) + A057918 (A278101 (n + 1)).toNat

end

end A277648.P12974912842028260917

/-!
# A277652: Numerators of factorial moments of order 2 for the number of parts in dissections of rooted and convex polygons.

The programs for A277652, there is no canonical definition to state claims against.
-/

/-! ## A277652.P18147206005739272405

`(n-1)*A008616(A104553(n+1))`
-/

namespace A277652.P18147206005739272405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A008616 (A104553 (n + 1)).toNat

end

end A277652.P18147206005739272405

/-! ## A277652.P2255572165832133271

`∑[A008619(floor(A006319(n)/2*n²))-1]`
-/

namespace A277652.P2255572165832133271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌊(A006319 n : ℚ) / 2 * (n ^ 2 : ℚ)⌋.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277652.P2255572165832133271

/-!
# A277653: Number of n X 2 0..2 arrays with every element equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277653, the canonical program `A277653.P6984874790251720621` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277653 has offset 1).

The definition of A277653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277653.P15754000407596701705

`ogf((x^2-x^3)/(1-3x-2x^2+2x^4))`
-/

namespace A277653.P15754000407596701705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1] [1, -3, -2, 0, 2] n

end

end A277653.P15754000407596701705

namespace A277653

/-- `ogf((x^2-x^3)/(1-3x-2x^2+2x^4))` -/
def P15754000407596701705.Spec : Prop :=
  ∀ n, P15754000407596701705.a n = A277653 (n + 1)

end A277653

/-! ## A277653.P6984874790251720621

`3*a(n-1)+2*a(n-2)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277653

/-- `3*a(n-1)+2*a(n-2)-2*a(n-4)` -/
def P6984874790251720621.Spec : Prop :=
  ∀ n, P6984874790251720621.a n = A277653 (n + 1)

theorem P6984874790251720621.correct : P6984874790251720621.Spec := by
  intro n
  simp only [A277653, Nat.add_sub_cancel]

end A277653

/-! ## A277653.P14578235183637051557

`A277659(∑[n+1]+2)`
-/

namespace A277653.P14578235183637051557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A277653.P14578235183637051557

namespace A277653

/-- `A277659(∑[n+1]+2)` -/
def P14578235183637051557.Spec : Prop :=
  ∀ n, P14578235183637051557.a n = A277653 (n + 1)

end A277653

/-! ## A277653.P6908713442805632729

`A277659(A000096(n+1))+A011655(3*(n+1))`
-/

namespace A277653.P6908713442805632729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (A000096 (n + 1)).toNat + A011655 (3 * (n + 1))

end

end A277653.P6908713442805632729

namespace A277653

/-- `A277659(A000096(n+1))+A011655(3*(n+1))` -/
def P6908713442805632729.Spec : Prop :=
  ∀ n, P6908713442805632729.a n = A277653 (n + 1)

end A277653

/-!
# A277654: Number of nX3 0..2 arrays with every element equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277654, there is no canonical definition to state claims against.
-/

/-! ## A277654.P16439566182487298876

`A277659(∑[n+2]+4)`
-/

namespace A277654.P16439566182487298876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A277654.P16439566182487298876

/-! ## A277654.P2948131287520117792

`A054977(n)*A277659(A167614(n+1))`
-/

namespace A277654.P2948131287520117792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A277659 (A167614 (n + 1)).toNat

end

end A277654.P2948131287520117792

/-! ## A277654.P3388730244295360667

`A178334(n)*A277659(A167614(n+1))`
-/

namespace A277654.P3388730244295360667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A277659 (A167614 (n + 1)).toNat

end

end A277654.P3388730244295360667

/-! ## A277654.P14148192293212824025

`A277659(A167614(n+1))*A309913(n)`
-/

namespace A277654.P14148192293212824025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (A167614 (n + 1)).toNat * A309913 n

end

end A277654.P14148192293212824025

/-! ## A277654.P1078864463449002445

`A277659(A167614(n+1))%A155612(n)`
-/

namespace A277654.P1078864463449002445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277659 (A167614 (n + 1)).toNat) (A155612 n)

end

end A277654.P1078864463449002445

/-!
# A277655: Number of n X 4 0..2 arrays with every element equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277655, there is no canonical definition to state claims against.
-/

/-! ## A277655.P13462292521434404219

`A277659(∑[n+3]+7)`
-/

namespace A277655.P13462292521434404219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A277655.P13462292521434404219

/-! ## A277655.P4546542449021325794

`record[A010054(n+4)*A277659(n+1)]`
-/

namespace A277655.P4546542449021325794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 4) * A277659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277655.P4546542449021325794

/-! ## A277655.P17491111154679735885

`A246465(n)*A277659(A155212(n)+5)`
-/

namespace A277655.P17491111154679735885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246465 n * A277659 (A155212 n + 5).toNat

end

end A277655.P17491111154679735885

/-! ## A277655.P9675296129904661472

`record[A277659(∑[A298005(n)])]`
-/

namespace A277655.P9675296129904661472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298005 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277655.P9675296129904661472

/-!
# A277656: Number of nX5 0..2 arrays with every element equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277656, there is no canonical definition to state claims against.
-/

/-! ## A277656.P10647050763309069544

`A277659(A374005(n+1))`
-/

namespace A277656.P10647050763309069544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (A374005 (n + 1)).toNat

end

end A277656.P10647050763309069544

/-! ## A277656.P3053629802023467230

`A277659(A167499(n+3))`
-/

namespace A277656.P3053629802023467230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (A167499 (n + 3)).toNat

end

end A277656.P3053629802023467230

/-! ## A277656.P4089267091506425712

`A277659(A155212(n)+13)`
-/

namespace A277656.P4089267091506425712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (A155212 n + 13).toNat

end

end A277656.P4089267091506425712

/-! ## A277656.P6017334056101346721

`A277659(A056000(n)+15)`
-/

namespace A277656.P6017334056101346721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (A056000 n + 15).toNat

end

end A277656.P6017334056101346721

/-! ## A277656.P8169626538311866892

`A277659(Δ[A264443(n)])`
-/

namespace A277656.P8169626538311866892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (f1 (n + 1) - f1 n).toNat

end

end A277656.P8169626538311866892

/-!
# A277657: Number of nX6 0..2 arrays with every element equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277657, there is no canonical definition to state claims against.
-/

/-! ## A277657.P4623261464140190766

`A277659(A374007(n+1))`
-/

namespace A277657.P4623261464140190766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (A374007 (n + 1)).toNat

end

end A277657.P4623261464140190766

/-! ## A277657.P11749383880800867015

`A277659(A166136(n+4))`
-/

namespace A277657.P11749383880800867015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (A166136 (n + 4)).toNat

end

end A277657.P11749383880800867015

/-! ## A277657.P17151601571199948513

`A277659(A056115(n)+21)`
-/

namespace A277657.P17151601571199948513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (A056115 n + 21).toNat

end

end A277657.P17151601571199948513

/-! ## A277657.P17934519613145258263

`A277659(A167614(n+4)+3)`
-/

namespace A277657.P17934519613145258263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (A167614 (n + 4) + 3).toNat

end

end A277657.P17934519613145258263

/-! ## A277657.P2142656046081214217

`A277659(eq[7, A131818(n+1)])`
-/

namespace A277657.P2142656046081214217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277657.P2142656046081214217

/-!
# A277658: Number of nX7 0..2 arrays with every element equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277658, there is no canonical definition to state claims against.
-/

/-! ## A277658.P10208542682295533333

`A277659(A374008(n+1))`
-/

namespace A277658.P10208542682295533333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (A374008 (n + 1)).toNat

end

end A277658.P10208542682295533333

/-! ## A277658.P12761453154428783236

`A277659(eq[11, A066657(n)])`
-/

namespace A277658.P12761453154428783236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277658.P12761453154428783236

/-! ## A277658.P1647773422692430327

`A277659(A000124(n+6)+6)`
-/

namespace A277658.P1647773422692430327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (A000124 (n + 6) + 6).toNat

end

end A277658.P1647773422692430327

/-! ## A277658.P1063003523424056311

`A277659(A155212(n+2)+15)`
-/

namespace A277658.P1063003523424056311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (A155212 (n + 2) + 15).toNat

end

end A277658.P1063003523424056311

/-! ## A277658.P8809178884376378142

`A277659(eq[8, A131818(n+1)])`
-/

namespace A277658.P8809178884376378142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277658.P8809178884376378142

/-!
# A277660: 2nd-order coefficients of the 1/N-expansion of traces of negative powers of complex Wishart matrices with parameter c=2.

The programs for A277660, the canonical program `A277660.P10024819594376241299` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277660 has offset 0).

The definition of A277660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277660.P10024819594376241299

`(3*(2*n-1)*a(n-1)-(n+1)*a(n-2))/(n-2)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277660

/-- `(3*(2*n-1)*a(n-1)-(n+1)*a(n-2))/(n-2)` -/
def P10024819594376241299.Spec : Prop :=
  ∀ n, P10024819594376241299.a n = (A277660 n : ℚ)

end A277660

/-! ## A277660.P9725322056599349939

`A005843(A181162(n)%A116956(n))`
-/

namespace A277660.P9725322056599349939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A181162 n) (A116956 n)).toNat

end

end A277660.P9725322056599349939

namespace A277660

/-- `A005843(A181162(n)%A116956(n))` -/
def P9725322056599349939.Spec : Prop :=
  ∀ n, P9725322056599349939.a n = A277660 n

end A277660

/-!
# A277661: 1st-order coefficients of the 1/N-expansion of traces of negative powers of real Wishart matrices with parameter c=2.

The programs for A277661, the canonical program `A277661.P18037095489669609944` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277661 has offset 0).

The definition of A277661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277661.P18037095489669609944

`A001108(n)-A047665(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A277661

/-- `A001108(n)-A047665(n)` -/
def P18037095489669609944.Spec : Prop :=
  ∀ n, P18037095489669609944.a n = A277661 n

theorem P18037095489669609944.correct : P18037095489669609944.Spec := by
  intro n
  simp only [A277661]

end A277661

/-! ## A277661.P5329796300701238675

`A001108(n)-∑[A002002(n)]`
-/

namespace A277661.P5329796300701238675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277661.P5329796300701238675

namespace A277661

/-- `A001108(n)-∑[A002002(n)]` -/
def P5329796300701238675.Spec : Prop :=
  ∀ n, P5329796300701238675.a n = A277661 n

end A277661

/-! ## A277661.P5307060375676581007

`A171842(2*n)-A226994(n)`
-/

namespace A277661.P5307060375676581007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (2 * n) - A226994 n

end

end A277661.P5307060375676581007

namespace A277661

/-- `A171842(2*n)-A226994(n)` -/
def P5307060375676581007.Spec : Prop :=
  ∀ n, P5307060375676581007.a n = A277661 n

end A277661

/-! ## A277661.P14492013711534120733

`∑[A001333(A004273(n))]-A226994(n)`
-/

namespace A277661.P14492013711534120733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A226994 n

end

end A277661.P14492013711534120733

namespace A277661

/-- `∑[A001333(A004273(n))]-A226994(n)` -/
def P14492013711534120733.Spec : Prop :=
  ∀ n, P14492013711534120733.a n = A277661 n

end A277661

/-! ## A277661.P11488646963233798838

`∑[A110127(n)+A001109(n)]-A001109(n)`
-/

namespace A277661.P11488646963233798838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110127 n + A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001109 n

end

end A277661.P11488646963233798838

namespace A277661

/-- `∑[A110127(n)+A001109(n)]-A001109(n)` -/
def P11488646963233798838.Spec : Prop :=
  ∀ n, P11488646963233798838.a n = A277661 n

end A277661

/-!
# A277662: 2nd-order coefficients of the 1/N-expansion of traces of negative powers of real Wishart matrices with parameter c=2.

The programs for A277662, there is no canonical definition to state claims against.
-/

/-! ## A277662.P13192148885710247116

`A272006(C(log2(gcd(2, n))+2^n, 2))`
-/

namespace A277662.P13192148885710247116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272006 (Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ) + (2 ^ n : ℝ))).toNat 2)

end

end A277662.P13192148885710247116

/-!
# A277666: Number A(n,k) of n-length words over a k-ary alphabet {a_1,a_2,...,a_k} avoiding consecutive letters a_i, a_{i+1}; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A277666, there is no canonical definition to state claims against.
-/

/-! ## A277666.P11007724300259907655

`A167763(n)+A018843(A028275(n))`
-/

namespace A277666.P11007724300259907655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167763 n + A018843 (A028275 n).toNat

end

end A277666.P11007724300259907655

/-! ## A277666.P14717466180552244425

`A167763(n)+A018843(A053534(n))`
-/

namespace A277666.P14717466180552244425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167763 n + A018843 (A053534 n).toNat

end

end A277666.P14717466180552244425

/-! ## A277666.P6544826485268818001

`A167763(n)+A001842(A155971(n))`
-/

namespace A277666.P6544826485268818001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167763 n + A001842 (A155971 n).toNat

end

end A277666.P6544826485268818001

/-! ## A277666.P5584138049615027915

`A285189(A048993(n))+A037012(n)`
-/

namespace A277666.P5584138049615027915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A048993 n).toNat + A037012 n

end

end A277666.P5584138049615027915

/-! ## A277666.P11447233974503264471

`A256993(A361870(n))`
-/

namespace A277666.P11447233974503264471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256993 (A361870 n).toNat

end

end A277666.P11447233974503264471

/-!
# A277667: Number of n-length words over a quaternary alphabet {a_1,a_2,...,a_4} avoiding consecutive letters a_i, a_{i+1}.

The programs for A277667, the canonical program `A277667.P14487040003673269852` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277667 has offset 0).

The definition of A277667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277667.P14487040003673269852

`ogf(1/(1-4x+3x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277667

/-- `ogf(1/(1-4x+3x^2-2x^3+x^4))` -/
def P14487040003673269852.Spec : Prop :=
  ∀ n, P14487040003673269852.a n = A277667 n

theorem P14487040003673269852.correct : P14487040003673269852.Spec := by
  intro n
  simp only [A277667]

end A277667

/-! ## A277667.P10393905870262335770

`Δ[A138747(n+3)]`
-/

namespace A277667.P10393905870262335770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138747 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277667.P10393905870262335770

namespace A277667

/-- `Δ[A138747(n+3)]` -/
def P10393905870262335770.Spec : Prop :=
  ∀ n, P10393905870262335770.a n = A277667 n

end A277667

/-! ## A277667.P14051298288605270110

`A138747(n+4)-A138747(n+3)`
-/

namespace A277667.P14051298288605270110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138747 (n + 4) - A138747 (n + 3)

end

end A277667.P14051298288605270110

namespace A277667

/-- `A138747(n+4)-A138747(n+3)` -/
def P14051298288605270110.Spec : Prop :=
  ∀ n, P14051298288605270110.a n = A277667 n

end A277667

/-! ## A277667.P9941588891243673792

`∑[A176482(∑[n+1]+1)]`
-/

namespace A277667.P9941588891243673792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176482 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277667.P9941588891243673792

namespace A277667

/-- `∑[A176482(∑[n+1]+1)]` -/
def P9941588891243673792.Spec : Prop :=
  ∀ n, P9941588891243673792.a n = A277667 n

end A277667

/-! ## A277667.P11480233893516834268

`record[A277666(A052905(n))]`
-/

namespace A277667.P11480233893516834268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277667.P11480233893516834268

namespace A277667

/-- `record[A277666(A052905(n))]` -/
def P11480233893516834268.Spec : Prop :=
  ∀ n, P11480233893516834268.a n = A277667 n

end A277667

/-! ## A277667.P13076087652200236132

`A277666(A052905(n+2))`
-/

namespace A277667.P13076087652200236132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A052905 (n + 2)).toNat

end

end A277667.P13076087652200236132

namespace A277667

/-- `A277666(A052905(n+2))` -/
def P13076087652200236132.Spec : Prop :=
  ∀ n, P13076087652200236132.a n = A277667 n

end A277667

/-! ## A277667.P15748464786188402479

`A277666(eq[4, A025581(n)])`
-/

namespace A277667.P15748464786188402479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277667.P15748464786188402479

namespace A277667

/-- `A277666(eq[4, A025581(n)])` -/
def P15748464786188402479.Spec : Prop :=
  ∀ n, P15748464786188402479.a n = A277667 n

end A277667

/-! ## A277667.P9470040155175168025

`record[A277666(A055999(n)+1)]`
-/

namespace A277667.P9470040155175168025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277667.P9470040155175168025

namespace A277667

/-- `record[A277666(A055999(n)+1)]` -/
def P9470040155175168025.Spec : Prop :=
  ∀ n, P9470040155175168025.a n = A277667 n

end A277667

/-! ## A277667.P7931959293707293829

`record[A277666(A034856(n+2)-3)]`
-/

namespace A277667.P7931959293707293829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A034856 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277667.P7931959293707293829

namespace A277667

/-- `record[A277666(A034856(n+2)-3)]` -/
def P7931959293707293829.Spec : Prop :=
  ∀ n, P7931959293707293829.a n = A277667 n

end A277667

/-!
# A277668: Number of n-length words over a 5-ary alphabet {a_1,a_2,...,a_5} avoiding consecutive letters a_i, a_{i+1}.

The programs for A277668, the canonical program `A277668.P14791102993170261614` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277668 has offset 0).

The definition of A277668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277668.P14791102993170261614

`ogf(1/(1-5x+4x^2-3x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277668

/-- `ogf(1/(1-5x+4x^2-3x^3+2x^4-x^5))` -/
def P14791102993170261614.Spec : Prop :=
  ∀ n, P14791102993170261614.a n = A277668 n

theorem P14791102993170261614.correct : P14791102993170261614.Spec := by
  intro n
  simp only [A277668]

end A277668

/-! ## A277668.P1017138244079470237

`record[A277666(∑[n+4])]`
-/

namespace A277668.P1017138244079470237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277668.P1017138244079470237

namespace A277668

/-- `record[A277666(∑[n+4])]` -/
def P1017138244079470237.Spec : Prop :=
  ∀ n, P1017138244079470237.a n = A277668 n

end A277668

/-! ## A277668.P3312460547137010498

`A277666(A055999(n+3))`
-/

namespace A277668.P3312460547137010498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A055999 (n + 3)).toNat

end

end A277668.P3312460547137010498

namespace A277668

/-- `A277666(A055999(n+3))` -/
def P3312460547137010498.Spec : Prop :=
  ∀ n, P3312460547137010498.a n = A277668 n

end A277668

/-! ## A277668.P14880558722239337211

`A277666(A134227(n+4))`
-/

namespace A277668.P14880558722239337211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A134227 (n + 4)).toNat

end

end A277668.P14880558722239337211

namespace A277668

/-- `A277666(A134227(n+4))` -/
def P14880558722239337211.Spec : Prop :=
  ∀ n, P14880558722239337211.a n = A277668 n

end A277668

/-! ## A277668.P17755214515571195670

`A277666(A000217(n+6)-6)`
-/

namespace A277668.P17755214515571195670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A000217 (n + 6) - 6).toNat

end

end A277668.P17755214515571195670

namespace A277668

/-- `A277666(A000217(n+6)-6)` -/
def P17755214515571195670.Spec : Prop :=
  ∀ n, P17755214515571195670.a n = A277668 n

end A277668

/-! ## A277668.P8206800073393183468

`A277666(eq[5, val(A054582(n), 2)])`
-/

namespace A277668.P8206800073393183468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054582 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A277668.P8206800073393183468

namespace A277668

/-- `A277666(eq[5, val(A054582(n), 2)])` -/
def P8206800073393183468.Spec : Prop :=
  ∀ n, P8206800073393183468.a n = A277668 n

end A277668

/-! ## A277668.P10752367113182832478

`A277666(eq[5, A004736(n+1)-1])`
-/

namespace A277668.P10752367113182832478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277668.P10752367113182832478

namespace A277668

/-- `A277666(eq[5, A004736(n+1)-1])` -/
def P10752367113182832478.Spec : Prop :=
  ∀ n, P10752367113182832478.a n = A277668 n

end A277668

/-!
# A277669: Number of n-length words over a 6-ary alphabet {a_1,a_2,...,a_6} avoiding consecutive letters a_i, a_{i+1}.

The programs for A277669, there is no canonical definition to state claims against.
-/

/-! ## A277669.P10487523875124586585

`A277666(A055999(n+4)-1)`
-/

namespace A277669.P10487523875124586585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A055999 (n + 4) - 1).toNat

end

end A277669.P10487523875124586585

/-! ## A277669.P1398646452179096162

`A277666(A052905(n+4)-2)`
-/

namespace A277669.P1398646452179096162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A052905 (n + 4) - 2).toNat

end

end A277669.P1398646452179096162

/-! ## A277669.P8223021793855392309

`A277666(A046691(n+5)-3)`
-/

namespace A277669.P8223021793855392309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A046691 (n + 5) - 3).toNat

end

end A277669.P8223021793855392309

/-! ## A277669.P10801199028173495668

`A277666(A000217(n+7)-7)`
-/

namespace A277669.P10801199028173495668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A000217 (n + 7) - 7).toNat

end

end A277669.P10801199028173495668

/-! ## A277669.P11521463839487560939

`A277666(n+A000217(n+6))`
-/

namespace A277669.P11521463839487560939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 ((n : ℤ) + A000217 (n + 6)).toNat

end

end A277669.P11521463839487560939

/-! ## A277669.P18073805510485655478

`A277666(eq[6, A004736(n+1)-1])`
-/

namespace A277669.P18073805510485655478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277669.P18073805510485655478

/-!
# A277670: Number of n-length words over a 7-ary alphabet {a_1,a_2,...,a_7} avoiding consecutive letters a_i, a_{i+1}.

The programs for A277670, there is no canonical definition to state claims against.
-/

/-! ## A277670.P14544635251631909968

`A277666(A155212(n+4))`
-/

namespace A277670.P14544635251631909968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A155212 (n + 4)).toNat

end

end A277670.P14544635251631909968

/-! ## A277670.P1309454935298085645

`A277666(A055999(n+5)-2)`
-/

namespace A277670.P1309454935298085645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A055999 (n + 5) - 2).toNat

end

end A277670.P1309454935298085645

/-! ## A277670.P269677520016927578

`A277666(A052905(n+5)-3)`
-/

namespace A277670.P269677520016927578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A052905 (n + 5) - 3).toNat

end

end A277670.P269677520016927578

/-! ## A277670.P3829146316128586191

`A277666(A046691(n+6)-4)`
-/

namespace A277670.P3829146316128586191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A046691 (n + 6) - 4).toNat

end

end A277670.P3829146316128586191

/-! ## A277670.P4968498356468916797

`A277666(A000217(n+8)-8)`
-/

namespace A277670.P4968498356468916797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A000217 (n + 8) - 8).toNat

end

end A277670.P4968498356468916797

/-! ## A277670.P12314867051044336358

`A277666(A167487(n+5)+2*n)`
-/

namespace A277670.P12314867051044336358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A167487 (n + 5) + (2 * n : ℤ)).toNat

end

end A277670.P12314867051044336358

/-!
# A277671: Number of n-length words over an 8-ary alphabet {a_1,a_2,...,a_8} avoiding consecutive letters a_i, a_{i+1}.

The programs for A277671, there is no canonical definition to state claims against.
-/

/-! ## A277671.P8998988827784631607

`A277666(A055999(n+6)-3)`
-/

namespace A277671.P8998988827784631607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A055999 (n + 6) - 3).toNat

end

end A277671.P8998988827784631607

/-! ## A277671.P18132842003279669793

`A277666(A052905(n+6)-4)`
-/

namespace A277671.P18132842003279669793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A052905 (n + 6) - 4).toNat

end

end A277671.P18132842003279669793

/-! ## A277671.P6746446910353322072

`A277666(A046691(n+7)-5)`
-/

namespace A277671.P6746446910353322072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A046691 (n + 7) - 5).toNat

end

end A277671.P6746446910353322072

/-! ## A277671.P8495389257934878302

`A277666(A000217(n+9)-9)`
-/

namespace A277671.P8495389257934878302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A000217 (n + 9) - 9).toNat

end

end A277671.P8495389257934878302

/-! ## A277671.P7718415407799980787

`A277666(A000124(n+9)-10)`
-/

namespace A277671.P7718415407799980787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A000124 (n + 9) - 10).toNat

end

end A277671.P7718415407799980787

/-!
# A277672: Number of n-length words over a 9-ary alphabet {a_1,a_2,...,a_9} avoiding consecutive letters a_i, a_{i+1}.

The programs for A277672, there is no canonical definition to state claims against.
-/

/-! ## A277672.P5091748494007635775

`A277666(A056000(n+6))`
-/

namespace A277672.P5091748494007635775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A056000 (n + 6)).toNat

end

end A277672.P5091748494007635775

/-! ## A277672.P14480032323430398875

`A277666(A055999(n+7)-4)`
-/

namespace A277672.P14480032323430398875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A055999 (n + 7) - 4).toNat

end

end A277672.P14480032323430398875

/-! ## A277672.P10523046176713813046

`A277666(A052905(n+7)-5)`
-/

namespace A277672.P10523046176713813046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A052905 (n + 7) - 5).toNat

end

end A277672.P10523046176713813046

/-! ## A277672.P1593875784192396951

`A277666(A000217(n+10)-10)`
-/

namespace A277672.P1593875784192396951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A000217 (n + 10) - 10).toNat

end

end A277672.P1593875784192396951

/-! ## A277672.P11797679831347461305

`A277666(A000124(n+9)+n-1)`
-/

namespace A277672.P11797679831347461305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A000124 (n + 9) + ((n : ℤ) - 1)).toNat

end

end A277672.P11797679831347461305

/-!
# A277673: Number of n-length words over an n-ary alphabet {a_1,a_2,...,a_n} avoiding consecutive letters a_i, a_{i+1}.

The programs for A277673, there is no canonical definition to state claims against.
-/

/-! ## A277673.P4902140039577027408

`A277666(∑[4*n])`
-/

namespace A277673.P4902140039577027408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277673.P4902140039577027408

/-! ## A277673.P11022569281523034047

`lcm(A033999(n), A277666(A046092(n)))`
-/

namespace A277673.P11022569281523034047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A277666 (A046092 n).toNat)

end

end A277673.P11022569281523034047

/-! ## A277673.P3982736383537996870

`or(A000007(n), A277666(A046092(n)))`
-/

namespace A277673.P3982736383537996870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A277666 (A046092 n).toNat)

end

end A277673.P3982736383537996870

/-! ## A277673.P13549701137998451835

`A277666(A046092(n))+char[1]*A088808(n)`
-/

namespace A277673.P13549701137998451835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277666 (A046092 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A088808 n

end

end A277673.P13549701137998451835

/-! ## A277673.P17503087567998145275

`and(1, A000040(n+1))!*A277666(A046092(n))`
-/

namespace A277673.P17503087567998145275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000040 (n + 1))).toNat : ℤ) * A277666 (A046092 n).toNat

end

end A277673.P17503087567998145275

/-! ## A277673.P15373525742948050656

`A000045(A020639(2*(n+1)))*A277666(A046092(n))`
-/

namespace A277673.P15373525742948050656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A277666 (A046092 n).toNat

end

end A277673.P15373525742948050656

/-!
# A277674: a(n) = d(n+1) - d(n), where d(k) is the number of digits in the base-k representation of k!.

The programs for A277674, there is no canonical definition to state claims against.
-/

/-! ## A277674.P17170946482863842661

`char[A230319(n+2)-3]`
-/

namespace A277674.P17170946482863842661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230319 (n + 2) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A277674.P17170946482863842661

/-! ## A277674.P12984888422533170240

`char[char[1]-(3-A230319(n))]`
-/

namespace A277674.P12984888422533170240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - (3 - A230319 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A277674.P12984888422533170240

/-! ## A277674.P961538416508657418

`Δ[A039960(n+2)]`
-/

namespace A277674.P961538416508657418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039960 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277674.P961538416508657418

/-! ## A277674.P17248395946172954112

`Δ[A060151(n+2)]`
-/

namespace A277674.P17248395946172954112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060151 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277674.P17248395946172954112

/-! ## A277674.P14146686098982967520

`A039960(n+3)-A039960(n+2)`
-/

namespace A277674.P14146686098982967520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039960 (n + 3) - A039960 (n + 2)

end

end A277674.P14146686098982967520

/-! ## A277674.P5192565227814750846

`A060151(n+3)-A060151(n+2)`
-/

namespace A277674.P5192565227814750846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060151 (n + 3) - A060151 (n + 2)

end

end A277674.P5192565227814750846

/-! ## A277674.P4231980755972649448

`A001222(A216402(n+1))%A216377(n+2)`
-/

namespace A277674.P4231980755972649448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A216402 (n + 1)).toNat) (A216377 (n + 2))

end

end A277674.P4231980755972649448

/-!
# A277675: Numbers k such that d(k+2) = d(k+1), where d(m) is the number of digits in the base-m representation of m!.

The programs for A277675, there is no canonical definition to state claims against.
-/

/-! ## A277675.P9704519162260633371

`eq[1, A277674(n+2)+1]+1`
-/

namespace A277675.P9704519162260633371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277674 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277675.P9704519162260633371

/-! ## A277675.P7567940164287139259

`record[gcd(A039960(n+1), A039960(n))]+n`
-/

namespace A277675.P7567940164287139259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039960 (n + 1)) (A039960 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n

end

end A277675.P7567940164287139259

/-! ## A277675.P14001189307045120455

`eq[1, A047380(A060151(n+2)-A060151(n+1)+1)]`
-/

namespace A277675.P14001189307045120455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047380 (A060151 (n + 2) - A060151 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277675.P14001189307045120455

/-! ## A277675.P17925822912805971844

`eq[1, A060151(A060151(n+2)-A060151(n+1)+1)]`
-/

namespace A277675.P17925822912805971844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060151 (A060151 (n + 2) - A060151 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277675.P17925822912805971844

/-! ## A277675.P10227781768444079627

`eq[1, A060151(A060151(n+1)%A060151(n+2)+1)]`
-/

namespace A277675.P10227781768444079627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060151 (Int.tmod (A060151 (n + 1)) (A060151 (n + 2)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277675.P10227781768444079627

/-!
# A277676: Numbers k such that d(k+2) > d(k+1), where d(m) is the number of digits in the base-m representation of m!.

The programs for A277676, there is no canonical definition to state claims against.
-/

/-! ## A277676.P3240198090577472632

`A230319(n+2)-2`
-/

namespace A277676.P3240198090577472632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230319 (n + 2) - 2

end

end A277676.P3240198090577472632

/-! ## A277676.P12821115964876841773

`eq[1, Δ[A039960(n+1)]]`
-/

namespace A277676.P12821115964876841773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277676.P12821115964876841773

/-! ## A277676.P7162366958820229524

`eq[1, A277674(n+2)]+1`
-/

namespace A277676.P7162366958820229524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277674 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277676.P7162366958820229524

/-! ## A277676.P9331238138364724983

`∑[abs(Δ[A230319(n+1)])]+1`
-/

namespace A277676.P9331238138364724983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230319 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A277676.P9331238138364724983

/-! ## A277676.P9455363531282108839

`lt[1, A060151(n+1)%A060151(n+2)]`
-/

namespace A277676.P9455363531282108839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060151 (n + 1)) (A060151 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A277676.P9455363531282108839

/-! ## A277676.P15034833920965126375

`eq[1, A025581(A060151(n+2)%A060151(n+1))]`
-/

namespace A277676.P15034833920965126375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Int.tmod (A060151 (n + 2)) (A060151 (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277676.P15034833920965126375

/-!
# A277677: Each even term "t" of the sequence is followed by t odd terms and each even digit "k" of the sequence is followed by k odd digits.

The programs for A277677, there is no canonical definition to state claims against.
-/

/-! ## A277677.P9161947651568877568

`A277383(n+1)^A000045(A084746(n+2))`
-/

namespace A277677.P9161947651568877568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277383 (n + 1) : ℚ) ^ (A000045 (A084746 (n + 2)).toNat : ℤ)

end

end A277677.P9161947651568877568

/-! ## A277677.P10888883173875259154

`A277383(n+1)^A277408(A084746(n+2))*A228710(n)`
-/

namespace A277677.P10888883173875259154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277383 (n + 1) : ℚ) ^ (A277408 (A084746 (n + 2)).toNat : ℤ) * (A228710 n : ℚ)

end

end A277677.P10888883173875259154

/-! ## A277677.P9234747111880728561

`(A277383(n+1)^A277408(A084746(n+2)))%A050484(n)`
-/

namespace A277677.P9234747111880728561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A277383 (n + 1) : ℚ) ^ (A277408 (A084746 (n + 2)).toNat : ℤ))) (A050484 n)

end

end A277677.P9234747111880728561

/-! ## A277677.P4012269591013616276

`A277383(n+1)^A277408(A084746(n+2))*exp(A067898(n))`
-/

namespace A277677.P4012269591013616276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A277383 (n + 1) : ℚ) ^ (A277408 (A084746 (n + 2)).toNat : ℤ) : ℝ) * Real.exp (A067898 n : ℝ)

end

end A277677.P4012269591013616276

/-! ## A277677.P17479383060742579267

`A277383(n+1)^A277408(A084746(n+2))*A268643(n)!`
-/

namespace A277677.P17479383060742579267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277383 (n + 1) : ℚ) ^ (A277408 (A084746 (n + 2)).toNat : ℤ) * (Nat.factorial (A268643 n).toNat : ℚ)

end

end A277677.P17479383060742579267

/-!
# A277678: Number T(n,k) of binary words of length n containing exactly k (possibly overlapping) occurrences of the subword 11011; triangle T(n,k), n>=0, k=0..max(0,floor((n-2)/3)), read by rows.

The programs for A277678, there is no canonical definition to state claims against.
-/

/-! ## A277678.P14851313697274674351

`xor(A185284(A049225(n+1)), A277751(n))`
-/

namespace A277678.P14851313697274674351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A049225 (n + 1)).toNat) (A277751 n)

end

end A277678.P14851313697274674351

/-! ## A277678.P13041482926914026502

`xor(A185284(A165249(n+1)), A277751(n))`
-/

namespace A277678.P13041482926914026502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A165249 (n + 1)).toNat) (A277751 n)

end

end A277678.P13041482926914026502

/-! ## A277678.P60602297776094483

`A277751(n)+A085974(A011782(n))`
-/

namespace A277678.P60602297776094483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277751 n + A085974 (A011782 n).toNat

end

end A277678.P60602297776094483

/-! ## A277678.P17154429990078550743

`A295883(A113505(n+1))+A277751(n)`
-/

namespace A277678.P17154429990078550743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (A113505 (n + 1)).toNat + A277751 n

end

end A277678.P17154429990078550743

/-!
# A277679: Start with 1,2,3,4,5,6,.... For n >=1, remove the first n terms and reverse the remaining terms n+1 at a time. Concatenate the terms removed. (See the example.)

The programs for A277679, there is no canonical definition to state claims against.
-/

/-! ## A277679.P5764146385682188981

`A249990(A028310(n))+A158388(n)`
-/

namespace A277679.P5764146385682188981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249990 (A028310 n).toNat + A158388 n

end

end A277679.P5764146385682188981

/-! ## A277679.P3241182928998030909

`A249990(A028310(n))-A153881(n+1)`
-/

namespace A277679.P3241182928998030909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249990 (A028310 n).toNat - A153881 (n + 1)

end

end A277679.P3241182928998030909

/-! ## A277679.P14484386987296093713

`A249990(A028310(n))%A008852(n+2)+1`
-/

namespace A277679.P14484386987296093713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249990 (A028310 n).toNat) (A008852 (n + 2)) + 1

end

end A277679.P14484386987296093713

/-! ## A277679.P17965961243635923796

`A249990(A028310(n))-A008683(A008578(n+1))`
-/

namespace A277679.P17965961243635923796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249990 (A028310 n).toNat - A008683 (A008578 (n + 1)).toNat

end

end A277679.P17965961243635923796

/-! ## A277679.P11558286181536709568

`A249990(A028310(n))-A008836(A119992(n+1))`
-/

namespace A277679.P11558286181536709568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249990 (A028310 n).toNat - A008836 (A119992 (n + 1)).toNat

end

end A277679.P11558286181536709568

/-!
# A277680: Inverse of the permutation A277679 of the natural numbers.

The programs for A277680, there is no canonical definition to state claims against.
-/

/-! ## A277680.P13643729502154162517

`A252448(A028310(n))-A153881(n+1)`
-/

namespace A277680.P13643729502154162517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252448 (A028310 n).toNat - A153881 (n + 1)

end

end A277680.P13643729502154162517

/-! ## A277680.P7087532307174827389

`A252448(A028310(n))%A005893(n)+1`
-/

namespace A277680.P7087532307174827389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252448 (A028310 n).toNat) (A005893 n) + 1

end

end A277680.P7087532307174827389

/-! ## A277680.P15785507674091254938

`(A252448(A028310(n))+1)%A016825(n)`
-/

namespace A277680.P15785507674091254938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252448 (A028310 n).toNat + 1) (A016825 n)

end

end A277680.P15785507674091254938

/-! ## A277680.P8899015802205419367

`A252448(A028310(n))-A008683(A008578(n+1))`
-/

namespace A277680.P8899015802205419367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252448 (A028310 n).toNat - A008683 (A008578 (n + 1)).toNat

end

end A277680.P8899015802205419367

/-!
# A277686: The number of nonisomorphic graphs on n vertices whose chromatic symmetric function in the p basis has a nonzero coefficient for each possible term.

The programs for A277686, there is no canonical definition to state claims against.
-/

/-! ## A277686.P1729568127324174952

`A247755(A000110(n))+A008955(n)`
-/

namespace A277686.P1729568127324174952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247755 (A000110 n).toNat + A008955 n

end

end A277686.P1729568127324174952

/-! ## A277686.P10439486171094068345

`A032741(n)+A011274(A320849(n+3))`
-/

namespace A277686.P10439486171094068345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + A011274 (A320849 (n + 3)).toNat

end

end A277686.P10439486171094068345

/-! ## A277686.P11301080164075308432

`A286621(A363003(n)+A165090(n+4))`
-/

namespace A277686.P11301080164075308432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286621 (A363003 n + A165090 (n + 4)).toNat

end

end A277686.P11301080164075308432

/-!
# A277690: Smallest possible number of sides of a regular polygon with unit sides and circumradius at least n.

The programs for A277690, there is no canonical definition to state claims against.
-/

/-! ## A277690.P13078330849683823742

`xor(floor(2*π*n)+1, A033322(n+1))`
-/

namespace A277690.P13078330849683823742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (⌊2 * (Real.pi * (n : ℝ))⌋ + 1) (A033322 (n + 1))

end

end A277690.P13078330849683823742

/-! ## A277690.P708236061512064737

`xor(A033322(n+1), A054386(A063459(2*n)+1))`
-/

namespace A277690.P708236061512064737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033322 (n + 1)) (A054386 (A063459 (2 * n) + 1).toNat)

end

end A277690.P708236061512064737

/-! ## A277690.P16067450962561260946

`A381475(A167499(3*n+1))+A196383(n+1)`
-/

namespace A277690.P16067450962561260946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381475 (A167499 (3 * n + 1)).toNat + A196383 (n + 1)

end

end A277690.P16067450962561260946

/-!
# A277692: Mendelsohn-Rodney sequence: number of court balanced tournament designs that are available for a given set of teams n.

The programs for A277692, the canonical program `A277692.P7540958945063117141` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277692 has offset 1).

The definition of A277692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277692.P9497379611069044024

`∑{d}[n, and(1, A219428(n+1)+A219428(#))]`
-/

namespace A277692.P9497379611069044024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A219428 (n + 1) + A219428 d)

end

end A277692.P9497379611069044024

namespace A277692

/-- `∑{d}[n, and(1, A219428(n+1)+A219428(#))]` -/
def P9497379611069044024.Spec : Prop :=
  ∀ n, P9497379611069044024.a n = A277692 (n + 1)

end A277692

/-! ## A277692.P7540958945063117141

`A296066(n+1)+A032741(A026741(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A277692

/-- `A296066(n+1)+A032741(A026741(n))` -/
def P7540958945063117141.Spec : Prop :=
  ∀ n, P7540958945063117141.a n = A277692 (n + 1)

theorem P7540958945063117141.correct : P7540958945063117141.Spec := by
  intro n
  simp only [A277692, Nat.add_sub_cancel]

end A277692

/-! ## A277692.P9541000551639265194

`A338117(A028310(n))+A296066(n+1)`
-/

namespace A277692.P9541000551639265194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (A028310 n).toNat + A296066 (n + 1)

end

end A277692.P9541000551639265194

namespace A277692

/-- `A338117(A028310(n))+A296066(n+1)` -/
def P9541000551639265194.Spec : Prop :=
  ∀ n, P9541000551639265194.a n = A277692 (n + 1)

end A277692

/-! ## A277692.P7691123065555985152

`A032741(A026741(n))+A032741(A166333(n))`
-/

namespace A277692.P7691123065555985152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A026741 n).toNat + A032741 (A166333 n).toNat

end

end A277692.P7691123065555985152

namespace A277692

/-- `A032741(A026741(n))+A032741(A166333(n))` -/
def P7691123065555985152.Spec : Prop :=
  ∀ n, P7691123065555985152.a n = A277692 (n + 1)

end A277692

/-! ## A277692.P17795795966308065221

`∑{d}[n, (A243071(n+1)+A243071(#))%2]`
-/

namespace A277692.P17795795966308065221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A243071 (n + 1) + A243071 d) 2

end

end A277692.P17795795966308065221

namespace A277692

/-- `∑{d}[n, (A243071(n+1)+A243071(#))%2]` -/
def P17795795966308065221.Spec : Prop :=
  ∀ n, P17795795966308065221.a n = A277692 (n + 1)

end A277692

/-! ## A277692.P340544741637794325

`∑{d}[n, A267525((2-n)²+#)]`
-/

namespace A277692.P340544741637794325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267525 ((2 - (n : ℤ)) ^ 2 + (d : ℤ)).toNat

end

end A277692.P340544741637794325

namespace A277692

/-- `∑{d}[n, A267525((2-n)²+#)]` -/
def P340544741637794325.Spec : Prop :=
  ∀ n, P340544741637794325.a n = A277692 (n + 1)

end A277692

/-! ## A277692.P8697871019129457439

`∑{d}[n, A267687(n²-#)]`
-/

namespace A277692.P8697871019129457439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267687 (n ^ 2 - d)

end

end A277692.P8697871019129457439

namespace A277692

/-- `∑{d}[n, A267687(n²-#)]` -/
def P8697871019129457439.Spec : Prop :=
  ∀ n, P8697871019129457439.a n = A277692 (n + 1)

end A277692

/-!
# A277694: Numbers which cannot occur in A277623, where any odd digit d must be followed by d even digits.

The programs for A277694, there is no canonical definition to state claims against.
-/

/-! ## A277694.P3209788967154156441

`comp[A277519(n+1)-1]+1`
-/

namespace A277694.P3209788967154156441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277519 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A277694.P3209788967154156441

/-! ## A277694.P9692602636858817035

`lt[A228710(n), sin(A196564(n))]`
-/

namespace A277694.P9692602636858817035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A196564 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A277694.P9692602636858817035

/-! ## A277694.P12652544166266924374

`∩[A007957(n+1), A228709(n+1)]`
-/

namespace A277694.P12652544166266924374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277694.P12652544166266924374

/-! ## A277694.P11166253207778407264

`∩[A007959(n+1), A228709(n+1)]`
-/

namespace A277694.P11166253207778407264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277694.P11166253207778407264

/-! ## A277694.P16531530447415580569

`eq[A001613(A059717(n)), A228710(n)]`
-/

namespace A277694.P16531530447415580569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A059717 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277694.P16531530447415580569

/-! ## A277694.P3981179364270867990

`eq[A067898(A073053(n)), A228710(n)]`
-/

namespace A277694.P3981179364270867990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (A073053 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277694.P3981179364270867990

/-! ## A277694.P2493208664598007562

`eq[A059841(n), A268643(A073053(n))]`
-/

namespace A277694.P2493208664598007562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A073053 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277694.P2493208664598007562

/-! ## A277694.P16730547085422245246

`eq[A228710(n), A237420(A004086(n))]`
-/

namespace A277694.P16730547085422245246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277694.P16730547085422245246

/-! ## A277694.P5285598022340305485

`eq[A059841(n), A268643(A171797(n))]`
-/

namespace A277694.P5285598022340305485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277694.P5285598022340305485

/-!
# A277697: a(n) = index of the least unitary prime divisor of n or 0 if no such prime-divisor exists.

The programs for A277697, there is no canonical definition to state claims against.
-/

/-! ## A277697.P4194843588909063349

`A055396(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A277697.P4194843588909063349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ))).toNat

end

end A277697.P4194843588909063349

/-! ## A277697.P12336514136869084974

`A277707(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A277697.P12336514136869084974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ))).toNat

end

end A277697.P12336514136869084974

/-! ## A277697.P14902128769172728964

`A055396(A055231(n+1))`
-/

namespace A277697.P14902128769172728964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A055231 (n + 1)).toNat

end

end A277697.P14902128769172728964

/-! ## A277697.P6616505080955487609

`A000720(A277698(n+1))`
-/

namespace A277697.P6616505080955487609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A277698 (n + 1)).toNat

end

end A277697.P6616505080955487609

/-! ## A277697.P12753577229291948119

`A277707(A007948(n+1))`
-/

namespace A277697.P12753577229291948119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (A007948 (n + 1)).toNat

end

end A277697.P12753577229291948119

/-! ## A277697.P8892937337144747910

`A277707(A056192(n+1))`
-/

namespace A277697.P8892937337144747910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (A056192 (n + 1)).toNat

end

end A277697.P8892937337144747910

/-! ## A277697.P10980532162676534779

`A277707(A353897(n+1))`
-/

namespace A277697.P10980532162676534779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (A353897 (n + 1)).toNat

end

end A277697.P10980532162676534779

/-! ## A277697.P13269983417168388087

`A277707(A360539(n+1))`
-/

namespace A277697.P13269983417168388087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (A360539 (n + 1)).toNat

end

end A277697.P13269983417168388087

/-! ## A277697.P7728498516661804242

`A277707(A367168(n+1))`
-/

namespace A277697.P7728498516661804242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (A367168 (n + 1)).toNat

end

end A277697.P7728498516661804242

/-! ## A277697.P12612061953882316084

`A055396((n+1)/A057521(n+1))`
-/

namespace A277697.P12612061953882316084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A277697.P12612061953882316084

/-! ## A277697.P8706736829288256145

`A277707(A277698(2*n+1-n))`
-/

namespace A277697.P8706736829288256145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (A277698 (2 * n + 1 - n)).toNat

end

end A277697.P8706736829288256145

/-! ## A277697.P466821978886015653

`A364191(n+1)%A055231(n+1)`
-/

namespace A277697.P466821978886015653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364191 (n + 1)) (A055231 (n + 1))

end

end A277697.P466821978886015653

/-! ## A277697.P4970820146518566663

`A055396(2*A277698(n+1)-A277698(n+1))`
-/

namespace A277697.P4970820146518566663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A277698 (n + 1) - A277698 (n + 1)).toNat

end

end A277697.P4970820146518566663

/-! ## A277697.P1574360644080511856

`A277707(2*2*A277698(n+1))`
-/

namespace A277697.P1574360644080511856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (2 * (2 * A277698 (n + 1))).toNat

end

end A277697.P1574360644080511856

/-! ## A277697.P2186141779563464347

`A277707(A356194(n+1))`
-/

namespace A277697.P2186141779563464347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (A356194 (n + 1)).toNat

end

end A277697.P2186141779563464347

/-! ## A277697.P7659192303061949971

`A277707(A020639(A277698(n+1)²))`
-/

namespace A277697.P7659192303061949971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (A020639 (A277698 (n + 1) ^ 2).toNat).toNat

end

end A277697.P7659192303061949971

/-! ## A277697.P2768717005355053398

`A277707((n+1)²/A277698(n+1))`
-/

namespace A277697.P2768717005355053398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A277698 (n + 1) : ℚ))).toNat

end

end A277697.P2768717005355053398

/-! ## A277697.P17768994789308087282

`A277885(A360541(n+1))`
-/

namespace A277697.P17768994789308087282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277885 (A360541 (n + 1)).toNat

end

end A277697.P17768994789308087282

/-! ## A277697.P11749387918065258641

`A277885(A365298(n+1))`
-/

namespace A277697.P11749387918065258641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277885 (A365298 (n + 1)).toNat

end

end A277697.P11749387918065258641

/-! ## A277697.P9160739362032753841

`A277885(A367932(n+1))`
-/

namespace A277697.P9160739362032753841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277885 (A367932 (n + 1)).toNat

end

end A277697.P9160739362032753841

/-!
# A277698: a(n) = least unitary prime divisor of n or 1 if no such prime-divisor exists.

The programs for A277698, there is no canonical definition to state claims against.
-/

/-! ## A277698.P10274957860979364431

`A020639(A055231(n+1))`
-/

namespace A277698.P10274957860979364431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A055231 (n + 1)).toNat

end

end A277698.P10274957860979364431

/-! ## A277698.P4768239141312916612

`A008578(1+A277697(n+1))`
-/

namespace A277698.P4768239141312916612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 + A277697 (n + 1)).toNat

end

end A277698.P4768239141312916612

/-! ## A277698.P13130195532509254054

`∏{d}[A080368(n+1), #]`
-/

namespace A277698.P13130195532509254054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A277698.P13130195532509254054

/-! ## A277698.P10362487353111206678

`A020639(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A277698.P10362487353111206678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ))).toNat

end

end A277698.P10362487353111206678

/-! ## A277698.P7843970966981460828

`A028310(A080368(n+1))`
-/

namespace A277698.P7843970966981460828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A080368 (n + 1)).toNat

end

end A277698.P7843970966981460828

/-! ## A277698.P4579855495780031512

`A277708(A007948(n+1))`
-/

namespace A277698.P4579855495780031512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277708 (A007948 (n + 1)).toNat

end

end A277698.P4579855495780031512

/-! ## A277698.P7230982371376769753

`A277708(A056192(n+1))`
-/

namespace A277698.P7230982371376769753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277708 (A056192 (n + 1)).toNat

end

end A277698.P7230982371376769753

/-! ## A277698.P7223440089761110195

`A277708(A353897(n+1))`
-/

namespace A277698.P7223440089761110195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277708 (A353897 (n + 1)).toNat

end

end A277698.P7223440089761110195

/-! ## A277698.P10987593813726132659

`A277708(A360539(n+1))`
-/

namespace A277698.P10987593813726132659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277708 (A360539 (n + 1)).toNat

end

end A277698.P10987593813726132659

/-! ## A277698.P9917300456664030714

`A277708(A367168(n+1))`
-/

namespace A277698.P9917300456664030714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277708 (A367168 (n + 1)).toNat

end

end A277698.P9917300456664030714

/-! ## A277698.P14526587701554095938

`∏{p}[A080368(n+1), A080368(#)]`
-/

namespace A277698.P14526587701554095938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A080368 p

end

end A277698.P14526587701554095938

/-! ## A277698.P4400800017919958150

`A112526(n+1)+A080368(n+1)`
-/

namespace A277698.P4400800017919958150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (n + 1) + A080368 (n + 1)

end

end A277698.P4400800017919958150

/-! ## A277698.P6537036253126637992

`A020639((n+1)/A057521(n+1))`
-/

namespace A277698.P6537036253126637992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A277698.P6537036253126637992

/-! ## A277698.P2942406913598295716

`A028233((n+1)/A057521(n+1))`
-/

namespace A277698.P2942406913598295716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A277698.P2942406913598295716

/-! ## A277698.P9981823614440959718

`A020639(A197863(n+1)/(n+1))`
-/

namespace A277698.P9981823614440959718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A197863 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A277698.P9981823614440959718

/-! ## A277698.P2199147856750814190

`A028233(A197863(n+1)/(n+1))`
-/

namespace A277698.P2199147856750814190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.roundAway ((A197863 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A277698.P2199147856750814190

/-! ## A277698.P16989395131416190426

`A034684(A197863(n+1)/(n+1))`
-/

namespace A277698.P16989395131416190426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (SequenceMachineLib.roundAway ((A197863 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A277698.P16989395131416190426

/-! ## A277698.P13076059208212598486

`A134194(A055231(2*n+1-n))`
-/

namespace A277698.P13076059208212598486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134194 (A055231 (2 * n + 1 - n)).toNat

end

end A277698.P13076059208212598486

/-! ## A277698.P5857020189743444403

`gcd(A055231(n+1), A067695(n+1))`
-/

namespace A277698.P5857020189743444403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055231 (n + 1)) (A067695 (n + 1))

end

end A277698.P5857020189743444403

/-! ## A277698.P3762499150054752952

`A020639(A007947(n+1)/∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A277698.P3762499150054752952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p : ℕ) : ℚ))).toNat

end

end A277698.P3762499150054752952

/-!
# A277699: Main diagonal of A277320: a(n) = A048720(n, A065621(n)).

The programs for A277699, there is no canonical definition to state claims against.
-/

/-! ## A277699.P7116596068461977627

`A391244(∑[n+1])`
-/

namespace A277699.P7116596068461977627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391244 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277699.P7116596068461977627

/-! ## A277699.P3157125775764751904

`A277320(∑[4*n]+1)`
-/

namespace A277699.P3157125775764751904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277320 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A277699.P3157125775764751904

/-! ## A277699.P9081834172786333799

`and(-3, A277320(A001844(n)))`
-/

namespace A277699.P9081834172786333799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A277320 (A001844 n).toNat)

end

end A277699.P9081834172786333799

/-! ## A277699.P14615208089865614096

`and(-3, A277320(∑[A008574(n)]))`
-/

namespace A277699.P14615208089865614096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A277320 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A277699.P14615208089865614096

/-! ## A277699.P4667316355650810269

`lcm(A033999(n), A277320(A001844(n)))`
-/

namespace A277699.P4667316355650810269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A277320 (A001844 n).toNat)

end

end A277699.P4667316355650810269

/-! ## A277699.P1604522205086838084

`or(A000007(n), A277320(A001844(n)))`
-/

namespace A277699.P1604522205086838084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A277320 (A001844 n).toNat)

end

end A277699.P1604522205086838084

/-! ## A277699.P5881290780683071514

`or(A003982(n), A277320(A001844(n)))`
-/

namespace A277699.P5881290780683071514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A277320 (A001844 n).toNat)

end

end A277699.P5881290780683071514

/-! ## A277699.P16864335642358992760

`A277320(A001844(n))+A000007(n+3)`
-/

namespace A277699.P16864335642358992760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277320 (A001844 n).toNat + A000007 (n + 3)

end

end A277699.P16864335642358992760

/-! ## A277699.P5948611626429772556

`A057427(n+2)*A277320(A001844(n))`
-/

namespace A277699.P5948611626429772556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) * A277320 (A001844 n).toNat

end

end A277699.P5948611626429772556

/-! ## A277699.P11397731280580932437

`A277320(A001844(n))%A002997(n+1)`
-/

namespace A277699.P11397731280580932437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277320 (A001844 n).toNat) (A002997 (n + 1))

end

end A277699.P11397731280580932437

