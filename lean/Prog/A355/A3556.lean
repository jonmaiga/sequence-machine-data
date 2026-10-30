import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A355603: Expansion of e.g.f. (1 + x)^(x^4/24).

The programs for A355603, there is no canonical definition to state claims against.
-/

/-! ## A355603.P12180325620195696078

`A355619(A052905(n+2))`
-/

namespace A355603.P12180325620195696078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355619 (A052905 (n + 2)).toNat

end

end A355603.P12180325620195696078

/-! ## A355603.P1978802763954535300

`A355619(eq[4, A025581(n)])`
-/

namespace A355603.P1978802763954535300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355603.P1978802763954535300

/-! ## A355603.P2837234134485518184

`A355619(A155212(n+1)+3)`
-/

namespace A355603.P2837234134485518184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355619 (A155212 (n + 1) + 3).toNat

end

end A355603.P2837234134485518184

/-! ## A355603.P11432521498061976100

`A355619(A055998(n+3)-2)`
-/

namespace A355603.P11432521498061976100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355619 (A055998 (n + 3) - 2).toNat

end

end A355603.P11432521498061976100

/-! ## A355603.P17828680582367463838

`A355619(A167614(n+2)+Δ[n²])`
-/

namespace A355603.P17828680582367463838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355619 (A167614 (n + 2) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A355603.P17828680582367463838

/-!
# A355604: Table T(n, k), n >= 0, k = 0..n, read by rows; row n is obtained by replacing in row n of Pascal's triangle (A007318) runs of k consecutive even numbers by the terms of row k+1 of the present triangle.

The programs for A355604, there is no canonical definition to state claims against.
-/

/-! ## A355604.P382984555498830345

`gcd(A007318(n), A134828(A007318(n)))`
-/

namespace A355604.P382984555498830345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 n) (A134828 (A007318 n).toNat)

end

end A355604.P382984555498830345

/-! ## A355604.P9697205990157609384

`abs(A108086(n))^A123583(A008459(n))`
-/

namespace A355604.P9697205990157609384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A108086 n| : ℚ) ^ (A123583 (A008459 n).toNat : ℤ)

end

end A355604.P9697205990157609384

/-! ## A355604.P10065192887634212881

`Δ[A102363(n)]^A123583(A008459(n))`
-/

namespace A355604.P10065192887634212881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A123583 (A008459 n).toNat : ℤ)

end

end A355604.P10065192887634212881

/-! ## A355604.P7902534671258340843

`A093178(A007318(n)%A054153(n))`
-/

namespace A355604.P7902534671258340843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (Int.tmod (A007318 n) (A054153 n)).toNat

end

end A355604.P7902534671258340843

/-! ## A355604.P5961555205121146830

`A147661(A181543(n))`
-/

namespace A355604.P5961555205121146830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147661 (A181543 n).toNat

end

end A355604.P5961555205121146830

/-!
# A355605: Expansion of e.g.f. (1 + x)^(x^2/2).

The programs for A355605, there is no canonical definition to state claims against.
-/

/-! ## A355605.P5655744875724434076

`A355619(∑[n+3])`
-/

namespace A355605.P5655744875724434076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355619 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355605.P5655744875724434076

/-! ## A355605.P4451452046926596663

`A355619(A055998(n+1))+A000035(2*(n+2))`
-/

namespace A355605.P4451452046926596663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355619 (A055998 (n + 1)).toNat + A000035 (2 * (n + 2))

end

end A355605.P4451452046926596663

/-! ## A355605.P17977424520408881435

`A355619(A055998(n+1))+A000007(3*n+4)`
-/

namespace A355605.P17977424520408881435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355619 (A055998 (n + 1)).toNat + A000007 (3 * n + 4)

end

end A355605.P17977424520408881435

/-! ## A355605.P4926822473024795993

`A355619(A055998(n+1))%A292897(n)`
-/

namespace A355605.P4926822473024795993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355619 (A055998 (n + 1)).toNat) (A292897 n)

end

end A355605.P4926822473024795993

/-! ## A355605.P4679471484131855717

`A355742(A235280(n+1))+A355619(A055998(n+1))`
-/

namespace A355605.P4679471484131855717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355742 (A235280 (n + 1)).toNat + A355619 (A055998 (n + 1)).toNat

end

end A355605.P4679471484131855717

/-!
# A355606: The indices where A354606(n) = 1.

The programs for A355606, there is no canonical definition to state claims against.
-/

/-! ## A355606.P1013965164595766779

`eq[1, A354606(n+1)]+1`
-/

namespace A355606.P1013965164595766779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354606 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355606.P1013965164595766779

/-! ## A355606.P1262903677574802742

`A057427(n+4)+lt[A354606(n+1), 2]`
-/

namespace A355606.P1262903677574802742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354606 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 4) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A355606.P1262903677574802742

/-! ## A355606.P9609617732253555169

`eq[A057427(n), A354606(A028310(n))]`
-/

namespace A355606.P9609617732253555169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354606 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355606.P9609617732253555169

/-! ## A355606.P10367375300809013492

`record[A028242(2*n)/A354606(n+1)]`
-/

namespace A355606.P10367375300809013492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A354606 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355606.P10367375300809013492

/-! ## A355606.P5968928833810511570

`record[A025480(2*(n+1))/A354606(n+1)]`
-/

namespace A355606.P5968928833810511570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025480 (2 * (n + 1)) : ℚ) / (A354606 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355606.P5968928833810511570

/-!
# A355607: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. (1 + x)^(x^k).

The programs for A355607, there is no canonical definition to state claims against.
-/

/-! ## A355607.P3279451130311815721

`A245920(A355576(n))*A355619(n)`
-/

namespace A355607.P3279451130311815721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245920 (A355576 n).toNat * A355619 n

end

end A355607.P3279451130311815721

/-! ## A355607.P986373727775921138

`A266871(A266878(n+1))*A355619(n)`
-/

namespace A355607.P986373727775921138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266871 (A266878 (n + 1)).toNat * A355619 n

end

end A355607.P986373727775921138

/-! ## A355607.P14714888796451783365

`A106362(A208183(n))*A355619(n)`
-/

namespace A355607.P14714888796451783365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106362 (A208183 n).toNat * A355619 n

end

end A355607.P14714888796451783365

/-! ## A355607.P4502408790812305479

`A232550(A008277(n+1))*A355619(n)`
-/

namespace A355607.P4502408790812305479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232550 (A008277 (n + 1)).toNat * A355619 n

end

end A355607.P4502408790812305479

/-! ## A355607.P21267689760264460

`A355619(n)%A393598(n+9)`
-/

namespace A355607.P21267689760264460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355619 n) (A393598 (n + 9))

end

end A355607.P21267689760264460

/-!
# A355608: Zeroless numbers k such that x^2 - s*x + p has only integer roots, where s and p denote the sum and product of the digits of k respectively.

The programs for A355608, there is no canonical definition to state claims against.
-/

/-! ## A355608.P12572220386759333722

`filter[A355497(n+1), A168046(#)]`
-/

namespace A355608.P12572220386759333722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A355608.P12572220386759333722

/-! ## A355608.P6115083654755017003

`∩[A052382(n+1), A355497(n+1)]`
-/

namespace A355608.P6115083654755017003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355608.P6115083654755017003

/-! ## A355608.P5652889020042777388

`∩[comp[A011540(n+1)], A355497(n+1)]`
-/

namespace A355608.P5652889020042777388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A355608.P5652889020042777388

/-! ## A355608.P673621988978929711

`lt[A184412(n+1), A288644(A004086(n))]`
-/

namespace A355608.P673621988978929711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288644 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355608.P673621988978929711

/-! ## A355608.P15004311587583783587

`lt[A154269(A056142(n+4)), A069816(n)]`
-/

namespace A355608.P15004311587583783587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A056142 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355608.P15004311587583783587

/-! ## A355608.P4506320306522226841

`lt[A154269(A056142(n+4)), A257297(n)]`
-/

namespace A355608.P4506320306522226841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A056142 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355608.P4506320306522226841

/-! ## A355608.P7962008144060201227

`A031954(n+1)%A001992(n+1)`
-/

namespace A355608.P7962008144060201227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031954 (n + 1)) (A001992 (n + 1))

end

end A355608.P7962008144060201227

/-! ## A355608.P5254188842556239679

`A043631(n+1)%A001992(n+1)`
-/

namespace A355608.P5254188842556239679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043631 (n + 1)) (A001992 (n + 1))

end

end A355608.P5254188842556239679

/-! ## A355608.P5859465618130642087

`A043698(n+1)%A001992(n+1)`
-/

namespace A355608.P5859465618130642087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043698 (n + 1)) (A001992 (n + 1))

end

end A355608.P5859465618130642087

/-!
# A355609: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. (1 - x)^(-x^k).

The programs for A355609, there is no canonical definition to state claims against.
-/

/-! ## A355609.P10905898065835383051

`A040001(A208183(n))*A355610(n)`
-/

namespace A355609.P10905898065835383051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A208183 n).toNat * A355610 n

end

end A355609.P10905898065835383051

/-! ## A355609.P14516745668866937758

`A260308(A260340(n))*A355610(n)`
-/

namespace A355609.P14516745668866937758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260308 (A260340 n).toNat * A355610 n

end

end A355609.P14516745668866937758

/-! ## A355609.P6734561992549978107

`A326362(A284249(n))*A355610(n)`
-/

namespace A355609.P6734561992549978107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326362 (A284249 n).toNat * A355610 n

end

end A355609.P6734561992549978107

/-! ## A355609.P14364188759036088118

`A296774(A155586(n))*A355610(n)`
-/

namespace A355609.P14364188759036088118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296774 (A155586 n).toNat * A355610 n

end

end A355609.P14364188759036088118

/-! ## A355609.P4433232877964045907

`and(A386237(n+1), A392817(n))`
-/

namespace A355609.P4433232877964045907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A386237 (n + 1)) (A392817 n)

end

end A355609.P4433232877964045907

/-!
# A355610: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. (1 - x)^(-x^k/k!).

The programs for A355610, there is no canonical definition to state claims against.
-/

/-! ## A355610.P15558010634424369032

`A355609(n)/A040001(A208183(n))`
-/

namespace A355610.P15558010634424369032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355609 n : ℚ) / (A040001 (A208183 n).toNat : ℚ)

end

end A355610.P15558010634424369032

/-! ## A355610.P17989830569391143331

`A355609(n)/A266871(A266878(n+1))`
-/

namespace A355610.P17989830569391143331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355609 n : ℚ) / (A266871 (A266878 (n + 1)).toNat : ℚ)

end

end A355610.P17989830569391143331

/-! ## A355610.P436041261238721822

`A355609(n)/A325167(A339235(n+4))`
-/

namespace A355610.P436041261238721822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355609 n : ℚ) / (A325167 (A339235 (n + 4)).toNat : ℚ)

end

end A355610.P436041261238721822

/-! ## A355610.P8179098599629898589

`A355609(n)-A281155(A343097(n))`
-/

namespace A355610.P8179098599629898589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 n - A281155 (A343097 n).toNat

end

end A355610.P8179098599629898589

/-! ## A355610.P185591403626879467

`A355609(n)/A096591(A048993(n))`
-/

namespace A355610.P185591403626879467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355609 n : ℚ) / (A096591 (A048993 n).toNat : ℚ)

end

end A355610.P185591403626879467

/-!
# A355612: Number of labeled digraphs on [n] such that for any pair C_1,C_2 of distinct strongly connected components, if x in C_1 is directed to y in C_2 then every vertex in C_1 is directed to every vertex in C_2.

The programs for A355612, there is no canonical definition to state claims against.
-/

/-! ## A355612.P5197041947081594730

`A320134(A003128(n)²)`
-/

namespace A355612.P5197041947081594730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320134 (A003128 n ^ 2).toNat

end

end A355612.P5197041947081594730

/-!
# A355613: Number of n-tuples (p_1, p_2, ..., p_n) of positive integers such that p_{i-1} <= p_i <= i^n.

The programs for A355613, there is no canonical definition to state claims against.
-/

/-! ## A355613.P3610105709837505606

`A355614(∑[4*n])`
-/

namespace A355613.P3610105709837505606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355614 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355613.P3610105709837505606

/-!
# A355616: a(n) is the number of distinct lengths between consecutive points of the Farey sequence of order n.

The programs for A355616, there is no canonical definition to state claims against.
-/

/-! ## A355616.P3881526145588751317

`or(A179970(n+1), A337279(A001097(n+4)))`
-/

namespace A355616.P3881526145588751317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A179970 (n + 1)) (A337279 (A001097 (n + 4)).toNat)

end

end A355616.P3881526145588751317

/-! ## A355616.P15585363431130784922

`A289437(eq[3, A162201(n+1)])`
-/

namespace A355616.P15585363431130784922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355616.P15585363431130784922

/-! ## A355616.P7854864002456645924

`A000523(A002944(n+1))+A000009(n)`
-/

namespace A355616.P7854864002456645924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A002944 (n + 1)).toNat + A000009 n

end

end A355616.P7854864002456645924

/-! ## A355616.P3789836658762494990

`A111133(n)+A070939(A002944(n+1))`
-/

namespace A355616.P3789836658762494990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + A070939 (A002944 (n + 1)).toNat

end

end A355616.P3789836658762494990

/-! ## A355616.P2414856966965068539

`A035457(2*n)+A000523(A002944(n+1))`
-/

namespace A355616.P2414856966965068539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) + A000523 (A002944 (n + 1)).toNat

end

end A355616.P2414856966965068539

/-!
# A355617: a(1) = 1; a(2) = 2; for n > 2, a(n) = R(a(n-1)) if a(n-1) != R(a(n-2)) and R(a(n-1)) has not yet been used, where R is the digit reversal function A004086, otherwise a(n) is the smallest positive integer > a(n-1) that has not yet been used.

The programs for A355617, there is no canonical definition to state claims against.
-/

/-! ## A355617.P2887117095006009697

`lt[A283001(A056965(n)²)², n]`
-/

namespace A355617.P2887117095006009697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (A056965 n ^ 2).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A355617.P2887117095006009697

/-! ## A355617.P10737934191736324176

`A131207(n+2)%A007958(A001993(n))`
-/

namespace A355617.P10737934191736324176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131207 (n + 2)) (A007958 (A001993 n).toNat)

end

end A355617.P10737934191736324176

/-! ## A355617.P16550934510672539680

`A134336(n+2)%A364778(A103263(n))`
-/

namespace A355617.P16550934510672539680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134336 (n + 2)) (A364778 (A103263 n).toNat)

end

end A355617.P16550934510672539680

