import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B009.C001
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
# A365500: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest positive number that has not yet appeared whose string value contains all the distinct prime factors of a(n-1). Overlapping factor strings is allowed.

The programs for A365500, there is no canonical definition to state claims against.
-/

/-! ## A365500.P9005432679732353279

`∑[A176998(n!)]`
-/

namespace A365500.P9005432679732353279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176998 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365500.P9005432679732353279

/-!
# A365501: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest positive number that has not yet appeared whose binary string value contains all the binary distinct prime factors of a(n-1). Overlapping factor strings is allowed.

The programs for A365501, there is no canonical definition to state claims against.
-/

/-! ## A365501.P4980393264170924564

`A083416(n+1)%A261906(A131098(2*n+3))`
-/

namespace A365501.P4980393264170924564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083416 (n + 1)) (A261906 (A131098 (2 * n + 3)).toNat)

end

end A365501.P4980393264170924564

/-!
# A365503: In the Collatz (3x+1) problem, number of odd iterates before reaching 1 corresponding to the starting points given by A248037.

The programs for A365503, there is no canonical definition to state claims against.
-/

/-! ## A365503.P17215149690366430358

`xor(A238690(A002110(n)), A287645(n+1))`
-/

namespace A365503.P17215149690366430358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A238690 (A002110 n).toNat) (A287645 (n + 1))

end

end A365503.P17215149690366430358

/-! ## A365503.P13674314675569175612

`A332742(A324703(n+1))+A061395(n+1)`
-/

namespace A365503.P13674314675569175612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332742 (A324703 (n + 1)).toNat + A061395 (n + 1)

end

end A365503.P13674314675569175612

/-!
# A365506: a(n) is the smallest perfect power that can be represented as the sum of n distinct perfect powers in exactly n ways, or -1 if no such number exists.

The programs for A365506, there is no canonical definition to state claims against.
-/

/-! ## A365506.P12197934546324013886

`A075079(A368358(n))`
-/

namespace A365506.P12197934546324013886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075079 (A368358 n).toNat

end

end A365506.P12197934546324013886

/-!
# A365508: Number of n-vertex binary trees that do not contain 0[0(0[0(00)])] as a subtree.

The programs for A365508, there is no canonical definition to state claims against.
-/

/-! ## A365508.P1537647304499403596

`A024175(n)+A004526(A025192(n))`
-/

namespace A365508.P1537647304499403596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 n + A004526 (A025192 n).toNat

end

end A365508.P1537647304499403596

/-! ## A365508.P3499087412616149312

`A176677(A365822(n+2))`
-/

namespace A365508.P3499087412616149312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176677 (A365822 (n + 2)).toNat

end

end A365508.P3499087412616149312

/-! ## A365508.P1794706195068250792

`A176677(A032559(n+3)-1)`
-/

namespace A365508.P1794706195068250792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176677 (A032559 (n + 3) - 1).toNat

end

end A365508.P1794706195068250792

/-!
# A365509: Number of n-vertex binary trees that do not contain 0(0[0(0(00))]) as a subtree.

The programs for A365509, there is no canonical definition to state claims against.
-/

/-! ## A365509.P12617583708697500120

`A004525(A033538(n))+xor(1, A111954(n))`
-/

namespace A365509.P12617583708697500120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A033538 n).toNat + Int.xor 1 (A111954 n)

end

end A365509.P12617583708697500120

/-! ## A365509.P15358632713056302987

`A176742(A325476(n))+A108626(n)`
-/

namespace A365509.P15358632713056302987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176742 (A325476 n).toNat + A108626 n

end

end A365509.P15358632713056302987

/-! ## A365509.P13130792207251721786

`A366128(A366149(n))+A108626(n)`
-/

namespace A365509.P13130792207251721786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366128 (A366149 n).toNat + A108626 n

end

end A365509.P13130792207251721786

/-! ## A365509.P8745398237262290742

`or(A108626(n), A362425(A164162(n)))`
-/

namespace A365509.P8745398237262290742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108626 n) (A362425 (A164162 n).toNat)

end

end A365509.P8745398237262290742

/-!
# A365510: Number of n-vertex binary trees that do not contain 0((00)[0(00)]) as a subtree.

The programs for A365510, there is no canonical definition to state claims against.
-/

/-! ## A365510.P4022003451846422991

`A120010(n+1)+Δ[A120010(n+2)]`
-/

namespace A365510.P4022003451846422991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120010 (n + 1) + (f1 (n + 1) - f1 n)

end

end A365510.P4022003451846422991

/-! ## A365510.P18321467165423000093

`A226233(A296829(n+1))`
-/

namespace A365510.P18321467165423000093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226233 (A296829 (n + 1)).toNat

end

end A365510.P18321467165423000093

/-! ## A365510.P18041117674840004219

`A111277(n)+record[A086427(n)]`
-/

namespace A365510.P18041117674840004219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111277 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365510.P18041117674840004219

/-!
# A365511: Number of ways to travel from (0,0,0) to (2*n,2*n,2*n) with n positive integer steps in each direction, changing directions at each step.

The programs for A365511, there is no canonical definition to state claims against.
-/

/-! ## A365511.P831672977553323829

`A088218(n)^3*A110706(n)`
-/

namespace A365511.P831672977553323829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n ^ 3 * A110706 n

end

end A365511.P831672977553323829

/-!
# A365515: Table read by antidiagonals upward: the n-th row gives the lexicographically earliest infinite B_n sequence starting from 0.

The programs for A365515, there is no canonical definition to state claims against.
-/

/-! ## A365515.P14179814096433138760

`A347570(n+1)-1`
-/

namespace A365515.P14179814096433138760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347570 (n + 1) - 1

end

end A365515.P14179814096433138760

/-! ## A365515.P11779205260216869509

`A099837(3*n+4)+A347570(n+1)`
-/

namespace A365515.P11779205260216869509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (3 * n + 4) + A347570 (n + 1)

end

end A365515.P11779205260216869509

/-! ## A365515.P999138154335980638

`A355689(A163385(n+1))+A347570(n+1)`
-/

namespace A365515.P999138154335980638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (A163385 (n + 1)).toNat + A347570 (n + 1)

end

end A365515.P999138154335980638

/-! ## A365515.P13170988968027848214

`A376604(A014963(2*(n+2)))+A347570(n+1)`
-/

namespace A365515.P13170988968027848214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376604 (A014963 (2 * (n + 2))).toNat + A347570 (n + 1)

end

end A365515.P13170988968027848214

/-! ## A365515.P1170107677947323667

`A369134(A069523(3*(n+1)))+A347570(n+1)`
-/

namespace A365515.P1170107677947323667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369134 (A069523 (3 * (n + 1))).toNat + A347570 (n + 1)

end

end A365515.P1170107677947323667

/-! ## A365515.P18018774181467320479

`A023443(A347570(n+1))`
-/

namespace A365515.P18018774181467320479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A347570 (n + 1)).toNat

end

end A365515.P18018774181467320479

/-! ## A365515.P12444569745790481054

`A065423(2*A347570(n+1))`
-/

namespace A365515.P12444569745790481054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A347570 (n + 1)).toNat

end

end A365515.P12444569745790481054

/-!
# A365516: Expansion of g.f. A(x) satisfying A(x) = (1 + 2*x*A(x))^2 / (1 + 2*x*A(x) - 2*x^3*A(x)^3).

The programs for A365516, there is no canonical definition to state claims against.
-/

/-! ## A365516.P11378056756801732739

`A354779(A176950(n+2))`
-/

namespace A365516.P11378056756801732739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354779 (A176950 (n + 2)).toNat

end

end A365516.P11378056756801732739

/-! ## A365516.P15077108844242322155

`A056155(∑[A214762(n)])`
-/

namespace A365516.P15077108844242322155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056155 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A365516.P15077108844242322155

/-! ## A365516.P13744921257331934147

`A264749(A083691(n+1))`
-/

namespace A365516.P13744921257331934147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A083691 (n + 1)).toNat

end

end A365516.P13744921257331934147

/-!
# A365518: Odd primes whose base-2 representation has no proper substrings that are base-2 representations of odd primes.

The programs for A365518, there is no canonical definition to state claims against.
-/

/-! ## A365518.P13499497056124180643

`∩[A287638(n+1), A057751(n)]`
-/

namespace A365518.P13499497056124180643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057751 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365518.P13499497056124180643

/-! ## A365518.P16828148340805826566

`A266234(A332835(n+1))`
-/

namespace A365518.P16828148340805826566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266234 (A332835 (n + 1)).toNat

end

end A365518.P16828148340805826566

/-!
# A365519: Moebius inversion of A015134.

The programs for A365519, there is no canonical definition to state claims against.
-/

/-! ## A365519.P15404899681371880916

`∑{d}[n+1, A008683(#)*A015134((n+1)/#)]`
-/

namespace A365519.P15404899681371880916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A015134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365519.P15404899681371880916

/-!
# A365520: Number of 1-factorizations of complete graph K_{2n} that all share one arbitrary pairing in common.

The programs for A365520, there is no canonical definition to state claims against.
-/

/-! ## A365520.P4282707362708611107

`A000438(n+1)/A001147(n)`
-/

namespace A365520.P4282707362708611107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000438 (n + 1) : ℚ) / (A001147 n : ℚ)

end

end A365520.P4282707362708611107

/-!
# A365521: a(1) = 1; for n > 1, a(n) is the prime factor of n that has not appeared for the longest time in {a(1),...,a(n-2),a(n-1)}.

The programs for A365521, there is no canonical definition to state claims against.
-/

/-! ## A365521.P15507155104951768506

`A088387(n+1)-A057918(A151567(2*n+1))`
-/

namespace A365521.P15507155104951768506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (n + 1) - A057918 (A151567 (2 * n + 1)).toNat

end

end A365521.P15507155104951768506

/-! ## A365521.P16524500105148358095

`A346152(lcm((n+1)², A054713(n+1)))`
-/

namespace A365521.P16524500105148358095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346152 (Int.lcm ((n + 1) ^ 2 : ℤ) (A054713 (n + 1)))

end

end A365521.P16524500105148358095

/-! ## A365521.P2562074050272745248

`A088387((n+1)*∏{p}[n+1, #]*A225630(2*n+1))`
-/

