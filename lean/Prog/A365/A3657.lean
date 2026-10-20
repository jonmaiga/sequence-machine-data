import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A365703: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest positive number that has not yet appeared whose string value contains at least one prime factor of a(n-1).

The programs for A365703, there is no canonical definition to state claims against.
-/

/-! ## A365703.P11645770662974193057

`A267320(n)+A132350(A002110(n))`
-/

namespace A365703.P11645770662974193057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267320 n + A132350 (A002110 n).toNat

end

end A365703.P11645770662974193057

/-! ## A365703.P6307722167547740020

`A340655(A001333(n))+A267320(n)`
-/

namespace A365703.P6307722167547740020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340655 (A001333 n).toNat + A267320 n

end

end A365703.P6307722167547740020

/-!
# A365705: Underline the digit immediately to the right of the center of each term (see the Comments section for the definition of "center"). This is the lexicographically earliest sequence of distinct integers > 9 such that the successive underlined digits duplicate the sequence itself, digit by digit.

The programs for A365705, there is no canonical definition to state claims against.
-/

/-! ## A365705.P16968781784512155057

`A106001(n+10)`
-/

namespace A365705.P16968781784512155057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106001 (n + 10)

end

end A365705.P16968781784512155057

/-!
# A365708: a(n) for n >= 2 is the smallest term of A008578 m dividing n such that n/m is not a square, a(1) = 2.

The programs for A365708, there is no canonical definition to state claims against.
-/

/-! ## A365708.P1909314581184835893

`char[n²-1]*∏{p}[A020639(n+1), #-1]+1`
-/

namespace A365708.P1909314581184835893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n).natAbs, ((p : ℤ) - 1)) + 1

end

end A365708.P1909314581184835893

/-! ## A365708.P336957015887496136

`A020639((C(2, C(3, n²))+n)^A000122(n+1))`
-/

namespace A365708.P336957015887496136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n : ℚ) ^ (A000122 (n + 1) : ℤ))).toNat

end

end A365708.P336957015887496136

/-! ## A365708.P8731989693067755586

`A165035(A000122(n+1)*A056939(n))`
-/

namespace A365708.P8731989693067755586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165035 (A000122 (n + 1) * A056939 n).toNat

end

end A365708.P8731989693067755586

/-! ## A365708.P14018175828701984870

`A116417(A000122(n+1)*A254414(n))`
-/

namespace A365708.P14018175828701984870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (A000122 (n + 1) * A254414 n).toNat

end

end A365708.P14018175828701984870

/-!
# A365709: Number of rigid configurations of n non-overlapping congruent spheres in three-dimensional Euclidean space.

The programs for A365709, there is no canonical definition to state claims against.
-/

/-! ## A365709.P9945985330024241561

`ogf((-1+3x+3x^2+3x^3+3x^4+2x^5+3x^6+7x^7)/(-1+4x))`
-/

namespace A365709.P9945985330024241561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -3, -3, -3, -2, -3, -7] [1, -4] n

end

end A365709.P9945985330024241561

/-! ## A365709.P11478491601200317974

`2*(n-3)*a(n-2)+2` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2, a(6)=5, a(7)=13`
-/

namespace A365709.P11478491601200317974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 2, 5, 13] fun n a =>
  2 * (((n : ℤ) - 3) * a (n - 2)) + 2

end

end A365709.P11478491601200317974

/-! ## A365709.P18128842241935800865

`A308080(C(n, 5))`
-/

namespace A365709.P18128842241935800865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308080 (Nat.choose n 5)

end

end A365709.P18128842241935800865

/-! ## A365709.P16045775573725283478

`ceil(A301308(n)/6)`
-/

namespace A365709.P16045775573725283478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A301308 n : ℚ) / 6⌉

end

end A365709.P16045775573725283478

/-! ## A365709.P557766978303985053

`ceil(A382181(n)/6)`
-/

namespace A365709.P557766978303985053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A382181 n : ℚ) / 6⌉

end

end A365709.P557766978303985053

/-!
# A365710: a(n) = second smallest distinct prime factor of A126706(n).

The programs for A365710, there is no canonical definition to state claims against.
-/

/-! ## A365710.P6495942402936718703

`A119288(A126706(n+1))`
-/

namespace A365710.P6495942402936718703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A126706 (n + 1)).toNat

end

end A365710.P6495942402936718703

/-! ## A365710.P4983164943679774580

`A014673(A365783(n+1))`
-/

namespace A365710.P4983164943679774580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A365783 (n + 1)).toNat

end

end A365710.P4983164943679774580

/-! ## A365710.P3050056402527084409

`A119288(A360719(n+1))`
-/

namespace A365710.P3050056402527084409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A360719 (n + 1)).toNat

end

end A365710.P3050056402527084409

/-! ## A365710.P8207264759410022770

`A119288(A362432(n+1))`
-/

namespace A365710.P8207264759410022770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A362432 (n + 1)).toNat

end

end A365710.P8207264759410022770

/-! ## A365710.P3532015018968798556

`A376833(A365785(n+1))`
-/

namespace A365710.P3532015018968798556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376833 (A365785 (n + 1)).toNat

end

end A365710.P3532015018968798556

/-!
# A365711: Dirichlet inverse of balanced ternary enumeration of integers (A117966).

The programs for A365711, there is no canonical definition to state claims against.
-/

/-! ## A365711.P1635669249762863885

`A365712(n+1)-A117966(n+1)`
-/

namespace A365711.P1635669249762863885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365712 (n + 1) - A117966 (n + 1)

end

end A365711.P1635669249762863885

/-!
# A365712: Sum of balanced ternary enumeration of integers (A117966) and its Dirichlet inverse.

The programs for A365712, there is no canonical definition to state claims against.
-/

/-! ## A365712.P4512494633888966760

`A117966(n+1)+A365711(n+1)`
-/

namespace A365712.P4512494633888966760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (n + 1) + A365711 (n + 1)

end

end A365712.P4512494633888966760

/-!
# A365713: Dirichlet inverse of reversing binary value of n (A065620).

The programs for A365713, there is no canonical definition to state claims against.
-/

/-! ## A365713.P14174175884433901651

`A365714(n+1)+A104895(n+1)`
-/

namespace A365713.P14174175884433901651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365714 (n + 1) + A104895 (n + 1)

end

end A365713.P14174175884433901651

/-! ## A365713.P4298601574748024877

`A365714(n+1)-A065620(n+1)`
-/

namespace A365713.P4298601574748024877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365714 (n + 1) - A065620 (n + 1)

end

end A365713.P4298601574748024877

/-!
# A365714: Sum of reversing binary value of n (A065620) and its Dirichlet inverse.

The programs for A365714, there is no canonical definition to state claims against.
-/

/-! ## A365714.P13827517118633724327

`A065620(n+1)+A365713(n+1)`
-/

namespace A365714.P13827517118633724327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (n + 1) + A365713 (n + 1)

end

end A365714.P13827517118633724327

/-! ## A365714.P2764722470132248707

`A365713(n+1)-A104895(n+1)`
-/

namespace A365714.P2764722470132248707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365713 (n + 1) - A104895 (n + 1)

end

end A365714.P2764722470132248707

/-!
# A365715: Lexicographically earliest infinite sequence such that a(i) = a(j) => A365465(i) = A365465(j) for all i, j >= 1, where A365465(n) = A356867(n) / gcd(n, A356867(n)), and A356867 is Sycamore's Doudna variant D(3).

The programs for A365715, there is no canonical definition to state claims against.
-/

/-! ## A365715.P14230016744769333529

`gcd(A008619(n), A316828(A076836(n+1)))`
-/

namespace A365715.P14230016744769333529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 n) (A316828 (A076836 (n + 1)).toNat)

end

end A365715.P14230016744769333529

/-!
# A365716: a(n) = 1 if the largest divisor of n <= sqrt(n) is a power of 2, otherwise 0.

The programs for A365716, there is no canonical definition to state claims against.
-/

/-! ## A365716.P10344207947194291473

`A209229(A033676(n+1))`
-/

namespace A365716.P10344207947194291473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A033676 (n + 1)).toNat

end

end A365716.P10344207947194291473

/-! ## A365716.P7236146392407024157

`A365605(A033676(n+1)²)`
-/

namespace A365716.P7236146392407024157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365605 (A033676 (n + 1) ^ 2).toNat

end

end A365716.P7236146392407024157

/-! ## A365716.P9115024117634139434

`A365605(A033676(n+1)*A033676(n+1))`
-/

namespace A365716.P9115024117634139434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365605 (A033676 (n + 1) * A033676 (n + 1)).toNat

end

end A365716.P9115024117634139434

/-! ## A365716.P518318124078889271

`C(A003963(A033677(n+1)), A003963(n+1))`
-/

namespace A365716.P518318124078889271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003963 (A033677 (n + 1)).toNat).toNat (A003963 (n + 1)).toNat

end

end A365716.P518318124078889271

/-! ## A365716.P6822945376818005841

`C(A332819(A033677(n+1)), A332819(n+1))`
-/

namespace A365716.P6822945376818005841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A332819 (A033677 (n + 1)).toNat).toNat (A332819 (n + 1)).toNat

end

end A365716.P6822945376818005841

/-!
# A365717: a(n) is the least k such that A003961^i(k) = A356867(1+n) for some i >= 0, where A003961^i denotes the i-th iterate of prime shift, and A356867 is Sycamore's Doudna variant D(3).

The programs for A365717, there is no canonical definition to state claims against.
-/

/-! ## A365717.P12644785269395952918

`A348717(A356867(1+n))`
-/

namespace A365717.P12644785269395952918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A356867 (1 + n)).toNat

end

end A365717.P12644785269395952918

/-! ## A365717.P7140209581594223323

`A348717(A365462(n+1)+1+n)`
-/

namespace A365717.P7140209581594223323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A365462 (n + 1) + 1 + (n : ℤ)).toNat

end

end A365717.P7140209581594223323

/-!
# A365719: The least number with the same prime signature as A356867(1+n), where A356867 is Sycamore's Doudna variant D(3).

The programs for A365719, there is no canonical definition to state claims against.
-/

/-! ## A365719.P14227354928744003875

`A046523(A356867(1+n))`
-/

namespace A365719.P14227354928744003875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A356867 (1 + n)).toNat

end

end A365719.P14227354928744003875

/-! ## A365719.P10949909049575853130

`A046523(A365717(n))`
-/

namespace A365719.P10949909049575853130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A365717 n).toNat

end

end A365719.P10949909049575853130

/-! ## A365719.P206323761068288404

`A324842(A365720(n)%A077775(n+3))`
-/

namespace A365719.P206323761068288404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324842 (Int.tmod (A365720 n) (A077775 (n + 3))).toNat

end

end A365719.P206323761068288404

/-! ## A365719.P16265844103220662127

`A324842(A365720(n))%A218600(2*n+3)`
-/

namespace A365719.P16265844103220662127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324842 (A365720 n).toNat) (A218600 (2 * n + 3))

end

end A365719.P16265844103220662127

/-!
# A365720: Lexicographically earliest infinite sequence such that a(i) = a(j) => A365719(i) = A365719(j) for all i, j >= 0, where A365719(n) = A046523(A356867(1+n)).

The programs for A365720, there is no canonical definition to state claims against.
-/

/-! ## A365720.P18328501905422349064

`A368105(A356867(n+1)²)`
-/

namespace A365720.P18328501905422349064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368105 (A356867 (n + 1) ^ 2).toNat

end

end A365720.P18328501905422349064

/-! ## A365720.P11413403452607379538

`A101296(A356867(n+1)%A348551(3*n+2))`
-/

namespace A365720.P11413403452607379538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (Int.tmod (A356867 (n + 1)) (A348551 (3 * n + 2))).toNat

end

end A365720.P11413403452607379538

/-! ## A365720.P4361323522501584068

`A181819(A356867(n+1))%A333028(3*n+4)`
-/

namespace A365720.P4361323522501584068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181819 (A356867 (n + 1)).toNat) (A333028 (3 * n + 4))

end

end A365720.P4361323522501584068

/-! ## A365720.P10394536279566409762

`A101296(A356867(n+1)-A185284(2*n+1))`
-/

namespace A365720.P10394536279566409762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A356867 (n + 1) - A185284 (2 * n + 1)).toNat

end

end A365720.P10394536279566409762

/-!
# A365721: The number of distinct prime factors in A356867(1+n), where A356867 is Sycamore's Doudna variant D(3).

The programs for A365721, there is no canonical definition to state claims against.
-/

/-! ## A365721.P13351650149021999883

`A001221(A365719(n))`
-/

namespace A365721.P13351650149021999883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A365719 n).toNat

end

end A365721.P13351650149021999883

/-! ## A365721.P17294440285090405641

`A001221(A356867(1+n))`
-/

namespace A365721.P17294440285090405641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A356867 (1 + n)).toNat

end

end A365721.P17294440285090405641

/-! ## A365721.P2876375019797754701

`A001222(∏{p}[A365719(n), #])`
-/

namespace A365721.P2876375019797754701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A365721.P2876375019797754701

/-! ## A365721.P18083671922416509663

`A061395(A365719(n))%A253083(n)`
-/

namespace A365721.P18083671922416509663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A365719 n).toNat) (A253083 n)