/-! ## A355617.P7897924771284220759

`lcm(A164677(A277198(n)), A178403(n+2))`
-/

namespace A355617.P7897924771284220759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A164677 (A277198 n).toNat) (A178403 (n + 2))

end

end A355617.P7897924771284220759

/-! ## A355617.P4264581862844511903

`or(A134336(n+2), A276404(A005496(n)))`
-/

namespace A355617.P4264581862844511903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134336 (n + 2)) (A276404 (A005496 n).toNat)

end

end A355617.P4264581862844511903

/-!
# A355618: a(n) is the least prime that is the sum of a list of numbers > 1 whose product is n, or -1 if there is no such prime.

The programs for A355618, there is no canonical definition to state claims against.
-/

/-! ## A355618.P6816552067747595221

`or(A123528(n+2), A299202(A035001(n)))`
-/

namespace A355618.P6816552067747595221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A123528 (n + 2)) (A299202 (A035001 n).toNat)

end

end A355618.P6816552067747595221

/-! ## A355618.P10614514513320403293

`or(A008475(n+2), A137412(A075309(n+1)))`
-/

namespace A355618.P10614514513320403293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008475 (n + 2)) (A137412 (A075309 (n + 1)).toNat)

end

end A355618.P10614514513320403293

/-!
# A355619: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. (1 + x)^(x^k/k!).

The programs for A355619, there is no canonical definition to state claims against.
-/

/-! ## A355619.P11565628442142625848

`A355607(n)/A245920(A355576(n))`
-/

namespace A355619.P11565628442142625848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355607 n : ℚ) / (A245920 (A355576 n).toNat : ℚ)

end

end A355619.P11565628442142625848

/-! ## A355619.P7655311963705507366

`A355607(n)/A319897(A155033(n+1))`
-/

namespace A355619.P7655311963705507366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355607 n : ℚ) / (A319897 (A155033 (n + 1)).toNat : ℚ)

end

end A355619.P7655311963705507366

/-! ## A355619.P9743107834202821527

`A355607(n)/A266871(A266878(n+1))`
-/

namespace A355619.P9743107834202821527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355607 n : ℚ) / (A266871 (A266878 (n + 1)).toNat : ℚ)

end

end A355619.P9743107834202821527

/-! ## A355619.P12717937002340819056

`A355607(n)-A281155(A343097(n))`
-/

namespace A355619.P12717937002340819056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355607 n - A281155 (A343097 n).toNat

end

end A355619.P12717937002340819056

/-! ## A355619.P15757749536396912000

`A355607(n)/A364388(A090210(n+1))`
-/

namespace A355619.P15757749536396912000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355607 n : ℚ) / (A364388 (A090210 (n + 1)).toNat : ℚ)

end

end A355619.P15757749536396912000

/-!
# A355620: a(n) is the sum of the divisors of n whose decimal expansions appear as substrings in the decimal expansion of n.

The programs for A355620, there is no canonical definition to state claims against.
-/

/-! ## A355620.P12264725477621032706

`A000203(n+1)-A393929(n+1)`
-/

namespace A355620.P12264725477621032706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A393929 (n + 1)

end

end A355620.P12264725477621032706

/-!
# A355622: a(n) is the n-digit positive number with no trailing zeros and coprime to its digital reversal R(a(n)) at which abs(a(n)/R(a(n))-Pi) is minimized.

The programs for A355622, there is no canonical definition to state claims against.
-/

/-! ## A355622.P10199159388119798843

`A004086(A355623(n+1))`
-/

namespace A355622.P10199159388119798843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A355623 (n + 1)).toNat

end

end A355622.P10199159388119798843

/-!
# A355625: a(1) = 1; for n > 1, a(n) is the number of terms in the first n-1 terms of the sequence that share a 1-bit with n in their binary expansions.

The programs for A355625, there is no canonical definition to state claims against.
-/

/-! ## A355625.P7423136120106342826

`A051889(and(A123346(n), A126471(3*n)))`
-/

namespace A355625.P7423136120106342826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (Int.land (A123346 n) (A126471 (3 * n))).toNat

end

end A355625.P7423136120106342826

/-! ## A355625.P7511487192332644937

`A127351(2*(n+1))%(A064989(n+1)+1)-A308185(A143823(n))`
-/

namespace A355625.P7511487192332644937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127351 (2 * (n + 1))) (A064989 (n + 1) + 1) - A308185 (A143823 n).toNat

end

end A355625.P7511487192332644937

/-! ## A355625.P17707024007880979466

`A269380(n+1)-A188973(3*2^n-2)`
-/

namespace A355625.P17707024007880979466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (n + 1) - A188973 (3 * 2 ^ n - 2)

end

end A355625.P17707024007880979466

/-! ## A355625.P4392147886298266140

`A116529(n)-A052409(A010927(n))`
-/

namespace A355625.P4392147886298266140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116529 n - A052409 (A010927 n).toNat

end

end A355625.P4392147886298266140

/-! ## A355625.P15370468605237102771

`A064989(n+1)-A071625(A010927(n))`
-/

namespace A355625.P15370468605237102771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) - A071625 (A010927 n).toNat

end

end A355625.P15370468605237102771

/-!
# A355627: a(n) is the number of tuples (t_1, ..., t_k) with a positive integer k and integers 2 <= t_1 <= ... <= t_k such that n = Product_{i = 1..k} (3 + 1/t_i).

The programs for A355627, there is no canonical definition to state claims against.
-/

/-! ## A355627.P5600457437536533183

`A014681(C(A008740(n), A131452(2*n)))`
-/

namespace A355627.P5600457437536533183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (Nat.choose (A008740 n).toNat (A131452 (2 * n)).toNat)

end

end A355627.P5600457437536533183

/-! ## A355627.P15491589940410539919

`C(A214906(n+1), A303235(A183567(2*(n+2))))`
-/

namespace A355627.P15491589940410539919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A214906 (n + 1)).toNat (A303235 (A183567 (2 * (n + 2) + 10)).toNat).toNat

end

end A355627.P15491589940410539919

/-!
# A355628: a(n) is the number of positive integers p that can be written as p = Product_{i = 1..n} (3 + 1/t_i) with integers t_i >= 2.

The programs for A355628, there is no canonical definition to state claims against.
-/

/-! ## A355628.P7832927207364946328

`A273883(A148816(n+1))`
-/

namespace A355628.P7832927207364946328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273883 (A148816 (n + 1)).toNat

end

end A355628.P7832927207364946328

/-! ## A355628.P5786923545710424347

`A245579(A029519(n+1))-comp[round(ϕ*n)]`
-/

namespace A355628.P5786923545710424347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245579 (A029519 (n + 1)).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A355628.P5786923545710424347

/-!
# A355630: a(n) is the largest integer that can be written as Product_{i = 1..n} (3 + 1/t_i) with integers t_i >= 2.

The programs for A355630, there is no canonical definition to state claims against.
-/

/-! ## A355630.P4189660528350917477

`A355631(∑[A355628(n+2)])`
-/

namespace A355630.P4189660528350917477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355628 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355631 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355630.P4189660528350917477

/-!
# A355631: List of numbers k such that A355627(k) > 0.

The programs for A355631, there is no canonical definition to state claims against.
-/

/-! ## A355631.P6157918723360295828

`lt[A008472(A299262(n+1)), A152989(n+1)]`
-/

namespace A355631.P6157918723360295828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A299262 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355631.P6157918723360295828

/-!
# A355632: Irregular triangle T(n, k), n > 0, k = 1..A121041(n), read by rows; the n-th row contains in ascending order the divisors of n whose decimal expansions appear as substrings in the decimal expansion of n.

The programs for A355632, there is no canonical definition to state claims against.
-/

/-! ## A355632.P11716401142621314579

`A259433(A094275(n+1))`
-/

namespace A355632.P11716401142621314579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259433 (A094275 (n + 1)).toNat

end

end A355632.P11716401142621314579

/-!
# A355633: a(n) is the sum of the divisors of n whose binary expansions appear as substrings in the binary expansion of n.

The programs for A355633, there is no canonical definition to state claims against.
-/

/-! ## A355633.P4203958199603214154

`A000203(n+1)-A049502(A005179(n+1))`
-/

namespace A355633.P4203958199603214154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A049502 (A005179 (n + 1)).toNat

end

end A355633.P4203958199603214154

/-! ## A355633.P1811386470882832263

`A000203(n+1)-A358777(A256822(n+1))`
-/

namespace A355633.P1811386470882832263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A358777 (A256822 (n + 1)).toNat

end

end A355633.P1811386470882832263

/-! ## A355633.P42964882068725847

`A000203(n+1)-A119464(A209415(2*n+3))`
-/

namespace A355633.P42964882068725847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A119464 (A209415 (2 * n + 3)).toNat

end

end A355633.P42964882068725847

/-!
# A355634: Irregular triangle T(n, k), n > 0, k = 1..A093640(n), read by rows; the n-th row contains in ascending order the divisors of n whose binary expansions appear as substrings in the binary expansion of n.

The programs for A355634, there is no canonical definition to state claims against.
-/

/-! ## A355634.P3465080587690012417

`gcd(A328449(n), A343651(n+1))`
-/

namespace A355634.P3465080587690012417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328449 n) (A343651 (n + 1))

end

end A355634.P3465080587690012417

/-! ## A355634.P8790518663521769690

`A343651(n+1)%A216468(n+1)`
-/

namespace A355634.P8790518663521769690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343651 (n + 1)) (A216468 (n + 1))

end

end A355634.P8790518663521769690

/-! ## A355634.P2376099658955487243

`A343651(n+1)%A052167(A328673(n))`
-/

namespace A355634.P2376099658955487243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343651 (n + 1)) (A052167 (A328673 n).toNat)

end

end A355634.P2376099658955487243

/-! ## A355634.P7541584218138476353

`A343651(n+1)+A010054(A136192(n+5))`
-/

namespace A355634.P7541584218138476353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343651 (n + 1) + A010054 (A136192 (n + 5)).toNat

end

end A355634.P7541584218138476353

/-! ## A355634.P8963263990723320651

`A343651(n+1)+A121373(A241916(2*(n+2)))`
-/

namespace A355634.P8963263990723320651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343651 (n + 1) + A121373 (A241916 (2 * (n + 2))).toNat

end

end A355634.P8963263990723320651

/-!
# A355635: Triangle read by rows. Row n gives the coefficients of Product_{k=0..n-1} (x - binomial(n-1,k)) expanded in decreasing powers of x, with row 0 = {1}.

The programs for A355635, there is no canonical definition to state claims against.
-/

/-! ## A355635.P3756750403840272184

`A137156(A061579(n)%A107083(n+2))`
-/

namespace A355635.P3756750403840272184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137156 (Int.tmod (A061579 n) (A107083 (n + 2))).toNat

end

end A355635.P3756750403840272184

/-! ## A355635.P9980786395058347833

`A137156(A061579(n)%A137160(n))`
-/

namespace A355635.P9980786395058347833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137156 (Int.tmod (A061579 n) (A137160 n)).toNat

end

end A355635.P9980786395058347833

/-! ## A355635.P7835931495271610865

`A137156(lcm(A008836(2^n), A061579(n)))`
-/

namespace A355635.P7835931495271610865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137156 (Int.lcm (A008836 (2 ^ n)) (A061579 n))

end

end A355635.P7835931495271610865

/-! ## A355635.P2656992479759786735

`A158471(n)-A085982(A156951(n))`
-/

namespace A355635.P2656992479759786735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158471 n - A085982 (A156951 n).toNat

end

end A355635.P2656992479759786735

/-!
# A355639: a(n) is the least k > 0 such that the balanced ternary expansion of k*n contains as many negative trits as positive trits.

The programs for A355639, there is no canonical definition to state claims against.
-/

/-! ## A355639.P9049174142511940226

`floor(acot(n))+A355640(n)/A028310(n)`
-/

namespace A355639.P9049174142511940226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ)⌋ : ℚ) + (A355640 n : ℚ) / (A028310 n : ℚ)

end

end A355639.P9049174142511940226

/-! ## A355639.P9783925851274526941

`A004277(A355640(n))/A004277(n)`
-/

namespace A355639.P9783925851274526941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A355640 n).toNat : ℚ) / (A004277 n : ℚ)

end

end A355639.P9783925851274526941

/-! ## A355639.P15952429135265898557

`A008486(A355640(n))/A008486(n)`
-/

namespace A355639.P15952429135265898557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 (A355640 n).toNat : ℚ) / (A008486 n : ℚ)

end

end A355639.P15952429135265898557

/-! ## A355639.P12706026049541433520

`A028310(A355640(n)/A028310(n))`
-/

namespace A355639.P12706026049541433520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A355640 n : ℚ) / (A028310 n : ℚ))).toNat

end

end A355639.P12706026049541433520

/-!
# A355640: a(0) = 0, and for any n > 0, a(n) is the least positive multiple of n whose balanced ternary expansion contains as many negative trits as positive trits.

The programs for A355640, there is no canonical definition to state claims against.
-/

/-! ## A355640.P12784291281914893209

`n*A355639(n)`
-/

namespace A355640.P12784291281914893209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A355639 n

end

end A355640.P12784291281914893209

/-!
# A355641: Numbers k that can be written as the sum of 5 divisors of k (not necessarily distinct).

The programs for A355641, there is no canonical definition to state claims against.
-/

/-! ## A355641.P8743069466799998647

`lt[0, A356919(n+1)]+1`
-/

namespace A355641.P8743069466799998647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356919 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A355641.P8743069466799998647

/-! ## A355641.P1553494116439262634

`lt[A301555(A141256(n)), A377286(n+1)]`
-/