namespace A365521.P2562074050272745248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 ((((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ) * A225630 (2 * n + 1)).toNat

end

end A365521.P2562074050272745248

/-! ## A365521.P6338943506411590849

`A020639(A327393(n+1)^A008284(n+3))`
-/

namespace A365521.P6338943506411590849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A327393 (n + 1) : ℚ) ^ (A008284 (n + 3) : ℤ))).toNat

end

end A365521.P6338943506411590849

/-! ## A365521.P17157408747771375540

`A020639(A275823(n+1)%A180408(n))`
-/

namespace A365521.P17157408747771375540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A275823 (n + 1)) (A180408 n)).toNat

end

end A365521.P17157408747771375540

/-!
# A365523: Decimal expansion of 6*log(2) - 4.

The programs for A365523, there is no canonical definition to state claims against.
-/

/-! ## A365523.P9469066228588512460

`A016687(n+1)`
-/

namespace A365523.P9469066228588512460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016687 (n + 1 + 1)

end

end A365523.P9469066228588512460

/-!
# A365524: Decimal expansion of 4*log(2) - 5/2.

The programs for A365524, there is no canonical definition to state claims against.
-/

/-! ## A365524.P18036056332723169063

`A358517(n+1)+A303658(n)-A303658(n+1)`
-/

namespace A365524.P18036056332723169063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358517 (n + 1) + (A303658 n - A303658 (n + 1))

end

end A365524.P18036056332723169063

/-!
# A365525: a(n) = Sum_{k=0..floor(n/4)} Stirling2(n,4*k).

The programs for A365525, there is no canonical definition to state claims against.
-/

/-! ## A365525.P2696407765853088885

`A024430(n)-A365527(n)`
-/

namespace A365525.P2696407765853088885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024430 n - A365527 n

end

end A365525.P2696407765853088885

/-! ## A365525.P3839100971133099634

`(A121867(n)+A024430(n))/2`
-/

namespace A365525.P3839100971133099634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121867 n + A024430 n : ℚ) / 2

end

end A365525.P3839100971133099634

/-! ## A365525.P5423584640755934367

`A024429(n)+A000587(n)-A365527(n)`
-/

namespace A365525.P5423584640755934367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024429 n + A000587 n - A365527 n

end

end A365525.P5423584640755934367

/-! ## A365525.P11407685742659063212

`abs(A292935(n))-A024429(n)-A365527(n)`
-/

namespace A365525.P11407685742659063212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A024429 n - A365527 n

end

end A365525.P11407685742659063212

/-! ## A365525.P5537131506818796522

`A186020(∑[n])-A024429(n)-A365527(n)`
-/

namespace A365525.P5537131506818796522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (∑ j ∈ Finset.range (n + 1), f1 j) - A024429 n - A365527 n

end

end A365525.P5537131506818796522

/-! ## A365525.P6215709595961852626

`A357293(A052905(n+2))`
-/

namespace A365525.P6215709595961852626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357293 (A052905 (n + 2)).toNat

end

end A365525.P6215709595961852626

/-! ## A365525.P5729469981354587380

`A357293(A000217(n+4)+n)`
-/

namespace A365525.P5729469981354587380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357293 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A365525.P5729469981354587380

/-!
# A365526: a(n) = Sum_{k=0..floor((n-1)/4)} Stirling2(n,4*k+1).

The programs for A365526, there is no canonical definition to state claims against.
-/

/-! ## A365526.P14395552252039070477

`A180501(A001678(n))-A354394(n)`
-/

namespace A365526.P14395552252039070477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180501 (A001678 n).toNat - A354394 n

end

end A365526.P14395552252039070477

/-! ## A365526.P483956941277824589

`A359411(A067675(n+1))-A354398(n)`
-/

namespace A365526.P483956941277824589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359411 (A067675 (n + 1)).toNat - A354398 n

end

end A365526.P483956941277824589

/-! ## A365526.P10426482725910251108

`A216644(A216642(n+1))-A354398(n)`
-/

namespace A365526.P10426482725910251108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216644 (A216642 (n + 1)).toNat - A354398 n

end

end A365526.P10426482725910251108

/-! ## A365526.P10036266318886628929

`A359411(A000032(2*n))-A354398(n)`
-/

namespace A365526.P10036266318886628929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359411 (A000032 (2 * n)).toNat - A354398 n

end

end A365526.P10036266318886628929

/-! ## A365526.P4070771496105556961

`1-A354398(A029965(n+1))`
-/

namespace A365526.P4070771496105556961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A354398 (A029965 (n + 1)).toNat

end

end A365526.P4070771496105556961

/-!
# A365527: a(n) = Sum_{k=0..floor((n-2)/4)} Stirling2(n,4*k+2).

The programs for A365527, there is no canonical definition to state claims against.
-/

/-! ## A365527.P9064654947370570639

`A000110(n)-A024429(n)-A365525(n)`
-/

namespace A365527.P9064654947370570639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A024429 n - A365525 n

end

end A365527.P9064654947370570639

/-! ## A365527.P10838979612072953891

`A011971(∑[n])-A024429(n)-A365525(n)`
-/

namespace A365527.P10838979612072953891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - A024429 n - A365525 n

end

end A365527.P10838979612072953891

/-! ## A365527.P15205224385487462546

`A095149(∑[n])-A024429(n)-A365525(n)`
-/

namespace A365527.P15205224385487462546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j) - A024429 n - A365525 n

end

end A365527.P15205224385487462546

/-! ## A365527.P10351120731728633904

`A108087(∑[n])-A024429(n)-A365525(n)`
-/

namespace A365527.P10351120731728633904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (∑ j ∈ Finset.range (n + 1), f1 j) - A024429 n - A365525 n

end

end A365527.P10351120731728633904

/-! ## A365527.P6376973676269058147

`A346520(floor((2*n+1)²/8))-A024429(n)-A365525(n)`
-/

namespace A365527.P6376973676269058147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 ⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋.toNat - A024429 n - A365525 n

end

end A365527.P6376973676269058147

/-! ## A365527.P2273424492653254235

`A365525(n)-A357728(∑[n+2]-1)`
-/

namespace A365527.P2273424492653254235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365525 n - A357728 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A365527.P2273424492653254235

/-! ## A365527.P1340400080351509352

`A357681(A046691(n)+2)-A365525(n)`
-/

namespace A365527.P1340400080351509352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357681 (A046691 n + 2).toNat - A365525 n

end

end A365527.P1340400080351509352

/-!
# A365528: a(n) = Sum_{k=0..floor(n/5)} Stirling2(n,5*k).

The programs for A365528, there is no canonical definition to state claims against.
-/

/-! ## A365528.P7133274501764165941

`A357293(A027379(n+4)-3)`
-/

namespace A365528.P7133274501764165941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357293 (A027379 (n + 4) - 3).toNat

end

end A365528.P7133274501764165941

/-!
# A365531: a(n) = Sum_{k=0..floor((n-3)/5)} Stirling2(n,5*k+3).

The programs for A365531, there is no canonical definition to state claims against.
-/

/-! ## A365531.P523732586897601310

`A008615(A008615(n)+3^n-3*2^n+3)`
-/

namespace A365531.P523732586897601310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A008615 n + ((3 ^ n : ℤ) - (3 * 2 ^ n : ℤ) + 3)).toNat

end

end A365531.P523732586897601310

/-! ## A365531.P10347089957881169990

`A008612(A008621(n)+A001117(n))`
-/

namespace A365531.P10347089957881169990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A008621 n + A001117 n).toNat

end

end A365531.P10347089957881169990

/-! ## A365531.P519689632237407610

`A025465(A001353(n))+A000392(n)`
-/

namespace A365531.P519689632237407610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A001353 n).toNat + A000392 n

end

end A365531.P519689632237407610

/-! ## A365531.P5037654529645365126

`A083891(A087451(n))+A000392(n)`
-/

namespace A365531.P5037654529645365126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083891 (A087451 n).toNat + A000392 n

end

end A365531.P5037654529645365126

/-! ## A365531.P5516817751403299052

`A185037(A000628(n))+A000392(n)`
-/

namespace A365531.P5516817751403299052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 (A000628 n).toNat + A000392 n

end

end A365531.P5516817751403299052

/-!
# A365532: a(n) = Sum_{k=0..floor((n-4)/5)} Stirling2(n,5*k+4).

The programs for A365532, there is no canonical definition to state claims against.
-/

/-! ## A365532.P3069649630464253425

`A151338(A112817(n+1)+1)`
-/

namespace A365532.P3069649630464253425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151338 (A112817 (n + 1) + 1).toNat

end

end A365532.P3069649630464253425

/-! ## A365532.P12585139006674196406

`A005317(n)-A081290(A005317(n))`
-/

namespace A365532.P12585139006674196406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 n - A081290 (A005317 n).toNat

end

end A365532.P12585139006674196406

/-! ## A365532.P10086568010108310945

`A028310(A124303(n))-A124302(n)`
-/

namespace A365532.P10086568010108310945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A124303 n).toNat - A124302 n

end

end A365532.P10086568010108310945

/-! ## A365532.P920307060139450053

`A005317(n)-A028310(A000108(n+1))`
-/

namespace A365532.P920307060139450053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 n - A028310 (A000108 (n + 1)).toNat

end

end A365532.P920307060139450053

/-! ## A365532.P10490732133914385779

`A056521(lt[A007090(n), A227140(3*n)])`
-/

namespace A365532.P10490732133914385779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056521 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A365532.P10490732133914385779

/-!
# A365535: Composite numbers k such that the core and the kernel of k are equal.

The programs for A365535, the canonical program `A365535.P434274986920635891` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365535 has offset 1).

The definition of A365535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365535.P3097531724861882132

`filter[A002035(n+1), A005171(#)]`
-/

namespace A365535.P3097531724861882132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A365535.P3097531724861882132

namespace A365535

/-- `filter[A002035(n+1), A005171(#)]` -/
def P3097531724861882132.Spec : Prop :=
  ∀ n, P3097531724861882132.a n = A365535 (n + 1)

end A365535

/-! ## A365535.P434274986920635891