end

end A365721.P18083671922416509663

/-! ## A365721.P18038774971005892362

`∑{e}[A356867(n+1), A213652(#)]`
-/

namespace A365721.P18038774971005892362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A213652 (Nat.factorization (f1 n).natAbs p)

end

end A365721.P18038774971005892362

/-! ## A365721.P16737190180569866194

`A001221(A365717(n))`
-/

namespace A365721.P16737190180569866194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A365717 n).toNat

end

end A365721.P16737190180569866194

/-! ## A365721.P18028274120685999745

`A061395(A365719(n)²)`
-/

namespace A365721.P18028274120685999745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A365719 n ^ 2).toNat

end

end A365721.P18028274120685999745

/-!
# A365722: The number of prime factors (with multiplicity) in A356867(1+n), where A356867 is Sycamore's Doudna variant D(3).

The programs for A365722, the canonical program `A365722.P13092510247685121103` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365722 has offset 0).

The definition of A365722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365722.P13092510247685121103

`A053735(n)-A007949(1+n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A365722

/-- `A053735(n)-A007949(1+n)` -/
def P13092510247685121103.Spec : Prop :=
  ∀ n, P13092510247685121103.a n = A365722 n

theorem P13092510247685121103.correct : P13092510247685121103.Spec := by
  intro n
  simp only [A365722]

end A365722

/-! ## A365722.P59034137245222154

`A001222(A365719(n))`
-/

namespace A365722.P59034137245222154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A365719 n).toNat

end

end A365722.P59034137245222154

namespace A365722

/-- `A001222(A365719(n))` -/
def P59034137245222154.Spec : Prop :=
  ∀ n, P59034137245222154.a n = A365722 n

end A365722

/-! ## A365722.P13696986035528237777

`A001222(A356867(1+n))`
-/

namespace A365722.P13696986035528237777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A356867 (1 + n)).toNat

end

end A365722.P13696986035528237777

namespace A365722

/-- `A001222(A356867(1+n))` -/
def P13696986035528237777.Spec : Prop :=
  ∀ n, P13696986035528237777.a n = A365722 n

end A365722

/-! ## A365722.P12917756611515098817

`A089643(n)+A067397(n)`
-/

namespace A365722.P12917756611515098817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 n + A067397 n

end

end A365722.P12917756611515098817

namespace A365722

/-- `A089643(n)+A067397(n)` -/
def P12917756611515098817.Spec : Prop :=
  ∀ n, P12917756611515098817.a n = A365722 n

end A365722

/-! ## A365722.P443801138818559355

`A089792(n)-A054861(n+1)`
-/

namespace A365722.P443801138818559355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089792 n - A054861 (n + 1)

end

end A365722.P443801138818559355

namespace A365722

/-- `A089792(n)-A054861(n+1)` -/
def P443801138818559355.Spec : Prop :=
  ∀ n, P443801138818559355.a n = A365722 n

end A365722

/-! ## A365722.P10665463108836457099

`A173523(n+1)-A051064(n+1)`
-/

namespace A365722.P10665463108836457099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1) - A051064 (n + 1)

end

end A365722.P10665463108836457099

namespace A365722

/-- `A173523(n+1)-A051064(n+1)` -/
def P10665463108836457099.Spec : Prop :=
  ∀ n, P10665463108836457099.a n = A365722 n

end A365722

/-! ## A365722.P229493958795954348

`A053735(n)+A067397(n)-A000989(n)`
-/

namespace A365722.P229493958795954348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + (A067397 n - A000989 n)

end

end A365722.P229493958795954348

namespace A365722

/-- `A053735(n)+A067397(n)-A000989(n)` -/
def P229493958795954348.Spec : Prop :=
  ∀ n, P229493958795954348.a n = A365722 n

end A365722

/-! ## A365722.P2697030194611347353

`A053735(n)+A054861(n)-A054861(n+1)`
-/

namespace A365722.P2697030194611347353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + (A054861 n - A054861 (n + 1))

end

end A365722.P2697030194611347353

namespace A365722

/-- `A053735(n)+A054861(n)-A054861(n+1)` -/
def P2697030194611347353.Spec : Prop :=
  ∀ n, P2697030194611347353.a n = A365722 n

end A365722

/-! ## A365722.P4249601064286231591

`A004128(n)-(A344853(n)+A054861(n+1))`
-/

namespace A365722.P4249601064286231591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n - (A344853 n + A054861 (n + 1))

end

end A365722.P4249601064286231591

namespace A365722

/-- `A004128(n)-(A344853(n)+A054861(n+1))` -/
def P4249601064286231591.Spec : Prop :=
  ∀ n, P4249601064286231591.a n = A365722 n

end A365722

/-! ## A365722.P17930067785537128466

`∑{e}[A365717(n), #]`
-/

namespace A365722.P17930067785537128466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A365722.P17930067785537128466

namespace A365722

/-- `∑{e}[A365717(n), #]` -/
def P17930067785537128466.Spec : Prop :=
  ∀ n, (P17930067785537128466.a n : ℤ) = A365722 n

end A365722

/-! ## A365722.P4196978539029851929

`A000120(A023717(2*n+1)-A023717(n+1))`
-/

namespace A365722.P4196978539029851929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A023717 (2 * n + 1) - A023717 (n + 1)).toNat

end

end A365722.P4196978539029851929

namespace A365722

/-- `A000120(A023717(2*n+1)-A023717(n+1))` -/
def P4196978539029851929.Spec : Prop :=
  ∀ n, P4196978539029851929.a n = A365722 n

end A365722

/-! ## A365722.P12930218073237862015

`∑{e}[A356867(n+1), #]`
-/

namespace A365722.P12930218073237862015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356867 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A365722.P12930218073237862015

namespace A365722

/-- `∑{e}[A356867(n+1), #]` -/
def P12930218073237862015.Spec : Prop :=
  ∀ n, (P12930218073237862015.a n : ℤ) = A365722 n

end A365722

/-! ## A365722.P4396708302033317611

`∑{e}[A365462(n+1)+1+n, #]`
-/

namespace A365722.P4396708302033317611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365462 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A365722.P4396708302033317611

namespace A365722

/-- `∑{e}[A365462(n+1)+1+n, #]` -/
def P4396708302033317611.Spec : Prop :=
  ∀ n, (P4396708302033317611.a n : ℤ) = A365722 n

end A365722

/-! ## A365722.P15959879429874249285

`A001222(A365717(n))`
-/

namespace A365722.P15959879429874249285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A365717 n).toNat

end

end A365722.P15959879429874249285

namespace A365722

/-- `A001222(A365717(n))` -/
def P15959879429874249285.Spec : Prop :=
  ∀ n, P15959879429874249285.a n = A365722 n

end A365722

/-!
# A365725: G.f. satisfies A(x) = 1 + x^3*A(x)^4*(1 + x*A(x)).

The programs for A365725, there is no canonical definition to state claims against.
-/

/-! ## A365725.P6640730432229936265

`A000217(n+2)%A209874(A023422(n))`
-/

namespace A365725.P6640730432229936265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 2)) (A209874 (A023422 n).toNat)

end

end A365725.P6640730432229936265

/-!
# A365732: G.f. satisfies A(x) = 1 + x*A(x)*(1 + x^5*A(x)^2).

The programs for A365732, there is no canonical definition to state claims against.
-/

/-! ## A365732.P15847066119770261695

`A224875(A100136(n))`
-/

namespace A365732.P15847066119770261695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224875 (A100136 n).toNat

end

end A365732.P15847066119770261695

/-! ## A365732.P1548776195017323930

`A008615(2*A100136(n))`
-/

namespace A365732.P1548776195017323930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A100136 n).toNat

end

end A365732.P1548776195017323930

/-! ## A365732.P9882559848224235264

`A157271(A393250(n))`
-/

namespace A365732.P9882559848224235264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A393250 n).toNat

end

end A365732.P9882559848224235264

/-! ## A365732.P2379054462887333825

`A118759(A101552(n)+A119326(n)²)`
-/

namespace A365732.P2379054462887333825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A101552 n + A119326 n ^ 2).toNat

end

end A365732.P2379054462887333825

/-! ## A365732.P14519034122861481565

`A118759(A101552(n)+A196929(n+1)²)`
-/

namespace A365732.P14519034122861481565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A101552 n + A196929 (n + 1) ^ 2).toNat

end

end A365732.P14519034122861481565

/-!
# A365733: G.f. satisfies A(x) = 1 + x*A(x)*(1 + x^5*A(x)^3).

The programs for A365733, there is no canonical definition to state claims against.
-/

/-! ## A365733.P13494185383814513947

`∑[A007150(A100135(n))+1]-n`
-/

namespace A365733.P13494185383814513947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007150 (A100135 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A365733.P13494185383814513947

/-! ## A365733.P12688315965761227351

`A348289(n+2)%A064592(n+1)`
-/

namespace A365733.P12688315965761227351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348289 (n + 2)) (A064592 (n + 1))

end

end A365733.P12688315965761227351

/-! ## A365733.P10407389864168867867

`A348289(A029837(∑[ceil(3*2^(n-1))]))`
-/