namespace A355641.P1553494116439262634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301555 (A141256 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377286 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355641.P1553494116439262634

/-! ## A355641.P16797985235925552433

`lt[A011965(A141256(n)), A325337(n+1)]`
-/

namespace A355641.P16797985235925552433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 (A141256 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355641.P16797985235925552433

/-! ## A355641.P2233232886172530844

`lt[A141243(A141256(n)), A141247(n+1)]`
-/

namespace A355641.P2233232886172530844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141243 (A141256 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141247 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355641.P2233232886172530844

/-! ## A355641.P18090885528659670616

`lt[A132105(A141256(n)), A319951(2*n)]`
-/

namespace A355641.P18090885528659670616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132105 (A141256 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355641.P18090885528659670616

/-!
# A355643: Numbers k having a divisor d such that d+k/d is prime.

The programs for A355643, the canonical program `A355643.P7908360887346496092` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355643 has offset 1).

The definition of A355643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2809 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355643.P7908360887346496092

`lt[0, A282849(n+1)]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A355643

/-- `lt[0, A282849(n+1)]+1` -/
def P7908360887346496092.Spec : Prop :=
  ∀ n, (P7908360887346496092.a n : ℤ) = A355643 (n + 1)

theorem P7908360887346496092.correct : P7908360887346496092.Spec := by
  intro n
  simp only [A355643, Nat.add_sub_cancel]

end A355643

/-! ## A355643.P17108120511708542714

`lt[A217435(n+1), A102699(A286477(n+1))]`
-/

namespace A355643.P17108120511708542714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102699 (A286477 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355643.P17108120511708542714

namespace A355643

/-- `lt[A217435(n+1), A102699(A286477(n+1))]` -/
def P17108120511708542714.Spec : Prop :=
  ∀ n, (P17108120511708542714.a n : ℤ) = A355643 (n + 1)

end A355643

/-! ## A355643.P12116632494357484155

`lt[A034693(A140229(n+1)), A272565(n+1)]`
-/

namespace A355643.P12116632494357484155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A140229 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355643.P12116632494357484155

namespace A355643

/-- `lt[A034693(A140229(n+1)), A272565(n+1)]` -/
def P12116632494357484155.Spec : Prop :=
  ∀ n, (P12116632494357484155.a n : ℤ) = A355643 (n + 1)

end A355643

/-! ## A355643.P854131320475695238

`lt[A234287(n+1), A005117(A020639(n+1))]`
-/

namespace A355643.P854131320475695238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355643.P854131320475695238

namespace A355643

/-- `lt[A234287(n+1), A005117(A020639(n+1))]` -/
def P854131320475695238.Spec : Prop :=
  ∀ n, (P854131320475695238.a n : ℤ) = A355643 (n + 1)

end A355643

/-! ## A355643.P10672977623087660086

`eq[A137866(n+1), A155457(n)]`
-/

namespace A355643.P10672977623087660086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355643.P10672977623087660086

namespace A355643

/-- `eq[A137866(n+1), A155457(n)]` -/
def P10672977623087660086.Spec : Prop :=
  ∀ n, (P10672977623087660086.a n : ℤ) = A355643 (n + 1)

end A355643

/-!
# A355644: Primes p such that p^2-1 does not have a divisor d with d + (p^2-1)/d prime.

The programs for A355644, there is no canonical definition to state claims against.
-/

/-! ## A355644.P5210075260005952580

`A000057(eq[A020653(n+1), A098280(3*n+2)])`
-/

namespace A355644.P5210075260005952580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098280 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000057 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A355644.P5210075260005952580

/-!
# A355645: The number of regions in the G-Shi arrangement when G is the cycle graph C_n.

The programs for A355645, the canonical program `A355645.P3895745303068371146` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355645 has offset 1).

The definition of A355645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355645.P3895745303068371146

`ogf((1-4x+12x^2-17x^3+6x^4)/(1-7x+17x^2-17x^3+6x^4))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A355645

/-- `ogf((1-4x+12x^2-17x^3+6x^4)/(1-7x+17x^2-17x^3+6x^4))` -/
def P3895745303068371146.Spec : Prop :=
  ∀ n, P3895745303068371146.a n = A355645 (n + 1)

theorem P3895745303068371146.correct : P3895745303068371146.Spec := by
  intro n
  simp only [A355645, Nat.add_sub_cancel]

end A355645

/-! ## A355645.P14752526678216540598

`A094618(n)-A103517(n)`
-/

namespace A355645.P14752526678216540598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094618 n - A103517 n

end

end A355645.P14752526678216540598

namespace A355645

/-- `A094618(n)-A103517(n)` -/
def P14752526678216540598.Spec : Prop :=
  ∀ n, P14752526678216540598.a n = A355645 (n + 1)

end A355645

/-! ## A355645.P16214624292846311572

`Δ[A036550(n)]-A065475(n+1)`
-/

namespace A355645.P16214624292846311572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A065475 (n + 1)

end

end A355645.P16214624292846311572

namespace A355645

/-- `Δ[A036550(n)]-A065475(n+1)` -/
def P16214624292846311572.Spec : Prop :=
  ∀ n, P16214624292846311572.a n = A355645 (n + 1)

end A355645

/-! ## A355645.P5321078258485264052

`record[A107583(n)]-A005803(n+1)`
-/

namespace A355645.P5321078258485264052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005803 (n + 1)

end

end A355645.P5321078258485264052

namespace A355645

/-- `record[A107583(n)]-A005803(n+1)` -/
def P5321078258485264052.Spec : Prop :=
  ∀ n, P5321078258485264052.a n = A355645 (n + 1)

end A355645

/-! ## A355645.P13260196840154977170

`A001047(n+1)-(A105812(n+1)²+n)`
-/

namespace A355645.P13260196840154977170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1) - (A105812 (n + 1) ^ 2 + (n : ℤ))

end

end A355645.P13260196840154977170

namespace A355645

/-- `A001047(n+1)-(A105812(n+1)²+n)` -/
def P13260196840154977170.Spec : Prop :=
  ∀ n, P13260196840154977170.a n = A355645 (n + 1)

end A355645

/-! ## A355645.P9098926302198362183

`A001047(n+1)-(A105812(2*n+1)+n)`
-/

namespace A355645.P9098926302198362183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1) - (A105812 (2 * n + 1) + (n : ℤ))

end

end A355645.P9098926302198362183

namespace A355645

/-- `A001047(n+1)-(A105812(2*n+1)+n)` -/
def P9098926302198362183.Spec : Prop :=
  ∀ n, P9098926302198362183.a n = A355645 (n + 1)

end A355645

/-! ## A355645.P14420159744539869705

`A056182(n+1)/A040000(n)-(n+1)`
-/

namespace A355645.P14420159744539869705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056182 (n + 1) : ℚ) / (A040000 n : ℚ) - (n + 1 : ℚ)

end

end A355645.P14420159744539869705

namespace A355645

/-- `A056182(n+1)/A040000(n)-(n+1)` -/
def P14420159744539869705.Spec : Prop :=
  ∀ n, P14420159744539869705.a n = (A355645 (n + 1) : ℚ)

end A355645

/-!
# A355649: a(1) = a(2) = 1; for n > 2, a(n) is the smallest positive number that has the same number of divisors as the sum a(n-2) + a(n-1).

The programs for A355649, there is no canonical definition to state claims against.
-/

/-! ## A355649.P10605167754978202813

`A139770(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A355649.P10605167754978202813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A139770 (a (n - 1) + a (n - 2)).toNat

end

end A355649.P10605167754978202813

/-! ## A355649.P6582316846807893874

`A140635(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A355649.P6582316846807893874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A140635 (a (n - 1) + a (n - 2)).toNat

end

end A355649.P6582316846807893874

/-! ## A355649.P17355761711979053560

`A139770(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A355649.P17355761711979053560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A139770 (a (n - 1) - (-a (n - 2))).toNat

end

end A355649.P17355761711979053560

/-! ## A355649.P1402529540425708194

`A140635(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A355649.P1402529540425708194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A140635 (a (n - 1) - (-a (n - 2))).toNat

end

end A355649.P1402529540425708194

/-! ## A355649.P10252157659035856931

`A140635(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A355649.P10252157659035856931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A140635 (a (n - 1) - (-a (n - 2))).toNat

end

end A355649.P10252157659035856931

/-!
# A355650: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. exp(x^k/k! * (exp(x) - 1)).

The programs for A355650, there is no canonical definition to state claims against.
-/

/-! ## A355650.P9829311982915094221

`A292892(n)/A040001(A208183(n))`
-/

namespace A355650.P9829311982915094221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292892 n : ℚ) / (A040001 (A208183 n).toNat : ℚ)

end

end A355650.P9829311982915094221

/-! ## A355650.P10762378447907765471

`A000007(2*(n+2))+A292892(n)/A353270(A208183(n))`
-/

namespace A355650.P10762378447907765471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (2 * (n + 2)) : ℚ) + (A292892 n : ℚ) / (A353270 (A208183 n).toNat : ℚ)

end

end A355650.P10762378447907765471

/-! ## A355650.P15390808842559080826

`A292892(n)/A064642(A225094(n))`
-/

namespace A355650.P15390808842559080826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292892 n : ℚ) / (A064642 (A225094 n).toNat : ℚ)

end

end A355650.P15390808842559080826

/-! ## A355650.P15010113275252487049

`A292892(n)/A384893(A278986(n+1))`
-/

namespace A355650.P15010113275252487049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292892 n : ℚ) / (A384893 (A278986 (n + 1)).toNat : ℚ)

end

end A355650.P15010113275252487049

/-! ## A355650.P16828072261572235874

`A292892(n)/A049419(A202511(2*(n+1)))`
-/

namespace A355650.P16828072261572235874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292892 n : ℚ) / (A049419 (A202511 (2 * (n + 1))).toNat : ℚ)

end

end A355650.P16828072261572235874

/-!
# A355652: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. 1/(1 + x^k/k! * log(1 - x)).

The programs for A355652, there is no canonical definition to state claims against.
-/

/-! ## A355652.P14661510474964839331

`A355665(n)/A266871(A266878(n+1))`
-/

namespace A355652.P14661510474964839331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355665 n : ℚ) / (A266871 (A266878 (n + 1)).toNat : ℚ)

end

end A355652.P14661510474964839331

/-! ## A355652.P355642777695192113

`A355665(n)-A281155(A343097(n))`
-/

namespace A355652.P355642777695192113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355665 n - A281155 (A343097 n).toNat

end

end A355652.P355642777695192113

/-! ## A355652.P4169699768727221135

`A355665(n)/A354601(A329332(n))`
-/

namespace A355652.P4169699768727221135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355665 n : ℚ) / (A354601 ((A329332 n).toNat + 10) : ℚ)

end

end A355652.P4169699768727221135

/-! ## A355652.P17459631597638930747

`A355665(n)+A183063(A227622(n+1))`
-/

namespace A355652.P17459631597638930747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355665 n + A183063 (A227622 (n + 1)).toNat

end

end A355652.P17459631597638930747

/-! ## A355652.P3044475466167112752

`A355665(n)^A000142(A383706(n+1))`
-/

namespace A355652.P3044475466167112752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355665 n : ℚ) ^ (A000142 (A383706 (n + 1)).toNat : ℤ)

end

end A355652.P3044475466167112752

/-!
# A355654: For any number n with runs in binary expansion (r_w, ..., r_0), let p(n) be the polynomial of a single indeterminate x where the coefficient of x^e is r_e for e = 0..w and otherwise 0, and let q be the inverse of p; a(n) = q(p(n)^2).

The programs for A355654, there is no canonical definition to state claims against.
-/

/-! ## A355654.P15944384354653053368

`A355664(∑[4*n])`
-/

namespace A355654.P15944384354653053368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355664 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355654.P15944384354653053368

/-! ## A355654.P2078564873395763641

`record[A355664(A265225(n))]`
-/

namespace A355654.P2078564873395763641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355664 (A265225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355654.P2078564873395763641

/-!
# A355655: a(n) = 1 if the smallest b > 1 such that b^(p-1) == 1 (mod p^2) is prime, 0 otherwise, with p = prime(n).

The programs for A355655, there is no canonical definition to state claims against.
-/

/-! ## A355655.P12075183848265562565

`A010051(A039678(n+1))`
-/

namespace A355655.P12075183848265562565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A039678 (n + 1)).toNat

end

end A355655.P12075183848265562565

/-! ## A355655.P9987524377431591260

`A064911(2*A039678(1+n))`
-/

namespace A355655.P9987524377431591260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * A039678 (1 + n)).toNat

end

end A355655.P9987524377431591260

/-! ## A355655.P8822135863171813162

`A101040(2*A039678(n+1))`
-/

namespace A355655.P8822135863171813162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (2 * A039678 (n + 1)).toNat

end

end A355655.P8822135863171813162

/-! ## A355655.P15994322791070297977

`A211487(2*A039678(n+1))`
-/

namespace A355655.P15994322791070297977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (2 * A039678 (n + 1)).toNat

end

end A355655.P15994322791070297977

/-! ## A355655.P6702237138544650944

`C(A175362(n), A349712(A039678(n+1)))`
-/

namespace A355655.P6702237138544650944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A175362 n).toNat (A349712 (A039678 (n + 1)).toNat).toNat

end

end A355655.P6702237138544650944

/-! ## A355655.P10713651965148024820

`C(A175375(n), A349712(A039678(n+1)))`
-/

namespace A355655.P10713651965148024820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A175375 n).toNat (A349712 (A039678 (n + 1)).toNat).toNat

end

end A355655.P10713651965148024820

/-! ## A355655.P6142462229952523310

`A010051(A244249(∑[n+1]))`
-/

namespace A355655.P6142462229952523310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A244249 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A355655.P6142462229952523310

/-!
# A355656: Primes p such that A355655(i) = 0, where i is the index of p in A000040.

The programs for A355656, there is no canonical definition to state claims against.
-/

/-! ## A355656.P9938720219781374136

`A065091(lt[A355655(n+1), 1])`
-/

namespace A355656.P9938720219781374136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355655 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A355656.P9938720219781374136

/-! ## A355656.P10952609365215769280

`A000040(eq[0, A355655(n+1)]+1)`
-/

namespace A355656.P10952609365215769280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A355656.P10952609365215769280

/-! ## A355656.P9661383731073970563

`A000040(lt[A355655(n+1), 1]+1)`
-/

namespace A355656.P9661383731073970563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355655 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A355656.P9661383731073970563

/-! ## A355656.P5012479583576773055

`p?[A000040(n+1)-A355655(n+1)]`
-/

namespace A355656.P5012479583576773055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A355655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355656.P5012479583576773055

/-! ## A355656.P9038121987829919226

`p?[A355655(n+2)+A000040(n+2)]`
-/

namespace A355656.P9038121987829919226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355655 (n + 2) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355656.P9038121987829919226

/-! ## A355656.P7096572503721825006

`p?[∑[A054541(n+1)]-A355655(n+1)]`
-/

namespace A355656.P7096572503721825006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A355655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355656.P7096572503721825006

/-! ## A355656.P7767855184517649033

`p?[A006093(n+1)+1-A355655(n+1)]`
-/

namespace A355656.P7767855184517649033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A355655 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355656.P7767855184517649033

/-! ## A355656.P5840983067530399049

`p?[A008864(n+1)-(A355655(n+1)+1)]`
-/

namespace A355656.P5840983067530399049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A355655 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355656.P5840983067530399049

/-!
# A355657: Primes p such that A355655(i) = 1, where i is the index of p in A000040.

The programs for A355657, there is no canonical definition to state claims against.
-/

/-! ## A355657.P16332455820981163561

`A000040(eq[1, A355655(n+1)]+1)`
-/

namespace A355657.P16332455820981163561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A355657.P16332455820981163561

/-! ## A355657.P10416156732954121873

`p?[A355655(n+1)+A039915(n+1)]`
-/

namespace A355657.P10416156732954121873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355655 (n + 1) + A039915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355657.P10416156732954121873

/-! ## A355657.P13503660370589812140

`record[A000040(n+1)*A355655(n+1)]`
-/

namespace A355657.P13503660370589812140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A355655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355657.P13503660370589812140

/-! ## A355657.P1407843597154389169

`p?[A008864(n+1)-A355655(n+1)]`
-/

namespace A355657.P1407843597154389169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A355655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355657.P1407843597154389169

/-! ## A355657.P14701036456610053174

`p?[A355655(n+2)+A006093(n+2)]`
-/

namespace A355657.P14701036456610053174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355655 (n + 2) + A006093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355657.P14701036456610053174

/-! ## A355657.P4311194131693389273

`p?[∑[A054541(n+1)]*A355655(n+1)]`
-/

namespace A355657.P4311194131693389273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A355655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355657.P4311194131693389273

/-!
# A355658: Smallest prime base q such that q^(p-1) == 1 (mod p^2), where p = prime(n).

The programs for A355658, there is no canonical definition to state claims against.
-/

/-! ## A355658.P702085749696138665

`A125636(n+1)+C(n, 64)²`
-/

namespace A355658.P702085749696138665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125636 (n + 1) + (Nat.choose n 64 ^ 2 : ℤ)

end

end A355658.P702085749696138665

/-! ## A355658.P9026902903650813629

`A125636(A055643(n+1))`
-/

namespace A355658.P9026902903650813629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125636 (A055643 (n + 1)).toNat

end

end A355658.P9026902903650813629

/-! ## A355658.P16546703547419096826

`A125636(A118759(n)+1)`
-/

namespace A355658.P16546703547419096826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125636 (A118759 n + 1).toNat

end

end A355658.P16546703547419096826

/-! ## A355658.P8278341819893765818

`A125636(A120951(n+1))`
-/

namespace A355658.P8278341819893765818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125636 (A120951 (n + 1)).toNat

end

end A355658.P8278341819893765818

/-! ## A355658.P5033207177092821600

`A125636(A130446(n+1))`
-/

namespace A355658.P5033207177092821600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125636 (A130446 (n + 1)).toNat

end

end A355658.P5033207177092821600

/-! ## A355658.P9092275520900394606

`A125636(A254109(n)+1)`
-/

namespace A355658.P9092275520900394606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125636 (A254109 n + 1).toNat

end

end A355658.P9092275520900394606

/-! ## A355658.P9032568076029070600

`A125636(A292579(n+1))`
-/

namespace A355658.P9032568076029070600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125636 (A292579 (n + 1)).toNat

end

end A355658.P9032568076029070600

/-! ## A355658.P1046620710010493707

`A125636(A296765(n+1))`
-/

namespace A355658.P1046620710010493707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125636 (A296765 (n + 1)).toNat

end

end A355658.P1046620710010493707

/-! ## A355658.P13729939102028840242

`A125636(A296882(n+1))`
-/

namespace A355658.P13729939102028840242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125636 (A296882 (n + 1)).toNat

end

end A355658.P13729939102028840242

/-! ## A355658.P6500899157077385769

`A125636(A296891(n+1))`
-/

namespace A355658.P6500899157077385769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125636 (A296891 (n + 1)).toNat

end

end A355658.P6500899157077385769

/-!
# A355659: Martingale win/loss triangle, read by rows: T(n,k) = total number of dollars won (or lost) using the martingale method on all possible n trials that have exactly k losses and n-k wins, for 0 <= k <= n.

The programs for A355659, the canonical program `A355659.P2001489510755992456` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355659 has offset 0).

The definition of A355659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355659.P2001489510755992456

`A093375(1+n)-A008949(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A355659

/-- `A093375(1+n)-A008949(n)` -/
def P2001489510755992456.Spec : Prop :=
  ∀ n, P2001489510755992456.a n = A355659 n

theorem P2001489510755992456.correct : P2001489510755992456.Spec := by
  intro n
  simp only [A355659]

end A355659

/-! ## A355659.P14047045852006751085

`A093375(n+1)-ceil(A221881(n+1)/2)`
-/

namespace A355659.P14047045852006751085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) - ⌈(A221881 (n + 1) : ℚ) / 2⌉

end

end A355659.P14047045852006751085

namespace A355659

/-- `A093375(n+1)-ceil(A221881(n+1)/2)` -/
def P14047045852006751085.Spec : Prop :=
  ∀ n, P14047045852006751085.a n = A355659 n

end A355659

/-! ## A355659.P4069820466660751030

`A093375(n+1)-(A102363(n+1)-A137688(n))`
-/

namespace A355659.P4069820466660751030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) - (A102363 (n + 1) - A137688 n)

end

end A355659.P4069820466660751030

namespace A355659

/-- `A093375(n+1)-(A102363(n+1)-A137688(n))` -/
def P4069820466660751030.Spec : Prop :=
  ∀ n, P4069820466660751030.a n = A355659 n

end A355659

/-! ## A355659.P16547521568657753306

`A093375(n+1)-(A054143(n)+Δ[A102363(n)])/2`
-/

namespace A355659.P16547521568657753306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093375 (n + 1) : ℚ) - (A054143 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A355659.P16547521568657753306

namespace A355659

/-- `A093375(n+1)-(A054143(n)+Δ[A102363(n)])/2` -/
def P16547521568657753306.Spec : Prop :=
  ∀ n, P16547521568657753306.a n = (A355659 n : ℚ)

end A355659

/-! ## A355659.P6206669832487127349

`A093375(n+1)-(2*A054143(n)-A204201(n+1))`
-/

namespace A355659.P6206669832487127349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) - (2 * A054143 n - A204201 (n + 1))