`filter[A002035(n+1), A066247(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A365535

/-- `filter[A002035(n+1), A066247(#)]` -/
def P434274986920635891.Spec : Prop :=
  ∀ n, P434274986920635891.a n = A365535 (n + 1)

theorem P434274986920635891.correct : P434274986920635891.Spec := by
  intro n
  simp only [A365535, Nat.add_sub_cancel]

end A365535

/-! ## A365535.P10387711355031620928

`filter[A268335(n+1), A066247(#)]`
-/

namespace A365535.P10387711355031620928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A365535.P10387711355031620928

namespace A365535

/-- `filter[A268335(n+1), A066247(#)]` -/
def P10387711355031620928.Spec : Prop :=
  ∀ n, P10387711355031620928.a n = A365535 (n + 1)

end A365535

/-! ## A365535.P8716620206152383837

`filter[A268335(n+2), A005171(#)]`
-/

namespace A365535.P8716620206152383837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A365535.P8716620206152383837

namespace A365535

/-- `filter[A268335(n+2), A005171(#)]` -/
def P8716620206152383837.Spec : Prop :=
  ∀ n, P8716620206152383837.a n = A365535 (n + 1)

end A365535

/-! ## A365535.P11415775931686987814

`filter[A089229(n+1), A295316(#)]`
-/

namespace A365535.P11415775931686987814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A365535.P11415775931686987814

namespace A365535

/-- `filter[A089229(n+1), A295316(#)]` -/
def P11415775931686987814.Spec : Prop :=
  ∀ n, P11415775931686987814.a n = A365535 (n + 1)

end A365535

/-! ## A365535.P13749022610745671138

`∩[A002035(n+1), A089229(n+1)]`
-/

namespace A365535.P13749022610745671138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365535.P13749022610745671138

namespace A365535

/-- `∩[A002035(n+1), A089229(n+1)]` -/
def P13749022610745671138.Spec : Prop :=
  ∀ n, (P13749022610745671138.a n : ℤ) = A365535 (n + 1)

end A365535

/-! ## A365535.P16096616851588252070

`∩[A089229(n+1), A268335(n+1)]`
-/

namespace A365535.P16096616851588252070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365535.P16096616851588252070

namespace A365535

/-- `∩[A089229(n+1), A268335(n+1)]` -/
def P16096616851588252070.Spec : Prop :=
  ∀ n, (P16096616851588252070.a n : ℤ) = A365535 (n + 1)

end A365535

/-! ## A365535.P13517869502116575232

`filter[A268388(n+1), A295316(#)]`
-/

namespace A365535.P13517869502116575232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A365535.P13517869502116575232

namespace A365535

/-- `filter[A268388(n+1), A295316(#)]` -/
def P13517869502116575232.Spec : Prop :=
  ∀ n, P13517869502116575232.a n = A365535 (n + 1)

end A365535

/-! ## A365535.P458731919676686878

`filter[A139118(n+2), A295316(#)]`
-/

namespace A365535.P458731919676686878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A365535.P458731919676686878

namespace A365535

/-- `filter[A139118(n+2), A295316(#)]` -/
def P458731919676686878.Spec : Prop :=
  ∀ n, P458731919676686878.a n = A365535 (n + 1)

end A365535

/-! ## A365535.P15444465009610218616

`∩[A002035(n+1), A139118(n+1)]`
-/

namespace A365535.P15444465009610218616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365535.P15444465009610218616

namespace A365535

/-- `∩[A002035(n+1), A139118(n+1)]` -/
def P15444465009610218616.Spec : Prop :=
  ∀ n, (P15444465009610218616.a n : ℤ) = A365535 (n + 1)

end A365535

/-! ## A365535.P4101243296096174375

`∩[A002035(n+1), A268388(n+1)]`
-/

namespace A365535.P4101243296096174375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365535.P4101243296096174375

namespace A365535

/-- `∩[A002035(n+1), A268388(n+1)]` -/
def P4101243296096174375.Spec : Prop :=
  ∀ n, (P4101243296096174375.a n : ℤ) = A365535 (n + 1)

end A365535

/-! ## A365535.P4385412010347878993

`∩[A268335(n+1), A268388(n+1)]`
-/

namespace A365535.P4385412010347878993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365535.P4385412010347878993

namespace A365535

/-- `∩[A268335(n+1), A268388(n+1)]` -/
def P4385412010347878993.Spec : Prop :=
  ∀ n, (P4385412010347878993.a n : ℤ) = A365535 (n + 1)

end A365535

/-! ## A365535.P13537682270020922415

`filter[A080257(n+1), A295316(#)]`
-/

namespace A365535.P13537682270020922415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A365535.P13537682270020922415

namespace A365535

/-- `filter[A080257(n+1), A295316(#)]` -/
def P13537682270020922415.Spec : Prop :=
  ∀ n, P13537682270020922415.a n = A365535 (n + 1)

end A365535

/-! ## A365535.P296636662323612168

`∩[A002035(n+1), A080257(n+1)]`
-/

namespace A365535.P296636662323612168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365535.P296636662323612168

namespace A365535

/-- `∩[A002035(n+1), A080257(n+1)]` -/
def P296636662323612168.Spec : Prop :=
  ∀ n, (P296636662323612168.a n : ℤ) = A365535 (n + 1)

end A365535

/-! ## A365535.P3152630980084195882

`∩[A080257(n+1), A268335(n+1)]`
-/

namespace A365535.P3152630980084195882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365535.P3152630980084195882

namespace A365535

/-- `∩[A080257(n+1), A268335(n+1)]` -/
def P3152630980084195882.Spec : Prop :=
  ∀ n, (P3152630980084195882.a n : ℤ) = A365535 (n + 1)

end A365535

/-! ## A365535.P17083359114170440507

`filter[A002808(n+1), A295316(#)]`
-/

namespace A365535.P17083359114170440507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A365535.P17083359114170440507

namespace A365535

/-- `filter[A002808(n+1), A295316(#)]` -/
def P17083359114170440507.Spec : Prop :=
  ∀ n, P17083359114170440507.a n = A365535 (n + 1)

end A365535

/-! ## A365535.P13913979026576303272

`filter[A018252(n+2), A295316(#)]`
-/

namespace A365535.P13913979026576303272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A365535.P13913979026576303272

namespace A365535

/-- `filter[A018252(n+2), A295316(#)]` -/
def P13913979026576303272.Spec : Prop :=
  ∀ n, P13913979026576303272.a n = A365535 (n + 1)

end A365535

/-! ## A365535.P11549229573553193977

`filter[A056653(n+2), A295316(#)]`
-/

namespace A365535.P11549229573553193977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A365535.P11549229573553193977

namespace A365535

/-- `filter[A056653(n+2), A295316(#)]` -/
def P11549229573553193977.Spec : Prop :=
  ∀ n, P11549229573553193977.a n = A365535 (n + 1)

end A365535

/-! ## A365535.P11267772425003149648

`filter[A141468(n+3), A295316(#)]`
-/

namespace A365535.P11267772425003149648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A365535.P11267772425003149648

namespace A365535

/-- `filter[A141468(n+3), A295316(#)]` -/
def P11267772425003149648.Spec : Prop :=
  ∀ n, P11267772425003149648.a n = A365535 (n + 1)

end A365535

/-! ## A365535.P16486378181561368826

`∩[A002035(n+1), A002808(n+1)]`
-/

namespace A365535.P16486378181561368826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365535.P16486378181561368826

namespace A365535

/-- `∩[A002035(n+1), A002808(n+1)]` -/
def P16486378181561368826.Spec : Prop :=
  ∀ n, (P16486378181561368826.a n : ℤ) = A365535 (n + 1)

end A365535

/-!
# A365538: a(0) = 1; otherwise, for i >= 0, a(4i+0) = a(4i+1) = a(2i), a(4i+2) = 2*a(2i+1), a(4i+3) = 0.

The programs for A365538, the canonical program `A365538.P13640182443914891217` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365538 has offset 0).

The definition of A365538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365538.P13640182443914891217

`A048896(n)*A085357(n)`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A365538

/-- `A048896(n)*A085357(n)` -/
def P13640182443914891217.Spec : Prop :=
  ∀ n, P13640182443914891217.a n = A365538 n

theorem P13640182443914891217.correct : P13640182443914891217.Spec := by
  intro n
  simp only [A365538]

end A365538

/-! ## A365538.P9434776550426906612

`A060632(n)*A085357(n)`
-/

namespace A365538.P9434776550426906612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n * A085357 n

end

end A365538.P9434776550426906612

namespace A365538

/-- `A060632(n)*A085357(n)` -/
def P9434776550426906612.Spec : Prop :=
  ∀ n, P9434776550426906612.a n = A365538 n

end A365538

/-! ## A365538.P12180928946324726680

`A085357(n)*A366799(n)`
-/

namespace A365538.P12180928946324726680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 n * A366799 n

end

end A365538.P12180928946324726680

namespace A365538

/-- `A085357(n)*A366799(n)` -/
def P12180928946324726680.Spec : Prop :=
  ∀ n, P12180928946324726680.a n = A365538 n

end A365538

/-! ## A365538.P6583326517104663778

`lcm(A048896(n), A132971(n))`
-/

namespace A365538.P6583326517104663778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048896 n) (A132971 n)

end

end A365538.P6583326517104663778

namespace A365538

/-- `lcm(A048896(n), A132971(n))` -/
def P6583326517104663778.Spec : Prop :=
  ∀ n, (P6583326517104663778.a n : ℤ) = A365538 n

end A365538

/-! ## A365538.P8573833057547729578

`A011782(A000120(n+1))*A085357(n)`
-/

namespace A365538.P8573833057547729578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000120 (n + 1)).toNat * A085357 n

end

end A365538.P8573833057547729578

namespace A365538

/-- `A011782(A000120(n+1))*A085357(n)` -/
def P8573833057547729578.Spec : Prop :=
  ∀ n, P8573833057547729578.a n = A365538 n

end A365538

/-! ## A365538.P15908541513201799354

`and(A226302(n+2), A366799(n))`
-/

namespace A365538.P15908541513201799354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A226302 (n + 2)) (A366799 n)

end

end A365538.P15908541513201799354

namespace A365538

/-- `and(A226302(n+2), A366799(n))` -/
def P15908541513201799354.Spec : Prop :=
  ∀ n, P15908541513201799354.a n = A365538 n

end A365538