namespace A365733.P10407389864168867867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348289 (A029837 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A365733.P10407389864168867867

/-! ## A365733.P11675934725479923933

`∑[A369814(3*(n+1))%A121650(2*n+3)]-n`
-/

namespace A365733.P11675934725479923933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369814 (3 * (n + 1))) (A121650 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A365733.P11675934725479923933

/-! ## A365733.P15051346805358475084

`A348289(A348289(A348290(n))+n+1)`
-/

namespace A365733.P15051346805358475084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348289 (A348289 (A348290 n).toNat + (n + 1 : ℤ)).toNat

end

end A365733.P15051346805358475084

/-!
# A365734: G.f. satisfies A(x) = 1 + x*A(x) / (1 - x^5*A(x)^2).

The programs for A365734, there is no canonical definition to state claims against.
-/

/-! ## A365734.P10359068192190543492

`char[11]+A369814(3*(n+1))%A121650(2*n+3)`
-/

namespace A365734.P10359068192190543492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.tmod (A369814 (3 * (n + 1))) (A121650 (2 * n + 3))

end

end A365734.P10359068192190543492

/-! ## A365734.P11452074002541115001

`A212619(A123910(n+1))+A100134(n)`
-/

namespace A365734.P11452074002541115001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A123910 (n + 1)).toNat + A100134 n

end

end A365734.P11452074002541115001

/-! ## A365734.P12133831706887738649

`A100134(A004917(n+1))+A024158(n+1)`
-/

namespace A365734.P12133831706887738649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100134 (A004917 (n + 1)).toNat + A024158 (n + 1)

end

end A365734.P12133831706887738649

/-! ## A365734.P15455215131830816588

`A365732(n)+A010054(A161409(3*(n+1)))`
-/

namespace A365734.P15455215131830816588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365732 n + A010054 (A161409 (3 * (n + 1))).toNat

end

end A365734.P15455215131830816588

/-! ## A365734.P9822079129171263829

`A278855(A071585(n))+A007150(A100135(n))+1`
-/

namespace A365734.P9822079129171263829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (A071585 n).toNat + (A007150 (A100135 n).toNat + 1)

end

end A365734.P9822079129171263829

/-!
# A365735: G.f. satisfies A(x) = 1 + x*A(x) / (1 - x^5*A(x)^3).

The programs for A365735, there is no canonical definition to state claims against.
-/

/-! ## A365735.P2641945429522347097

`A005676(A098447(∑[abs(1-n)]))`
-/

namespace A365735.P2641945429522347097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005676 (A098447 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A365735.P2641945429522347097

/-! ## A365735.P9653359890955132705

`A016098(A007318(n))+A348289(n+2)%A064592(n+1)`
-/

namespace A365735.P9653359890955132705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016098 (A007318 n).toNat + Int.tmod (A348289 (n + 2)) (A064592 (n + 1))

end

end A365735.P9653359890955132705

/-! ## A365735.P4939507945109029783

`A365733(A062399(n))`
-/

namespace A365735.P4939507945109029783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365733 (A062399 n).toNat

end

end A365735.P4939507945109029783

/-! ## A365735.P12763386036417355418

`A365733(A120126(n))`
-/

namespace A365735.P12763386036417355418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365733 (A120126 n).toNat

end

end A365735.P12763386036417355418

/-! ## A365735.P3912245690242663187

`A365733(A351870(n))`
-/

namespace A365735.P3912245690242663187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365733 (A351870 n).toNat

end

end A365735.P3912245690242663187

/-!
# A365736: G.f. satisfies A(x) = 1 + x*A(x) / (1 - x^5*A(x)^4).

The programs for A365736, there is no canonical definition to state claims against.
-/

/-! ## A365736.P13707366027328887777

`A340102(A365734(n))+A108907(n)`
-/

namespace A365736.P13707366027328887777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (A365734 n).toNat + A108907 n

end

end A365736.P13707366027328887777

/-! ## A365736.P16668746757618771490

`A108907(n)+A104404(A032027(n+1))`
-/

namespace A365736.P16668746757618771490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108907 n + A104404 (A032027 (n + 1)).toNat

end

end A365736.P16668746757618771490

/-! ## A365736.P5174378888811196603

`A340102(A202906(n+1))+A108907(n)`
-/

namespace A365736.P5174378888811196603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (A202906 (n + 1)).toNat + A108907 n

end

end A365736.P5174378888811196603

/-! ## A365736.P4337677522639190132

`A099132(n)+A010054(A161409(3*(n+1)))`
-/

namespace A365736.P4337677522639190132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099132 n + A010054 (A161409 (3 * (n + 1))).toNat

end

end A365736.P4337677522639190132

/-! ## A365736.P16163992095131425877

`A127840(5*n+7)+A091225(A154231(n))`
-/

namespace A365736.P16163992095131425877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (5 * n + 7) + A091225 (A154231 n).toNat

end

end A365736.P16163992095131425877

/-!
# A365737: Length of the longest subsequence of 1,...,n on which the Euler totient function phi A000010 is nonincreasing.

The programs for A365737, there is no canonical definition to state claims against.
-/

/-! ## A365737.P4451196953496901137

`A084558(∑[A114717(n+1)²])`
-/

namespace A365737.P4451196953496901137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114717 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A365737.P4451196953496901137

/-! ## A365737.P15580413927845411704

`A084558(A084558(n+1)^A111854(n+1))`
-/

namespace A365737.P15580413927845411704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway ((A084558 (n + 1) : ℚ) ^ (A111854 (n + 1) : ℤ))).toNat

end

end A365737.P15580413927845411704

/-! ## A365737.P13976074550106970229

`A056172(A196176(2*(n+2))+A196176(n+1))`
-/

namespace A365737.P13976074550106970229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A196176 (2 * (n + 2)) + A196176 (n + 1)).toNat

end

end A365737.P13976074550106970229

/-!
# A365738: a(n) = A365737(10^n).

The programs for A365738, there is no canonical definition to state claims against.
-/

/-! ## A365738.P18187657560900464098

`A304793(A032031(n))+A007717(n)`
-/

namespace A365738.P18187657560900464098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A032031 n).toNat + A007717 n

end

end A365738.P18187657560900464098

/-! ## A365738.P2659722699413031548

`A308520(n)+A083060(A277493(n))`
-/

namespace A365738.P2659722699413031548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308520 n + A083060 (A277493 n).toNat

end

end A365738.P2659722699413031548

/-!
# A365739: a(n)=A365339(10^n)-A365740(10^n).

The programs for A365739, there is no canonical definition to state claims against.
-/

/-! ## A365739.P6316538452576500194

`A365474(n)-A365741(n)`
-/

namespace A365739.P6316538452576500194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365474 n - A365741 n

end

end A365739.P6316538452576500194

/-! ## A365739.P13670542574303956285

`A365474(A007953(n))%A365741(n)`
-/

namespace A365739.P13670542574303956285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365474 (A007953 n).toNat) (A365741 n)

end

end A365739.P13670542574303956285

/-! ## A365739.P10977807049381315643

`A365474(A171827(n+1))%A365741(n)`
-/

namespace A365739.P10977807049381315643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365474 (A171827 (n + 1)).toNat) (A365741 n)

end

end A365739.P10977807049381315643

/-!
# A365740: Length of the longest subsequence of {m: 1<=m<=n, m not prime} on which the Euler totient function phi A000010 is nondecreasing.

The programs for A365740, there is no canonical definition to state claims against.
-/

/-! ## A365740.P12287424870668633738

`∑[A351077(A275870(n+1)²)]`
-/