end

end A355659.P6206669832487127349

namespace A355659

/-- `A093375(n+1)-(2*A054143(n)-A204201(n+1))` -/
def P6206669832487127349.Spec : Prop :=
  ∀ n, P6206669832487127349.a n = A355659 n

end A355659

/-! ## A355659.P17686217973466838930

`A093375(n+1)-(2*A204201(n+1)-A204205(n+1))`
-/

namespace A355659.P17686217973466838930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) - (2 * A204201 (n + 1) - A204205 (n + 1))

end

end A355659.P17686217973466838930

namespace A355659

/-- `A093375(n+1)-(2*A204201(n+1)-A204205(n+1))` -/
def P17686217973466838930.Spec : Prop :=
  ∀ n, P17686217973466838930.a n = A355659 n

end A355659

/-! ## A355659.P383903783466200123

`A093375(n+1)-A055248(A061579(n))`
-/

namespace A355659.P383903783466200123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) - A055248 (A061579 n).toNat

end

end A355659.P383903783466200123

namespace A355659

/-- `A093375(n+1)-A055248(A061579(n))` -/
def P383903783466200123.Spec : Prop :=
  ∀ n, P383903783466200123.a n = A355659 n

end A355659

/-!
# A355660: Numbers m such that the smallest number of pentagonal numbers (A000326) which sum to m is exactly 4.

The programs for A355660, there is no canonical definition to state claims against.
-/

/-! ## A355660.P8730208256441634068

`eq[4, A100878(n)]`
-/

namespace A355660.P8730208256441634068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A355660.P8730208256441634068

/-!
# A355661: Largest number of children of any vertex in the rooted tree with Matula-Goebel number n.

The programs for A355661, there is no canonical definition to state claims against.
-/

/-! ## A355661.P9005200072657471914

`A196046(2*(n+1))-1`
-/

namespace A355661.P9005200072657471914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196046 (2 * (n + 1)) - 1

end

end A355661.P9005200072657471914

/-! ## A355661.P6646074847584550629

`A023443(A196046(2*(n+1)))`
-/

namespace A355661.P6646074847584550629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A196046 (2 * (n + 1))).toNat

end

end A355661.P6646074847584550629

/-! ## A355661.P6004920547509421938

`(A196046(A005843(n+1))-1)%(n+1)`
-/

namespace A355661.P6004920547509421938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196046 (A005843 (n + 1)).toNat - 1) (n + 1 : ℤ)

end

end A355661.P6004920547509421938

/-! ## A355661.P219957040856859814

`abs(1-A196046(A000040(n+1)))`
-/

namespace A355661.P219957040856859814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A196046 (A000040 (n + 1)).toNat|

end

end A355661.P219957040856859814

/-! ## A355661.P1984694800702213272

`(A196046(A000040(n+1))-1)%A050785(n+1)`
-/

namespace A355661.P1984694800702213272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196046 (A000040 (n + 1)).toNat - 1) (A050785 (n + 1))

end

end A355661.P1984694800702213272

/-! ## A355661.P11238716368775763336

`A196046(A000040(n+1))%A065387(n+1)-1`
-/

namespace A355661.P11238716368775763336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196046 (A000040 (n + 1)).toNat) (A065387 (n + 1)) - 1

end

end A355661.P11238716368775763336

/-! ## A355661.P9485466807895823653

`A325970(A006512(n+1))+A196046(2*(n+1))`
-/

namespace A355661.P9485466807895823653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A006512 (n + 1)).toNat + A196046 (2 * (n + 1))

end

end A355661.P9485466807895823653

/-!
# A355662: Smallest number of children of any vertex which has children, in the rooted tree with Matula-Goebel number n.

The programs for A355662, there is no canonical definition to state claims against.
-/

/-! ## A355662.P14063083511619112922

`gcd(A091269(2*n), A091269(A252463(3*n+2)))`
-/

namespace A355662.P14063083511619112922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091269 (2 * n)) (A091269 (A252463 (3 * n + 2)).toNat)

end

end A355662.P14063083511619112922

/-! ## A355662.P13716393838898481514

`A355531(A253563(n))`
-/

namespace A355662.P13716393838898481514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355531 (A253563 n).toNat

end

end A355662.P13716393838898481514

/-! ## A355662.P9554543020612908582

`ceil(A334297(n)/A295935(3*n+2))`
-/

namespace A355662.P9554543020612908582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334297 n : ℚ) / (A295935 (3 * n + 2) : ℚ)⌉

end

end A355662.P9554543020612908582

/-! ## A355662.P4259039132487436494

`ceil(A334029(n)/A334032(3*n+2))`
-/

namespace A355662.P4259039132487436494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334029 n : ℚ) / (A334032 (3 * n + 2) : ℚ)⌉

end

end A355662.P4259039132487436494

/-! ## A355662.P13881408011865425150

`ceil(A334029(n)/A334033(3*n+2))`
-/

namespace A355662.P13881408011865425150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334029 n : ℚ) / (A334033 (3 * n + 2) : ℚ)⌉

end

end A355662.P13881408011865425150

/-!
# A355663: Square array A(n, k), n, k >= 0, read by antidiagonals; for any number n with runs in binary expansion (r_w, ..., r_0), let p(n) be the polynomial of a single indeterminate x where the coefficient of x^e is r_e for e = 0..w and otherwise 0, and let q be the inverse of p; A(n, k) = q(p(n) + p(k)).

The programs for A355663, there is no canonical definition to state claims against.
-/

/-! ## A355663.P7632714209694101153

`and(A322382(A322371(2*(n+1))), A322404(n))`
-/

namespace A355663.P7632714209694101153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A322382 (A322371 (2 * (n + 1))).toNat) (A322404 n)

end

end A355663.P7632714209694101153

/-! ## A355663.P1573127868594579967

`A129600(n)+A129552(A129568(n+1))`
-/

namespace A355663.P1573127868594579967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129600 n + A129552 (A129568 (n + 1)).toNat

end

end A355663.P1573127868594579967

/-! ## A355663.P10606976218198561370

`A104637(A060556(n))!*A129600(n)`
-/

namespace A355663.P10606976218198561370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A104637 (A060556 n).toNat).toNat : ℤ) * A129600 n

end

end A355663.P10606976218198561370

/-! ## A355663.P14935043537685646047

`A234954(A059300(n))!*A129600(n)`
-/

namespace A355663.P14935043537685646047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A234954 (A059300 n).toNat).toNat : ℤ) * A129600 n

end

end A355663.P14935043537685646047

/-! ## A355663.P1326585788622501836

`A057526(A110476(n+1))*A157103(A129568(n+1))`
-/

namespace A355663.P1326585788622501836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A110476 (n + 1)).toNat * A157103 (A129568 (n + 1)).toNat

end

end A355663.P1326585788622501836

/-!
# A355664: Square array A(n, k), n, k >= 0, read by antidiagonals; for any number n with runs in binary expansion (r_w, ..., r_0), let p(n) be the polynomial of a single indeterminate x where the coefficient of x^e is r_e for e = 0..w and otherwise 0, and let q be the inverse of p; A(n, k) = q(p(n) * p(k)).

The programs for A355664, there is no canonical definition to state claims against.
-/

/-! ## A355664.P6749940760763470003

`A293447(A155971(n))`
-/

namespace A355664.P6749940760763470003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293447 (A155971 n).toNat

end

end A355664.P6749940760763470003

/-! ## A355664.P2603526494452048122

`A259846(A331406(n))`
-/

namespace A355664.P2603526494452048122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259846 (A331406 n).toNat

end

end A355664.P2603526494452048122

/-! ## A355664.P2998366653023623413

`A276328(A008300(n)-1)`
-/

namespace A355664.P2998366653023623413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276328 (A008300 n - 1).toNat

end

end A355664.P2998366653023623413

/-! ## A355664.P1072100280512065341

`A000523(A008277(n+1)^A182172(n))`
-/

namespace A355664.P1072100280512065341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((A008277 (n + 1) : ℚ) ^ (A182172 n : ℤ))).toNat

end

end A355664.P1072100280512065341

/-! ## A355664.P14974359470932174442

`A220098(C(2*row(n), 2*col(n)))-1`
-/

namespace A355664.P14974359470932174442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220098 (Nat.choose (2 * SequenceMachineLib.triRow n) (2 * SequenceMachineLib.triCol n)) - 1

end

end A355664.P14974359470932174442

/-!
# A355665: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. 1/(1 + x^k * log(1 - x)).

The programs for A355665, there is no canonical definition to state claims against.
-/

/-! ## A355665.P13223110262343552003

`A266871(A266878(n+1))*A355652(n)`
-/

namespace A355665.P13223110262343552003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266871 (A266878 (n + 1)).toNat * A355652 n