/-! ## A365538.P17095745863666049388

`and(A162533(n), A366799(n))`
-/

namespace A365538.P17095745863666049388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A162533 n) (A366799 n)

end

end A365538.P17095745863666049388

namespace A365538

/-- `and(A162533(n), A366799(n))` -/
def P17095745863666049388.Spec : Prop :=
  ∀ n, P17095745863666049388.a n = A365538 n

end A365538

/-! ## A365538.P14764508138216272594

`and(A007123(n+1), A366799(n))`
-/

namespace A365538.P14764508138216272594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007123 (n + 1)) (A366799 n)

end

end A365538.P14764508138216272594

namespace A365538

/-- `and(A007123(n+1), A366799(n))` -/
def P14764508138216272594.Spec : Prop :=
  ∀ n, P14764508138216272594.a n = A365538 n

end A365538

/-!
# A365539: Array read by ascending antidiagonals: A(n,k) = [x^n] (1 + x^k)/((1 - x)^2*(1 - x^k)), with k > 0.

The programs for A365539, there is no canonical definition to state claims against.
-/

/-! ## A365539.P5226209267426508981

`2*A134546(n+1)-A004736(n+1)`
-/

namespace A365539.P5226209267426508981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134546 (n + 1) - A004736 (n + 1)

end

end A365539.P5226209267426508981

/-! ## A365539.P9173874444116421172

`2*A134546(n+1)-(A025581(n)+1)`
-/

namespace A365539.P9173874444116421172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134546 (n + 1) - (A025581 n + 1)

end

end A365539.P9173874444116421172

/-!
# A365540: Antidiagonal sums of A365539.

The programs for A365540, there is no canonical definition to state claims against.
-/

/-! ## A365540.P5065456830217209442

`∑[∑[∑{d}[n, 2%#²]]+n]`
-/

namespace A365540.P5065456830217209442
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), 2 % d ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365540.P5065456830217209442

/-! ## A365540.P4635996749587725061

`∑[∑[A032741(61*n)]]`
-/

namespace A365540.P4635996749587725061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (61 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365540.P4635996749587725061

/-! ## A365540.P2631906435676737241

`∑[∑[A319410(n)]+n]`
-/

namespace A365540.P2631906435676737241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365540.P2631906435676737241

/-! ## A365540.P7471583605062972369

`∑[abs(n-2*A006218(n))]`
-/

namespace A365540.P7471583605062972369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 2 * A006218 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365540.P7471583605062972369

/-! ## A365540.P7064778609473681520

`∑[∑[floor((A145154(n)-1)/2)]]`
-/

namespace A365540.P7064778609473681520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A145154 n - 1 : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365540.P7064778609473681520

/-!
# A365542: Number of subsets of {1..n-1} that can be linearly combined using nonnegative coefficients to obtain n.

The programs for A365542, there is no canonical definition to state claims against.
-/

/-! ## A365542.P15761883719899829686

`A365073(n+1)-2^n`
-/

namespace A365542.P15761883719899829686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365073 (n + 1) - (2 ^ n : ℤ)

end

end A365542.P15761883719899829686

/-! ## A365542.P9224555879059852087

`2^n-A365380(n+1)`
-/

namespace A365542.P9224555879059852087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A365380 (n + 1)

end

end A365542.P9224555879059852087

/-! ## A365542.P9430703162529406036

`A365073(n+1)%A000079(n)`
-/

namespace A365542.P9430703162529406036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365073 (n + 1)) (A000079 n)

end

end A365542.P9430703162529406036

/-! ## A365542.P6359671668496562528

`abs(A365380(n+1)-A000079(n))`
-/

namespace A365542.P6359671668496562528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A365380 (n + 1) - A000079 n|

end

end A365542.P6359671668496562528

/-! ## A365542.P1211245504819709371

`A000051(n)-(A365380(n+1)+1)`
-/

namespace A365542.P1211245504819709371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A365380 (n + 1) + 1)

end

end A365542.P1211245504819709371

/-!
# A365543: Triangle read by rows where T(n,k) is the number of integer partitions of n with a submultiset summing to k.

The programs for A365543, there is no canonical definition to state claims against.
-/

/-! ## A365543.P6930863359884180040

`A300383(A146985(n))`
-/

namespace A365543.P6930863359884180040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300383 (A146985 n).toNat

end

end A365543.P6930863359884180040

/-! ## A365543.P3244946617595484786

`A101872(A222444(n+1))`
-/

namespace A365543.P3244946617595484786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (A222444 (n + 1)).toNat

end

end A365543.P3244946617595484786

/-! ## A365543.P12366148035834681691

`A175239(A144155(n))`
-/

namespace A365543.P12366148035834681691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175239 (A144155 n).toNat

end

end A365543.P12366148035834681691

/-! ## A365543.P4740723169200039825

`A106245(A299595(n+1)%A288243(3*n))`
-/

namespace A365543.P4740723169200039825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106245 (Int.tmod (A299595 (n + 1)) (A288243 (3 * n))).toNat

end

end A365543.P4740723169200039825

/-! ## A365543.P15527886130914904635

`A000688(2*A222444(n+1))`
-/

namespace A365543.P15527886130914904635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (2 * A222444 (n + 1)).toNat

end

end A365543.P15527886130914904635

/-!
# A365544: Number of subsets of {1..n} containing two distinct elements summing to n.

The programs for A365544, the canonical program `A365544.P10985151635534295399` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365544 has offset 0).

The definition of A365544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365544.P10985151635534295399

`2^n-A068911(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A365544

/-- `2^n-A068911(n)` -/
def P10985151635534295399.Spec : Prop :=
  ∀ n, P10985151635534295399.a n = A365544 n

theorem P10985151635534295399.correct : P10985151635534295399.Spec := by
  intro n
  simp only [A365544]

end A365544

/-! ## A365544.P14237748577701993078

`∑[A366131(abs(1-n))]`
-/

namespace A365544.P14237748577701993078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366131 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365544.P14237748577701993078

namespace A365544

/-- `∑[A366131(abs(1-n))]` -/
def P14237748577701993078.Spec : Prop :=
  ∀ n, P14237748577701993078.a n = A365544 n

end A365544

/-! ## A365544.P3575448979242989005

`A000918(n)+2-A068911(n)`
-/

namespace A365544.P3575448979242989005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (2 - A068911 n)

end

end A365544.P3575448979242989005

namespace A365544

/-- `A000918(n)+2-A068911(n)` -/
def P3575448979242989005.Spec : Prop :=
  ∀ n, P3575448979242989005.a n = A365544 n

end A365544

/-! ## A365544.P5512945799683030591

`2*(A011782(n)-A182522(n))`
-/

namespace A365544.P5512945799683030591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 n - A182522 n)

end

end A365544.P5512945799683030591

namespace A365544

/-- `2*(A011782(n)-A182522(n))` -/
def P5512945799683030591.Spec : Prop :=
  ∀ n, P5512945799683030591.a n = A365544 n

end A365544

/-! ## A365544.P17260140613117892639

`A167762(n)+A167762(n)-A366131(n)`
-/

namespace A365544.P17260140613117892639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167762 n + (A167762 n - A366131 n)

end

end A365544.P17260140613117892639

namespace A365544

/-- `A167762(n)+A167762(n)-A366131(n)` -/
def P17260140613117892639.Spec : Prop :=
  ∀ n, P17260140613117892639.a n = A365544 n

end A365544

/-! ## A365544.P6969264819912975602

`ogf(2x^3/(1-2x-3x^2+6x^3))`
-/

namespace A365544.P6969264819912975602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 2] [1, -2, -3, 6] n

end

end A365544.P6969264819912975602

namespace A365544

/-- `ogf(2x^3/(1-2x-3x^2+6x^3))` -/
def P6969264819912975602.Spec : Prop :=
  ∀ n, P6969264819912975602.a n = A365544 n

end A365544

/-! ## A365544.P2463094828502223477

`∑[A366131(n)]-A366131(n)`
-/

namespace A365544.P2463094828502223477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A366131 n

end

end A365544.P2463094828502223477

namespace A365544

/-- `∑[A366131(n)]-A366131(n)` -/
def P2463094828502223477.Spec : Prop :=
  ∀ n, P2463094828502223477.a n = A365544 n

end A365544

/-! ## A365544.P18094772190802418318

`2*A167762(n)-A366131(n)`
-/

namespace A365544.P18094772190802418318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167762 n - A366131 n

end

end A365544.P18094772190802418318

namespace A365544

/-- `2*A167762(n)-A366131(n)` -/
def P18094772190802418318.Spec : Prop :=
  ∀ n, P18094772190802418318.a n = A365544 n

end A365544

/-! ## A365544.P1503768387199991497

`A286812(n)-(A286812(n+1)+A068911(n))`
-/

namespace A365544.P1503768387199991497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286812 n - (A286812 (n + 1) + A068911 n)

end

end A365544.P1503768387199991497

namespace A365544

/-- `A286812(n)-(A286812(n+1)+A068911(n))` -/
def P1503768387199991497.Spec : Prop :=
  ∀ n, P1503768387199991497.a n = A365544 n

end A365544

/-! ## A365544.P16767223992927196873

`A209436(A210981(n))`
-/

namespace A365544.P16767223992927196873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209436 (A210981 n).toNat

end

end A365544.P16767223992927196873

namespace A365544

/-- `A209436(A210981(n))` -/
def P16767223992927196873.Spec : Prop :=
  ∀ n, P16767223992927196873.a n = A365544 n

end A365544

/-!
# A365545: Triangle read by rows where T(n,k) is the number of strict integer partitions of n with exactly k distinct non-subset-sums.

The programs for A365545, there is no canonical definition to state claims against.
-/

/-! ## A365545.P15335477530435073554

`A365832(∑[char[∑[n]]]²-n-1)`
-/

namespace A365545.P15335477530435073554
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365832 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A365545.P15335477530435073554

/-! ## A365545.P2547509274435136931

`A363859(A019576(n+2))`
-/

namespace A365545.P2547509274435136931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363859 (A019576 (n + 2)).toNat

end

end A365545.P2547509274435136931

/-! ## A365545.P12719169996455542648

`A376362(A327072(n)+A317937(n+1))`
-/

namespace A365545.P12719169996455542648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376362 (A327072 n + A317937 (n + 1)).toNat

end

end A365545.P12719169996455542648

/-! ## A365545.P9863097527941546520

`A000161(A007091(n+4)*A331161(n+2))`
-/

namespace A365545.P9863097527941546520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A007091 (n + 4) * A331161 (n + 2)).toNat

end

end A365545.P9863097527941546520

/-! ## A365545.P12747822950865248926

`A239927(n+1)+A010815(A187210(3*n+2))`
-/

namespace A365545.P12747822950865248926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239927 (n + 1) + A010815 (A187210 (3 * n + 2)).toNat

end

end A365545.P12747822950865248926

/-!
# A365546: E.g.f. satisfies A(x) = 1 - log(1 - x*A(x)^3)/A(x)^2.

The programs for A365546, there is no canonical definition to state claims against.
-/

/-! ## A365546.P17962410982187287065

`A003602(A090356(n))`
-/

namespace A365546.P17962410982187287065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A090356 n).toNat

end

end A365546.P17962410982187287065

/-!
# A365548: Number of unigraphic graphs on n nodes that are connected.

The programs for A365548, there is no canonical definition to state claims against.
-/

/-! ## A365548.P4616940546927033379

`A325781(A167606(n)+A078926(n+1))`
-/

namespace A365548.P4616940546927033379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (A167606 n + A078926 (n + 1)).toNat

end

end A365548.P4616940546927033379

/-!
# A365549: The number of exponentially odd divisors of the square root of the largest square dividing n.

The programs for A365549, the canonical program `A365549.P7046597874236443597` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365549 has offset 1).

The definition of A365549 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A322483, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365549.P7046597874236443597

`A322483(A000188(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A365549

/-- `A322483(A000188(n+1))` -/
def P7046597874236443597.Spec : Prop :=
  ∀ n, P7046597874236443597.a n = A365549 (n + 1)

theorem P7046597874236443597.correct : P7046597874236443597.Spec := by
  intro n
  simp only [A365549, Nat.add_sub_cancel]

end A365549

/-! ## A365549.P14243705816271026712

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], A295316(#)]`
-/

namespace A365549.P14243705816271026712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A295316 d

end

end A365549.P14243705816271026712

namespace A365549

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)], A295316(#)]` -/
def P14243705816271026712.Spec : Prop :=
  ∀ n, P14243705816271026712.a n = A365549 (n + 1)

end A365549

/-! ## A365549.P11966247684248022397

`A365491(A000188(n+1)²)`
-/

namespace A365549.P11966247684248022397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365491 (A000188 (n + 1) ^ 2).toNat

end

end A365549.P11966247684248022397

namespace A365549

/-- `A365491(A000188(n+1)²)` -/
def P11966247684248022397.Spec : Prop :=
  ∀ n, P11966247684248022397.a n = A365549 (n + 1)

end A365549

/-! ## A365549.P8088926392716251488

`A322483(A337101(2*(n+1)))`
-/

namespace A365549.P8088926392716251488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A337101 (2 * (n + 1))).toNat