namespace A365740.P12287424870668633738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351077 (A275870 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365740.P12287424870668633738

/-! ## A365740.P16345492892427322089

`∑[ceil((A001285(A039599(2*(n+2)))-1)/2)]+1`
-/

namespace A365740.P16345492892427322089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001285 (A039599 (2 * (n + 2))).toNat - 1 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A365740.P16345492892427322089

/-!
# A365741: a(n) = A365740(10^n).

The programs for A365741, there is no canonical definition to state claims against.
-/

/-! ## A365741.P12469706166896889019

`A365740(10^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365741.P12469706166896889019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365740 (10 ^ n)

end

end A365741.P12469706166896889019

/-! ## A365741.P18098396574196500084

`A365474(n)-A365739(n)`
-/

namespace A365741.P18098396574196500084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365474 n - A365739 n

end

end A365741.P18098396574196500084

/-!
# A365742: Length of the largest subset of 1,...,n on which the Euler totient function phi A000010 is constant.

The programs for A365742, there is no canonical definition to state claims against.
-/

/-! ## A365742.P2235080590263091709

`∑[char[eq[1, A303777(n+1)]]]`
-/

namespace A365742.P2235080590263091709
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303777 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365742.P2235080590263091709

/-! ## A365742.P6628745556101559434

`∑[C(A001511(2*n+5), A303777(n+1))]`
-/

namespace A365742.P6628745556101559434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001511 (2 * n + 5)).toNat (A303777 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365742.P6628745556101559434

/-! ## A365742.P4613337221876652913

`∑[A154955(A303777(n+1)²)]`
-/

namespace A365742.P4613337221876652913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A303777 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365742.P4613337221876652913

/-! ## A365742.P10284098261960164671

`∑[A008966(A303777(n+1)^3)]`
-/

namespace A365742.P10284098261960164671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A303777 (n + 1) ^ 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365742.P10284098261960164671

/-! ## A365742.P15367116133608537913

`A094500(A365737(n+1)%A094500(n+4))`
-/

namespace A365742.P15367116133608537913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094500 (Int.tmod (A365737 (n + 1)) (A094500 (n + 4))).toNat

end

end A365742.P15367116133608537913

/-! ## A365742.P12739226295174975642

`A056811(A251392(2*n+3)+A102528(n+1))`
-/

namespace A365742.P12739226295174975642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A251392 (2 * n + 3) + A102528 (n + 1)).toNat

end

end A365742.P12739226295174975642

/-! ## A365742.P9198102107808657479

`A056811(5*(n+2)-A239086(n+3))`
-/

namespace A365742.P9198102107808657479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 ((5 * (n + 2) : ℤ) - A239086 (n + 3)).toNat

end

end A365742.P9198102107808657479

/-! ## A365742.P15802044476737997849

`A000194(A257213(A002620(A259225(n+2))))`
-/

namespace A365742.P15802044476737997849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A257213 (A002620 (A259225 (n + 2)).toNat).toNat).toNat

end

end A365742.P15802044476737997849

/-! ## A365742.P2114924515598387942

`A000720(A172471(2*n+3)%A347468(n+3))`
-/

namespace A365742.P2114924515598387942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.tmod (A172471 (2 * n + 3)) (A347468 (n + 3))).toNat

end

end A365742.P2114924515598387942

/-! ## A365742.P2641736151685898649

`A056811(A239086(n+3)+A172000(n+1))`
-/

namespace A365742.P2641736151685898649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A239086 (n + 3) + A172000 (n + 1)).toNat

end

end A365742.P2641736151685898649

/-!
# A365744: Number of perfect matchings on [4n] with n short pairs.

The programs for A365744, there is no canonical definition to state claims against.
-/

/-! ## A365744.P13748098485783544993

`A079267(∑[4*n])`
-/

namespace A365744.P13748098485783544993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079267 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365744.P13748098485783544993

/-! ## A365744.P1298507321984130970

`lcm(A057077(n), A079267(A046092(n)))`
-/

namespace A365744.P1298507321984130970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A079267 (A046092 n).toNat)

end

end A365744.P1298507321984130970

/-! ## A365744.P10400777850544120270

`A240467(2*n+1)+A079267(A046092(n))`
-/

namespace A365744.P10400777850544120270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (2 * n + 1) + A079267 (A046092 n).toNat

end

end A365744.P10400777850544120270

/-!
# A365745: Powers s^m, m > 1, where s is a composite squarefree number that is not a primorial.

The programs for A365745, there is no canonical definition to state claims against.
-/

/-! ## A365745.P2314480411080953419

`∩[A072777(n+1), A380456(n+1)]`
-/

namespace A365745.P2314480411080953419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365745.P2314480411080953419

/-! ## A365745.P6827646740143680625

`∩[A303606(n+1), A380456(n+1)]`
-/

namespace A365745.P6827646740143680625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365745.P6827646740143680625

/-! ## A365745.P17972667196812787731

`∩[A076292(n+1), A380456(n+1)]`
-/

namespace A365745.P17972667196812787731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365745.P17972667196812787731

/-! ## A365745.P11323549320999747144

`∩[A072777(n+1), A387620(n+1)]`
-/

namespace A365745.P11323549320999747144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365745.P11323549320999747144

/-! ## A365745.P5302829535542513578

`∩[A076292(n+1), A387620(n+1)]`
-/

namespace A365745.P5302829535542513578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365745.P5302829535542513578

/-! ## A365745.P14590789216914902217

`∩[A303606(n+1), A387620(n+1)]`
-/

namespace A365745.P14590789216914902217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365745.P14590789216914902217

/-! ## A365745.P1814499974515949207

`∩[A072777(n+1), A369417(n+1)]`
-/

namespace A365745.P1814499974515949207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365745.P1814499974515949207

/-! ## A365745.P243644269583291266

`∩[A076292(n+1), A369417(n+1)]`
-/

namespace A365745.P243644269583291266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365745.P243644269583291266

/-! ## A365745.P17125122723954344504

`∩[A303606(n+1), A369417(n+1)]`
-/

namespace A365745.P17125122723954344504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365745.P17125122723954344504

/-! ## A365745.P12824853388898144683

`∩[A072777(n+1), A369636(n+1)]`
-/

namespace A365745.P12824853388898144683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365745.P12824853388898144683

/-! ## A365745.P8495830347919891811

`∩[A076292(n+1), A369636(n+1)]`
-/

namespace A365745.P8495830347919891811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365745.P8495830347919891811

/-! ## A365745.P5792400922764599604

`∩[A303606(n+1), A369636(n+1)]`
-/

namespace A365745.P5792400922764599604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365745.P5792400922764599604

/-! ## A365745.P12786651316216940084

`filter[A369417(n+1), A354353(#)]`
-/

namespace A365745.P12786651316216940084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A365745.P12786651316216940084

/-! ## A365745.P818962414113746363

`filter[A369636(n+1), A354353(#)]`
-/

namespace A365745.P818962414113746363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A365745.P818962414113746363

/-! ## A365745.P4894552430567007687

`filter[A380456(n+1), A354353(#)]`
-/

namespace A365745.P4894552430567007687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A365745.P4894552430567007687

/-! ## A365745.P6134018010267026156

`filter[A387620(n+1), A354353(#)]`
-/

namespace A365745.P6134018010267026156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A365745.P6134018010267026156

/-!
# A365746: Table read by antidiagonals upward: T(n,k) is the number of binary strings of length k with the property that every substring of length A070939(n) is lexicographically earlier than the binary expansion of n; n, k >= 0.

The programs for A365746, there is no canonical definition to state claims against.
-/

/-! ## A365746.P11779394628892982032

`A179752(A257050(n+1))`
-/

namespace A365746.P11779394628892982032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 (A257050 (n + 1)).toNat

end

end A365746.P11779394628892982032

/-! ## A365746.P11111493556817820774

`A257990(A264017(n+1)+A000007(n))`
-/

namespace A365746.P11111493556817820774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A264017 (n + 1) + A000007 n).toNat

end

end A365746.P11111493556817820774

/-! ## A365746.P17484255723826504596

`A007895(A173018(n)%A063830(n+5))`
-/

namespace A365746.P17484255723826504596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Int.tmod (A173018 n) (A063830 (n + 5))).toNat

end

end A365746.P17484255723826504596

/-! ## A365746.P3759193740500887806

`A118458(A173018(n))`
-/

namespace A365746.P3759193740500887806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118458 (A173018 n).toNat

end

end A365746.P3759193740500887806

/-! ## A365746.P7606177534517724240

`A087974(A361870(n))`
-/

namespace A365746.P7606177534517724240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087974 (A361870 n).toNat

end

end A365746.P7606177534517724240

/-!
# A365748: a(n) = A365742(10^n).

The programs for A365748, there is no canonical definition to state claims against.
-/

/-! ## A365748.P11596615320415114953

`A372265(n+1)+A146881(A001844(n))`
-/

namespace A365748.P11596615320415114953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372265 (n + 1) + A146881 (A001844 n).toNat

end

end A365748.P11596615320415114953

/-! ## A365748.P810132489412649782

`A247806(A296407(n))+A077011(2*n+1)`
-/

namespace A365748.P810132489412649782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247806 (A296407 n).toNat + A077011 (2 * n + 1)

end

end A365748.P810132489412649782

/-!
# A365751: Expansion of (1/x) * Series_Reversion( x*(1+x)*(1-x)^3 ).

The programs for A365751, there is no canonical definition to state claims against.
-/

/-! ## A365751.P8866254766671123589

`A086161(A001541(n)+A000326(n))`
-/

namespace A365751.P8866254766671123589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A001541 n + A000326 n).toNat

end

end A365751.P8866254766671123589

/-! ## A365751.P8954347924858507506

`A004396(A369484(n)+A002265(n))`
-/

namespace A365751.P8954347924858507506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A369484 n + A002265 n).toNat

end

end A365751.P8954347924858507506

/-!
# A365752: Expansion of (1/x) * Series_Reversion( x*(1+x)*(1-x)^4 ).

The programs for A365752, there is no canonical definition to state claims against.
-/

/-! ## A365752.P2913887947434548874

`A248103(A369213(n))`
-/

namespace A365752.P2913887947434548874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248103 (A369213 n).toNat

end

end A365752.P2913887947434548874

/-!
# A365753: Expansion of (1/x) * Series_Reversion( x*(1+x)*(1-x)^5 ).

The programs for A365753, there is no canonical definition to state claims against.
-/

/-! ## A365753.P13654801529614564354

`A142989(n+1)-A082375(A368097(2*n))`
-/

namespace A365753.P13654801529614564354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142989 (n + 1) - A082375 (A368097 (2 * n)).toNat

end

end A365753.P13654801529614564354

/-!
# A365754: Expansion of (1/x) * Series_Reversion( x*(1-x)/(1+x)^4 ).

The programs for A365754, there is no canonical definition to state claims against.
-/

/-! ## A365754.P14101679243363215501

`A107111(eq[4, A025581(n)])`
-/

namespace A365754.P14101679243363215501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A365754.P14101679243363215501

/-! ## A365754.P6720032046123340189

`A107111(A000217(n+4)+n)`
-/

namespace A365754.P6720032046123340189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107111 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A365754.P6720032046123340189

/-! ## A365754.P6422612103828978206

`A107111(lt[A213118(n+5), A302034(n+4)])`
-/

namespace A365754.P6422612103828978206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107111 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A365754.P6422612103828978206

/-!
# A365755: Expansion of (1/x) * Series_Reversion( x*(1-x)/(1+x)^5 ).

The programs for A365755, there is no canonical definition to state claims against.
-/

/-! ## A365755.P12556440495763555367

`A107111(eq[5, A025581(n)])`
-/

namespace A365755.P12556440495763555367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A365755.P12556440495763555367

/-! ## A365755.P17092957317079091904

`A107111(A155212(n+2)+2)`
-/

namespace A365755.P17092957317079091904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107111 (A155212 (n + 2) + 2).toNat

end

end A365755.P17092957317079091904

/-!
# A365758: G.f. satisfies A(x) = 1 + x*A(x) / (1 - x^4*A(x)^5).

The programs for A365758, there is no canonical definition to state claims against.
-/

/-! ## A365758.P5338731383618851257

`A185284(A000045(n))+A107025(n)`
-/

namespace A365758.P5338731383618851257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000045 n).toNat + A107025 n

end

end A365758.P5338731383618851257

/-! ## A365758.P13297280870299059836

`A184974(A184974(n))+A107025(n)`
-/

namespace A365758.P13297280870299059836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184974 (A184974 n).toNat + A107025 n

end

end A365758.P13297280870299059836

/-! ## A365758.P17698195524362831409

`A365760(n)+A241770(A084546(n))`
-/

namespace A365758.P17698195524362831409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365760 n + A241770 (A084546 n).toNat

end

end A365758.P17698195524362831409

/-! ## A365758.P1009339173035199960

`A368724(A373913(n))+A107025(n)`
-/

namespace A365758.P1009339173035199960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368724 (A373913 n).toNat + A107025 n

end

end A365758.P1009339173035199960

/-! ## A365758.P5737252242179043453

`A365760(n)+A316868(A365761(n))`
-/

namespace A365758.P5737252242179043453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365760 n + A316868 (A365761 n).toNat

end

end A365758.P5737252242179043453

/-!
# A365759: G.f. satisfies A(x) = 1 + x*A(x)*(1 + x^3*A(x)^5).

The programs for A365759, there is no canonical definition to state claims against.
-/

/-! ## A365759.P129751385924830713

`or(A010060(A128796(n)), A389444(n))`
-/

namespace A365759.P129751385924830713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A128796 n).toNat) (A389444 n)

end

end A365759.P129751385924830713

/-! ## A365759.P13241877755971532489

`A162425(A000389(n))+A000389(n+1)`
-/

namespace A365759.P13241877755971532489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162425 (A000389 n).toNat + A000389 (n + 1)

end

end A365759.P13241877755971532489

/-!
# A365762: Greatest common divisor of n and the product of its digits.

The programs for A365762, the canonical program `A365762.P6714408842398837798` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365762 has offset 1).

The definition of A365762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365762.P6714408842398837798

`gcd(n+1, ∏{digits}[n+1, #])`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A365762

/-- `gcd(n+1, ∏{digits}[n+1, #])` -/
def P6714408842398837798.Spec : Prop :=
  ∀ n, (P6714408842398837798.a n : ℤ) = A365762 (n + 1)

theorem P6714408842398837798.correct : P6714408842398837798.Spec := by
  intro n
  simp only [A365762, Nat.add_sub_cancel]

end A365762

/-! ## A365762.P18149972875648380850

`gcd(Δ[A187845(n)], n+1)`
-/

namespace A365762.P18149972875648380850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A365762.P18149972875648380850

namespace A365762

/-- `gcd(Δ[A187845(n)], n+1)` -/
def P18149972875648380850.Spec : Prop :=
  ∀ n, (P18149972875648380850.a n : ℤ) = A365762 (n + 1)

end A365762

/-! ## A365762.P16410265942976658262

`gcd(xor(n, -1), A007954(n+1))`
-/

namespace A365762.P16410265942976658262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A007954 (n + 1))

end

end A365762.P16410265942976658262

namespace A365762

/-- `gcd(xor(n, -1), A007954(n+1))` -/
def P16410265942976658262.Spec : Prop :=
  ∀ n, (P16410265942976658262.a n : ℤ) = A365762 (n + 1)

end A365762

/-! ## A365762.P8267279204928190478

`gcd(A115300(n+1), A131738(n))`
-/