end

end A355665.P13223110262343552003

/-! ## A355665.P12681404477068470157

`A355652(n)+A281155(A343097(n))`
-/

namespace A355665.P12681404477068470157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 n + A281155 (A343097 n).toNat

end

end A355665.P12681404477068470157

/-! ## A355665.P5896455531964667114

`A354601(A329332(n))*A355652(n)`
-/

namespace A355665.P5896455531964667114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354601 ((A329332 n).toNat + 10) * A355652 n

end

end A355665.P5896455531964667114

/-! ## A355665.P3760247376365758053

`lcm(A124530(A124550(n)), A355652(n))`
-/

namespace A355665.P3760247376365758053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124530 (A124550 n).toNat) (A355652 n)

end

end A355665.P3760247376365758053

/-! ## A355665.P17355184159771339022

`A333381(A306337(n+1))*A355652(n)`
-/

namespace A355665.P17355184159771339022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A306337 (n + 1)).toNat * A355652 n

end

end A355665.P17355184159771339022

/-!
# A355666: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. 1/(1 - x^k/k! * (exp(x) - 1)).

The programs for A355666, there is no canonical definition to state claims against.
-/

/-! ## A355666.P3102656516587142774

`A075169(A355652(n))`
-/

namespace A355666.P3102656516587142774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075169 (A355652 n).toNat

end

end A355666.P3102656516587142774

/-! ## A355666.P8121008345328036387

`A075169(A355665(n))`
-/

namespace A355666.P8121008345328036387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075169 (A355665 n).toNat

end

end A355666.P8121008345328036387

/-! ## A355666.P4331691376900023432

`A347859(A293053(n))`
-/

namespace A355666.P4331691376900023432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347859 (A293053 n).toNat

end

end A355666.P4331691376900023432

/-! ## A355666.P4715436344916916402

`A333221(A355652(n)+1)`
-/

namespace A355666.P4715436344916916402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333221 (A355652 n + 1).toNat

end

end A355666.P4715436344916916402

/-! ## A355666.P14830783569692374579

`A355652(n)-A069849(A245910(n))`
-/

namespace A355666.P14830783569692374579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 n - A069849 (A245910 n).toNat

end

end A355666.P14830783569692374579

/-!
# A355667: Least number phi(k) such that n * phi(k) < k, where phi is Euler's totient function.

The programs for A355667, there is no canonical definition to state claims against.
-/

/-! ## A355667.P8772056821811140305

`A000010(A091456(n+1))`
-/

namespace A355667.P8772056821811140305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A091456 (n + 1)).toNat

end

end A355667.P8772056821811140305

/-! ## A355667.P9689938912131086395

`A005867(record[A226649(n)])`
-/

namespace A355667.P9689938912131086395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A355667.P9689938912131086395

/-! ## A355667.P15721003796367015864

`A005867(A005579(n+1))`
-/

namespace A355667.P15721003796367015864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 (A005579 (n + 1)).toNat

end

end A355667.P15721003796367015864

/-! ## A355667.P6901634401013109707

`A005867(record[A273715(n+2)+1])`
-/

namespace A355667.P6901634401013109707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273715 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A355667.P6901634401013109707

/-!
# A355668: Array read by upwards antidiagonals T(n,k) = J(k) + n*J(k+1) where J(n) = A001045(n) is the Jacobsthal numbers.

The programs for A355668, the canonical program `A355668.P16521255267099740600` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355668 has offset 0).

The definition of A355668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355668.P16521255267099740600

`(2^col(n)-(-1)^col(n)+(row(n)-col(n))*(2^(col(n)+1)+(-1)^col(n)))/3`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A355668

/-- `(2^col(n)-(-1)^col(n)+(row(n)-col(n))*(2^(col(n)+1)+(-1)^col(n)))/3` -/
def P16521255267099740600.Spec : Prop :=
  ∀ n, P16521255267099740600.a n = (A355668 n : ℚ)

end A355668

/-! ## A355668.P15415942122410840031

`A352784(n*(A352819(n+1)+1))`
-/

namespace A355668.P15415942122410840031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352784 ((n : ℤ) * (A352819 (n + 1) + 1)).toNat

end

end A355668.P15415942122410840031

namespace A355668

/-- `A352784(n*(A352819(n+1)+1))` -/
def P15415942122410840031.Spec : Prop :=
  ∀ n, P15415942122410840031.a n = A355668 n

end A355668

/-!
# A355669: a(n) = n! * Sum_{d|n} (d!)^(d - n/d).

The programs for A355669, the canonical program `A355669.P18293394607803181404` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355669 has offset 1).

The definition of A355669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355669.P18293394607803181404

`(n+1)!*∑{d}[n+1, #!^(#-(n+1)/#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A355669

/-- `(n+1)!*∑{d}[n+1, #!^(#-(n+1)/#)]` -/
def P18293394607803181404.Spec : Prop :=
  ∀ n, P18293394607803181404.a n = (A355669 (n + 1) : ℝ)

end A355669

/-!
# A355670: Numbers k such that A246600(k) < A000005(k).

The programs for A355670, there is no canonical definition to state claims against.
-/

/-! ## A355670.P5364510379232382522

`comp[C(A318516(n+1), n)]`
-/

namespace A355670.P5364510379232382522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A318516 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A355670.P5364510379232382522

/-! ## A355670.P6025590753489439546

`comp[C(A318517(n+1), n)]`
-/

namespace A355670.P6025590753489439546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A318517 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A355670.P6025590753489439546

/-! ## A355670.P3639865157945077602

`lt[A318517(abs(xor(n, -2))), n]`
-/

namespace A355670.P3639865157945077602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318517 |Int.xor (n : ℤ) (-2)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A355670.P3639865157945077602

/-! ## A355670.P4124262180036619572

`lt[0, A318518(n+1)]+1`
-/

namespace A355670.P4124262180036619572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A355670.P4124262180036619572

/-! ## A355670.P2566296275359168028

`A102554(n%a(n-1))` with `a(0)=2`
-/

namespace A355670.P2566296275359168028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A102554 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A355670.P2566296275359168028

/-! ## A355670.P2358821301577532435

`comp[A359080(n+1)-1]+1`
-/

namespace A355670.P2358821301577532435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359080 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A355670.P2358821301577532435

/-! ## A355670.P9728308328632569318

`lt[A318517(abs(1-n)+1), n]`
-/

namespace A355670.P9728308328632569318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318517 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A355670.P9728308328632569318

/-! ## A355670.P15457474831708712664

`lt[A318517(n+2), n+1]+2`
-/

namespace A355670.P15457474831708712664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318517 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A355670.P15457474831708712664

/-! ## A355670.P13915069856523521453

`comp[A102553(n+1)]+floor(acot(n)²)`
-/

namespace A355670.P13915069856523521453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102553 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A355670.P13915069856523521453

/-! ## A355670.P2477681096640343762

`lt[1, A318518(A028310(n))+1]`
-/

namespace A355670.P2477681096640343762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A355670.P2477681096640343762

/-!
# A355671: Number of labeled trees on [n] that are bicentered.

The programs for A355671, there is no canonical definition to state claims against.
-/

/-! ## A355671.P9145082990876949971

`A000272(n)-A356292(n)`
-/

namespace A355671.P9145082990876949971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n - A356292 n

end

end A355671.P9145082990876949971

/-! ## A355671.P1550909535428897737

`A028310(n)^(n-2)-A356292(n)`
-/

namespace A355671.P1550909535428897737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) ^ ((n : ℤ) - 2 : ℤ) - (A356292 n : ℚ)

end

end A355671.P1550909535428897737

/-! ## A355671.P4868212529008919592

`(A000007(n)+n)^(n-2)-A356292(n)`
-/

namespace A355671.P4868212529008919592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ) : ℚ) ^ ((n : ℤ) - 2 : ℤ) - (A356292 n : ℚ)

end

end A355671.P4868212529008919592

/-! ## A355671.P14131241015942605373

`A049323(eq[1, A049020(n)])-A356292(n)`
-/

namespace A355671.P14131241015942605373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A356292 n

end

end A355671.P14131241015942605373

/-!
# A355672: Expansion of e.g.f. exp(1/(1-x) - exp(x)).

The programs for A355672, there is no canonical definition to state claims against.
-/

/-! ## A355672.P3251691400505566902

`A054384(9*a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A355672.P3251691400505566902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A054384 (9 * a (n - 1)).toNat

end

end A355672.P3251691400505566902

/-! ## A355672.P1891631621545572449

`floor(sqrt(A062879((n-1)^n+1)))`
-/

namespace A355672.P1891631621545572449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A062879 (((n : ℤ) - 1) ^ n + 1).toNat)

end

end A355672.P1891631621545572449

/-!
# A355674: Decimal expansion of 1351/780.

The programs for A355674, the canonical program `A355674.P11227792889381826121` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355674 has offset 1).

The definition of A355674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355674.P11227792889381826121

`ogf((1+6x-3x^2+5x^3-5x^4+10x^5-10x^6+5x^7)/(1-x+x^2-x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A355674

/-- `ogf((1+6x-3x^2+5x^3-5x^4+10x^5-10x^6+5x^7)/(1-x+x^2-x^3+x^4-x^5))` -/
def P11227792889381826121.Spec : Prop :=
  ∀ n, P11227792889381826121.a n = A355674 (n + 1)

theorem P11227792889381826121.correct : P11227792889381826121.Spec := by
  intro n
  simp only [A355674, Nat.add_sub_cancel]

end A355674

/-!
# A355676: a(n) is the least k such that p(16*k+n) is odd where p is the number of partitions A000041.

The programs for A355676, there is no canonical definition to state claims against.
-/

/-! ## A355676.P638201193587516302

`A007814(A318849(2*(n+2))+A000041(n))`
-/

namespace A355676.P638201193587516302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318849 (2 * (n + 2)) + A000041 n).toNat

end

end A355676.P638201193587516302

/-! ## A355676.P15522741962591433696

`A007814(A318849(2*(n+2))+A018783(n)+A000837(n))`
-/

namespace A355676.P15522741962591433696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318849 (2 * (n + 2)) + (A018783 n + A000837 n)).toNat

end

end A355676.P15522741962591433696

/-! ## A355676.P4613044469634549257

`A007814(A318849(2*(n+2))+A039900(n)+A003106(n))`
-/

namespace A355676.P4613044469634549257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318849 (2 * (n + 2)) + (A039900 n + A003106 n)).toNat

end

end A355676.P4613044469634549257

/-! ## A355676.P3922496155626522153

`A007814(A318849(2*(n+2))+A047967(n)+A000009(n))`
-/

namespace A355676.P3922496155626522153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318849 (2 * (n + 2)) + (A047967 n + A000009 n)).toNat

end

end A355676.P3922496155626522153

/-! ## A355676.P5760044253704025179

`A007814(A318849(2*(n+2))+A167934(n)+A032741(n))`
-/

namespace A355676.P5760044253704025179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318849 (2 * (n + 2)) + (A167934 n + A032741 n)).toNat

end

end A355676.P5760044253704025179

/-!
# A355678: For any nonnegative number n with factorial base expansion Sum_{k > 0} d_k * k!, a(n) = Sum_{k > 0} d_k * k! * (-1)^(Sum_{i < k} sign(d_i)).

The programs for A355678, there is no canonical definition to state claims against.
-/

/-! ## A355678.P581257185243892192

`A194702(3*n+4)!*A355679(n)`
-/

namespace A355678.P581257185243892192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A194702 (3 * n + 4)).toNat : ℤ) * A355679 n

end

end A355678.P581257185243892192

/-! ## A355678.P6169158940612142616

`A355679(n)%A139250(A000097(n))`
-/

namespace A355678.P6169158940612142616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355679 n) (A139250 (A000097 n).toNat)

end

end A355678.P6169158940612142616

/-! ## A355678.P7860383385148331940

`A355679(n)+A010815(A032834(n+1))`
-/

namespace A355678.P7860383385148331940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355679 n + A010815 (A032834 (n + 1)).toNat

end

end A355678.P7860383385148331940

/-! ## A355678.P9200621998924704635

`A355679(n)+A000035(A121034(n+1))`
-/

namespace A355678.P9200621998924704635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355679 n + A000035 (A121034 (n + 1)).toNat

end

end A355678.P9200621998924704635

/-! ## A355678.P16199027650089772325

`A355679(n)+A019590(A358403(2*(n+1)))`
-/

namespace A355678.P16199027650089772325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355679 n + A019590 (A358403 (2 * (n + 1))).toNat

end

end A355678.P16199027650089772325

/-!
# A355681: The "coarser" of 2 representations of the Cantor middle thirds set viewed from a quarter point that lies at a(0) (the third 1 in the data).

The programs for A355681, there is no canonical definition to state claims against.
-/

/-! ## A355681.P12653584004404343538

`Δ[A316829(record[A132440(3*n+1)])]`
-/

namespace A355681.P12653584004404343538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A355681.P12653584004404343538

/-! ## A355681.P18420227963009232805

`Δ[A316829(record[A193739(3*n+2)])]`
-/

namespace A355681.P18420227963009232805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A355681.P18420227963009232805

/-! ## A355681.P7139561441587482746

`Δ[A316829(record[A025581(3*n+4)])]`
-/

namespace A355681.P7139561441587482746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A355681.P7139561441587482746

/-! ## A355681.P6333898828948640444

`A010815(A164097(n+1)-A105672(n+1))`
-/

namespace A355681.P6333898828948640444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A164097 (n + 1) - A105672 (n + 1)).toNat

end

end A355681.P6333898828948640444

/-! ## A355681.P11026083501793780137

`Δ[char[A049597(2*n+1)]]`
-/

namespace A355681.P11026083501793780137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049597 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A355681.P11026083501793780137

/-!
# A355683: Multiplicative with a(p^e) = 0 if e=1 and a(p^e)= -1 if e>1.

The programs for A355683, the canonical program `A355683.P12256357000796435793` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355683 has offset 1).

The definition of A355683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355683.P12256357000796435793

`A076479(n+1)*A112526(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A355683

/-- `A076479(n+1)*A112526(n+1)` -/
def P12256357000796435793.Spec : Prop :=
  ∀ n, P12256357000796435793.a n = A355683 (n + 1)

theorem P12256357000796435793.correct : P12256357000796435793.Spec := by
  intro n
  simp only [A355683, Nat.add_sub_cancel]

end A355683

/-! ## A355683.P3678389711226236548

`∏{e}[n+1, -1%#]`
-/

namespace A355683.P3678389711226236548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (-1) (Nat.factorization (f1 n) p : ℤ)

end

end A355683.P3678389711226236548

namespace A355683

/-- `∏{e}[n+1, -1%#]` -/
def P3678389711226236548.Spec : Prop :=
  ∀ n, P3678389711226236548.a n = A355683 (n + 1)

end A355683

/-! ## A355683.P14328974162352607422

`∏{e}[n+1, -floor(atan(#))]`
-/

namespace A355683.P14328974162352607422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-⌊Real.arctan (Nat.factorization (f1 n) p : ℝ)⌋)