end

end A365549.P8088926392716251488

namespace A365549

/-- `A322483(A337101(2*(n+1)))` -/
def P8088926392716251488.Spec : Prop :=
  ∀ n, P8088926392716251488.a n = A365549 (n + 1)

end A365549

/-! ## A365549.P10959372816335780088

`∑{d}[n+1, A008836(#)*A365173((n+1)/#)]`
-/

namespace A365549.P10959372816335780088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A365173 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365549.P10959372816335780088

namespace A365549

/-- `∑{d}[n+1, A008836(#)*A365173((n+1)/#)]` -/
def P10959372816335780088.Spec : Prop :=
  ∀ n, P10959372816335780088.a n = A365549 (n + 1)

end A365549

/-! ## A365549.P4195661634678413373

`∏{e}[(n+1)², A055980(#)]`
-/

namespace A365549.P4195661634678413373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A055980 (Nat.factorization (f1 n) p)

end

end A365549.P4195661634678413373

namespace A365549

/-- `∏{e}[(n+1)², A055980(#)]` -/
def P4195661634678413373.Spec : Prop :=
  ∀ n, P4195661634678413373.a n = A365549 (n + 1)

end A365549

/-! ## A365549.P14070297925417425098

`A063775(A355261(n+1)²)`
-/

namespace A365549.P14070297925417425098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (A355261 (n + 1) ^ 2).toNat

end

end A365549.P14070297925417425098

namespace A365549

/-- `A063775(A355261(n+1)²)` -/
def P14070297925417425098.Spec : Prop :=
  ∀ n, P14070297925417425098.a n = A365549 (n + 1)

end A365549

/-!
# A365550: The number of square coreful divisors of n.

The programs for A365550, the canonical program `A365550.P6943066006760730678` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365550 has offset 1).

The definition of A365550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365550.P6943066006760730678

`∏{e}[n+1, floor(#/2)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A365550

/-- `∏{e}[n+1, floor(#/2)]` -/
def P6943066006760730678.Spec : Prop :=
  ∀ n, P6943066006760730678.a n = A365550 (n + 1)

theorem P6943066006760730678.correct : P6943066006760730678.Spec := by
  intro n
  simp only [A365550, Nat.add_sub_cancel]

end A365550

/-! ## A365550.P15384516261501348695

`∏{p}[n+1, val(n+1, #²)]`
-/

namespace A365550.P15384516261501348695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) (p ^ 2)

end

end A365550.P15384516261501348695

namespace A365550

/-- `∏{p}[n+1, val(n+1, #²)]` -/
def P15384516261501348695.Spec : Prop :=
  ∀ n, (P15384516261501348695.a n : ℤ) = A365550 (n + 1)

end A365550

/-! ## A365550.P7915376181319353354

`A007954(∏{e}[n+1, A004526(#)])`
-/

namespace A365550.P7915376181319353354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (∏ p ∈ Nat.primeFactors (f1 n), A004526 (Nat.factorization (f1 n) p)).toNat

end

end A365550.P7915376181319353354

namespace A365550

/-- `A007954(∏{e}[n+1, A004526(#)])` -/
def P7915376181319353354.Spec : Prop :=
  ∀ n, P7915376181319353354.a n = A365550 (n + 1)

end A365550

/-! ## A365550.P5929698984355552683

`∑{d}[n+1, A008836(#)*A190867((n+1)/#)]`
-/

namespace A365550.P5929698984355552683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A190867 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365550.P5929698984355552683

namespace A365550

/-- `∑{d}[n+1, A008836(#)*A190867((n+1)/#)]` -/
def P5929698984355552683.Spec : Prop :=
  ∀ n, P5929698984355552683.a n = A365550 (n + 1)

end A365550

/-! ## A365550.P3500480801396203454

`A332712(A356191(n+1))`
-/

namespace A365550.P3500480801396203454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332712 (A356191 (n + 1)).toNat

end

end A365550.P3500480801396203454

namespace A365550

/-- `A332712(A356191(n+1))` -/
def P3500480801396203454.Spec : Prop :=
  ∀ n, P3500480801396203454.a n = A365550 (n + 1)

end A365550

/-!
# A365551: The number of exponentially odd divisors of the smallest exponentially odd number divisible by n.

The programs for A365551, the canonical program `A365551.P16217230584168280310` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365551 has offset 1).

The definition of A365551 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322483, A356191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365551.P16217230584168280310

`A322483(A356191(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A365551

/-- `A322483(A356191(n+1))` -/
def P16217230584168280310.Spec : Prop :=
  ∀ n, P16217230584168280310.a n = A365551 (n + 1)

theorem P16217230584168280310.correct : P16217230584168280310.Spec := by
  intro n
  simp only [A365551, Nat.add_sub_cancel]

end A365551

/-! ## A365551.P6625934475381549111

`∏{e}[n+1, floor(#/2)+2]`
-/

namespace A365551.P6625934475381549111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 2)

end

end A365551.P6625934475381549111

namespace A365551

/-- `∏{e}[n+1, floor(#/2)+2]` -/
def P6625934475381549111.Spec : Prop :=
  ∀ n, P6625934475381549111.a n = A365551 (n + 1)

end A365551

/-! ## A365551.P4096114147001794217

`∏{p}[n+1, val(n+1, #²)+2]`
-/

namespace A365551.P4096114147001794217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) (p ^ 2) + 2)

end

end A365551.P4096114147001794217

namespace A365551

/-- `∏{p}[n+1, val(n+1, #²)+2]` -/
def P4096114147001794217.Spec : Prop :=
  ∀ n, (P4096114147001794217.a n : ℤ) = A365551 (n + 1)

end A365551

/-! ## A365551.P6160693891351110225

`A000005(A355261(n+1))`
-/

namespace A365551.P6160693891351110225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A355261 (n + 1)).toNat

end

end A365551.P6160693891351110225

namespace A365551

/-- `A000005(A355261(n+1))` -/
def P6160693891351110225.Spec : Prop :=
  ∀ n, P6160693891351110225.a n = A365551 (n + 1)

end A365551

/-! ## A365551.P18055115496522203247

`∑{d}[n+1, A008966(#)*A367987((n+1)/#)]`
-/

namespace A365551.P18055115496522203247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A367987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365551.P18055115496522203247

namespace A365551

/-- `∑{d}[n+1, A008966(#)*A367987((n+1)/#)]` -/
def P18055115496522203247.Spec : Prop :=
  ∀ n, P18055115496522203247.a n = A365551 (n + 1)

end A365551

/-! ## A365551.P1102264686097592131

`∑{d}[n+1, A307423(#)*A365488((n+1)/#)]`
-/

namespace A365551.P1102264686097592131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307423 d * A365488 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365551.P1102264686097592131

namespace A365551

/-- `∑{d}[n+1, A307423(#)*A365488((n+1)/#)]` -/
def P1102264686097592131.Spec : Prop :=
  ∀ n, P1102264686097592131.a n = A365551 (n + 1)

end A365551

/-! ## A365551.P377944708661152506

`A000005(A000188(n+1)*A007947(n+1))`
-/

namespace A365551.P377944708661152506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000188 (n + 1) * A007947 (n + 1)).toNat

end

end A365551.P377944708661152506

namespace A365551