namespace A365762.P8267279204928190478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115300 (n + 1)) (A131738 n)

end

end A365762.P8267279204928190478

namespace A365762

/-- `gcd(A115300(n+1), A131738(n))` -/
def P8267279204928190478.Spec : Prop :=
  ∀ n, (P8267279204928190478.a n : ℤ) = A365762 (n + 1)

end A365762

/-! ## A365762.P14228079797252195672

`gcd(A028310(n+1), A230099(n+1))`
-/

namespace A365762.P14228079797252195672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (n + 1)) (A230099 (n + 1))

end

end A365762.P14228079797252195672

namespace A365762

/-- `gcd(A028310(n+1), A230099(n+1))` -/
def P14228079797252195672.Spec : Prop :=
  ∀ n, (P14228079797252195672.a n : ℤ) = A365762 (n + 1)

end A365762

/-! ## A365762.P14690336340787607238

`gcd(A061019(n+1), A376257(n+1))`
-/

namespace A365762.P14690336340787607238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061019 (n + 1)) (A376257 (n + 1))

end

end A365762.P14690336340787607238

namespace A365762

/-- `gcd(A061019(n+1), A376257(n+1))` -/
def P14690336340787607238.Spec : Prop :=
  ∀ n, (P14690336340787607238.a n : ℤ) = A365762 (n + 1)

end A365762

/-! ## A365762.P6945815090805804852

`gcd(A130472(2*(n+1)), A171765(n+1))`
-/

namespace A365762.P6945815090805804852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130472 (2 * (n + 1))) (A171765 (n + 1))

end

end A365762.P6945815090805804852

namespace A365762

/-- `gcd(A130472(2*(n+1)), A171765(n+1))` -/
def P6945815090805804852.Spec : Prop :=
  ∀ n, (P6945815090805804852.a n : ℤ) = A365762 (n + 1)

end A365762

/-!
# A365764: Expansion of (1/x) * Series_Reversion( x*(1-x)^3/(1+x) ).

The programs for A365764, there is no canonical definition to state claims against.
-/

/-! ## A365764.P1533709007491943187

`A240207(A001710(n))+A166697(n)`
-/

namespace A365764.P1533709007491943187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240207 (A001710 n).toNat + A166697 n

end

end A365764.P1533709007491943187

/-!
# A365765: Expansion of (1/x) * Series_Reversion( x*(1-x)^4/(1+x) ).

The programs for A365765, there is no canonical definition to state claims against.
-/

/-! ## A365765.P5166005692938011259

`A039215(A091527(n))+A001353(n)`
-/

namespace A365765.P5166005692938011259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039215 (A091527 n).toNat + A001353 n

end

end A365765.P5166005692938011259

/-!
# A365767: a(n) is the number of primes between (prime(n))^3 and (prime(n+1))^3.

The programs for A365767, the canonical program `A365767.P11724764653640938392` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365767 has offset 1).

The definition of A365767 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A038098, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365767.P11724764653640938392

`A038098(A000040(n+2))-A038098(A000040(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A365767

/-- `A038098(A000040(n+2))-A038098(A000040(n+1))` -/
def P11724764653640938392.Spec : Prop :=
  ∀ n, P11724764653640938392.a n = A365767 (n + 1)

theorem P11724764653640938392.correct : P11724764653640938392.Spec := by
  intro n
  simp only [A365767, Nat.add_sub_cancel]

end A365767

/-! ## A365767.P15208878086350137943

`Δ[A086688(n+1)]`
-/

namespace A365767.P15208878086350137943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A365767.P15208878086350137943

namespace A365767

/-- `Δ[A086688(n+1)]` -/
def P15208878086350137943.Spec : Prop :=
  ∀ n, P15208878086350137943.a n = A365767 (n + 1)

end A365767

/-! ## A365767.P8270583969359356776

`A086688(n+2)-A086688(n+1)`
-/

namespace A365767.P8270583969359356776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086688 (n + 2) - A086688 (n + 1)

end

end A365767.P8270583969359356776

namespace A365767

/-- `A086688(n+2)-A086688(n+1)` -/
def P8270583969359356776.Spec : Prop :=
  ∀ n, P8270583969359356776.a n = A365767 (n + 1)

end A365767

/-! ## A365767.P18437405024273350356

`Δ[A038098(∪[p?[2*n+1-(n-1)%7], p?[2*n+1]])]`
-/

namespace A365767.P18437405024273350356
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - Int.tmod ((n : ℤ) - 1) 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f5 (SequenceMachineLib.nth (fun j => (f5 j).Prime) n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f4 j = x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A365767.P18437405024273350356

namespace A365767

/-- `Δ[A038098(∪[p?[2*n+1-(n-1)%7], p?[2*n+1]])]` -/
def P18437405024273350356.Spec : Prop :=
  ∀ n, P18437405024273350356.a n = A365767 (n + 1)

end A365767

/-! ## A365767.P16250351715003727822

`Δ[A038098(Δ[A007504(n)])]`
-/

namespace A365767.P16250351715003727822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A365767.P16250351715003727822

namespace A365767

/-- `Δ[A038098(Δ[A007504(n)])]` -/
def P16250351715003727822.Spec : Prop :=
  ∀ n, P16250351715003727822.a n = A365767 (n + 1)

end A365767

/-! ## A365767.P782013800753504749

`Δ[A038098(A000040(n+1))]`
-/

namespace A365767.P782013800753504749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A365767.P782013800753504749

namespace A365767

/-- `Δ[A038098(A000040(n+1))]` -/
def P782013800753504749.Spec : Prop :=
  ∀ n, P782013800753504749.a n = A365767 (n + 1)

theorem P782013800753504749.correct : P782013800753504749.Spec := by
  intro n
  simp only [A365767, Nat.add_sub_cancel, A365767.P782013800753504749.f1, A365767.P782013800753504749.a, A365767.P11724764653640938392.a, SequenceMachineLib.memo_apply]

end A365767

/-!
# A365768: Lexicographically earliest permutation of the prime numbers such that a(n) + [the next digit] is a composite.

The programs for A365768, there is no canonical definition to state claims against.
-/

/-! ## A365768.P8356218469007499365

`A256269(A136376(n+3))+A000040(n+1)`
-/

namespace A365768.P8356218469007499365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256269 (A136376 (n + 3)).toNat + A000040 (n + 1)

end

end A365768.P8356218469007499365

/-!
# A365770: Expansion of g.f. A(x,y) satisfying A(x,y) = 1 + x*A(x,y)/(1 - x*y * A(x,y))^2, as a triangle of coefficients T(n,k) of x^n*y^k in A(x,y), read by rows n >= 0.

The programs for A365770, there is no canonical definition to state claims against.
-/

/-! ## A365770.P4001374082038391772

`A000005(A156581(n))*A361952(n)`
-/

namespace A365770.P4001374082038391772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A156581 n).toNat * A361952 n

end

end A365770.P4001374082038391772

/-!
# A365771: a(n) = binomial(2*n+1, n)/(2*n+1) * binomial(3*n-1, n) for n >= 0.

The programs for A365771, the canonical program `A365771.P5740291251164711934` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365771 has offset 0).

The definition of A365771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365771.P5740291251164711934

`A000108(n)*A165817(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A365771

/-- `A000108(n)*A165817(n)` -/
def P5740291251164711934.Spec : Prop :=
  ∀ n, P5740291251164711934.a n = A365771 n

theorem P5740291251164711934.correct : P5740291251164711934.Spec := by
  intro n
  simp only [A365771]

end A365771

/-! ## A365771.P4064632312547514719

`A097331(Δ[n²])*A165817(n)`
-/

namespace A365771.P4064632312547514719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A165817 n

end

end A365771.P4064632312547514719

namespace A365771

/-- `A097331(Δ[n²])*A165817(n)` -/
def P4064632312547514719.Spec : Prop :=
  ∀ n, P4064632312547514719.a n = A365771 n

end A365771

/-! ## A365771.P7497124502027645938

`A365770(∑[4*n])`
-/

namespace A365771.P7497124502027645938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365770 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365771.P7497124502027645938

namespace A365771

/-- `A365770(∑[4*n])` -/
def P7497124502027645938.Spec : Prop :=
  ∀ n, P7497124502027645938.a n = A365771 n

end A365771

/-! ## A365771.P1900848721903308782

`A000108(n)*A059481(A046092(n))`
-/

namespace A365771.P1900848721903308782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A059481 (A046092 n).toNat

end

end A365771.P1900848721903308782

namespace A365771

/-- `A000108(n)*A059481(A046092(n))` -/
def P1900848721903308782.Spec : Prop :=
  ∀ n, P1900848721903308782.a n = A365771 n

end A365771

/-! ## A365771.P14000803412737433371

`A098474(A022266(n))`
-/

namespace A365771.P14000803412737433371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098474 (A022266 n).toNat

end

end A365771.P14000803412737433371

namespace A365771

/-- `A098474(A022266(n))` -/
def P14000803412737433371.Spec : Prop :=
  ∀ n, P14000803412737433371.a n = A365771 n

end A365771

/-!
# A365772: Expansion of g.f. A(x) satisfying A(x) = 1 + x*A(x)/(1 - 2*x*A(x))^2.

The programs for A365772, there is no canonical definition to state claims against.
-/

/-! ## A365772.P15144237925457362795

`A194748(A391651(n)+floor((n/2)²))`
-/

namespace A365772.P15144237925457362795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194748 (A391651 n + ⌊((n : ℚ) / 2) ^ 2⌋).toNat

end

end A365772.P15144237925457362795

/-! ## A365772.P14932627130644768184

`2*(∑[A331157(n)]-A027187(2*(n+1)))+1`
-/

namespace A365772.P14932627130644768184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A027187 (2 * (n + 1))) + 1

end

end A365772.P14932627130644768184

/-!
# A365773: Expansion of g.f. A(x) satisfying A(x) = 1 + x*A(x)/(1 - 3*x*A(x))^2.

The programs for A365773, there is no canonical definition to state claims against.
-/

/-! ## A365773.P16980145831628747750

`A008619(A369301(n)-A159789(n+2))`
-/

namespace A365773.P16980145831628747750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A369301 n - A159789 (n + 2)).toNat

end

end A365773.P16980145831628747750

/-!
# A365774: Expansion of g.f. A(x) satisfying A(x) = 1 + x*A(x)/(1 - 4*x*A(x))^2.

The programs for A365774, there is no canonical definition to state claims against.
-/

/-! ## A365774.P18086953056244953923

`A016813(n*A122827(n+1))`
-/

namespace A365774.P18086953056244953923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 ((n : ℤ) * A122827 (n + 1)).toNat

end

end A365774.P18086953056244953923

/-!
# A365775: Expansion of g.f. A(x) satisfying A(x) = 1 + x*A(x)/(1 - 5*x*A(x))^2.

The programs for A365775, there is no canonical definition to state claims against.
-/

/-! ## A365775.P11385957831255603227

`A034888(2*A002275(n))`
-/

namespace A365775.P11385957831255603227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (2 * A002275 n).toNat

end

end A365775.P11385957831255603227

/-!
# A365776: O.g.f. A(x) satisfies: Sum_{n>=0} (-1)^n * log((1 - 2^n*x)*A(x))^n / n! = 1.

The programs for A365776, there is no canonical definition to state claims against.
-/

/-! ## A365776.P9263499632320978406