end

end A355683.P14328974162352607422

namespace A355683

/-- `∏{e}[n+1, -floor(atan(#))]` -/
def P14328974162352607422.Spec : Prop :=
  ∀ n, P14328974162352607422.a n = A355683 (n + 1)

end A355683

/-! ## A355683.P6872508969125864695

`∏{e}[n+1, ceil(atan(-#))]`
-/

namespace A355683.P6872508969125864695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (-(Nat.factorization (f1 n) p : ℤ) : ℝ)⌉

end

end A355683.P6872508969125864695

namespace A355683

/-- `∏{e}[n+1, ceil(atan(-#))]` -/
def P6872508969125864695.Spec : Prop :=
  ∀ n, P6872508969125864695.a n = A355683 (n + 1)

end A355683

/-! ## A355683.P13089443053773672781

`∏{e}[n+1, floor(1/#)-1]`
-/

namespace A355683.P13089443053773672781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋ - 1)

end

end A355683.P13089443053773672781

namespace A355683

/-- `∏{e}[n+1, floor(1/#)-1]` -/
def P13089443053773672781.Spec : Prop :=
  ∀ n, P13089443053773672781.a n = A355683 (n + 1)

end A355683

/-! ## A355683.P5588855249247858692

`A008683(∏{p}[n+1, #])*char[n*∏{p}[n, #]-1]`
-/

namespace A355683.P5588855249247858692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∏ p ∈ Nat.primeFactors (f3 n), p) : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f1 n), p) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A355683.P5588855249247858692

namespace A355683

/-- `A008683(∏{p}[n+1, #])*char[n*∏{p}[n, #]-1]` -/
def P5588855249247858692.Spec : Prop :=
  ∀ n, P5588855249247858692.a n = A355683 (n + 1)

end A355683

/-! ## A355683.P2778530087580256734

`char[n*∏{p}[n, #]-1]*∏{p}[n+1, -A001221(#)]`
-/

namespace A355683.P2778530087580256734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∏ p ∈ Nat.primeFactors (f2 n), p) : ℕ) : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f3 n), (-A001221 p))

end

end A355683.P2778530087580256734

namespace A355683

/-- `char[n*∏{p}[n, #]-1]*∏{p}[n+1, -A001221(#)]` -/
def P2778530087580256734.Spec : Prop :=
  ∀ n, P2778530087580256734.a n = A355683 (n + 1)

end A355683

/-! ## A355683.P4332781890118514268

`char[n*∏{p}[n, #]-1]*∏{p}[n+1, -A001222(#)]`
-/

namespace A355683.P4332781890118514268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∏ p ∈ Nat.primeFactors (f2 n), p) : ℕ) : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f3 n), (-A001222 p))

end

end A355683.P4332781890118514268

namespace A355683

/-- `char[n*∏{p}[n, #]-1]*∏{p}[n+1, -A001222(#)]` -/
def P4332781890118514268.Spec : Prop :=
  ∀ n, P4332781890118514268.a n = A355683 (n + 1)

end A355683

/-! ## A355683.P9368554099923259933

`A091337(A073184(n+1))`
-/

namespace A355683.P9368554099923259933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A073184 (n + 1)).toNat

end

end A355683.P9368554099923259933

namespace A355683

/-- `A091337(A073184(n+1))` -/
def P9368554099923259933.Spec : Prop :=
  ∀ n, P9368554099923259933.a n = A355683 (n + 1)

end A355683

/-! ## A355683.P16009556028339277688

`A271102(A007948(n+1))`
-/

namespace A355683.P16009556028339277688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271102 (A007948 (n + 1)).toNat

end

end A355683.P16009556028339277688

namespace A355683

/-- `A271102(A007948(n+1))` -/
def P16009556028339277688.Spec : Prop :=
  ∀ n, P16009556028339277688.a n = A355683 (n + 1)

end A355683

/-! ## A355683.P13800264002510418915

`A166698(A181819(n+1))`
-/

namespace A355683.P13800264002510418915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A181819 (n + 1)).toNat

end

end A355683.P13800264002510418915

namespace A355683

/-- `A166698(A181819(n+1))` -/
def P13800264002510418915.Spec : Prop :=
  ∀ n, P13800264002510418915.a n = A355683 (n + 1)

end A355683

/-! ## A355683.P11414497912036341547

`A355684(A058035(n+1))`
-/

namespace A355683.P11414497912036341547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355684 (A058035 (n + 1)).toNat

end

end A355683.P11414497912036341547

namespace A355683

/-- `A355684(A058035(n+1))` -/
def P11414497912036341547.Spec : Prop :=
  ∀ n, P11414497912036341547.a n = A355683 (n + 1)

end A355683

/-! ## A355683.P4193455830129800254

`A091337(A383863(n+1))`
-/

namespace A355683.P4193455830129800254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A383863 (n + 1)).toNat

end

end A355683.P4193455830129800254

namespace A355683

/-- `A091337(A383863(n+1))` -/
def P4193455830129800254.Spec : Prop :=
  ∀ n, P4193455830129800254.a n = A355683 (n + 1)

end A355683

/-! ## A355683.P5213437792339404520

`A091337(A383865(n+1))`
-/

namespace A355683.P5213437792339404520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A383865 (n + 1)).toNat

end

end A355683.P5213437792339404520

namespace A355683

/-- `A091337(A383865(n+1))` -/
def P5213437792339404520.Spec : Prop :=
  ∀ n, P5213437792339404520.a n = A355683 (n + 1)

end A355683

/-! ## A355683.P9167661786503471313

`A271102(A097377(n+1)-1)`
-/

namespace A355683.P9167661786503471313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271102 (A097377 (n + 1) - 1).toNat

end

end A355683.P9167661786503471313

namespace A355683

/-- `A271102(A097377(n+1)-1)` -/
def P9167661786503471313.Spec : Prop :=
  ∀ n, P9167661786503471313.a n = A355683 (n + 1)

end A355683

/-! ## A355683.P14056020595317677822

`A162511(n+1)*A307423(n+1)`
-/

namespace A355683.P14056020595317677822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (n + 1) * A307423 (n + 1)

end

end A355683.P14056020595317677822

namespace A355683

/-- `A162511(n+1)*A307423(n+1)` -/
def P14056020595317677822.Spec : Prop :=
  ∀ n, P14056020595317677822.a n = A355683 (n + 1)

end A355683

/-! ## A355683.P16373398776266090649

`A397412(n+1)/A062953(n+1)`
-/

namespace A355683.P16373398776266090649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397412 (n + 1) : ℚ) / (A062953 (n + 1) : ℚ)

end

end A355683.P16373398776266090649

namespace A355683

/-- `A397412(n+1)/A062953(n+1)` -/
def P16373398776266090649.Spec : Prop :=
  ∀ n, P16373398776266090649.a n = (A355683 (n + 1) : ℚ)

end A355683

/-! ## A355683.P1715127641447053632

`A395496(n+1)/A173557(n+1)`
-/

namespace A355683.P1715127641447053632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395496 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A355683.P1715127641447053632

namespace A355683

/-- `A395496(n+1)/A173557(n+1)` -/
def P1715127641447053632.Spec : Prop :=
  ∀ n, P1715127641447053632.a n = (A355683 (n + 1) : ℚ)

end A355683

/-! ## A355683.P13285096581180693689

`A395496(n+1)/A322351(n+1)`
-/

namespace A355683.P13285096581180693689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395496 (n + 1) : ℚ) / (A322351 (n + 1) : ℚ)

end

end A355683.P13285096581180693689

namespace A355683

/-- `A395496(n+1)/A322351(n+1)` -/
def P13285096581180693689.Spec : Prop :=
  ∀ n, P13285096581180693689.a n = (A355683 (n + 1) : ℚ)

end A355683

/-! ## A355683.P8693883292487882012

`A008683(A007947(n+1))*A112526(n+1)`
-/

namespace A355683.P8693883292487882012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007947 (n + 1)).toNat * A112526 (n + 1)

end

end A355683.P8693883292487882012

namespace A355683

/-- `A008683(A007947(n+1))*A112526(n+1)` -/
def P8693883292487882012.Spec : Prop :=
  ∀ n, P8693883292487882012.a n = A355683 (n + 1)

end A355683

/-!
# A355684: Dirichlet inverse of A355448.

The programs for A355684, the canonical program `A355684.P3924323782954824562` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355684 has offset 1).

The definition of A355684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355684.P3924323782954824562

`∑{d}[n+1, A073184(#)*A355837((n+1)/#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A355684

/-- `∑{d}[n+1, A073184(#)*A355837((n+1)/#)]` -/
def P3924323782954824562.Spec : Prop :=
  ∀ n, P3924323782954824562.a n = A355684 (n + 1)

theorem P3924323782954824562.correct : P3924323782954824562.Spec := by
  intro n
  simp only [A355684, Nat.add_sub_cancel]

end A355684

/-! ## A355684.P16728548993703545218

`∑{d}[n+1, A219009(#)*A307425((n+1)/#)]`
-/

namespace A355684.P16728548993703545218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A219009 d * A307425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A355684.P16728548993703545218

namespace A355684

/-- `∑{d}[n+1, A219009(#)*A307425((n+1)/#)]` -/
def P16728548993703545218.Spec : Prop :=
  ∀ n, P16728548993703545218.a n = A355684 (n + 1)

end A355684

/-! ## A355684.P13847864937476652608

`A008836(A056622(n+1))*A307423(n+1)`
-/

namespace A355684.P13847864937476652608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A056622 (n + 1)).toNat * A307423 (n + 1)

end

end A355684.P13847864937476652608

namespace A355684

/-- `A008836(A056622(n+1))*A307423(n+1)` -/
def P13847864937476652608.Spec : Prop :=
  ∀ n, P13847864937476652608.a n = A355684 (n + 1)

end A355684

/-! ## A355684.P2669855768974351838

`∏{e}[A159253(n+1), A159273(#)]`
-/

namespace A355684.P2669855768974351838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A159273 (Nat.factorization (f1 n).natAbs p)

end

end A355684.P2669855768974351838

namespace A355684

/-- `∏{e}[A159253(n+1), A159273(#)]` -/
def P2669855768974351838.Spec : Prop :=
  ∀ n, P2669855768974351838.a n = A355684 (n + 1)

end A355684

/-! ## A355684.P3932367642745126077

`∏{e}[n+1, ((-1)^#)%#]*A008836((n+1)*∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A355684.P3932367642745126077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Int.tmod ((-1) ^ Nat.factorization (f1 n) p) (Nat.factorization (f1 n) p : ℤ)) * A008836 ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)))

end

end A355684.P3932367642745126077

namespace A355684

/-- `∏{e}[n+1, ((-1)^#)%#]*A008836((n+1)*∏{p}[n+1, #^val(n+1, #²)])` -/
def P3932367642745126077.Spec : Prop :=
  ∀ n, P3932367642745126077.a n = A355684 (n + 1)

end A355684

/-! ## A355684.P1728179318201241097

`A307423((n+1)*A056622(n+1))`
-/

namespace A355684.P1728179318201241097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307423 ((n + 1 : ℤ) * A056622 (n + 1)).toNat

end

end A355684.P1728179318201241097

namespace A355684

/-- `A307423((n+1)*A056622(n+1))` -/
def P1728179318201241097.Spec : Prop :=
  ∀ n, P1728179318201241097.a n = A355684 (n + 1)

end A355684

/-! ## A355684.P517742008955442682

`∏{e}[n+1, -1%#]^A001597(A323332(n+1))`
-/

namespace A355684.P517742008955442682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (-1) (Nat.factorization (f1 n) p : ℤ) : ℤ) : ℚ) ^ (A001597 (A323332 (n + 1)).toNat : ℤ)

end

end A355684.P517742008955442682

namespace A355684

/-- `∏{e}[n+1, -1%#]^A001597(A323332(n+1))` -/
def P517742008955442682.Spec : Prop :=
  ∀ n, P517742008955442682.a n = (A355684 (n + 1) : ℚ)

end A355684

/-! ## A355684.P1290408894067770171

`A355683(n+1)^∑[A355639(n+2)]`
-/

namespace A355684.P1290408894067770171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355683 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A355684.P1290408894067770171

namespace A355684

/-- `A355683(n+1)^∑[A355639(n+2)]` -/
def P1290408894067770171.Spec : Prop :=
  ∀ n, P1290408894067770171.a n = (A355684 (n + 1) : ℚ)

end A355684

/-! ## A355684.P7931723132308364878

`A355683(n+1)^A355710(A355729(n+3))`
-/

namespace A355684.P7931723132308364878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355683 (n + 1) : ℚ) ^ (A355710 (A355729 (n + 3)).toNat : ℤ)

end

end A355684.P7931723132308364878

namespace A355684

/-- `A355683(n+1)^A355710(A355729(n+3))` -/
def P7931723132308364878.Spec : Prop :=
  ∀ n, P7931723132308364878.a n = (A355684 (n + 1) : ℚ)

end A355684

/-! ## A355684.P17433499746270887626

`A210826(A227324(n+1))`
-/

namespace A355684.P17433499746270887626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210826 (A227324 (n + 1)).toNat

end

end A355684.P17433499746270887626

namespace A355684

/-- `A210826(A227324(n+1))` -/
def P17433499746270887626.Spec : Prop :=
  ∀ n, P17433499746270887626.a n = A355684 (n + 1)

end A355684

/-!
# A355685: Dirichlet inverse of A353380.

The programs for A355685, there is no canonical definition to state claims against.
-/

/-! ## A355685.P995851975007262836

`A056594(A163551(n+1)*A324117(n+1))`
-/

namespace A355685.P995851975007262836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A163551 (n + 1) * A324117 (n + 1)).toNat

end

end A355685.P995851975007262836

/-! ## A355685.P15021295223946268890

`A056594(A324117(n+1))+A055615(A279352(2*n+5))`
-/

namespace A355685.P15021295223946268890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A324117 (n + 1)).toNat + A055615 (A279352 (2 * n + 5)).toNat

end

end A355685.P15021295223946268890

/-! ## A355685.P11630064145841015646

`A056594(A324117(n+1)+A033579(2*n+3))`
-/