/-- `A000005(A000188(n+1)*A007947(n+1))` -/
def P377944708661152506.Spec : Prop :=
  ∀ n, P377944708661152506.a n = A365551 (n + 1)

end A365551

/-! ## A365551.P838709521997962002

`A365488((n+1)*A008833(n+1))`
-/

namespace A365551.P838709521997962002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365488 ((n + 1 : ℤ) * A008833 (n + 1)).toNat

end

end A365551.P838709521997962002

namespace A365551

/-- `A365488((n+1)*A008833(n+1))` -/
def P838709521997962002.Spec : Prop :=
  ∀ n, P838709521997962002.a n = A365551 (n + 1)

end A365551

/-! ## A365551.P6021340948022065961

`A095691(A064549(n+1))`
-/

namespace A365551.P6021340948022065961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095691 (A064549 (n + 1)).toNat

end

end A365551.P6021340948022065961

namespace A365551

/-- `A095691(A064549(n+1))` -/
def P6021340948022065961.Spec : Prop :=
  ∀ n, P6021340948022065961.a n = A365551 (n + 1)

end A365551

/-! ## A365551.P1247636464077153409

`A322483((n+1)*A007947(n+1))`
-/

namespace A365551.P1247636464077153409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A365551.P1247636464077153409

namespace A365551

/-- `A322483((n+1)*A007947(n+1))` -/
def P1247636464077153409.Spec : Prop :=
  ∀ n, P1247636464077153409.a n = A365551 (n + 1)

end A365551

/-! ## A365551.P12827508575661944281

`A046951((A000188(n+1)*A007947(n+1))²)`
-/

namespace A365551.P12827508575661944281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((A000188 (n + 1) * A007947 (n + 1)) ^ 2).toNat

end

end A365551.P12827508575661944281

namespace A365551

/-- `A046951((A000188(n+1)*A007947(n+1))²)` -/
def P12827508575661944281.Spec : Prop :=
  ∀ n, P12827508575661944281.a n = A365551 (n + 1)

end A365551

/-!
# A365552: 

The programs for A365552, there is no canonical definition to state claims against.
-/

/-! ## A365552.P5267707849134218637

`∏{e}[n+1, A005410(#)]`
-/

namespace A365552.P5267707849134218637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A005410 (Nat.factorization (f1 n) p)

end

end A365552.P5267707849134218637

/-! ## A365552.P6395575123369076261

`∏{e}[n+1, A091374(#)]`
-/

namespace A365552.P6395575123369076261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A091374 (Nat.factorization (f1 n) p)

end

end A365552.P6395575123369076261

/-! ## A365552.P17496407190159151436

`A322483(A057521(n+1))`
-/

namespace A365552.P17496407190159151436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A057521 (n + 1)).toNat

end

end A365552.P17496407190159151436

/-! ## A365552.P17923158493359380760

`A322483(n+1)/A056671(n+1)`
-/

namespace A365552.P17923158493359380760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322483 (n + 1) : ℚ) / (A056671 (n + 1) : ℚ)

end

end A365552.P17923158493359380760

/-! ## A365552.P7480413110054223007

`A368470(A350390(n+1))/A368470(A367168(n+1))`
-/

namespace A365552.P7480413110054223007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368470 (A350390 (n + 1)).toNat : ℚ) / (A368470 (A367168 (n + 1)).toNat : ℚ)

end

end A365552.P7480413110054223007

/-! ## A365552.P4330164233167206551

`A046951((n+1)*A055229(n+1))`
-/

namespace A365552.P4330164233167206551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((n + 1 : ℤ) * A055229 (n + 1)).toNat

end

end A365552.P4330164233167206551

/-!
# A365553: Starting with a plane on which two parallel lines and two additional lines have been drawn such that the four lines form two noncongruent isosceles triangles, a(n) is the total number of intersections on the plane after the n-th step, where each step consists of drawing lines that connect every intersection of two lines. If more than 2 lines intersect at the same point it is only counted once.

The programs for A365553, there is no canonical definition to state claims against.
-/

/-! ## A365553.P9284551124696884407

`∑[A088577(Δ[A133686(n)])]`
-/

namespace A365553.P9284551124696884407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133686 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088577 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365553.P9284551124696884407

/-!
# A365554: Number of increasing paths from the bottom to the top of the n-hypercube (as a graded poset) which first encounter a vector of isolated zeros at stage k, weighted by k.

The programs for A365554, there is no canonical definition to state claims against.
-/

/-! ## A365554.P2942150601831327011

`A006125(n)+A000201(A001286(n+2))`
-/

namespace A365554.P2942150601831327011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n + A000201 (A001286 (n + 2)).toNat

end

end A365554.P2942150601831327011

/-!
# A365555: Expansion of e.g.f. 1 / (7 - 6 * exp(x))^(1/3).

The programs for A365555, there is no canonical definition to state claims against.
-/

/-! ## A365555.P1126502892050570971

`A216345(A321848(n))+A010873(n)`
-/

namespace A365555.P1126502892050570971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A321848 n).toNat + A010873 n

end

end A365555.P1126502892050570971

/-!
# A365558: Expansion of e.g.f. 1 / (4 - 3 * exp(x))^(2/3).

The programs for A365558, there is no canonical definition to state claims against.
-/

/-! ## A365558.P12692207548367337841

`A138754(Δ[A216857(n)])`
-/

namespace A365558.P12692207548367337841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138754 (f1 (n + 1) - f1 n).toNat

end

end A365558.P12692207548367337841

/-!
# A365559: Number of free n-polysticks (or polyedges) in 3 dimensions.

The programs for A365559, there is no canonical definition to state claims against.
-/

/-! ## A365559.P7017641986974735702

`record[A366766(∑[A323897(n+1)])]`
-/

namespace A365559.P7017641986974735702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323897 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366766 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365559.P7017641986974735702

/-! ## A365559.P3272633038734453849

`A385583(A001399(2*(n+1))-1)`
-/

namespace A365559.P3272633038734453849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385583 (A001399 (2 * (n + 1)) - 1).toNat

end

end A365559.P3272633038734453849

/-!
# A365560: Number of fixed n-polysticks (or polyedges) in 3 dimensions.

The programs for A365560, there is no canonical definition to state claims against.
-/

/-! ## A365560.P4099156349721422050

`A385581(A034856(n+2))`
-/

namespace A365560.P4099156349721422050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385581 (A034856 (n + 2)).toNat

end

end A365560.P4099156349721422050

/-! ## A365560.P3703659708704207546

`A385581(A000217(n+2)+n+1)`
-/

namespace A365560.P3703659708704207546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385581 (A000217 (n + 2) + (n + 1 : ℤ)).toNat

end

end A365560.P3703659708704207546

/-!
# A365561: Number of free n-polysticks (or polyedges) in 4 dimensions.

The programs for A365561, there is no canonical definition to state claims against.
-/

/-! ## A365561.P15966578274967967470

`A385583(∑[∑[A047999(n)]])`
-/

namespace A365561.P15966578274967967470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385583 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A365561.P15966578274967967470

/-! ## A365561.P17034598094073719637

`A385583(∑[∑[A103451(n)]])`
-/

namespace A365561.P17034598094073719637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385583 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A365561.P17034598094073719637

/-!
# A365562: Number of fixed n-polysticks (or polyedges) in 4 dimensions.

The programs for A365562, there is no canonical definition to state claims against.
-/

/-! ## A365562.P7200668845862356325

`A385581(A141214(n+1))`
-/

namespace A365562.P7200668845862356325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385581 (A141214 (n + 1)).toNat

end

end A365562.P7200668845862356325

/-! ## A365562.P207364891760515552

`A385581(A055999(n+1)+3)`
-/

namespace A365562.P207364891760515552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385581 (A055999 (n + 1) + 3).toNat

end

end A365562.P207364891760515552

/-!
# A365563: Number of free n-polysticks (or polyedges) in 5 dimensions.

The programs for A365563, there is no canonical definition to state claims against.
-/

/-! ## A365563.P17700869667867338330

`A385583(∑[∑[A355937(n+1)]])`
-/

namespace A365563.P17700869667867338330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355937 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385583 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A365563.P17700869667867338330

/-!
# A365564: Number of fixed n-polysticks (or polyedges) in 5 dimensions.

The programs for A365564, there is no canonical definition to state claims against.
-/

/-! ## A365564.P1469065491183070369

`A385581(A080685(n+1)+A000217(n+4))`
-/

namespace A365564.P1469065491183070369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385581 (A080685 (n + 1) + A000217 (n + 4)).toNat

end

end A365564.P1469065491183070369

/-!
# A365565: Number of free n-polysticks (or polyedges) in arbitrary dimension.

The programs for A365565, there is no canonical definition to state claims against.
-/

/-! ## A365565.P2524333762722405008

`A385583(∑[n+1])`
-/

namespace A365565.P2524333762722405008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385583 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365565.P2524333762722405008

/-!
# A365567: Expansion of e.g.f. 1 / (5 - 4 * exp(x))^(3/4).

The programs for A365567, there is no canonical definition to state claims against.
-/

/-! ## A365567.P13341111937874220729

`A181078(n)+A004526(A051539(n))`
-/

namespace A365567.P13341111937874220729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181078 n + A004526 (A051539 n).toNat

end

end A365567.P13341111937874220729

/-!
# A365568: Expansion of e.g.f. 1 / (6 - 5 * exp(x))^(2/5).

The programs for A365568, there is no canonical definition to state claims against.
-/

/-! ## A365568.P11668908287506502696

`A189786(a(n-1)*record[∑{p}[n, #]])` with `a(0)=1, a(1)=2`
-/

namespace A365568.P11668908287506502696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A189786 (a (n - 1) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)).toNat

end

end A365568.P11668908287506502696

/-!
# A365570: Expansion of e.g.f. 1 / (6 - 5 * exp(x))^(4/5).

The programs for A365570, there is no canonical definition to state claims against.
-/

/-! ## A365570.P9769808035610010858

`A200535(A000142(n)*A326562(n+1))`
-/

namespace A365570.P9769808035610010858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200535 (A000142 n * A326562 (n + 1)).toNat

end

end A365570.P9769808035610010858

/-!
# A365572: Number of total dominating sets in the n-Lucas cube graph.

The programs for A365572, there is no canonical definition to state claims against.
-/