`A339508(A148235(n+1))`
-/

namespace A365776.P9263499632320978406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339508 (A148235 (n + 1)).toNat

end

end A365776.P9263499632320978406

/-!
# A365777: Expansion of e.g.f. (exp(2*x) / (2 - exp(2*x)))^(3/4).

The programs for A365777, there is no canonical definition to state claims against.
-/

/-! ## A365777.P3961284206394474624

`A324477((n+3)^n)`
-/

namespace A365777.P3961284206394474624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324477 ((n + 3) ^ n)

end

end A365777.P3961284206394474624

/-!
# A365778: Expansion of e.g.f. (exp(3*x) / (2 - exp(3*x)))^(1/6).

The programs for A365778, there is no canonical definition to state claims against.
-/

/-! ## A365778.P17678682460977993950

`A049093(A221079(n))`
-/

namespace A365778.P17678682460977993950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A221079 n).toNat

end

end A365778.P17678682460977993950

/-!
# A365782: Expansion of e.g.f. 1 / (3 - 2 * exp(2*x))^(1/4).

The programs for A365782, there is no canonical definition to state claims against.
-/

/-! ## A365782.P15840077672321602609

`A055047(A242005(n))`
-/

namespace A365782.P15840077672321602609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (A242005 n).toNat

end

end A365782.P15840077672321602609

/-!
# A365783: a(n) = squarefree kernel of A126706(n).

The programs for A365783, the canonical program `A365783.P2702609335400610260` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365783 has offset 1).

The definition of A365783 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A126706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365783.P2702609335400610260

`A007947(A126706(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A365783

/-- `A007947(A126706(n+1))` -/
def P2702609335400610260.Spec : Prop :=
  ∀ n, P2702609335400610260.a n = A365783 (n + 1)

theorem P2702609335400610260.correct : P2702609335400610260.Spec := by
  intro n
  simp only [A365783, Nat.add_sub_cancel]

end A365783

/-! ## A365783.P6511562567571070105

`∏{p}[A360719(n+1), #]`
-/

namespace A365783.P6511562567571070105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360719 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A365783.P6511562567571070105

namespace A365783

/-- `∏{p}[A360719(n+1), #]` -/
def P6511562567571070105.Spec : Prop :=
  ∀ n, (P6511562567571070105.a n : ℤ) = A365783 (n + 1)

end A365783

/-! ## A365783.P18055542468714970501

`∏{p}[eq[1, A355447(n+1)]+1, #]`
-/

namespace A365783.P18055542468714970501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A365783.P18055542468714970501

namespace A365783

/-- `∏{p}[eq[1, A355447(n+1)]+1, #]` -/
def P18055542468714970501.Spec : Prop :=
  ∀ n, (P18055542468714970501.a n : ℤ) = A365783 (n + 1)

end A365783

/-! ## A365783.P10923857012380229436

`A007947(A360719(n+1))`
-/

namespace A365783.P10923857012380229436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A360719 (n + 1)).toNat

end

end A365783.P10923857012380229436

namespace A365783

/-- `A007947(A360719(n+1))` -/
def P10923857012380229436.Spec : Prop :=
  ∀ n, P10923857012380229436.a n = A365783 (n + 1)

end A365783

/-! ## A365783.P8872629307915840828

`A120944(A365785(n+1))`
-/

namespace A365783.P8872629307915840828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (A365785 (n + 1)).toNat

end

end A365783.P8872629307915840828

namespace A365783

/-- `A120944(A365785(n+1))` -/
def P8872629307915840828.Spec : Prop :=
  ∀ n, P8872629307915840828.a n = A365783 (n + 1)

end A365783

/-! ## A365783.P6767010748138667104

`A126706(n+1)/A365784(n+1)`
-/

namespace A365783.P6767010748138667104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126706 (n + 1) : ℚ) / (A365784 (n + 1) : ℚ)

end

end A365783.P6767010748138667104

namespace A365783

/-- `A126706(n+1)/A365784(n+1)` -/
def P6767010748138667104.Spec : Prop :=
  ∀ n, P6767010748138667104.a n = (A365783 (n + 1) : ℚ)

end A365783

/-! ## A365783.P16825878791850377338

`A376720(n+1)/A126706(n+1)`
-/

namespace A365783.P16825878791850377338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376720 (n + 1) : ℚ) / (A126706 (n + 1) : ℚ)

end

end A365783.P16825878791850377338

namespace A365783

/-- `A376720(n+1)/A126706(n+1)` -/
def P16825878791850377338.Spec : Prop :=
  ∀ n, P16825878791850377338.a n = (A365783 (n + 1) : ℚ)

end A365783

/-! ## A365783.P12472081037631355174

`filter[A076333(n+1), A005171(#)]`
-/

namespace A365783.P12472081037631355174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A365783.P12472081037631355174

namespace A365783

/-- `filter[A076333(n+1), A005171(#)]` -/
def P12472081037631355174.Spec : Prop :=
  ∀ n, P12472081037631355174.a n = A365783 (n + 1)

end A365783

/-! ## A365783.P15065930703206963856

`filter[A076333(n+1), A066247(#)]`
-/

namespace A365783.P15065930703206963856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A365783.P15065930703206963856

namespace A365783

/-- `filter[A076333(n+1), A066247(#)]` -/
def P15065930703206963856.Spec : Prop :=
  ∀ n, P15065930703206963856.a n = A365783 (n + 1)

end A365783

/-! ## A365783.P7182193678572072617

`filter[A076333(n+1), A174898(#)]`
-/

namespace A365783.P7182193678572072617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A365783.P7182193678572072617

namespace A365783

/-- `filter[A076333(n+1), A174898(#)]` -/
def P7182193678572072617.Spec : Prop :=
  ∀ n, P7182193678572072617.a n = A365783 (n + 1)

end A365783

/-! ## A365783.P7847818811541320431

`filter[A076333(n+1), A202238(#)]`
-/

namespace A365783.P7847818811541320431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A365783.P7847818811541320431

namespace A365783

/-- `filter[A076333(n+1), A202238(#)]` -/
def P7847818811541320431.Spec : Prop :=
  ∀ n, P7847818811541320431.a n = A365783 (n + 1)

end A365783

/-! ## A365783.P11026773959651838049

`filter[A076333(n+1), A354353(#)]`
-/

namespace A365783.P11026773959651838049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A365783.P11026773959651838049

namespace A365783

/-- `filter[A076333(n+1), A354353(#)]` -/
def P11026773959651838049.Spec : Prop :=
  ∀ n, P11026773959651838049.a n = A365783 (n + 1)

end A365783

/-! ## A365783.P1738177042609928303

`filter[A076333(n+1), A354819(#)]`
-/

namespace A365783.P1738177042609928303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A365783.P1738177042609928303

namespace A365783

/-- `filter[A076333(n+1), A354819(#)]` -/
def P1738177042609928303.Spec : Prop :=
  ∀ n, P1738177042609928303.a n = A365783 (n + 1)

end A365783

/-! ## A365783.P4041504893928325232

`filter[A076333(n+1), A143731(#)]`
-/

namespace A365783.P4041504893928325232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A365783.P4041504893928325232

namespace A365783

/-- `filter[A076333(n+1), A143731(#)]` -/
def P4041504893928325232.Spec : Prop :=
  ∀ n, P4041504893928325232.a n = A365783 (n + 1)

end A365783

/-! ## A365783.P8130346924518560711

`∏{p}[A362432(n+1), #]`
-/

namespace A365783.P8130346924518560711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A365783.P8130346924518560711

namespace A365783

/-- `∏{p}[A362432(n+1), #]` -/
def P8130346924518560711.Spec : Prop :=
  ∀ n, (P8130346924518560711.a n : ℤ) = A365783 (n + 1)

end A365783

/-! ## A365783.P527858347237926174

`∏{p}[A376720(n+1), #]`
-/

namespace A365783.P527858347237926174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A365783.P527858347237926174

namespace A365783

/-- `∏{p}[A376720(n+1), #]` -/
def P527858347237926174.Spec : Prop :=
  ∀ n, (P527858347237926174.a n : ℤ) = A365783 (n + 1)

end A365783

/-! ## A365783.P14388568251977396439

`∏{p}[A380857(n+1), #]`
-/

namespace A365783.P14388568251977396439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380857 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A365783.P14388568251977396439

namespace A365783

/-- `∏{p}[A380857(n+1), #]` -/
def P14388568251977396439.Spec : Prop :=
  ∀ n, (P14388568251977396439.a n : ℤ) = A365783 (n + 1)

end A365783

/-! ## A365783.P3778531522995844427

`A007947(A362432(n+1))`
-/

namespace A365783.P3778531522995844427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A362432 (n + 1)).toNat

end

end A365783.P3778531522995844427

namespace A365783

/-- `A007947(A362432(n+1))` -/
def P3778531522995844427.Spec : Prop :=
  ∀ n, P3778531522995844427.a n = A365783 (n + 1)

end A365783

/-! ## A365783.P2611297596026396591

`A007947(A376720(n+1))`
-/

namespace A365783.P2611297596026396591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A376720 (n + 1)).toNat

end

end A365783.P2611297596026396591

namespace A365783

/-- `A007947(A376720(n+1))` -/
def P2611297596026396591.Spec : Prop :=
  ∀ n, P2611297596026396591.a n = A365783 (n + 1)

end A365783

/-!
# A365784: a(n) = A126706(n) divided by its squarefree kernel.

The programs for A365784, the canonical program `A365784.P9414466859234964261` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365784 has offset 1).

The definition of A365784 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, A365783, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365784.P9414466859234964261