namespace A355685.P11630064145841015646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A324117 (n + 1) + A033579 (2 * n + 3)).toNat

end

end A355685.P11630064145841015646

/-! ## A355685.P11227621072291560751

`A361017(A276044(n+1))`
-/

namespace A355685.P11227621072291560751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361017 (A276044 (n + 1)).toNat

end

end A355685.P11227621072291560751

/-! ## A355685.P12047164957335846851

`A187097(∑{e}[n+1, #]^A113061(3*n+5))`
-/

namespace A355685.P12047164957335846851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187097 (SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) ^ (A113061 (3 * n + 5) : ℤ))).toNat

end

end A355685.P12047164957335846851

/-!
# A355686: Dirichlet inverse of A276150, where A276150(n) is the sum of digits when n is written in primorial base.

The programs for A355686, there is no canonical definition to state claims against.
-/

/-! ## A355686.P17455406542987309999

`A355687(n+1)-A276150(n+1)`
-/

namespace A355686.P17455406542987309999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355687 (n + 1) - A276150 (n + 1)

end

end A355686.P17455406542987309999

/-! ## A355686.P2578160971258304761

`A319713(n+1)+A355687(n+1)-A319715(n+1)`
-/

namespace A355686.P2578160971258304761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319713 (n + 1) + (A355687 (n + 1) - A319715 (n + 1))

end

end A355686.P2578160971258304761

/-! ## A355686.P12985571367268989246

`A194548(2^A319340(n+1))-A276150(n+1)`
-/

namespace A355686.P12985571367268989246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194548 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319340 (n + 1) : ℤ))).toNat - A276150 (n + 1)

end

end A355686.P12985571367268989246

/-!
# A355687: Sum of A276150 and its Dirichlet inverse.

The programs for A355687, there is no canonical definition to state claims against.
-/

/-! ## A355687.P11993513321886483822

`A276150(n+1)+A355686(n+1)`
-/

namespace A355687.P11993513321886483822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (n + 1) + A355686 (n + 1)

end

end A355687.P11993513321886483822

/-! ## A355687.P10014568189703615389

`A319715(n+1)+A355686(n+1)-A319713(n+1)`
-/

namespace A355687.P10014568189703615389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319715 (n + 1) + (A355686 (n + 1) - A319713 (n + 1))

end

end A355687.P10014568189703615389

/-! ## A355687.P5325442896135188491

`A194548(2^A319340(n+1))`
-/

namespace A355687.P5325442896135188491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194548 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319340 (n + 1) : ℤ))).toNat

end

end A355687.P5325442896135188491

/-! ## A355687.P737017314529483385

`A005811(A001405(n)*A349126(n+1))`
-/

namespace A355687.P737017314529483385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A001405 n * A349126 (n + 1)).toNat

end

end A355687.P737017314529483385

/-! ## A355687.P6732757527029216939

`A023584(A083329(n))*A349386(n+1)`
-/

namespace A355687.P6732757527029216939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023584 (A083329 n).toNat * A349386 (n + 1)

end

end A355687.P6732757527029216939

/-!
# A355688: Dirichlet inverse of A354354, characteristic function of numbers that are neither multiples of 2 nor 3.

The programs for A355688, the canonical program `A355688.P6172224618113405885` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355688 has offset 1).

The definition of A355688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355688.P6172224618113405885

`A008683(n+1)*A354354(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A355688

/-- `A008683(n+1)*A354354(n+1)` -/
def P6172224618113405885.Spec : Prop :=
  ∀ n, P6172224618113405885.a n = A355688 (n + 1)

theorem P6172224618113405885.correct : P6172224618113405885.Spec := by
  intro n
  simp only [A355688, Nat.add_sub_cancel]

end A355688

/-! ## A355688.P7835870594556918185

`∏{e}[n+1, -floor(1/#)]%gcd(4, n)*∑[1-n%3]`
-/

namespace A355688.P7835870594556918185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)) (Nat.gcd 4 n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A355688.P7835870594556918185

namespace A355688

/-- `∏{e}[n+1, -floor(1/#)]%gcd(4, n)*∑[1-n%3]` -/
def P7835870594556918185.Spec : Prop :=
  ∀ n, P7835870594556918185.a n = A355688 (n + 1)

end A355688

/-! ## A355688.P6131584367694994637

`(n+1)%2*(C(∏{p}[n+1, #], n)*∏{p}[n+1, -#])%3`
-/

namespace A355688.P6131584367694994637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * Int.tmod ((Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) n : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)))) 3

end

end A355688.P6131584367694994637

namespace A355688

/-- `(n+1)%2*(C(∏{p}[n+1, #], n)*∏{p}[n+1, -#])%3` -/
def P6131584367694994637.Spec : Prop :=
  ∀ n, P6131584367694994637.a n = A355688 (n + 1)

end A355688

/-! ## A355688.P17161301771988782941

`((n+1)*round(1/∏{e}[n+1, -#²]))%2*char[floor(3*n/2)]`
-/

namespace A355688.P17161301771988782941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ))) 2 * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A355688.P17161301771988782941

namespace A355688

/-- `((n+1)*round(1/∏{e}[n+1, -#²]))%2*char[floor(3*n/2)]` -/
def P17161301771988782941.Spec : Prop :=
  ∀ n, P17161301771988782941.a n = A355688 (n + 1)

end A355688

/-! ## A355688.P17886969770127151254

`A008683(6*(1+n))`
-/

namespace A355688.P17886969770127151254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (6 * (1 + n))

end

end A355688.P17886969770127151254

namespace A355688

/-- `A008683(6*(1+n))` -/
def P17886969770127151254.Spec : Prop :=
  ∀ n, P17886969770127151254.a n = A355688 (n + 1)

end A355688

/-! ## A355688.P3554588544041009988

`-A156277(2*(n+1))`
-/

namespace A355688.P3554588544041009988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A156277 (2 * (n + 1))

end

end A355688.P3554588544041009988

namespace A355688

/-- `-A156277(2*(n+1))` -/
def P3554588544041009988.Spec : Prop :=
  ∀ n, P3554588544041009988.a n = A355688 (n + 1)

end A355688

/-! ## A355688.P6103494543376577704

`-(A349125(2*(n+1))%2)`
-/

namespace A355688.P6103494543376577704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A349125 (2 * (n + 1))) 2

end

end A355688.P6103494543376577704

namespace A355688

/-- `-(A349125(2*(n+1))%2)` -/
def P6103494543376577704.Spec : Prop :=
  ∀ n, P6103494543376577704.a n = A355688 (n + 1)

end A355688

/-! ## A355688.P9168079002941152289

`log2(gcd(2, n))*A359422(n+1)`
-/

namespace A355688.P9168079002941152289
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A359422 (n + 1) : ℝ)

end

end A355688.P9168079002941152289

namespace A355688

/-- `log2(gcd(2, n))*A359422(n+1)` -/
def P9168079002941152289.Spec : Prop :=
  ∀ n, P9168079002941152289.a n = (A355688 (n + 1) : ℝ)

end A355688

/-! ## A355688.P16406258993021703015

`-A008683(∑[Δ[lcm(2, n)]+1])`
-/

namespace A355688.P16406258993021703015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355688.P16406258993021703015

namespace A355688

/-- `-A008683(∑[Δ[lcm(2, n)]+1])` -/
def P16406258993021703015.Spec : Prop :=
  ∀ n, P16406258993021703015.a n = A355688 (n + 1)

end A355688

/-! ## A355688.P17516486944857420073

`A156277(A165998(n))`
-/

namespace A355688.P17516486944857420073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (A165998 n).toNat

end

end A355688.P17516486944857420073

namespace A355688

/-- `A156277(A165998(n))` -/
def P17516486944857420073.Spec : Prop :=
  ∀ n, P17516486944857420073.a n = A355688 (n + 1)

end A355688

/-! ## A355688.P2989797762585261611

`A156277(A294178(n))`
-/

namespace A355688.P2989797762585261611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (A294178 n).toNat

end

end A355688.P2989797762585261611

namespace A355688

/-- `A156277(A294178(n))` -/
def P2989797762585261611.Spec : Prop :=
  ∀ n, P2989797762585261611.a n = A355688 (n + 1)

end A355688

/-! ## A355688.P16022767775964856662

`A359422(A141310(n))`
-/

namespace A355688.P16022767775964856662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359422 (A141310 n).toNat

end

end A355688.P16022767775964856662

namespace A355688

/-- `A359422(A141310(n))` -/
def P16022767775964856662.Spec : Prop :=
  ∀ n, P16022767775964856662.a n = A355688 (n + 1)

end A355688

/-! ## A355688.P1418117191893265206

`A087003(A079707(n+1))`
-/

namespace A355688.P1418117191893265206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A079707 (n + 1)).toNat

end

end A355688.P1418117191893265206

namespace A355688

/-- `A087003(A079707(n+1))` -/
def P1418117191893265206.Spec : Prop :=
  ∀ n, P1418117191893265206.a n = A355688 (n + 1)

end A355688

/-! ## A355688.P14583580750177196760

`A156277(A022998(n+1))`
-/

namespace A355688.P14583580750177196760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (A022998 (n + 1)).toNat

end

end A355688.P14583580750177196760

namespace A355688

/-- `A156277(A022998(n+1))` -/
def P14583580750177196760.Spec : Prop :=
  ∀ n, P14583580750177196760.a n = A355688 (n + 1)

end A355688

/-! ## A355688.P8954297499501556052

`A156277(A080512(n+1))`
-/

namespace A355688.P8954297499501556052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (A080512 (n + 1)).toNat

end

end A355688.P8954297499501556052

namespace A355688

/-- `A156277(A080512(n+1))` -/
def P8954297499501556052.Spec : Prop :=
  ∀ n, P8954297499501556052.a n = A355688 (n + 1)

end A355688

/-! ## A355688.P16740299560652260010

`-A008683(A106833(n+1))`
-/

namespace A355688.P16740299560652260010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (A106833 (n + 1)).toNat

end

end A355688.P16740299560652260010

namespace A355688

/-- `-A008683(A106833(n+1))` -/
def P16740299560652260010.Spec : Prop :=
  ∀ n, P16740299560652260010.a n = A355688 (n + 1)

end A355688

/-! ## A355688.P12465389817785259786

`-A008683(A298028(n+1))`
-/

namespace A355688.P12465389817785259786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (A298028 (n + 1)).toNat

end

end A355688.P12465389817785259786

namespace A355688

/-- `-A008683(A298028(n+1))` -/
def P12465389817785259786.Spec : Prop :=
  ∀ n, P12465389817785259786.a n = A355688 (n + 1)

end A355688

/-! ## A355688.P10593824357919959273

`A087003(n+1)*A115953(n)`
-/

namespace A355688.P10593824357919959273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (n + 1) * A115953 n

end

end A355688.P10593824357919959273

namespace A355688

/-- `A087003(n+1)*A115953(n)` -/
def P10593824357919959273.Spec : Prop :=
  ∀ n, P10593824357919959273.a n = A355688 (n + 1)

end A355688

/-! ## A355688.P17292389684096508066

`A059841(n)*A156277(n+1)`
-/

namespace A355688.P17292389684096508066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A156277 (n + 1)

end

end A355688.P17292389684096508066

namespace A355688

/-- `A059841(n)*A156277(n+1)` -/
def P17292389684096508066.Spec : Prop :=
  ∀ n, P17292389684096508066.a n = A355688 (n + 1)

end A355688

/-! ## A355688.P10802553844670991024

`A117188(n)*A156277(n+1)`
-/

namespace A355688.P10802553844670991024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117188 n * A156277 (n + 1)

end

end A355688.P10802553844670991024

namespace A355688

/-- `A117188(n)*A156277(n+1)` -/
def P10802553844670991024.Spec : Prop :=
  ∀ n, P10802553844670991024.a n = A355688 (n + 1)

end A355688

/-!
# A355689: Dirichlet inverse of A166486, characteristic function of numbers that are not multiples of 4.

The programs for A355689, the canonical program `A355689.P15683903993202269668` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355689 has offset 1).

The definition of A355689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355689.P15683903993202269668

`A359156(n+1)-A359158(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A355689

/-- `A359156(n+1)-A359158(n+1)` -/
def P15683903993202269668.Spec : Prop :=
  ∀ n, P15683903993202269668.a n = A355689 (n + 1)

theorem P15683903993202269668.correct : P15683903993202269668.Spec := by
  intro n
  simp only [A355689, Nat.add_sub_cancel]

end A355689

/-! ## A355689.P7000718931441314833

`round(∏{e}[n+1, (-2)^#/2]/∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A355689.P7000718931441314833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∏ p ∈ Nat.primeFactors (f1 n), ((-2) ^ Nat.factorization (f1 n) p : ℚ) / 2) / (((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℚ))

end

end A355689.P7000718931441314833

namespace A355689

/-- `round(∏{e}[n+1, (-2)^#/2]/∏{p}[n+1, #^val(n+1, #²)]²)` -/
def P7000718931441314833.Spec : Prop :=
  ∀ n, P7000718931441314833.a n = A355689 (n + 1)

end A355689

/-! ## A355689.P18325941969740887073

`round(∏{e}[n+1, (-2)^#/2]/gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))`
-/

namespace A355689.P18325941969740887073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∏ p ∈ Nat.primeFactors (f1 n), ((-2) ^ Nat.factorization (f1 n) p : ℚ) / 2) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f2 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)) : ℚ))

end

end A355689.P18325941969740887073

namespace A355689

/-- `round(∏{e}[n+1, (-2)^#/2]/gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))` -/
def P18325941969740887073.Spec : Prop :=
  ∀ n, P18325941969740887073.a n = A355689 (n + 1)

end A355689

/-! ## A355689.P15383582260004329850

`((n+1)*round(1/∏{e}[n+1, -#²]))%2-a(floor(n/2))*n%2` with `a(0)=1`
-/

namespace A355689.P15383582260004329850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((n + 1 : ℤ) * SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ))) 2 - a ⌊(n : ℚ) / 2⌋.toNat * ((n % 2 : ℕ) : ℤ)

end

end A355689.P15383582260004329850

namespace A355689

/-- `((n+1)*round(1/∏{e}[n+1, -#²]))%2-a(floor(n/2))*n%2` -/
def P15383582260004329850.Spec : Prop :=
  ∀ n, P15383582260004329850.a n = A355689 (n + 1)

end A355689

/-! ## A355689.P9372570753427400106

`A008683((n+1)/4^val(n+1, 4))`
-/

namespace A355689.P9372570753427400106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))).toNat

end

end A355689.P9372570753427400106

namespace A355689