/-! ## A365572.P6298823353665792129

`A116583(A199697(n+2))`
-/

namespace A365572.P6298823353665792129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116583 (A199697 (n + 2)).toNat

end

end A365572.P6298823353665792129

/-!
# A365573: Number of primes between prime(n) and prime(n)+log(prime(n)), exclusive.

The programs for A365573, there is no canonical definition to state claims against.
-/

/-! ## A365573.P17733836312704284908

`A120936(A000040(n+1))-1`
-/

namespace A365573.P17733836312704284908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120936 (A000040 (n + 1)).toNat - 1

end

end A365573.P17733836312704284908

/-! ## A365573.P2790529377235227089

`A120936(∑{d}[n+1, A007444(#)])-1`
-/

namespace A365573.P2790529377235227089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120936 (∑ d ∈ Nat.divisors (f1 n), A007444 d).toNat - 1

end

end A365573.P2790529377235227089

/-! ## A365573.P13711812698857442734

`A007918(n)%A120936(A000040(n+1))`
-/

namespace A365573.P13711812698857442734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007918 n) (A120936 (A000040 (n + 1)).toNat)

end

end A365573.P13711812698857442734

/-! ## A365573.P225777594045872925

`A122566(n)%A120936(A000040(n+1))`
-/

namespace A365573.P225777594045872925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122566 n) (A120936 (A000040 (n + 1)).toNat)

end

end A365573.P225777594045872925

/-! ## A365573.P733181414179573027

`A005385(n+1)%A120936(A000040(n+1))`
-/

namespace A365573.P733181414179573027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005385 (n + 1)) (A120936 (A000040 (n + 1)).toNat)

end

end A365573.P733181414179573027

/-! ## A365573.P6130168332897719559

`A081531(n+1)%A120936(A000040(n+1))`
-/

namespace A365573.P6130168332897719559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081531 (n + 1)) (A120936 (A000040 (n + 1)).toNat)

end

end A365573.P6130168332897719559

/-! ## A365573.P16936470334437861165

`A257129(n+1)%A120936(A000040(n+1))`
-/

namespace A365573.P16936470334437861165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257129 (n + 1)) (A120936 (A000040 (n + 1)).toNat)

end

end A365573.P16936470334437861165

/-! ## A365573.P17464092871332907677

`sqrt(A069549(n+1))%A120936(A000040(n+1))`
-/

namespace A365573.P17464092871332907677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A069549 (n + 1) : ℝ))) (A120936 (A000040 (n + 1)).toNat)

end

end A365573.P17464092871332907677

/-! ## A365573.P168704884396319119

`A000040(3*n+1)%A120936(A000040(n+1))`
-/

namespace A365573.P168704884396319119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (3 * n + 1)) (A120936 (A000040 (n + 1)).toNat)

end

end A365573.P168704884396319119

/-! ## A365573.P3516361240745278130

`(A053024(n+1)/(n+1))%A120936(A000040(n+1))`
-/

namespace A365573.P3516361240745278130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A053024 (n + 1) : ℚ) / (n + 1 : ℚ))) (A120936 (A000040 (n + 1)).toNat)

end

end A365573.P3516361240745278130

/-!
# A365574: Expansion of g.f. A(x) satisfying [x^(n-1)] (1 + (n+1)*x*A(x))^n / A(x)^n = n*(n+2)^(n-2) for n > 1.

The programs for A365574, there is no canonical definition to state claims against.
-/

/-! ## A365574.P16517224457542544838

`A357166(n)+A304760(A357147(n))`
-/

namespace A365574.P16517224457542544838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357166 n + A304760 (A357147 n).toNat

end

end A365574.P16517224457542544838

/-! ## A365574.P18247140415885333693

`A179402(A089243(n))`
-/

namespace A365574.P18247140415885333693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179402 (A089243 n).toNat

end

end A365574.P18247140415885333693

/-!
# A365575: Expansion of e.g.f. 1 / (1 + 3 * log(1-x))^(2/3).

The programs for A365575, there is no canonical definition to state claims against.
-/

/-! ## A365575.P16996471890307833705

`A144728(C(2*n, n))`
-/

namespace A365575.P16996471890307833705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144728 (Nat.choose (2 * n) n)

end

end A365575.P16996471890307833705

/-!
# A365576: a(1)=2; thereafter a(n) is the number of strongly connected components in the digraph of the sequence thus far, where jumps from location i to i+-a(i) are permitted (within 1..n-1).

The programs for A365576, there is no canonical definition to state claims against.
-/

/-! ## A365576.P3380247614429871617

`A267263(A085169(2*(n+2))+A079274(n))`
-/

namespace A365576.P3380247614429871617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A085169 (2 * (n + 2)) + A079274 n).toNat

end

end A365576.P3380247614429871617

/-! ## A365576.P10114438425348542844

`A095407(A382683(n)+A108548(n+5))`
-/

namespace A365576.P10114438425348542844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (A382683 n + A108548 (n + 5)).toNat

end

end A365576.P10114438425348542844

/-! ## A365576.P9508970734304268954

`A103921(A160530(3*n+1)+A082550(n+5))`
-/

namespace A365576.P9508970734304268954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A160530 (3 * n + 1) + A082550 (n + 5)).toNat

end

end A365576.P9508970734304268954

/-!
# A365577: Sequence of the short legs of primitive Pythagorean triples beginning with the triple (3,4,5), with each subsequent triple having as its short leg the sum of the legs of the previous triple, and with the long leg and the hypotenuse of each triple being consecutive natural numbers.

The programs for A365577, there is no canonical definition to state claims against.
-/

/-! ## A365577.P14009707361433304565

`2^(2^n+1)-1`
-/

namespace A365577.P14009707361433304565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 ^ n + 1) : ℤ) - 1

end

end A365577.P14009707361433304565

/-! ## A365577.P2462076615687080720

`floor(a(n-1)+a(n-1)²/2)` with `a(0)=3`
-/

namespace A365577.P2462076615687080720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℚ) + (a (n - 1) ^ 2 : ℚ) / 2⌋

end

end A365577.P2462076615687080720

/-! ## A365577.P10489051528334476250

`A126646(2^n)`
-/

namespace A365577.P10489051528334476250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (2 ^ n)

end

end A365577.P10489051528334476250

/-! ## A365577.P6405941041617849911

`A000225(A000051(n))`
-/

namespace A365577.P6405941041617849911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000051 n).toNat

end

end A365577.P6405941041617849911

/-! ## A365577.P16270795921572887780

`∩[A327461(n+1), A000225(n)]`
-/

namespace A365577.P16270795921572887780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365577.P16270795921572887780

/-!
# A365578: Number of asteroidal triple-free graphs on n vertices.

The programs for A365578, there is no canonical definition to state claims against.
-/

/-! ## A365578.P13875254725756884187

`A361978(A274232(n))`
-/

namespace A365578.P13875254725756884187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361978 (A274232 n).toNat

end

end A365578.P13875254725756884187

/-! ## A365578.P12210098421144152115

`A268445(A131385(n))+n`
-/

namespace A365578.P12210098421144152115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268445 (A131385 n).toNat + (n : ℤ)

end

end A365578.P12210098421144152115

/-!
# A365580: Number of dominating sets in the n-Lucas cube graph.

The programs for A365580, there is no canonical definition to state claims against.
-/

/-! ## A365580.P14191217877336053124

`or(A000201(A090356(n)), A111820(n+3))`
-/

namespace A365580.P14191217877336053124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000201 (A090356 n).toNat) (A111820 (n + 3))

end

end A365580.P14191217877336053124

/-!
# A365582: a(n) is the number at the third vertex of an equilateral triangle whose first and second vertices are at the numbers 1 and n, respectively, on a triangular array of integers.

The programs for A365582, the canonical program `A365582.P10913562028929217488` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365582 has offset 1).

The definition of A365582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365582.P10913562028929217488

`2-A049777(n+1)+n`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A365582

/-- `2-A049777(n+1)+n` -/
def P10913562028929217488.Spec : Prop :=
  ∀ n, P10913562028929217488.a n = A365582 (n + 1)

theorem P10913562028929217488.correct : P10913562028929217488.Spec := by
  intro n
  simp only [A365582, Nat.add_sub_cancel]

end A365582

/-! ## A365582.P16131041495959924124

`2-A205376(n+1)/8+n`
-/

namespace A365582.P16131041495959924124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (A205376 (n + 1) : ℚ) / 8 + (n : ℚ)

end

end A365582.P16131041495959924124

namespace A365582

/-- `2-A205376(n+1)/8+n` -/
def P16131041495959924124.Spec : Prop :=
  ∀ n, P16131041495959924124.a n = (A365582 (n + 1) : ℚ)

end A365582

/-! ## A365582.P1132687748150019405

`2-∑[char[∑[n]]]-A049780(n)+n`
-/

namespace A365582.P1132687748150019405
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A049780 n + (n : ℤ)

end

end A365582.P1132687748150019405

namespace A365582

/-- `2-∑[char[∑[n]]]-A049780(n)+n` -/
def P1132687748150019405.Spec : Prop :=
  ∀ n, P1132687748150019405.a n = A365582 (n + 1)

end A365582

/-! ## A365582.P12320736417682000203