`A126706(n+1)/A365783(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A365784

/-- `A126706(n+1)/A365783(n+1)` -/
def P9414466859234964261.Spec : Prop :=
  ∀ n, P9414466859234964261.a n = (A365784 (n + 1) : ℚ)

end A365784

/-! ## A365784.P11454800998606902282

`A380857(n+1)/A376720(n+1)`
-/

namespace A365784.P11454800998606902282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380857 (n + 1) : ℚ) / (A376720 (n + 1) : ℚ)

end

end A365784.P11454800998606902282

namespace A365784

/-- `A380857(n+1)/A376720(n+1)` -/
def P11454800998606902282.Spec : Prop :=
  ∀ n, P11454800998606902282.a n = (A365784 (n + 1) : ℚ)

end A365784

/-! ## A365784.P14122330075892679081

`A126706(n+1)²/A376720(n+1)`
-/

namespace A365784.P14122330075892679081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126706 (n + 1) ^ 2 : ℚ) / (A376720 (n + 1) : ℚ)

end

end A365784.P14122330075892679081

namespace A365784

/-- `A126706(n+1)²/A376720(n+1)` -/
def P14122330075892679081.Spec : Prop :=
  ∀ n, P14122330075892679081.a n = (A365784 (n + 1) : ℚ)

end A365784

/-! ## A365784.P14395063356919262570

`A376720(n+1)/A365783(n+1)²`
-/

namespace A365784.P14395063356919262570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376720 (n + 1) : ℚ) / (A365783 (n + 1) ^ 2 : ℚ)

end

end A365784.P14395063356919262570

namespace A365784

/-- `A376720(n+1)/A365783(n+1)²` -/
def P14395063356919262570.Spec : Prop :=
  ∀ n, P14395063356919262570.a n = (A365784 (n + 1) : ℚ)

end A365784

/-! ## A365784.P11778065475634798057

`A126706(n+1)/A007947(A360719(n+1))`
-/

namespace A365784.P11778065475634798057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126706 (n + 1) : ℚ) / (A007947 (A360719 (n + 1)).toNat : ℚ)

end

end A365784.P11778065475634798057

namespace A365784

/-- `A126706(n+1)/A007947(A360719(n+1))` -/
def P11778065475634798057.Spec : Prop :=
  ∀ n, P11778065475634798057.a n = (A365784 (n + 1) : ℚ)

end A365784

/-! ## A365784.P5310533687625883853

`A126706(n+1)/A120944(A365785(n+1))`
-/

namespace A365784.P5310533687625883853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126706 (n + 1) : ℚ) / (A120944 (A365785 (n + 1)).toNat : ℚ)

end

end A365784.P5310533687625883853

namespace A365784

/-- `A126706(n+1)/A120944(A365785(n+1))` -/
def P5310533687625883853.Spec : Prop :=
  ∀ n, P5310533687625883853.a n = (A365784 (n + 1) : ℚ)

end A365784

/-! ## A365784.P6802656103354553860

`A003557(A126706(n+1))`
-/

namespace A365784.P6802656103354553860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A126706 (n + 1)).toNat

end

end A365784.P6802656103354553860

namespace A365784

/-- `A003557(A126706(n+1))` -/
def P6802656103354553860.Spec : Prop :=
  ∀ n, P6802656103354553860.a n = A365784 (n + 1)

end A365784

/-! ## A365784.P17721611414412956184

`A126706(n+1)/A007947(A362432(n+1))`
-/

namespace A365784.P17721611414412956184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126706 (n + 1) : ℚ) / (A007947 (A362432 (n + 1)).toNat : ℚ)

end

end A365784.P17721611414412956184

namespace A365784

/-- `A126706(n+1)/A007947(A362432(n+1))` -/
def P17721611414412956184.Spec : Prop :=
  ∀ n, P17721611414412956184.a n = (A365784 (n + 1) : ℚ)

end A365784

/-! ## A365784.P1078901849274551079

`A126706(n+1)/A007947(A126706(n+1)²)`
-/

namespace A365784.P1078901849274551079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126706 (n + 1) : ℚ) / (A007947 (A126706 (n + 1) ^ 2).toNat : ℚ)

end

end A365784.P1078901849274551079

namespace A365784

/-- `A126706(n+1)/A007947(A126706(n+1)²)` -/
def P1078901849274551079.Spec : Prop :=
  ∀ n, P1078901849274551079.a n = (A365784 (n + 1) : ℚ)

end A365784

/-!
# A365785: a(n) = k such that A120944(k) is the squarefree kernel of A126706(n).

The programs for A365785, the canonical program `A365785.P6855440073540334258` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365785 has offset 1).

The definition of A365785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7774 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365785.P6855440073540334258

`A387944(A365783(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A365785

/-- `A387944(A365783(n+1))` -/
def P6855440073540334258.Spec : Prop :=
  ∀ n, P6855440073540334258.a n = A365785 (n + 1)

theorem P6855440073540334258.correct : P6855440073540334258.Spec := by
  intro n
  simp only [A365785, Nat.add_sub_cancel]

end A365785

/-! ## A365785.P11154907733672609920

`A387944(A007947(A126706(n+1)))`
-/

namespace A365785.P11154907733672609920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387944 (A007947 (A126706 (n + 1)).toNat).toNat

end

end A365785.P11154907733672609920

namespace A365785

/-- `A387944(A007947(A126706(n+1)))` -/
def P11154907733672609920.Spec : Prop :=
  ∀ n, P11154907733672609920.a n = A365785 (n + 1)

end A365785

/-! ## A365785.P14228250654759552557

`A387944(A007947(A362432(n+1)))`
-/

namespace A365785.P14228250654759552557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387944 (A007947 (A362432 (n + 1)).toNat).toNat

end

end A365785.P14228250654759552557

namespace A365785

/-- `A387944(A007947(A362432(n+1)))` -/
def P14228250654759552557.Spec : Prop :=
  ∀ n, P14228250654759552557.a n = A365785 (n + 1)

end A365785

/-! ## A365785.P4587151028221213209

`A000120(A166977(n)+A015124(n))`
-/

namespace A365785.P4587151028221213209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A166977 n + A015124 n).toNat

end

end A365785.P4587151028221213209

namespace A365785

/-- `A000120(A166977(n)+A015124(n))` -/
def P4587151028221213209.Spec : Prop :=
  ∀ n, P4587151028221213209.a n = A365785 (n + 1)

end A365785

/-! ## A365785.P241154355319036880

`A001222(A036655(n+1)^A110180(n))`
-/

namespace A365785.P241154355319036880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A036655 (n + 1) : ℚ) ^ (A110180 n : ℤ))).toNat

end

end A365785.P241154355319036880

namespace A365785

/-- `A001222(A036655(n+1)^A110180(n))` -/
def P241154355319036880.Spec : Prop :=
  ∀ n, P241154355319036880.a n = A365785 (n + 1)

end A365785

/-!
# A365786: a(n) = squarefree kernel of A286708(n).

The programs for A365786, there is no canonical definition to state claims against.
-/

/-! ## A365786.P7566217045417399116

`A007947(A286708(n+1))`
-/

namespace A365786.P7566217045417399116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A286708 (n + 1)).toNat

end

end A365786.P7566217045417399116

/-! ## A365786.P10589122431453176051

`A286708(n+1)/A365787(n+1)`
-/

namespace A365786.P10589122431453176051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286708 (n + 1) : ℚ) / (A365787 (n + 1) : ℚ)

end

end A365786.P10589122431453176051

/-! ## A365786.P11663171551349715395

`filter[A084371(n+1), A066247(#)]`
-/

namespace A365786.P11663171551349715395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A365786.P11663171551349715395

/-! ## A365786.P9639556292142420814

`filter[A084371(n+1), A143731(#)]`
-/

namespace A365786.P9639556292142420814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A365786.P9639556292142420814

/-! ## A365786.P16599376018468557210

`filter[A084371(n+1), A174898(#)]`
-/

namespace A365786.P16599376018468557210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A365786.P16599376018468557210

/-! ## A365786.P4365256407091333210

`filter[A084371(n+1), A202238(#)]`
-/

namespace A365786.P4365256407091333210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A365786.P4365256407091333210

/-! ## A365786.P16505780583825846430

`filter[A084371(n+1), A354353(#)]`
-/

namespace A365786.P16505780583825846430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A365786.P16505780583825846430

/-! ## A365786.P16382157931637967766

`filter[A084371(n+2), A005171(#)]`
-/

namespace A365786.P16382157931637967766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A365786.P16382157931637967766

/-! ## A365786.P6309043685326726954

`filter[A084371(n+2), A354819(#)]`
-/

namespace A365786.P6309043685326726954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A365786.P6309043685326726954

/-! ## A365786.P5360413371591371857

`∏{p}[A365787(n+1), #]`
-/

namespace A365786.P5360413371591371857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A365786.P5360413371591371857

/-! ## A365786.P13687215017688019931

`A007947(A365787(n+1))`
-/

namespace A365786.P13687215017688019931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A365787 (n + 1)).toNat

end

end A365786.P13687215017688019931

/-! ## A365786.P4913090073019133222

`∏{p}[A396367(n+1), #]`
-/

namespace A365786.P4913090073019133222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396367 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A365786.P4913090073019133222

/-! ## A365786.P5666182044689171054

`A084365(A365789(n+1))`
-/

namespace A365786.P5666182044689171054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084365 (A365789 (n + 1)).toNat

end

end A365786.P5666182044689171054

/-! ## A365786.P1665439633102397728

`A286708(n+1)/A024619(A365789(n+1))`
-/

namespace A365786.P1665439633102397728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286708 (n + 1) : ℚ) / (A024619 (A365789 (n + 1)).toNat : ℚ)

end

end A365786.P1665439633102397728

/-! ## A365786.P6177120401774360161

`A007947(A396367(n+1))`
-/

namespace A365786.P6177120401774360161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A396367 (n + 1)).toNat

end

end A365786.P6177120401774360161

/-! ## A365786.P8503766315672601621

`A019530(A019530(A286708(n+1))²)`
-/

namespace A365786.P8503766315672601621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019530 (A019530 (A286708 (n + 1)).toNat ^ 2).toNat

end

end A365786.P8503766315672601621

/-!
# A365787: a(n) = A286708(n) divided by its squarefree kernel.

The programs for A365787, there is no canonical definition to state claims against.
-/

/-! ## A365787.P1902088367567039669

`A286708(n+1)/A365786(n+1)`
-/

namespace A365787.P1902088367567039669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286708 (n + 1) : ℚ) / (A365786 (n + 1) : ℚ)

end

end A365787.P1902088367567039669

/-! ## A365787.P10637161139722748357

`∪[A363216(n+1), A363217(n+1)]/A365786(n+1)`
-/

namespace A365787.P10637161139722748357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A365786 (n + 1) : ℚ)

end

end A365787.P10637161139722748357

/-! ## A365787.P9537587855843728309

`∪[A363216(n+1), A369636(n+1)]/A365786(n+1)`
-/

namespace A365787.P9537587855843728309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A365786 (n + 1) : ℚ)

end

end A365787.P9537587855843728309

/-! ## A365787.P16262600824909960838

`∪[A369374(n+1), A369417(n+1)]/A365786(n+1)`
-/

namespace A365787.P16262600824909960838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A365786 (n + 1) : ℚ)

end

end A365787.P16262600824909960838

/-! ## A365787.P16735914704301986859

`A024619(A365789(n+1))`
-/

namespace A365787.P16735914704301986859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (A365789 (n + 1)).toNat

end

end A365787.P16735914704301986859

/-! ## A365787.P16813581180186901743

`A286708(n+1)/A007947(A396367(n+1))`
-/

namespace A365787.P16813581180186901743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286708 (n + 1) : ℚ) / (A007947 (A396367 (n + 1)).toNat : ℚ)

end

end A365787.P16813581180186901743

/-! ## A365787.P8180027261425377580

`filter[A306458(n+1), A143731(#)]`
-/

namespace A365787.P8180027261425377580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A365787.P8180027261425377580

/-! ## A365787.P9962539683741458030

`A003557(A286708(n+1))`
-/

namespace A365787.P9962539683741458030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A286708 (n + 1)).toNat

end

end A365787.P9962539683741458030

/-!
# A365788: a(n) = number of k <= n such that rad(k) | n but rad(k) != rad(n).

The programs for A365788, there is no canonical definition to state claims against.
-/

/-! ## A365788.P9118913832823623930

`A010846(n+1)-A008479(n+1)`
-/

namespace A365788.P9118913832823623930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - A008479 (n + 1)

end

end A365788.P9118913832823623930

/-! ## A365788.P440488037625206985

`A361235(n+1)+A183093(n+1)`
-/

namespace A365788.P440488037625206985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361235 (n + 1) + A183093 (n + 1)

end

end A365788.P440488037625206985

/-! ## A365788.P4591363536480264025

`A372720(n+1)+A243822(n+1)`
-/

namespace A365788.P4591363536480264025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372720 (n + 1) + A243822 (n + 1)

end

end A365788.P4591363536480264025

/-! ## A365788.P16584865375193154273

`A375011(n+1)+A372192(n+1)`
-/