/-- `A008683((n+1)/4^val(n+1, 4))` -/
def P9372570753427400106.Spec : Prop :=
  ∀ n, P9372570753427400106.a n = A355689 (n + 1)

end A355689

/-! ## A355689.P17161238917691732273

`A359833((n+1)/4^val(n+1, 4))`
-/

namespace A355689.P17161238917691732273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))).toNat

end

end A355689.P17161238917691732273

namespace A355689

/-- `A359833((n+1)/4^val(n+1, 4))` -/
def P17161238917691732273.Spec : Prop :=
  ∀ n, P17161238917691732273.a n = A355689 (n + 1)

end A355689

/-! ## A355689.P7033018525145149891

`(-1)^∑{e}[n+1, #]*A353627(n+1)`
-/

namespace A355689.P7033018525145149891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A353627 (n + 1)

end

end A355689.P7033018525145149891

namespace A355689

/-- `(-1)^∑{e}[n+1, #]*A353627(n+1)` -/
def P7033018525145149891.Spec : Prop :=
  ∀ n, P7033018525145149891.a n = A355689 (n + 1)

end A355689

/-! ## A355689.P8142760818287635105

`(-1)^∑{e}[n+1, #]*A008966((n+1)/2^val(n+1, 2))`
-/

namespace A355689.P8142760818287635105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A355689.P8142760818287635105

namespace A355689

/-- `(-1)^∑{e}[n+1, #]*A008966((n+1)/2^val(n+1, 2))` -/
def P8142760818287635105.Spec : Prop :=
  ∀ n, P8142760818287635105.a n = A355689 (n + 1)

end A355689

/-! ## A355689.P1760880543711184829

`A353627((n+1)/2^val(n+1, 2))/(-1)^∑{e}[n+1, #]`
-/

namespace A355689.P1760880543711184829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353627 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ) / ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ)

end

end A355689.P1760880543711184829

namespace A355689

/-- `A353627((n+1)/2^val(n+1, 2))/(-1)^∑{e}[n+1, #]` -/
def P1760880543711184829.Spec : Prop :=
  ∀ n, P1760880543711184829.a n = (A355689 (n + 1) : ℚ)

end A355689

/-! ## A355689.P14958421774021740768

`A008683(A065883(n+1))`
-/

namespace A355689.P14958421774021740768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A065883 (n + 1)).toNat

end

end A355689.P14958421774021740768

namespace A355689

/-- `A008683(A065883(n+1))` -/
def P14958421774021740768.Spec : Prop :=
  ∀ n, P14958421774021740768.a n = A355689 (n + 1)

end A355689

/-! ## A355689.P7211853645479671917

`A008836(n+1)*A353627(n+1)`
-/

namespace A355689.P7211853645479671917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A353627 (n + 1)

end

end A355689.P7211853645479671917

namespace A355689

/-- `A008836(n+1)*A353627(n+1)` -/
def P7211853645479671917.Spec : Prop :=
  ∀ n, P7211853645479671917.a n = A355689 (n + 1)

end A355689

/-! ## A355689.P5085555012887291426

`A209635(n+1)*A309873(n+1)`
-/

namespace A355689.P5085555012887291426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (n + 1) * A309873 (n + 1)

end

end A355689.P5085555012887291426

namespace A355689

/-- `A209635(n+1)*A309873(n+1)` -/
def P5085555012887291426.Spec : Prop :=
  ∀ n, P5085555012887291426.a n = A355689 (n + 1)

end A355689

/-! ## A355689.P16146887575630003177

`A353627(n+1)*A359551(n+1)`
-/

namespace A355689.P16146887575630003177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n + 1) * A359551 (n + 1)

end

end A355689.P16146887575630003177

namespace A355689

/-- `A353627(n+1)*A359551(n+1)` -/
def P16146887575630003177.Spec : Prop :=
  ∀ n, P16146887575630003177.a n = A355689 (n + 1)

end A355689

/-! ## A355689.P12994202961702599281

`2*A359156(n+1)-A353627(n+1)`
-/

namespace A355689.P12994202961702599281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359156 (n + 1) - A353627 (n + 1)

end

end A355689.P12994202961702599281

namespace A355689

/-- `2*A359156(n+1)-A353627(n+1)` -/
def P12994202961702599281.Spec : Prop :=
  ∀ n, P12994202961702599281.a n = A355689 (n + 1)

theorem P12994202961702599281.correct : P12994202961702599281.Spec := by
  intro n
  simp only [A355689, Nat.add_sub_cancel, A355689.P12994202961702599281.a, A355689.P15683903993202269668.a, A353627, A353627.P16518077331837195055.a, A359156, A359156.P3267023376151009926.a, A359158, A359158.P14804396004552753222.a, A065043, A065043.P15027714353296076488.a, A209635, A209635.P16478505308631433079.a, A000265, A000265.P16482698636471710744.a, A007421, A007421.P6096517627125049268.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355689

/-! ## A355689.P10103524832827277690

`A353627(n+1)-2*A359158(n+1)`
-/

namespace A355689.P10103524832827277690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n + 1) - 2 * A359158 (n + 1)

end

end A355689.P10103524832827277690

namespace A355689

/-- `A353627(n+1)-2*A359158(n+1)` -/
def P10103524832827277690.Spec : Prop :=
  ∀ n, P10103524832827277690.a n = A355689 (n + 1)

theorem P10103524832827277690.correct : P10103524832827277690.Spec := by
  intro n
  simp only [A355689, Nat.add_sub_cancel, A355689.P10103524832827277690.a, A355689.P15683903993202269668.a, A353627, A353627.P16518077331837195055.a, A359156, A359156.P3267023376151009926.a, A359158, A359158.P14804396004552753222.a, A065043, A065043.P15027714353296076488.a, A209635, A209635.P16478505308631433079.a, A000265, A000265.P16482698636471710744.a, A007421, A007421.P6096517627125049268.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355689

/-! ## A355689.P3734256612359472898

`A359156(n+1)-A359156(2*(n+1))`
-/

namespace A355689.P3734256612359472898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359156 (n + 1) - A359156 (2 * (n + 1))

end

end A355689.P3734256612359472898

namespace A355689

/-- `A359156(n+1)-A359156(2*(n+1))` -/
def P3734256612359472898.Spec : Prop :=
  ∀ n, P3734256612359472898.a n = A355689 (n + 1)

end A355689

/-! ## A355689.P9788450031124394979

`A359158(2*(n+1))-A359158(n+1)`
-/

namespace A355689.P9788450031124394979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359158 (2 * (n + 1)) - A359158 (n + 1)

end

end A355689.P9788450031124394979

namespace A355689

/-- `A359158(2*(n+1))-A359158(n+1)` -/
def P9788450031124394979.Spec : Prop :=
  ∀ n, P9788450031124394979.a n = A355689 (n + 1)

end A355689

/-! ## A355689.P8013353683060037030

`∑{d}[n+1, A087003(#)*A154269((n+1)/#)]`
-/

namespace A355689.P8013353683060037030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A355689.P8013353683060037030

namespace A355689

/-- `∑{d}[n+1, A087003(#)*A154269((n+1)/#)]` -/
def P8013353683060037030.Spec : Prop :=
  ∀ n, P8013353683060037030.a n = A355689 (n + 1)

end A355689

/-! ## A355689.P2960247347129864485

`∑{d}[n+1, A035263(#)*A327276((n+1)/#)]`
-/

namespace A355689.P2960247347129864485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A355689.P2960247347129864485

namespace A355689

/-- `∑{d}[n+1, A035263(#)*A327276((n+1)/#)]` -/
def P2960247347129864485.Spec : Prop :=
  ∀ n, P2960247347129864485.a n = A355689 (n + 1)

end A355689

/-! ## A355689.P17806341254508272789

`∑{d}[n+1, A046692(#)*A373188((n+1)/#)]`
-/

namespace A355689.P17806341254508272789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A373188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A355689.P17806341254508272789

namespace A355689

/-- `∑{d}[n+1, A046692(#)*A373188((n+1)/#)]` -/
def P17806341254508272789.Spec : Prop :=
  ∀ n, P17806341254508272789.a n = A355689 (n + 1)

end A355689

/-!
# A355690: Dirichlet inverse of A152822, where A152822 is the characteristic function of numbers not congruent to 2 mod 4.

The programs for A355690, there is no canonical definition to state claims against.
-/

/-! ## A355690.P8462008224213872551

`A359605(n+1)-A359606(n+1)`
-/

namespace A355690.P8462008224213872551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359605 (n + 1) - A359606 (n + 1)

end

end A355690.P8462008224213872551

/-! ## A355690.P8940382593630158093

`∑{d}[1+n, A355691(#)]`
-/

namespace A355690.P8940382593630158093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A355691 d

end

end A355690.P8940382593630158093

/-! ## A355690.P6941506343968160455

`2*A359605(n+1)-A359590(n+1)`
-/

namespace A355690.P6941506343968160455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359605 (n + 1) - A359590 (n + 1)

end

end A355690.P6941506343968160455

/-! ## A355690.P11263679583035203814

`A359590(n+1)-2*A359606(n+1)`
-/

namespace A355690.P11263679583035203814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359590 (n + 1) - 2 * A359606 (n + 1)

end

end A355690.P11263679583035203814

/-! ## A355690.P16458823739481210824

`2*A359605(n+1)-A359834(4*(n+1))`
-/

namespace A355690.P16458823739481210824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359605 (n + 1) - A359834 (4 * (n + 1))

end

end A355690.P16458823739481210824

/-! ## A355690.P6544988307890799687

`2*A359605(n+1)-A359604(n+1)%2`
-/

namespace A355690.P6544988307890799687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359605 (n + 1) - Int.tmod (A359604 (n + 1)) 2

end

end A355690.P6544988307890799687

/-! ## A355690.P1898504475457189694

`A359605(n+1)-A359605(8*(n+1))`
-/

namespace A355690.P1898504475457189694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359605 (n + 1) - A359605 (8 * (n + 1))

end

end A355690.P1898504475457189694

/-! ## A355690.P15507364320995629866

`A359606(8*(n+1))-A359606(n+1)`
-/

namespace A355690.P15507364320995629866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359606 (8 * (n + 1)) - A359606 (n + 1)

end

end A355690.P15507364320995629866

/-! ## A355690.P5746030920041553420

`A359422(A319525(n+1))`
-/

namespace A355690.P5746030920041553420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359422 (A319525 (n + 1)).toNat

end

end A355690.P5746030920041553420

/-! ## A355690.P16043687928987340717

`A359422(A357983(n+1))`
-/

namespace A355690.P16043687928987340717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359422 (A357983 (n + 1)).toNat

end

end A355690.P16043687928987340717

/-!
# A355691: Dirichlet inverse of A320111, number of divisors of n that are not of the form 4k+2.

The programs for A355691, there is no canonical definition to state claims against.
-/

/-! ## A355691.P815162313092201745

`∑{d}[n+1, A008683(#)*A355690((n+1)/#)]`
-/

namespace A355691.P815162313092201745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A355690 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A355691.P815162313092201745

/-! ## A355691.P7266662148226726287

`∏{e}[n+1, (-C(2, #))^#]/A182533(A002586(n+1))`
-/

namespace A355691.P7266662148226726287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p : ℤ) : ℚ) / (A182533 (A002586 (n + 1)).toNat : ℚ)

end

end A355691.P7266662148226726287

/-!
# A355693: Dirichlet inverse of A330749, gcd(n, A064989(n)), where A064989 shifts the prime factorization one step towards lower primes.

The programs for A355693, there is no canonical definition to state claims against.
-/

/-! ## A355693.P9426724359600683689

`A363552(A389108(n+1))`
-/

namespace A355693.P9426724359600683689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363552 (A389108 (n + 1)).toNat

end

end A355693.P9426724359600683689

/-! ## A355693.P2115203315327361635

`A008683(gcd(A011371(n+2), A355544(n+1))+n)`
-/

namespace A355693.P2115203315327361635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.gcd (A011371 (n + 2)) (A355544 (n + 1)) + n)

end

end A355693.P2115203315327361635

/-! ## A355693.P2602049066870544552

`A316441(or(A011782(n+1), A131065(3*n+1)))`
-/

namespace A355693.P2602049066870544552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (Int.lor (A011782 (n + 1)) (A131065 (3 * n + 1))).toNat

end

end A355693.P2602049066870544552

/-! ## A355693.P3236920710160032843

`or(A342753(A088587(n+1)), A355690(3*n+1))`
-/

namespace A355693.P3236920710160032843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A342753 (A088587 (n + 1)).toNat) (A355690 (3 * n + 1))

end

end A355693.P3236920710160032843

/-! ## A355693.P10770215466080034804

`A330025(A060092(n+2)+n)`
-/

namespace A355693.P10770215466080034804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A060092 (n + 2) + (n : ℤ)).toNat

end

end A355693.P10770215466080034804

/-!
# A355697: a(0) = 0, a(1) = 1; for n > 1, a(n) = a(n-1) + g - 1 if a(n-1) is prime, otherwise a(n) = a(n-1) + g + 1, where g = a(n-1) - a(n-2).

The programs for A355697, there is no canonical definition to state claims against.
-/

/-! ## A355697.P4735496770330735032

`∑[∑[A108784(A331784(3*n+5))]]-(n+1)`
-/

namespace A355697.P4735496770330735032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108784 (A331784 (3 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A355697.P4735496770330735032

/-! ## A355697.P2380359810881571082

`record[n²-∑[A037460(n)]]`
-/

namespace A355697.P2380359810881571082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355697.P2380359810881571082

/-! ## A355697.P16108788135103552799

`A351870(∑[ceil(or(2, n-1)/2)])`
-/

namespace A355697.P16108788135103552799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 2 ((n : ℤ) - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355697.P16108788135103552799

/-! ## A355697.P16058660959736915278

`∑[ceil(or(2, n-1)/2)]%A123105(n)`
-/

namespace A355697.P16058660959736915278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 2 ((n : ℤ) - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A123105 (n + 31))

end

end A355697.P16058660959736915278

/-! ## A355697.P1073344642260004557

`∑[ceil(or(2, n-1)/2)%A020994(n+1)]`
-/

namespace A355697.P1073344642260004557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(Int.lor 2 ((n : ℤ) - 1) : ℚ) / 2⌉ (A020994 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355697.P1073344642260004557

/-!
# A355698: a(n) is the number of repdigits divisors of n (A010785).

The programs for A355698, there is no canonical definition to state claims against.
-/

/-! ## A355698.P9979733542135651305

`∑{d}[n+1, A202022(#)]`
-/

namespace A355698.P9979733542135651305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A202022 d

end

end A355698.P9979733542135651305