`A112367(n)+2-(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A365582.P12320736417682000203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + 2 - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A365582.P12320736417682000203

namespace A365582

/-- `A112367(n)+2-(C(comp[∑[n]]-n, 2)-n)` -/
def P12320736417682000203.Spec : Prop :=
  ∀ n, P12320736417682000203.a n = A365582 (n + 1)

end A365582

/-! ## A365582.P2332655927826681986

`∑[A123110(n)]-A049780(n)`
-/

namespace A365582.P2332655927826681986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049780 n

end

end A365582.P2332655927826681986

namespace A365582

/-- `∑[A123110(n)]-A049780(n)` -/
def P2332655927826681986.Spec : Prop :=
  ∀ n, P2332655927826681986.a n = A365582 (n + 1)

end A365582

/-! ## A365582.P3070776567979800714

`A083920(n)+1-A049780(n)`
-/

namespace A365582.P3070776567979800714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n + 1 - A049780 n

end

end A365582.P3070776567979800714

namespace A365582

/-- `A083920(n)+1-A049780(n)` -/
def P3070776567979800714.Spec : Prop :=
  ∀ n, P3070776567979800714.a n = A365582 (n + 1)

end A365582

/-! ## A365582.P1268223313977119588

`A112367(n)+1-A025581(n)`
-/

namespace A365582.P1268223313977119588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + (1 - A025581 n)

end

end A365582.P1268223313977119588

namespace A365582

/-- `A112367(n)+1-A025581(n)` -/
def P1268223313977119588.Spec : Prop :=
  ∀ n, P1268223313977119588.a n = A365582 (n + 1)

end A365582

/-! ## A365582.P16621707323942886479

`A122797(n+1)-A049780(n)`
-/

namespace A365582.P16621707323942886479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (n + 1) - A049780 n

end

end A365582.P16621707323942886479

namespace A365582

/-- `A122797(n+1)-A049780(n)` -/
def P16621707323942886479.Spec : Prop :=
  ∀ n, P16621707323942886479.a n = A365582 (n + 1)

end A365582

/-! ## A365582.P582057722278514566

`A193973(n)-A204250(n+1)`
-/

namespace A365582.P582057722278514566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193973 n - A204250 (n + 1)

end

end A365582.P582057722278514566

namespace A365582

/-- `A193973(n)-A204250(n+1)` -/
def P582057722278514566.Spec : Prop :=
  ∀ n, P582057722278514566.a n = A365582 (n + 1)

end A365582

/-! ## A365582.P9930641042413962169

`A134464(n+1)-A279891(n)`
-/

namespace A365582.P9930641042413962169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134464 (n + 1) - A279891 n

end

end A365582.P9930641042413962169

namespace A365582

/-- `A134464(n+1)-A279891(n)` -/
def P9930641042413962169.Spec : Prop :=
  ∀ n, P9930641042413962169.a n = A365582 (n + 1)

end A365582

/-! ## A365582.P7916682799350669330

`A000124(A002260(n+1))-A002024(n+1)`
-/

namespace A365582.P7916682799350669330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A002260 (n + 1)).toNat - A002024 (n + 1)

end

end A365582.P7916682799350669330

namespace A365582

/-- `A000124(A002260(n+1))-A002024(n+1)` -/
def P7916682799350669330.Spec : Prop :=
  ∀ n, P7916682799350669330.a n = A365582 (n + 1)

end A365582

/-! ## A365582.P7775318023579182392

`A000124(A144328(n+1))-A144257(n+1)`
-/

namespace A365582.P7775318023579182392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A144328 (n + 1)).toNat - A144257 (n + 1)

end

end A365582.P7775318023579182392

namespace A365582

/-- `A000124(A144328(n+1))-A144257(n+1)` -/
def P7775318023579182392.Spec : Prop :=
  ∀ n, P7775318023579182392.a n = A365582 (n + 1)

end A365582

/-! ## A365582.P16945083265703410631

`A022958(A049777(n+1))+n`
-/

namespace A365582.P16945083265703410631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A049777 (n + 1)).toNat + (n : ℤ)

end

end A365582.P16945083265703410631

namespace A365582

/-- `A022958(A049777(n+1))+n` -/
def P16945083265703410631.Spec : Prop :=
  ∀ n, P16945083265703410631.a n = A365582 (n + 1)

end A365582

/-!
# A365584: Expansion of e.g.f. 1 / (1 + 4 * log(1-x))^(3/4).

The programs for A365584, there is no canonical definition to state claims against.
-/

/-! ## A365584.P5071858416354679642

`n*A311327(a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A365584.P5071858416354679642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n : ℤ) * A311327 (a (n - 1)).toNat

end

end A365584.P5071858416354679642

/-!
# A365585: Expansion of e.g.f. 1 / (1 + 5 * log(1-x))^(2/5).

The programs for A365585, there is no canonical definition to state claims against.
-/

/-! ## A365585.P7727188227891268891

`A004525(A167872(n)+A064093(n))`
-/

namespace A365585.P7727188227891268891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A167872 n + A064093 n).toNat

end

end A365585.P7727188227891268891

/-!
# A365586: Expansion of e.g.f. 1 / (1 + 5 * log(1-x))^(3/5).

The programs for A365586, there is no canonical definition to state claims against.
-/

/-! ## A365586.P7461119917926409205

`A026430(A000984(n)*A189886(n))`
-/

namespace A365586.P7461119917926409205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A000984 n * A189886 n).toNat

end

end A365586.P7461119917926409205

/-!
# A365588: Expansion of e.g.f. 1 / (1 + 5 * log(1-x)).

The programs for A365588, there is no canonical definition to state claims against.
-/

/-! ## A365588.P12677501661645261709

`A320079(A055999(n+3))`
-/

namespace A365588.P12677501661645261709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 (A055999 (n + 3)).toNat

end

end A365588.P12677501661645261709

/-! ## A365588.P17310388963346103956

`A320079(eq[5, A025581(n)])`
-/

namespace A365588.P17310388963346103956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A365588.P17310388963346103956

/-!
# A365589: Numbers that have at least one prime digit and at least one nonprime digit.

The programs for A365589, there is no canonical definition to state claims against.
-/

/-! ## A365589.P6633117069526750768

`comp[A365472(n+1)]`
-/

namespace A365589.P6633117069526750768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A365589.P6633117069526750768

/-! ## A365589.P12749765498565203963

`∩[A118950(n+1), A365471(n+1)]`
-/

namespace A365589.P12749765498565203963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365589.P12749765498565203963

/-! ## A365589.P3423826688456975462

`∪[A085520(n+1), A125664(n+1)]`
-/

namespace A365589.P3423826688456975462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365589.P3423826688456975462

/-! ## A365589.P14875364728801065594

`A092620(n+5)+A000122(A095787(n+1))`
-/

namespace A365589.P14875364728801065594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 5) + A000122 (A095787 (n + 1)).toNat

end

end A365589.P14875364728801065594

/-! ## A365589.P14839950182645774412

`A092620(n+5)+A000122(A177210(n+1))`
-/

namespace A365589.P14839950182645774412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 5) + A000122 (A177210 (n + 1)).toNat

end

end A365589.P14839950182645774412

/-! ## A365589.P434584716638211505

`A092620(n+5)%A000118(A081318(n+1))`
-/

namespace A365589.P434584716638211505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092620 (n + 5)) (A000118 (A081318 (n + 1)).toNat)

end

end A365589.P434584716638211505

/-! ## A365589.P12861249653156560537

`A092620(n+5)%A092614(n+3)`
-/

namespace A365589.P12861249653156560537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092620 (n + 5)) (A092614 (n + 3))

end

end A365589.P12861249653156560537

/-! ## A365589.P6680544671648508925

`A252464(A155989(n+5))`
-/

namespace A365589.P6680544671648508925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A155989 (n + 5)).toNat

end

end A365589.P6680544671648508925

/-! ## A365589.P15879846506115603583

`A092620(n+5)+A019590(A092599(n+5))`
-/

namespace A365589.P15879846506115603583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 5) + A019590 (A092599 (n + 5)).toNat

end

end A365589.P15879846506115603583

/-!
# A365591: Numbers k such that Sum_{i=1..k} prime(i) + i is prime.

The programs for A365591, there is no canonical definition to state claims against.
-/

/-! ## A365591.P3721896506098446091

`eq[1, A001222(∑[A014688(n+1)])]+1`
-/

namespace A365591.P3721896506098446091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A365591.P3721896506098446091

/-!
# A365592: Near-repdigit primes with at least two 1's as the repeated digit.

The programs for A365592, there is no canonical definition to state claims against.
-/

/-! ## A365592.P2290771702989233258

`∩[A062353(n+1), A105992(n+1)]`
-/

namespace A365592.P2290771702989233258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365592.P2290771702989233258

/-! ## A365592.P9537644944444468885

`∩[A061244(n+1), A105992(n+1)]`
-/

namespace A365592.P9537644944444468885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365592.P9537644944444468885

/-! ## A365592.P11508022879655894890

`∩[A056710(n+1), A274125(n+1)]`
-/

namespace A365592.P11508022879655894890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365592.P11508022879655894890

/-! ## A365592.P3886521284999563389

`∩[A030291(n+3), A259300(n+1)+1]`
-/

namespace A365592.P3886521284999563389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259300 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365592.P3886521284999563389

/-! ## A365592.P7572581453502685659

`∩[A048321(n+1), A069488(n+1)]`
-/

namespace A365592.P7572581453502685659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365592.P7572581453502685659

/-!
# A365593: Number of n X n Boolean relation matrices such that every block of its Frobenius normal form is either a 0 block or a 1 block.

The programs for A365593, there is no canonical definition to state claims against.
-/

/-! ## A365593.P86171375692268919

`A345033(A000045(2*n+1))+A140517(n)`
-/

namespace A365593.P86171375692268919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345033 (A000045 (2 * n + 1)).toNat + A140517 n

end

end A365593.P86171375692268919

/-!
# A365595: The numerators of a series that converges to 1/e obtained using Whittaker's Root Series Formula.

The programs for A365595, there is no canonical definition to state claims against.
-/

/-! ## A365595.P393705943578196464

`A117278(xor(82, abs(record[-(-3)^n])))`
-/

namespace A365595.P393705943578196464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-3) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117278 (Int.xor 82 |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|).toNat

end

end A365595.P393705943578196464

/-!
# A365596: Near-repdigit primes with at least two 3's as the repeated digit.

The programs for A365596, there is no canonical definition to state claims against.
-/

/-! ## A365596.P7791334274019662791

`∩[A062353(n+1), A105981(n+1)]`
-/

namespace A365596.P7791334274019662791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365596.P7791334274019662791

/-! ## A365596.P3879416866209012155

`∩[A105981(n+1), A321363(n+1)]`
-/

namespace A365596.P3879416866209012155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365596.P3879416866209012155

/-!
# A365599: Expansion of e.g.f. 1 / (1 - 3 * log(1 + x))^(2/3).

The programs for A365599, there is no canonical definition to state claims against.
-/

/-! ## A365599.P11413502456247378952

`ceil(A306006(3*(n+1))/8)`
-/

namespace A365599.P11413502456247378952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A306006 (3 * (n + 1)) : ℚ) / 8⌉

end

end A365599.P11413502456247378952