namespace A365788.P16584865375193154273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375011 (n + 1) + A372192 (n + 1)

end

end A365788.P16584865375193154273

/-! ## A365788.P6881653700135990217

`A010848(n+1)+A360543(n+1)-A010847(n+1)`
-/

namespace A365788.P6881653700135990217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (n + 1) + (A360543 (n + 1) - A010847 (n + 1))

end

end A365788.P6881653700135990217

/-! ## A365788.P11196648330820588431

`A372192(n+1)+A373738(n+1)-A008479(n+1)`
-/

namespace A365788.P11196648330820588431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372192 (n + 1) + (A373738 (n + 1) - A008479 (n + 1))

end

end A365788.P11196648330820588431

/-! ## A365788.P697374511973056598

`A010846(n+1)+A375011(n+1)-A373738(n+1)`
-/

namespace A365788.P697374511973056598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) + (A375011 (n + 1) - A373738 (n + 1))

end

end A365788.P697374511973056598

/-! ## A365788.P13070867908528182949

`A008479(A064549(n+1))-A008479(n+1)`
-/

namespace A365788.P13070867908528182949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (A064549 (n + 1)).toNat - A008479 (n + 1)

end

end A365788.P13070867908528182949

/-!
# A365789: Position of A365787(n) in A024619.

The programs for A365789, there is no canonical definition to state claims against.
-/

/-! ## A365789.P10860564301216229315

`A305976(A365787(n+1))-2`
-/

namespace A365789.P10860564301216229315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305976 (A365787 (n + 1)).toNat - 2

end

end A365789.P10860564301216229315

/-! ## A365789.P1509836207047354880

`A085970(A365787(n+1))`
-/

namespace A365789.P1509836207047354880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (A365787 (n + 1)).toNat

end

end A365789.P1509836207047354880

/-!
# A365790: a(n) = number of k <= b(n) such that rad(k) | b(n), where rad(n) = A007947(n) and b(n) = A126706(n).

The programs for A365790, there is no canonical definition to state claims against.
-/

/-! ## A365790.P5517820328862305466

`A010846(A126706(n+1))`
-/

namespace A365790.P5517820328862305466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A126706 (n + 1)).toNat

end

end A365790.P5517820328862305466

/-! ## A365790.P6184679184072285235

`A010846(sqrt(A380857(n+1)))`
-/

namespace A365790.P6184679184072285235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (SequenceMachineLib.roundAway (Real.sqrt (A380857 (n + 1) : ℝ))).toNat

end

end A365790.P6184679184072285235

/-! ## A365790.P11594722089289170875

`A010846(A365783(n+1)*A365784(n+1))`
-/

namespace A365790.P11594722089289170875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A365783 (n + 1) * A365784 (n + 1)).toNat

end

end A365790.P11594722089289170875

/-! ## A365790.P5528680731782241103

`A010846(∩[A013929(n+1), A361102(n+1)])`
-/

namespace A365790.P5528680731782241103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A365790.P5528680731782241103

/-! ## A365790.P7640011286140121087

`A010846(∩[A024619(n+1), A363597(n+1)])`
-/

namespace A365790.P7640011286140121087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A365790.P7640011286140121087

/-!
# A365791: a(n) = number of k <= b(n) such that rad(k) = rad(b(n)), where rad(n) = A007947(n) and b(n) = A126706(n).

The programs for A365791, there is no canonical definition to state claims against.
-/

/-! ## A365791.P11086759152576493238

`A008479(A126706(n+1))`
-/

namespace A365791.P11086759152576493238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (A126706 (n + 1)).toNat

end

end A365791.P11086759152576493238

/-!
# A365792: a(n) = number of k <= b(n) such that rad(k) | b(n), where rad(n) = A007947(n) and b(n) = A286708(n).

The programs for A365792, there is no canonical definition to state claims against.
-/

/-! ## A365792.P11171957019544971015

`A010846(A286708(n+1))`
-/

namespace A365792.P11171957019544971015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A286708 (n + 1)).toNat

end

end A365792.P11171957019544971015

/-!
# A365793: a(n) = number of k <= b(n) such that rad(k) = rad(b(n)), where rad(n) = A007947(n) and b(n) = A286708(n).

The programs for A365793, there is no canonical definition to state claims against.
-/

/-! ## A365793.P14386045037050789192

`A008479(A286708(n+1))`
-/

namespace A365793.P14386045037050789192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (A286708 (n + 1)).toNat

end

end A365793.P14386045037050789192

/-! ## A365793.P1555498809376446597

`A010846(A365787(n+1))`
-/

namespace A365793.P1555498809376446597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A365787 (n + 1)).toNat

end

end A365793.P1555498809376446597

/-!
# A365795: Numbers k such that omega(k) = 3 and its prime factors satisfy the equation p_1 + p_2 = p_3.

The programs for A365795, there is no canonical definition to state claims against.
-/

/-! ## A365795.P6891143737823436000

`∩[A215951(n+1), A221054(n+1)]`
-/

namespace A365795.P6891143737823436000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365795.P6891143737823436000

/-! ## A365795.P12805468798533644067

`filter[A215951(n+1), A353674(#)]`
-/

namespace A365795.P12805468798533644067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353674 (f1 j).toNat = 1) n)

end

end A365795.P12805468798533644067

/-! ## A365795.P3606171907333270028

`∩[A098904(n+1), A215951(n+1)]`
-/

namespace A365795.P3606171907333270028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365795.P3606171907333270028

/-! ## A365795.P2260878539424332907

`∩[A033992(n+1), A071139(n+1)]`
-/

namespace A365795.P2260878539424332907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365795.P2260878539424332907

/-! ## A365795.P105664354452914711

`∩[A033992(n+1), A221054(n+1)]`
-/

namespace A365795.P105664354452914711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365795.P105664354452914711

/-! ## A365795.P11580341798949055695

`∩[A071139(n+1), A214195(n+1)]`
-/

namespace A365795.P11580341798949055695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365795.P11580341798949055695

/-! ## A365795.P11523007316214682581

`∩[A221054(n+1), A280011(n+1)]`
-/

namespace A365795.P11523007316214682581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365795.P11523007316214682581

/-!
# A365796: Number of connected asteroidal triple-free graphs on n vertices.

The programs for A365796, there is no canonical definition to state claims against.
-/

/-! ## A365796.P15152121059985737863

`or(A052433(n+1), A269254(A067417(3*n+2)))`
-/

namespace A365796.P15152121059985737863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052433 (n + 1)) (A269254 (A067417 (3 * n + 2)).toNat)

end

end A365796.P15152121059985737863

/-! ## A365796.P3372909172327466038

`A349049(a(n-1)²)+n` with `a(0)=1`
-/

namespace A365796.P3372909172327466038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349049 (a (n - 1) ^ 2).toNat + (n : ℤ)

end

end A365796.P3372909172327466038

/-!
# A365799: Parity of the Dirichlet inverse of the characteristic function of triangular numbers (A010054).

The programs for A365799, there is no canonical definition to state claims against.
-/

/-! ## A365799.P11874256227909674576

`A308264(n+1)%2`
-/

namespace A365799.P11874256227909674576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308264 (n + 1)) 2

end

end A365799.P11874256227909674576

/-! ## A365799.P10107761169069233987

`and(1, A365800(n+1))`
-/

namespace A365799.P10107761169069233987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A365800 (n + 1))

end

end A365799.P10107761169069233987

/-! ## A365799.P6389132970825077720

`A000035(A365800(n+1)²)`
-/

namespace A365799.P6389132970825077720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A365800 (n + 1) ^ 2).toNat

end

end A365799.P6389132970825077720

/-! ## A365799.P7628237575825497248

`and(A005131(n), A308264(n+1))`
-/

namespace A365799.P7628237575825497248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005131 n) (A308264 (n + 1))

end

end A365799.P7628237575825497248

/-! ## A365799.P15216106139377436973

`A028572(A028572(A365800(n+1)²))`
-/

namespace A365799.P15216106139377436973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028572 (A028572 (A365800 (n + 1) ^ 2).toNat).toNat

end

end A365799.P15216106139377436973

/-! ## A365799.P11378400178253923810

`and(A174692(n), A308264(n+1))`
-/

namespace A365799.P11378400178253923810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174692 n) (A308264 (n + 1))

end

end A365799.P11378400178253923810

/-! ## A365799.P8233387443035347419

`and(A014734(n+1), A308264(n+1))`
-/

namespace A365799.P8233387443035347419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014734 (n + 1)) (A308264 (n + 1))

end

end A365799.P8233387443035347419

/-! ## A365799.P7430459136963461152

`and(A004119(n), A308264(n+1))`
-/

namespace A365799.P7430459136963461152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004119 n) (A308264 (n + 1))

end

end A365799.P7430459136963461152

/-! ## A365799.P11386290101292336697

`and(A195744(n), A308264(n+1))`
-/

namespace A365799.P11386290101292336697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A308264 (n + 1))

end

end A365799.P11386290101292336697

/-! ## A365799.P117819490261631299

`and(A196657(n), A308264(n+1))`
-/

namespace A365799.P117819490261631299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A308264 (n + 1))

end

end A365799.P117819490261631299

/-! ## A365799.P8513141840059154570

`and(A305262(n), A308264(n+1))`
-/

namespace A365799.P8513141840059154570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A305262 n) (A308264 (n + 1))

end

end A365799.P8513141840059154570

/-! ## A365799.P10113718103630920036

`and(A305269(n), A308264(n+1))`
-/

namespace A365799.P10113718103630920036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A305269 n) (A308264 (n + 1))

end

end A365799.P10113718103630920036

/-! ## A365799.P11795571007337839406

`and(A005183(n), A308264(n+1))`
-/

namespace A365799.P11795571007337839406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005183 n) (A308264 (n + 1))

end

end A365799.P11795571007337839406

/-! ## A365799.P4569067191807313351

`and(A132750(n), A308264(n+1))`
-/

namespace A365799.P4569067191807313351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132750 n) (A308264 (n + 1))

end

end A365799.P4569067191807313351

/-! ## A365799.P10059606991177238551

`and(A002064(n), A308264(n+1))`
-/

namespace A365799.P10059606991177238551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A308264 (n + 1))

end

end A365799.P10059606991177238551

/-! ## A365799.P450189034140284639

`and(A048474(n), A308264(n+1))`
-/

namespace A365799.P450189034140284639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048474 n) (A308264 (n + 1))

end

end A365799.P450189034140284639

/-! ## A365799.P5704503613575926898

`and(A206604(n), A308264(n+1))`
-/

namespace A365799.P5704503613575926898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A206604 n) (A308264 (n + 1))

end

end A365799.P5704503613575926898

/-! ## A365799.P11700046679419803210

`and(A080267(n+1), A308264(n+1))`
-/

namespace A365799.P11700046679419803210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080267 (n + 1)) (A308264 (n + 1))

end

end A365799.P11700046679419803210

/-! ## A365799.P3578760366019769402

`and(A048476(n), A308264(n+1))`
-/

namespace A365799.P3578760366019769402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048476 n) (A308264 (n + 1))

end

end A365799.P3578760366019769402

/-! ## A365799.P10999852975778630033

`and(A048477(n), A308264(n+1))`
-/

namespace A365799.P10999852975778630033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048477 n) (A308264 (n + 1))

end

end A365799.P10999852975778630033

