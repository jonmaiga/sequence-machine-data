import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B000.C052
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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

/-!
# A147100: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1000-1000-1100-0111 pattern in any orientation.

The programs for A147100, there is no canonical definition to state claims against.
-/

/-! ## A147100.P17945534652369160773

`A394909(A401516(n))`
-/

namespace A147100.P17945534652369160773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394909 (A401516 n).toNat

end

end A147100.P17945534652369160773

/-! ## A147100.P15136527944795987819

`A247514(A000031(n*A326447(n)))`
-/

namespace A147100.P15136527944795987819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247514 (A000031 ((n : ℤ) * A326447 n).toNat).toNat

end

end A147100.P15136527944795987819

/-! ## A147100.P934987369961251078

`A238616(A053253(n)^A326450(n))`
-/

namespace A147100.P934987369961251078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238616 (SequenceMachineLib.roundAway ((A053253 n : ℚ) ^ (A326450 n : ℤ))).toNat

end

end A147100.P934987369961251078

/-! ## A147100.P8020824892212018213

`A232862(A007774(n+1)^A366753(n))`
-/

namespace A147100.P8020824892212018213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232862 (SequenceMachineLib.roundAway ((A007774 (n + 1) : ℚ) ^ (A366753 n : ℤ))).toNat

end

end A147100.P8020824892212018213

/-!
# A147101: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1000-1000-1100-0111 pattern in any orientation.

The programs for A147101, there is no canonical definition to state claims against.
-/

/-! ## A147101.P14310528524729124607

`A147099(floor(sqrt(A033638(n))))`
-/

namespace A147101.P14310528524729124607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147099 (Int.sqrt (A033638 n)).toNat

end

end A147101.P14310528524729124607

/-!
# A147102: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1000-1100-0111 pattern in any orientation.

The programs for A147102, there is no canonical definition to state claims against.
-/

/-! ## A147102.P13276703012429857874

`A147104(2*(n+2))`
-/

namespace A147102.P13276703012429857874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147104 (2 * (n + 2))

end

end A147102.P13276703012429857874

/-!
# A147103: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1000-1100-0111 pattern in any orientation.

The programs for A147103, there is no canonical definition to state claims against.
-/

/-! ## A147103.P13604272145764136826

`A048240(A295977(C(n, ceil(n/2)+2)))`
-/

namespace A147103.P13604272145764136826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048240 (A295977 (Nat.choose n (⌈(n : ℚ) / 2⌉ + 2).toNat)).toNat

end

end A147103.P13604272145764136826

/-! ## A147103.P1209526813676772574

`A073300(A023037(n)%A001250(n))`
-/

namespace A147103.P1209526813676772574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073300 (Int.tmod (A023037 n) (A001250 n)).toNat

end

end A147103.P1209526813676772574

/-! ## A147103.P14812306218493320097

`A273404(xor(A042851(n), A286815(n)))`
-/

namespace A147103.P14812306218493320097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273404 (Int.xor (A042851 n) (A286815 n)).toNat

end

end A147103.P14812306218493320097

/-! ## A147103.P10196697900542027831

`A145799(A000837(n)^A006141(n+1))`
-/

namespace A147103.P10196697900542027831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145799 (SequenceMachineLib.roundAway ((A000837 n : ℚ) ^ (A006141 (n + 1) : ℤ))).toNat

end

end A147103.P10196697900542027831

/-! ## A147103.P1702528115503542257

`A116939(or(A147132(n+1), A163493(n)))`
-/

namespace A147103.P1702528115503542257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (Int.lor (A147132 (n + 1)) (A163493 n)).toNat

end

end A147103.P1702528115503542257

/-!
# A147104: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1000-1100-0111 pattern in any orientation.

The programs for A147104, there is no canonical definition to state claims against.
-/

/-! ## A147104.P18007820098343501116

`A132075(A147048(n+1))`
-/

namespace A147104.P18007820098343501116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132075 (A147048 (n + 1)).toNat

end

end A147104.P18007820098343501116

/-! ## A147104.P17868300865408497171

`A153809(A147040(n+1))`
-/

namespace A147104.P17868300865408497171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153809 (A147040 (n + 1)).toNat

end

end A147104.P17868300865408497171

/-! ## A147104.P12530623929194293336

`A161209(A147096(n+1))`
-/

namespace A147104.P12530623929194293336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161209 (A147096 (n + 1)).toNat

end

end A147104.P12530623929194293336

/-! ## A147104.P16928351296059421852

`A304028(A146914(n+1))`
-/

namespace A147104.P16928351296059421852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304028 (A146914 (n + 1)).toNat

end

end A147104.P16928351296059421852

/-! ## A147104.P3941462243572165915

`A308937(A145948(n+1))`
-/

namespace A147104.P3941462243572165915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308937 (A145948 (n + 1)).toNat

end

end A147104.P3941462243572165915

/-!
# A147105: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1000-1100-0111 pattern in any orientation.

The programs for A147105, there is no canonical definition to state claims against.
-/

/-! ## A147105.P9194611776239725509

`A227690(A326083(n)-A065547(n))`
-/

namespace A147105.P9194611776239725509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A326083 n - A065547 n).toNat

end

end A147105.P9194611776239725509

/-!
# A147106: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1000-1000-1100-0111 pattern in any orientation.

The programs for A147106, there is no canonical definition to state claims against.
-/

/-! ## A147106.P6471739278061136629

`or(1, A165412(A098482(n)))`
-/

namespace A147106.P6471739278061136629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A165412 (A098482 n).toNat)

end

end A147106.P6471739278061136629

/-! ## A147106.P6016349127516995141

`A371128(A160120(n))-A033111(n+1)`
-/

namespace A147106.P6016349127516995141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371128 (A160120 n).toNat - A033111 (n + 1)

end

end A147106.P6016349127516995141

/-!
# A147107: Number of n X n binary arrays with all ones connected only in a 1000-1000-1111-0010 pattern in any orientation.

The programs for A147107, there is no canonical definition to state claims against.
-/

/-! ## A147107.P3503027217601803754

`A147109(2*(n+2))`
-/

namespace A147107.P3503027217601803754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147109 (2 * (n + 2))

end

end A147107.P3503027217601803754

/-! ## A147107.P2328783803283849962

`∏{d}[A144396(n+1), A147109(#)]`
-/

namespace A147107.P2328783803283849962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147109 d

end

end A147107.P2328783803283849962

/-!
# A147110: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1000-1111-0010 pattern in any orientation.

The programs for A147110, there is no canonical definition to state claims against.
-/

/-! ## A147110.P2161953283011963954

`A147112(2*(n+2))`
-/

namespace A147110.P2161953283011963954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147112 (2 * (n + 2))

end

end A147110.P2161953283011963954

/-! ## A147110.P17298122162906776232

`A347609(A011889(n))`
-/

namespace A147110.P17298122162906776232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 (A011889 n).toNat

end

end A147110.P17298122162906776232

/-! ## A147110.P9165713446370556025

`A368275(A036676(n))`
-/

namespace A147110.P9165713446370556025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368275 (A036676 n).toNat

end

end A147110.P9165713446370556025

/-! ## A147110.P978796605508711762

`A158185(A241688(n+2))`
-/

namespace A147110.P978796605508711762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158185 (A241688 (n + 2)).toNat

end

end A147110.P978796605508711762

/-!
# A147111: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1000-1111-0010 pattern in any orientation.

The programs for A147111, there is no canonical definition to state claims against.
-/

/-! ## A147111.P17555729209967099036

`A146465(C(n, A320001(n+1)))`
-/

namespace A147111.P17555729209967099036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146465 (Nat.choose n (A320001 (n + 1)).toNat)

end

end A147111.P17555729209967099036

/-! ## A147111.P8459031140812485179

`A147158(n+1)-and(A034691(n+1), A231285(n+1))`
-/

namespace A147111.P8459031140812485179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147158 (n + 1) - Int.land (A034691 (n + 1)) (A231285 (n + 1))

end

end A147111.P8459031140812485179

/-! ## A147111.P13585075042451218349

`A147158(n+1)-and(A114512(2*n), A231285(n+1))`
-/

namespace A147111.P13585075042451218349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147158 (n + 1) - Int.land (A114512 (2 * n)) (A231285 (n + 1))

end

end A147111.P13585075042451218349

/-! ## A147111.P2620287961604867085

`A147158(n+1)-and(A000037(3*(n+1)), A231285(n+1))`
-/

namespace A147111.P2620287961604867085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147158 (n + 1) - Int.land (A000037 (3 * (n + 1))) (A231285 (n + 1))

end

end A147111.P2620287961604867085

/-!
# A147112: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1000-1111-0010 pattern in any orientation.

The programs for A147112, there is no canonical definition to state claims against.
-/

/-! ## A147112.P1049772439585341075

`A147110(floor(sqrt(A033638(n))))`
-/

namespace A147112.P1049772439585341075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147110 (Int.sqrt (A033638 n)).toNat

end

end A147112.P1049772439585341075

/-! ## A147112.P12062420904944483821

`A089868(A147175(n+1))`
-/

namespace A147112.P12062420904944483821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A147175 (n + 1)).toNat

end

end A147112.P12062420904944483821

/-! ## A147112.P1654572625135656526

`A115985(A147402(n+1))`
-/

namespace A147112.P1654572625135656526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115985 (A147402 (n + 1)).toNat

end

end A147112.P1654572625135656526

/-! ## A147112.P10326870561654679724

`A276878(A147433(n+1))`
-/

namespace A147112.P10326870561654679724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276878 (A147433 (n + 1)).toNat

end

end A147112.P10326870561654679724

/-! ## A147112.P106774967998397425

`A285304(A147252(n+1))`
-/

namespace A147112.P106774967998397425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285304 (A147252 (n + 1)).toNat

end

end A147112.P106774967998397425

/-!
# A147113: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1000-1111-0010 pattern in any orientation.

The programs for A147113, there is no canonical definition to state claims against.
-/

/-! ## A147113.P16869472385499894899

`A336420(A004689(n))`
-/

namespace A147113.P16869472385499894899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336420 (A004689 n).toNat

end

end A147113.P16869472385499894899

/-! ## A147113.P10262615948100570476

`A151728(A036678(n+1))`
-/

namespace A147113.P10262615948100570476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151728 (A036678 (n + 1)).toNat

end

end A147113.P10262615948100570476

/-! ## A147113.P13309962270610970871

`A336898(A345195(n+1))`
-/

namespace A147113.P13309962270610970871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336898 (A345195 (n + 1)).toNat

end

end A147113.P13309962270610970871

/-! ## A147113.P7655629034093310271

`A324753(p?[A114639(n)]-n)`
-/

namespace A147113.P7655629034093310271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324753 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)).toNat

end

end A147113.P7655629034093310271

/-! ## A147113.P14290421847693537133

`A052128(A306157(n+1)+1)`
-/

namespace A147113.P14290421847693537133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052128 (A306157 (n + 1) + 1).toNat

end

end A147113.P14290421847693537133

/-!
# A147115: Number of n X n binary arrays with all ones connected only in a 1000-1000-1111-0100 pattern in any orientation.

The programs for A147115, there is no canonical definition to state claims against.
-/

/-! ## A147115.P4612005610597203264

`A147117(2*(n+2))`
-/

namespace A147115.P4612005610597203264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147117 (2 * (n + 2))

end

end A147115.P4612005610597203264

/-!
# A147118: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1000-1111-0100 pattern in any orientation.

The programs for A147118, there is no canonical definition to state claims against.
-/

/-! ## A147118.P3137075677953983251

`A147120(2*(n+2))`
-/

namespace A147118.P3137075677953983251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147120 (2 * (n + 2))

end

end A147118.P3137075677953983251

/-! ## A147118.P308243711017673653

`A111622(A137356(n))`
-/

namespace A147118.P308243711017673653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111622 (A137356 n).toNat

end

end A147118.P308243711017673653

/-! ## A147118.P16378940278096564548

`A115985(A351707(n))`
-/

namespace A147118.P16378940278096564548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115985 (A351707 n).toNat

end

end A147118.P16378940278096564548

/-! ## A147118.P16583058714226672200

`A157966(A352045(n))`
-/

namespace A147118.P16583058714226672200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A352045 n).toNat

end

end A147118.P16583058714226672200

/-! ## A147118.P10366611040563513716

`A368275(A050233(n+1))`
-/

namespace A147118.P10366611040563513716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368275 (A050233 (n + 1)).toNat

end

end A147118.P10366611040563513716

/-!
# A147119: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1000-1111-0100 pattern in any orientation.

The programs for A147119, there is no canonical definition to state claims against.
-/

/-! ## A147119.P11614363595821017896

`or(A008284(A147158(n+1)), A147111(n+1))`
-/

namespace A147119.P11614363595821017896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008284 (A147158 (n + 1)).toNat) (A147111 (n + 1))

end

end A147119.P11614363595821017896

/-! ## A147119.P4790223627069024520

`A147158(n+1)-∑[A279158(A026692(n+1))]`
-/

namespace A147119.P4790223627069024520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (A026692 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147158 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147119.P4790223627069024520

/-! ## A147119.P2467185429582242585

`A147158(n+1)-xor(A147152(n+1), A147159(n+2))`
-/

namespace A147119.P2467185429582242585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147158 (n + 1) - Int.xor (A147152 (n + 1)) (A147159 (n + 2))

end

end A147119.P2467185429582242585

/-!
# A147120: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1000-1111-0100 pattern in any orientation.

The programs for A147120, there is no canonical definition to state claims against.
-/

/-! ## A147120.P14993463796729777262

`or(A007913(A147159(n+1)), A147112(n+1))`
-/

namespace A147120.P14993463796729777262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007913 (A147159 (n + 1)).toNat) (A147112 (n + 1))

end

end A147120.P14993463796729777262

/-! ## A147120.P12167314569927319770

`or(A057958(A147433(n+1)), A147112(n+1))`
-/

namespace A147120.P12167314569927319770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057958 (A147433 (n + 1)).toNat) (A147112 (n + 1))

end

end A147120.P12167314569927319770

/-! ## A147120.P7969626789828343089

`or(A147112(n+1), A333781(A147144(n+1)))`
-/

namespace A147120.P7969626789828343089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147112 (n + 1)) (A333781 (A147144 (n + 1)).toNat)

end

end A147120.P7969626789828343089

/-! ## A147120.P8463886361689484039

`or(A147112(n+1), A360676(A146828(n+1)))`
-/

namespace A147120.P8463886361689484039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147112 (n + 1)) (A360676 (A146828 (n + 1)).toNat)

end

end A147120.P8463886361689484039

/-! ## A147120.P367884307465764889

`or(A056670(A147128(n+1)), A147112(n+1))`
-/

namespace A147120.P367884307465764889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056670 (A147128 (n + 1)).toNat) (A147112 (n + 1))

end

end A147120.P367884307465764889

/-!
# A147121: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1000-1111-0100 pattern in any orientation.

The programs for A147121, there is no canonical definition to state claims against.
-/

/-! ## A147121.P955472198171670539

`or(A147113(n+1), A353846(A143184(n)))`
-/

namespace A147121.P955472198171670539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147113 (n + 1)) (A353846 (A143184 n).toNat)

end

end A147121.P955472198171670539

/-! ## A147121.P17895813285883079924

`A109375(A146158(n+1))`
-/

namespace A147121.P17895813285883079924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109375 (A146158 (n + 1)).toNat

end

end A147121.P17895813285883079924

/-! ## A147121.P17620778305060809353

`A336420(3*A000672(n))`
-/

namespace A147121.P17620778305060809353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336420 (3 * A000672 n).toNat

end

end A147121.P17620778305060809353

/-! ## A147121.P3304926572862044554

`A248601(A143184(n)+n)`
-/

namespace A147121.P3304926572862044554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248601 (A143184 n + (n : ℤ)).toNat

end

end A147121.P3304926572862044554

/-!
# A147123: Number of n X n binary arrays with all ones connected only in a 1000-1000-1111-1000 pattern in any orientation.

The programs for A147123, there is no canonical definition to state claims against.
-/

/-! ## A147123.P4220946364205533607

`A147125(2*n+3)`
-/

namespace A147123.P4220946364205533607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147125 (2 * n + 3)

end

end A147123.P4220946364205533607

/-!
# A147124: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1000-1000-1111-1000 pattern in any orientation.

The programs for A147124, there is no canonical definition to state claims against.
-/

/-! ## A147124.P7723345060912230615

`A331917(A204714(n+1))`
-/

namespace A147124.P7723345060912230615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331917 (A204714 (n + 1)).toNat

end

end A147124.P7723345060912230615

/-!
# A147125: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1000-1000-1111-1000 pattern in any orientation.

The programs for A147125, there is no canonical definition to state claims against.
-/

/-! ## A147125.P2128036931734720161

`A147123(floor(sqrt(A033638(n))))`
-/

namespace A147125.P2128036931734720161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147123 (Int.sqrt (A033638 n)).toNat

end

end A147125.P2128036931734720161

/-!
# A147126: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1000-1111-1000 pattern in any orientation.

The programs for A147126, there is no canonical definition to state claims against.
-/

/-! ## A147126.P7426138633364079501

`A147128(2*n+3)`
-/

namespace A147126.P7426138633364079501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147128 (2 * n + 3)

end

end A147126.P7426138633364079501

/-! ## A147126.P6919703622394772253

`or(A056670(n+1), A147128(A072154(n)))`
-/

namespace A147126.P6919703622394772253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056670 (n + 1)) (A147128 (A072154 n).toNat)

end

end A147126.P6919703622394772253

/-! ## A147126.P14539539608249575682

`A157966(A068013(n))`
-/

namespace A147126.P14539539608249575682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A068013 n).toNat

end

end A147126.P14539539608249575682

/-! ## A147126.P14645085055496576862

`A137624(A190159(n))`
-/

namespace A147126.P14645085055496576862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137624 (A190159 n).toNat

end

end A147126.P14645085055496576862

/-! ## A147126.P6813684079448585887

`A325512(A030038(n))`
-/

namespace A147126.P6813684079448585887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325512 (A030038 n).toNat

end

end A147126.P6813684079448585887

/-!
# A147127: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1000-1111-1000 pattern in any orientation.

The programs for A147127, there is no canonical definition to state claims against.
-/

/-! ## A147127.P11437443742522734196

`A147272(n+1)+2%A147158(n+1)`
-/

namespace A147127.P11437443742522734196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147272 (n + 1) + Int.tmod 2 (A147158 (n + 1))

end

end A147127.P11437443742522734196

/-! ## A147127.P6551198670241317987

`A147272(n+1)+A001221(A147140(n+1))`
-/

namespace A147127.P6551198670241317987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147272 (n + 1) + A001221 (A147140 (n + 1)).toNat

end

end A147127.P6551198670241317987

/-! ## A147127.P6567187721063948607

`A344291(ceil(A392455(2*(n+2))/A344333(2*n+5)))`
-/

namespace A147127.P6567187721063948607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344291 ⌈(A392455 (2 * (n + 2)) : ℚ) / (A344333 (2 * n + 5) : ℚ)⌉.toNat

end

end A147127.P6567187721063948607

/-!
# A147128: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1000-1111-1000 pattern in any orientation.

The programs for A147128, there is no canonical definition to state claims against.
-/

/-! ## A147128.P13037304186961555214

`A290966(A147402(n+1))`
-/

namespace A147128.P13037304186961555214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290966 (A147402 (n + 1)).toNat

end

end A147128.P13037304186961555214

/-! ## A147128.P15998874601252145055

`A362981(A147502(n+1))`
-/

namespace A147128.P15998874601252145055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362981 (A147502 (n + 1)).toNat

end

end A147128.P15998874601252145055

/-! ## A147128.P13958714543675122382

`A101435(A147252(n+1)+A147252(n+1))`
-/

namespace A147128.P13958714543675122382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101435 (A147252 (n + 1) + A147252 (n + 1)).toNat

end

end A147128.P13958714543675122382

/-! ## A147128.P5672783855528233580

`or(A105362(A147402(n+1)), A147502(n+1))`
-/

namespace A147128.P5672783855528233580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105362 (A147402 (n + 1)).toNat) (A147502 (n + 1))

end

end A147128.P5672783855528233580

/-! ## A147128.P16860152591432257710

`A175427(A147381(n+1))+A117923(A147449(n+1))`
-/

namespace A147128.P16860152591432257710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A147381 (n + 1)).toNat + A117923 (A147449 (n + 1)).toNat

end

end A147128.P16860152591432257710

/-!
# A147129: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1000-1111-1000 pattern in any orientation.

The programs for A147129, there is no canonical definition to state claims against.
-/

/-! ## A147129.P16309601753534232167

`A336898(A199925(n+1))`
-/

namespace A147129.P16309601753534232167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336898 (A199925 (n + 1)).toNat

end

end A147129.P16309601753534232167

/-! ## A147129.P4157828923197591358

`filter[A268199(n+2), A287801(#)]`
-/

namespace A147129.P4157828923197591358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268199 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A287801 (f1 j).toNat = 1) n)

end

end A147129.P4157828923197591358

/-! ## A147129.P15316591924484448619

`∏{e}[A061133(n+1), A141523(#)]`
-/

namespace A147129.P15316591924484448619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A141523 (Nat.factorization (f1 n).natAbs p)

end

end A147129.P15316591924484448619

/-! ## A147129.P12208524840596334150

`A353430(Δ[A301513(2*n+3)])`
-/

namespace A147129.P12208524840596334150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301513 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353430 (f1 (n + 1) - f1 n).toNat

end

end A147129.P12208524840596334150

/-! ## A147129.P3655380291745164073

`gcd(A076221(A000108(n)), A305110(n))`
-/

namespace A147129.P3655380291745164073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076221 (A000108 n).toNat) (A305110 n)

end

end A147129.P3655380291745164073

/-!
# A147131: Number of n X n binary arrays with all ones connected only in a 1000-1001-1111 pattern in any orientation.

The programs for A147131, there is no canonical definition to state claims against.
-/

/-! ## A147131.P13390733992908139234

`A147133(2*n+3)`
-/

namespace A147131.P13390733992908139234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147133 (2 * n + 3)

end

end A147131.P13390733992908139234

/-!
# A147132: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1000-1001-1111 pattern in any orientation.

The programs for A147132, there is no canonical definition to state claims against.
-/

/-! ## A147132.P9149814509740355494

`A076991(n^A100001(n+1))`
-/

namespace A147132.P9149814509740355494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076991 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A100001 (n + 1) : ℤ))).toNat

end

end A147132.P9149814509740355494

/-! ## A147132.P9357522380358520153

`and(p?[A343344(n)], A146707(n+1))`
-/

namespace A147132.P9357522380358520153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A146707 (n + 1))

end

end A147132.P9357522380358520153

/-! ## A147132.P16819063674294734810

`and(A147256(n+1), A147283(n+4))`
-/

namespace A147132.P16819063674294734810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147256 (n + 1)) (A147283 (n + 4))

end

end A147132.P16819063674294734810

/-! ## A147132.P18006701356834432720

`and(A005408(3^n), A146635(n+1))`
-/

namespace A147132.P18006701356834432720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 (3 ^ n)) (A146635 (n + 1))

end

end A147132.P18006701356834432720

/-! ## A147132.P17727541007118167336

`and(A005408(3^n), A147163(n+1))`
-/

namespace A147132.P17727541007118167336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 (3 ^ n)) (A147163 (n + 1))

end

end A147132.P17727541007118167336

/-!
# A147133: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1000-1001-1111 pattern in any orientation.

The programs for A147133, there is no canonical definition to state claims against.
-/

/-! ## A147133.P17119423042490645927

`A147131(∏{e}[A056487(n), #])`
-/

namespace A147133.P17119423042490645927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147131 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A147133.P17119423042490645927

/-! ## A147133.P689849350299931322

`A185035(A185035(n))+A146652(n+1)`
-/

namespace A147133.P689849350299931322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185035 (A185035 n).toNat + A146652 (n + 1)

end

end A147133.P689849350299931322

/-!
# A147134: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1001-1111 pattern in any orientation.

The programs for A147134, there is no canonical definition to state claims against.
-/

/-! ## A147134.P5648675048350949105

`A147136(2*n+3)`
-/

namespace A147134.P5648675048350949105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147136 (2 * n + 3)

end

end A147134.P5648675048350949105

/-! ## A147134.P5164736124008424475

`A146842(n+1)-A166476(A146827(n+1))`
-/

namespace A147134.P5164736124008424475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146842 (n + 1) - A166476 (A146827 (n + 1)).toNat

end

end A147134.P5164736124008424475

/-! ## A147134.P16108738493698483888

`A171474(A146928(n+2))`
-/

namespace A147134.P16108738493698483888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171474 (A146928 (n + 2)).toNat

end

end A147134.P16108738493698483888

/-! ## A147134.P4423462007620100646

`A332301(A146904(n+2))`
-/

namespace A147134.P4423462007620100646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332301 (A146904 (n + 2)).toNat

end

end A147134.P4423462007620100646

/-! ## A147134.P8127943329861071763

`A355330(A216631(n+2))`
-/

namespace A147134.P8127943329861071763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355330 (A216631 (n + 2)).toNat

end

end A147134.P8127943329861071763

/-!
# A147136: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1001-1111 pattern in any orientation.

The programs for A147136, there is no canonical definition to state claims against.
-/

/-! ## A147136.P15690414133973520753

`A356903(A146607(n+1))`
-/

namespace A147136.P15690414133973520753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356903 (A146607 (n + 1)).toNat

end

end A147136.P15690414133973520753

/-! ## A147136.P13257096783152591353

`A146844(n+1)-A378662(A146836(n+1)²)`
-/

namespace A147136.P13257096783152591353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146844 (n + 1) - A378662 (A146836 (n + 1) ^ 2).toNat

end

end A147136.P13257096783152591353

/-! ## A147136.P5663426887133855383

`and(A146796(n+3)*A147056(n+1), A146844(n+1))`
-/

namespace A147136.P5663426887133855383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146796 (n + 3) * A147056 (n + 1)) (A146844 (n + 1))

end

end A147136.P5663426887133855383

/-! ## A147136.P5545235484995201106

`A316530(A147016(n+1))+A004526(A146876(n+1))`
-/

namespace A147136.P5545235484995201106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316530 (A147016 (n + 1)).toNat + A004526 (A146876 (n + 1)).toNat

end

end A147136.P5545235484995201106

/-!
# A147137: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1001-1111 pattern in any orientation.

The programs for A147137, there is no canonical definition to state claims against.
-/

/-! ## A147137.P15846732616176727830

`A317709(A146184(n+1))`
-/

namespace A147137.P15846732616176727830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (A146184 (n + 1)).toNat

end

end A147137.P15846732616176727830

/-! ## A147137.P18103553686553044142

`A276350(A023422(n)^3)`
-/

namespace A147137.P18103553686553044142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276350 (A023422 n ^ 3).toNat

end

end A147137.P18103553686553044142

/-! ## A147137.P17183803376797795507

`A146230(n^A136400(n))`
-/

namespace A147137.P17183803376797795507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146230 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A147137.P17183803376797795507

/-! ## A147137.P10511234621104291690

`A227962(A049153(n))`
-/

namespace A147137.P10511234621104291690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227962 (A049153 n).toNat

end

end A147137.P10511234621104291690

/-! ## A147137.P8848924109547100706

`A280814(A019500(n))`
-/

namespace A147137.P8848924109547100706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280814 (A019500 n).toNat

end

end A147137.P8848924109547100706

/-!
# A147138: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1000-1001-1111 pattern in any orientation.

The programs for A147138, there is no canonical definition to state claims against.
-/

/-! ## A147138.P16583140172756557801

`A131507(A163968(n)%A012773(n))`
-/

namespace A147138.P16583140172756557801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (Int.tmod (A163968 n) (A012773 n)).toNat

end

end A147138.P16583140172756557801

/-!
# A147139: Number of n X n binary arrays with all ones connected only in a 1000-1100-0110-0011 pattern in any orientation.

The programs for A147139, there is no canonical definition to state claims against.
-/

/-! ## A147139.P14417450507816417164

`A147141(2*(n+2))`
-/

namespace A147139.P14417450507816417164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147141 (2 * (n + 2))

end

end A147139.P14417450507816417164

/-!
# A147140: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1000-1100-0110-0011 pattern in any orientation.

The programs for A147140, there is no canonical definition to state claims against.
-/

/-! ## A147140.P6307865816159618752

`A131507(A120040(n)*A187430(n))`
-/

namespace A147140.P6307865816159618752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (A120040 n * A187430 n).toNat

end

end A147140.P6307865816159618752

/-! ## A147140.P589455171012274965

`A193260(A000213(n*A332641(n)))`
-/

namespace A147140.P589455171012274965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193260 (A000213 ((n : ℤ) * A332641 n).toNat).toNat

end

end A147140.P589455171012274965

/-! ## A147140.P1041737367383950886

`A129980(A259194(n)*A374742(n))`
-/

namespace A147140.P1041737367383950886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129980 (A259194 n * A374742 n).toNat

end

end A147140.P1041737367383950886

/-!
# A147141: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1000-1100-0110-0011 pattern in any orientation.

The programs for A147141, there is no canonical definition to state claims against.
-/

/-! ## A147141.P7745483648473122191

`A157966(A146149(n+1))`
-/

namespace A147141.P7745483648473122191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A146149 (n + 1)).toNat

end

end A147141.P7745483648473122191

/-! ## A147141.P17995582222022170459

`A190218(A147045(n+1))`
-/

namespace A147141.P17995582222022170459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190218 (A147045 (n + 1)).toNat

end

end A147141.P17995582222022170459

/-! ## A147141.P17679893719796351392

`A239089(A147195(n+1))`
-/

namespace A147141.P17679893719796351392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239089 (A147195 (n + 1)).toNat

end

end A147141.P17679893719796351392

/-! ## A147141.P12775066978638834576

`A239216(A147399(n+1))`
-/

namespace A147141.P12775066978638834576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239216 (A147399 (n + 1)).toNat

end

end A147141.P12775066978638834576

/-! ## A147141.P18255109601295341237

`A242171(A145957(n+1))`
-/

namespace A147141.P18255109601295341237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242171 (A145957 (n + 1)).toNat

end

end A147141.P18255109601295341237

/-!
# A147142: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1100-0110-0011 pattern in any orientation.

The programs for A147142, there is no canonical definition to state claims against.
-/

/-! ## A147142.P14869344332670385756

`A147144(2*n+3)`
-/

namespace A147142.P14869344332670385756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147144 (2 * n + 3)

end

end A147142.P14869344332670385756

/-! ## A147142.P5275094350939259015

`A368100(A000003(n!))`
-/

namespace A147142.P5275094350939259015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368100 (A000003 (Nat.factorial n)).toNat

end

end A147142.P5275094350939259015

/-! ## A147142.P7854708902526521623

`A147680(A350551(n+1))`
-/

namespace A147142.P7854708902526521623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147680 (A350551 (n + 1)).toNat

end

end A147142.P7854708902526521623

/-!
# A147143: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1100-0110-0011 pattern in any orientation.

The programs for A147143, there is no canonical definition to state claims against.
-/

/-! ## A147143.P7980257911945554273

`A401365(A218540(n))`
-/

namespace A147143.P7980257911945554273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401365 (A218540 n).toNat

end

end A147143.P7980257911945554273

/-! ## A147143.P7927433290379219678

`A114225(A137713(n+1))`
-/

namespace A147143.P7927433290379219678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114225 (A137713 (n + 1)).toNat

end

end A147143.P7927433290379219678

/-! ## A147143.P11529332470654855528

`A369859(A229202(n+1))`
-/

namespace A147143.P11529332470654855528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369859 (A229202 (n + 1)).toNat

end

end A147143.P11529332470654855528

/-! ## A147143.P14500509332233475613

`or(1, A141843(A000108(n)))`
-/

namespace A147143.P14500509332233475613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A141843 (A000108 n).toNat)

end

end A147143.P14500509332233475613

/-! ## A147143.P9667786852745323607

`filter[A274113(n), A173923(#)]`
-/

namespace A147143.P9667786852745323607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173923 (f1 j).toNat = 1) n)

end

end A147143.P9667786852745323607

/-!
# A147144: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1100-0110-0011 pattern in any orientation.

The programs for A147144, there is no canonical definition to state claims against.
-/

/-! ## A147144.P8173988027087837111

`A320055(A147472(n+1))`
-/

namespace A147144.P8173988027087837111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 (A147472 (n + 1)).toNat

end

end A147144.P8173988027087837111

/-! ## A147144.P16479350563445221166

`A078129(A147104(n+1))`
-/

namespace A147144.P16479350563445221166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (A147104 (n + 1)).toNat

end

end A147144.P16479350563445221166

/-! ## A147144.P8851385966117266350

`A160123(A147096(n+1))`
-/

namespace A147144.P8851385966117266350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160123 (A147096 (n + 1)).toNat

end

end A147144.P8851385966117266350

/-! ## A147144.P11655517841638367551

`A135660(2+A379628(floor(n/2)+1))`
-/

namespace A147144.P11655517841638367551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (2 + A379628 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

end

end A147144.P11655517841638367551

/-! ## A147144.P11824346684408420170

`A175427(A147402(n+5)+A147190(n+1))`
-/

namespace A147144.P11824346684408420170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A147402 (n + 5) + A147190 (n + 1)).toNat

end

end A147144.P11824346684408420170

/-!
# A147145: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1100-0110-0011 pattern in any orientation.

The programs for A147145, there is no canonical definition to state claims against.
-/

/-! ## A147145.P17991121833868338458

`A276876(A147279(n+2))`
-/

namespace A147145.P17991121833868338458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276876 (A147279 (n + 2)).toNat

end

end A147145.P17991121833868338458

/-! ## A147145.P8196636390862937551

`A052126(or((n+1)/2^val(n+1, 2), A041871(n)))`
-/

namespace A147145.P8196636390862937551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (Int.lor (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A041871 n)).toNat

end

end A147145.P8196636390862937551

/-! ## A147145.P14888122790982408209

`A336898(A146228(n+1)-A000700(n))`
-/

namespace A147145.P14888122790982408209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336898 (A146228 (n + 1) - A000700 n).toNat

end

end A147145.P14888122790982408209

/-! ## A147145.P12163219387328456887

`A146985(A003151(n+1)*A026814(n))`
-/

namespace A147145.P12163219387328456887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146985 (A003151 (n + 1) * A026814 n).toNat

end

end A147145.P12163219387328456887

/-! ## A147145.P7873451311487718956

`A113807(A322282(n)%A262254(n+3))`
-/

namespace A147145.P7873451311487718956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113807 (Int.tmod (A322282 n) (A262254 (n + 3))).toNat

end

end A147145.P7873451311487718956

/-!
# A147146: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1000-1100-0110-0011 pattern in any orientation.

The programs for A147146, there is no canonical definition to state claims against.
-/

/-! ## A147146.P1373511256699169910

`and(A139878(A177471(n)), A351342(n))`
-/

namespace A147146.P1373511256699169910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139878 (A177471 n).toNat) (A351342 n)

end

end A147146.P1373511256699169910

/-!
# A147147: Number of n X n binary arrays with all ones connected only in a 1000-1100-0111-0010 pattern in any orientation.

The programs for A147147, there is no canonical definition to state claims against.
-/

/-! ## A147147.P6843073615410595011

`A147149(2*(n+2))`
-/

namespace A147147.P6843073615410595011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147149 (2 * (n + 2))

end

end A147147.P6843073615410595011

/-! ## A147147.P14300216210776932669

`A192049(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A147147.P14300216210776932669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A192049 (a (n - 1)).toNat

end

end A147147.P14300216210776932669

/-!
# A147148: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1000-1100-0111-0010 pattern in any orientation.

The programs for A147148, there is no canonical definition to state claims against.
-/

/-! ## A147148.P16908278393048196103

`A156333(A177725(n+1)+1)`
-/

namespace A147148.P16908278393048196103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156333 (A177725 (n + 1) + 1).toNat

end

end A147148.P16908278393048196103

/-!
# A147149: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1000-1100-0111-0010 pattern in any orientation.

The programs for A147149, there is no canonical definition to state claims against.
-/

/-! ## A147149.P4936990848657213937

`A356711(A145957(n+1))`
-/

namespace A147149.P4936990848657213937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356711 (A145957 (n + 1)).toNat

end

end A147149.P4936990848657213937

/-! ## A147149.P7361757406562995602

`or(A074046(A147152(n+1)), A147109(n+1))`
-/

namespace A147149.P7361757406562995602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074046 (A147152 (n + 1)).toNat) (A147109 (n + 1))

end

end A147149.P7361757406562995602

/-! ## A147149.P7819590070464300524

`or(A074046(A147152(n+1)), A147125(n+1))`
-/

namespace A147149.P7819590070464300524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074046 (A147152 (n + 1)).toNat) (A147125 (n + 1))

end

end A147149.P7819590070464300524

/-! ## A147149.P8910923977315956178

`or(A074046(A147266(n+1)), A147109(n+1))`
-/

namespace A147149.P8910923977315956178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074046 (A147266 (n + 1)).toNat) (A147109 (n + 1))

end

end A147149.P8910923977315956178

/-! ## A147149.P9963748808188231635

`or(A074046(A147266(n+1)), A147125(n+1))`
-/

namespace A147149.P9963748808188231635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074046 (A147266 (n + 1)).toNat) (A147125 (n + 1))

end

end A147149.P9963748808188231635

/-!
# A147150: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1100-0111-0010 pattern in any orientation.

The programs for A147150, there is no canonical definition to state claims against.
-/

/-! ## A147150.P780425685489863582

`A147152(2*n+3)`
-/

namespace A147150.P780425685489863582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147152 (2 * n + 3)

end

end A147150.P780425685489863582

/-!
# A147151: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1100-0111-0010 pattern in any orientation.

The programs for A147151, there is no canonical definition to state claims against.
-/

/-! ## A147151.P9086169923212057410

`A007305(A370528(n)+2)`
-/

namespace A147151.P9086169923212057410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A370528 n + 2).toNat

end

end A147151.P9086169923212057410

/-! ## A147151.P7747759729836064282

`or(A147182(n+1), A319752(A131361(n)²))`
-/

namespace A147151.P7747759729836064282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147182 (n + 1)) (A319752 (A131361 n ^ 2).toNat)

end

end A147151.P7747759729836064282

/-! ## A147151.P17732897713897155202

`A178105(A146867(n+1))+A146875(n+1)`
-/

namespace A147151.P17732897713897155202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178105 (A146867 (n + 1)).toNat + A146875 (n + 1)

end

end A147151.P17732897713897155202

/-! ## A147151.P9406331568293671334

`A012264(A200714(n+1)*A326458(2*n))`
-/

namespace A147151.P9406331568293671334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012264 (A200714 (n + 1) * A326458 (2 * n)).toNat

end

end A147151.P9406331568293671334

/-! ## A147151.P17811365951921015486

`or(A146836(A143326(n+1)), A146851(n+1))`
-/

namespace A147151.P17811365951921015486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146836 (A143326 (n + 1)).toNat) (A146851 (n + 1))

end

end A147151.P17811365951921015486

/-!
# A147152: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1100-0111-0010 pattern in any orientation.

The programs for A147152, there is no canonical definition to state claims against.
-/

/-! ## A147152.P14965539095734609818

`A089868(A146607(n+1))+A004526(A147280(n+1))`
-/

namespace A147152.P14965539095734609818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A146607 (n + 1)).toNat + A004526 (A147280 (n + 1)).toNat

end

end A147152.P14965539095734609818

/-! ## A147152.P15084375343334927351

`A194982(A147402(n+1))+A123108(A146780(n+1))`
-/

namespace A147152.P15084375343334927351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194982 (A147402 (n + 1)).toNat + A123108 (A146780 (n + 1)).toNat

end

end A147152.P15084375343334927351

/-! ## A147152.P13924768357819756417

`A362981(A147449(n+1))+A004526(A146876(n+1))`
-/

namespace A147152.P13924768357819756417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362981 (A147449 (n + 1)).toNat + A004526 (A146876 (n + 1)).toNat

end

end A147152.P13924768357819756417

/-! ## A147152.P17559834842116458199

`A362981(A147449(n+1))+A175427(A147502(n+1))`
-/

namespace A147152.P17559834842116458199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362981 (A147449 (n + 1)).toNat + A175427 (A147502 (n + 1)).toNat

end

end A147152.P17559834842116458199

/-! ## A147152.P8286972428050212504

`A194982(A147449(n+1))+A147206(n+1)-A147502(n+1)`
-/

namespace A147152.P8286972428050212504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194982 (A147449 (n + 1)).toNat + A147206 (n + 1) - A147502 (n + 1)

end

end A147152.P8286972428050212504

/-!
# A147153: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1100-0111-0010 pattern in any orientation.

The programs for A147153, there is no canonical definition to state claims against.
-/

/-! ## A147153.P1452846662354971273

`A098802(A000014(2*n+1)+A000014(n))`
-/

namespace A147153.P1452846662354971273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098802 (A000014 (2 * n + 1) + A000014 n).toNat

end

end A147153.P1452846662354971273

/-! ## A147153.P5395698532539580833

`A047679(C(ceil(∑[(n+2)/5]), 8))`
-/

namespace A147153.P5395698532539580833
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047679 (Nat.choose ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat 8)

end

end A147153.P5395698532539580833

/-! ## A147153.P5788294371866219528

`4*A284976(∑[2*n-gcd(n, ∑[n])]+1)+1`
-/

namespace A147153.P5788294371866219528
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A284976 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat + 1

end

end A147153.P5788294371866219528

/-! ## A147153.P649082098982140863

`A098190(A007579(n))`
-/

namespace A147153.P649082098982140863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098190 (A007579 n).toNat

end

end A147153.P649082098982140863

/-! ## A147153.P14734624272310722665

`A238886(A325553(n))`
-/

namespace A147153.P14734624272310722665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238886 (A325553 n).toNat

end

end A147153.P14734624272310722665

/-!
# A147154: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1000-1100-0111-0010 pattern in any orientation.

The programs for A147154, there is no canonical definition to state claims against.
-/

/-! ## A147154.P2547075802592264965

`A049157(A024359(n!))`
-/

namespace A147154.P2547075802592264965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049157 (A024359 (Nat.factorial n)).toNat

end

end A147154.P2547075802592264965

/-! ## A147154.P9863790218864989902

`A090333(A325133(n!))`
-/

namespace A147154.P9863790218864989902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090333 (A325133 (Nat.factorial n)).toNat

end

end A147154.P9863790218864989902

/-! ## A147154.P10200907627751572363

`A234300(A224296(n+1)+1)`
-/

namespace A147154.P10200907627751572363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (A224296 (n + 1) + 1).toNat

end

end A147154.P10200907627751572363

/-!
# A147155: Number of n X n binary arrays with all ones connected only in a 1000-1100-0111-0100 pattern in any orientation.

The programs for A147155, there is no canonical definition to state claims against.
-/

/-! ## A147155.P18314976850321317138

`A265370(7^abs(1-n))`
-/

namespace A147155.P18314976850321317138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (|1 - (n : ℤ)| : ℤ))).toNat

end

end A147155.P18314976850321317138

/-! ## A147155.P17121519053509902072

`A323790(n*floor(n/3))`
-/

namespace A147155.P17121519053509902072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323790 ((n : ℤ) * ⌊(n : ℚ) / 3⌋).toNat

end

end A147155.P17121519053509902072

/-!
# A147156: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1000-1100-0111-0100 pattern in any orientation.

The programs for A147156, there is no canonical definition to state claims against.
-/

/-! ## A147156.P754510806551734255

`A182318(A167606(n)^A326448(n))`
-/

namespace A147156.P754510806551734255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182318 (SequenceMachineLib.roundAway ((A167606 n : ℚ) ^ (A326448 n : ℤ))).toNat

end

end A147156.P754510806551734255

/-! ## A147156.P17589140270580850197

`A220520(A178993(3*n+4)^A308996(n))`
-/

namespace A147156.P17589140270580850197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220520 (SequenceMachineLib.roundAway ((A178993 (3 * n + 4) : ℚ) ^ (A308996 n : ℤ))).toNat

end

end A147156.P17589140270580850197

/-!
# A147157: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1100-0111-0100 pattern in any orientation.

The programs for A147157, there is no canonical definition to state claims against.
-/

/-! ## A147157.P6624394160754738716

`A147159(2*(n+2))`
-/

namespace A147157.P6624394160754738716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147159 (2 * (n + 2))

end

end A147157.P6624394160754738716

/-!
# A147158: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1100-0111-0100 pattern in any orientation.

The programs for A147158, there is no canonical definition to state claims against.
-/

/-! ## A147158.P4634135619045871201

`A276876(A146606(n+1))`
-/

namespace A147158.P4634135619045871201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276876 (A146606 (n + 1)).toNat

end

end A147158.P4634135619045871201

/-! ## A147158.P5362173094477935989

`A290966(A146678(n+1))`
-/

namespace A147158.P5362173094477935989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290966 (A146678 (n + 1)).toNat

end

end A147158.P5362173094477935989

/-! ## A147158.P11098340634859031846

`A114512(A363128(n+1))`
-/

namespace A147158.P11098340634859031846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114512 (A363128 (n + 1)).toNat

end

end A147158.P11098340634859031846

/-! ## A147158.P1270800536216535108

`A100797(A147079(n+2))`
-/

namespace A147158.P1270800536216535108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100797 (A147079 (n + 2)).toNat

end

end A147158.P1270800536216535108

/-!
# A147160: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1100-0111-0100 pattern in any orientation.

The programs for A147160, there is no canonical definition to state claims against.
-/

/-! ## A147160.P1567632459454533946

`filter[A133854(2*n+1), A100810(#)]`
-/

namespace A147160.P1567632459454533946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133854 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100810 (f1 j).toNat = 1) n)

end

end A147160.P1567632459454533946

/-! ## A147160.P4644459272363715181

`filter[A133854(2*n+1), A105470(#)]`
-/

namespace A147160.P4644459272363715181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133854 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105470 (f1 j).toNat = 1) n)

end

end A147160.P4644459272363715181

/-! ## A147160.P774829686878766138

`filter[A133854(2*n+1), A225181(#)]`
-/

namespace A147160.P774829686878766138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133854 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225181 (f1 j).toNat = 1) n)

end

end A147160.P774829686878766138

/-! ## A147160.P6033107156472738400

`A294748(or(A147166(n+2), A147456(n+1)))`
-/

namespace A147160.P6033107156472738400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294748 (Int.lor (A147166 (n + 2)) (A147456 (n + 1))).toNat

end

end A147160.P6033107156472738400

/-! ## A147160.P1226544426928032121

`A103935(A293169(n))`
-/

namespace A147160.P1226544426928032121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103935 (A293169 n).toNat

end

end A147160.P1226544426928032121

/-!
# A147161: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1000-1100-0111-0100 pattern in any orientation.

The programs for A147161, there is no canonical definition to state claims against.
-/

/-! ## A147161.P12875279220832264605

`or(1, A340832(n!))`
-/

namespace A147161.P12875279220832264605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A340832 (Nat.factorial n))

end

end A147161.P12875279220832264605

/-! ## A147161.P3616241453422924079

`A163311(floor(sqrt(n!)))`
-/

namespace A147161.P3616241453422924079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163311 (Nat.sqrt (Nat.factorial n))

end

end A147161.P3616241453422924079

/-! ## A147161.P7084898285308819078

`A175374(C(n+1, 6))`
-/

namespace A147161.P7084898285308819078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175374 (Nat.choose (n + 1) 6)

end

end A147161.P7084898285308819078

/-! ## A147161.P5811931111438386554

`Δ[A334526(C(n, 6))]+1`
-/

namespace A147161.P5811931111438386554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334526 (Nat.choose n 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A147161.P5811931111438386554

/-!
# A147162: Number of n X n binary arrays with all ones connected only in a 1000-1101-0111 pattern in any orientation.

The programs for A147162, there is no canonical definition to state claims against.
-/

/-! ## A147162.P8603892394758864343

`A147164(2*(n+2))`
-/

namespace A147162.P8603892394758864343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147164 (2 * (n + 2))

end

end A147162.P8603892394758864343

/-! ## A147162.P14405953516224243453

`A246333(A106337(n))`
-/

namespace A147162.P14405953516224243453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246333 (A106337 n).toNat

end

end A147162.P14405953516224243453

/-!
# A147163: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1000-1101-0111 pattern in any orientation.

The programs for A147163, there is no canonical definition to state claims against.
-/

/-! ## A147163.P2767413829495353331

`and(A068722(A146635(n+1)), A146635(n+1))`
-/

namespace A147163.P2767413829495353331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068722 (A146635 (n + 1)).toNat) (A146635 (n + 1))

end

end A147163.P2767413829495353331

/-!
# A147164: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1000-1101-0111 pattern in any orientation.

The programs for A147164, there is no canonical definition to state claims against.
-/

/-! ## A147164.P840018232190347004

`or(A146633(A146615(n+1)), A146652(n+1))`
-/

namespace A147164.P840018232190347004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146633 (A146615 (n + 1)).toNat) (A146652 (n + 1))

end

end A147164.P840018232190347004

/-! ## A147164.P1805268468522142924

`or(A146610(A146647(n+1)), A146652(n+1))`
-/

namespace A147164.P1805268468522142924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146610 (A146647 (n + 1)).toNat) (A146652 (n + 1))

end

end A147164.P1805268468522142924

/-! ## A147164.P4965926205901555072

`or(A146633(A146631(n+1)), A146652(n+1))`
-/

namespace A147164.P4965926205901555072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146633 (A146631 (n + 1)).toNat) (A146652 (n + 1))

end

end A147164.P4965926205901555072

/-! ## A147164.P9589236506924998801

`or(A146610(A146647(n+1)), A146684(n+1))`
-/

namespace A147164.P9589236506924998801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146610 (A146647 (n + 1)).toNat) (A146684 (n + 1))

end

end A147164.P9589236506924998801

/-! ## A147164.P3507174139102454312

`or(A146633(A146631(n+1)), A146684(n+1))`
-/

namespace A147164.P3507174139102454312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146633 (A146631 (n + 1)).toNat) (A146684 (n + 1))

end

end A147164.P3507174139102454312

/-!
# A147165: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1101-0111 pattern in any orientation.

The programs for A147165, there is no canonical definition to state claims against.
-/

/-! ## A147165.P14089771590917568647

`A147167(2*(n+2))`
-/

namespace A147165.P14089771590917568647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147167 (2 * (n + 2))

end

end A147165.P14089771590917568647

/-!
# A147166: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1101-0111 pattern in any orientation.

The programs for A147166, there is no canonical definition to state claims against.
-/

/-! ## A147166.P18418084756806764997

`or(A270061(n)², A147220(n+1))`
-/

namespace A147166.P18418084756806764997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A270061 n ^ 2) (A147220 (n + 1))

end

end A147166.P18418084756806764997

/-! ## A147166.P3860283582969908223

`A147220(n+1)+4*A217657(n)`
-/

namespace A147166.P3860283582969908223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147220 (n + 1) + 4 * A217657 n

end

end A147166.P3860283582969908223

/-! ## A147166.P15892296723417950963

`or(A147220(n+1), A184955(n+4))`
-/

namespace A147166.P15892296723417950963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147220 (n + 1)) (A184955 (n + 4))

end

end A147166.P15892296723417950963

/-! ## A147166.P16647526060746969571

`2*A147182(n+1)-A147220(n+1)`
-/

namespace A147166.P16647526060746969571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147182 (n + 1) - A147220 (n + 1)

end

end A147166.P16647526060746969571

/-! ## A147166.P13338645988305976186

`xor(3, A147220(n+1)+A147152(n+1))`
-/

namespace A147166.P13338645988305976186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A147220 (n + 1) + A147152 (n + 1))

end

end A147166.P13338645988305976186

/-!
# A147167: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1101-0111 pattern in any orientation.

The programs for A147167, there is no canonical definition to state claims against.
-/

/-! ## A147167.P6912667173460862340

`and(-A146780(n+3), A146719(n+1))`
-/

namespace A147167.P6912667173460862340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A146780 (n + 3)) (A146719 (n + 1))

end

end A147167.P6912667173460862340

/-! ## A147167.P114033118634121360

`A125157(A147433(n+1))+A004526(A146796(n+1))`
-/

namespace A147167.P114033118634121360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125157 (A147433 (n + 1)).toNat + A004526 (A146796 (n + 1)).toNat

end

end A147167.P114033118634121360

/-! ## A147167.P7692432859628504378

`A347179(A147190(n+1))+A004526(A146796(n+1))`
-/

namespace A147167.P7692432859628504378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347179 (A147190 (n + 1)).toNat + A004526 (A146796 (n + 1)).toNat

end

end A147167.P7692432859628504378

/-! ## A147167.P6530865752070622900

`A368729(A146607(n+1))+A146631(n+1)-A146703(n+1)`
-/

namespace A147167.P6530865752070622900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368729 (A146607 (n + 1)).toNat + A146631 (n + 1) - A146703 (n + 1)

end

end A147167.P6530865752070622900

/-!
# A147168: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1101-0111 pattern in any orientation.

The programs for A147168, there is no canonical definition to state claims against.
-/

/-! ## A147168.P18298734851356879249

`A121047(A238827(n+2))`
-/

namespace A147168.P18298734851356879249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121047 (A238827 (n + 2)).toNat

end

end A147168.P18298734851356879249

/-! ## A147168.P2127615074915855320

`A162235(floor(sqrt(A020111(n))))`
-/

namespace A147168.P2127615074915855320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162235 (Int.sqrt (A020111 n)).toNat

end

end A147168.P2127615074915855320

/-! ## A147168.P4499029422133569896

`A147207(n+1)+A086077(A261894(n))`
-/

namespace A147168.P4499029422133569896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147207 (n + 1) + A086077 (A261894 n).toNat

end

end A147168.P4499029422133569896

/-! ## A147168.P13618082147008224945

`A006530(C(A147183(n+1), A023358(n)))`
-/

namespace A147168.P13618082147008224945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A147183 (n + 1)).toNat (A023358 n).toNat)

end

end A147168.P13618082147008224945

/-! ## A147168.P1538647579566426271

`A167025(A005676(n))`
-/

namespace A147168.P1538647579566426271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167025 (A005676 n).toNat

end

end A147168.P1538647579566426271

/-!
# A147170: Number of n X n binary arrays with all ones connected only in a 1000-1111-0010-0010 pattern in any orientation.

The programs for A147170, there is no canonical definition to state claims against.
-/

/-! ## A147170.P14433101119274568680

`A147172(2*(n+2))`
-/

namespace A147170.P14433101119274568680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147172 (2 * (n + 2))

end

end A147170.P14433101119274568680

/-!
# A147173: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1111-0010-0010 pattern in any orientation.

The programs for A147173, there is no canonical definition to state claims against.
-/

/-! ## A147173.P13616087018532110347

`A147175(2*(n+2))`
-/

namespace A147173.P13616087018532110347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147175 (2 * (n + 2))

end

end A147173.P13616087018532110347

/-! ## A147173.P4285944912887011866

`A118168(C(n, 4))`
-/

namespace A147173.P4285944912887011866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (Nat.choose n 4)

end

end A147173.P4285944912887011866

/-! ## A147173.P681047859394311736

`A196546(A005676(n))`
-/

namespace A147173.P681047859394311736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196546 (A005676 n).toNat

end

end A147173.P681047859394311736

/-! ## A147173.P10652277053342823064

`A137735(A228583(n))`
-/

namespace A147173.P10652277053342823064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A228583 n).toNat

end

end A147173.P10652277053342823064

/-! ## A147173.P11718494408606694250

`A338742(A190159(n))`
-/

namespace A147173.P11718494408606694250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338742 (A190159 n).toNat

end

end A147173.P11718494408606694250

/-!
# A147174: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1111-0010-0010 pattern in any orientation.

The programs for A147174, there is no canonical definition to state claims against.
-/

/-! ## A147174.P3628286690542967082

`or(4, A147158(n+1))-4`
-/

namespace A147174.P3628286690542967082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A147158 (n + 1)) - 4

end

end A147174.P3628286690542967082

/-! ## A147174.P133659525856113163

`or(4, A276876(A146606(n+1)))-4`
-/

namespace A147174.P133659525856113163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A276876 (A146606 (n + 1)).toNat) - 4

end

end A147174.P133659525856113163

/-! ## A147174.P4378634655069982790

`or(4, A290966(A146678(n+1)))-4`
-/

namespace A147174.P4378634655069982790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A290966 (A146678 (n + 1)).toNat) - 4

end

end A147174.P4378634655069982790

/-! ## A147174.P14560297937921595948

`A147158(n+1)+1-A220054(n)`
-/

namespace A147174.P14560297937921595948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147158 (n + 1) + (1 - A220054 n)

end

end A147174.P14560297937921595948

/-! ## A147174.P17879666624820160463

`A147158(n+1)-and(4, A260876(n))`
-/

namespace A147174.P17879666624820160463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147158 (n + 1) - Int.land 4 (A260876 n)

end

end A147174.P17879666624820160463

/-!
# A147175: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1111-0010-0010 pattern in any orientation.

The programs for A147175, there is no canonical definition to state claims against.
-/

/-! ## A147175.P12509072182198270595

`A089868(A147112(n+1))`
-/

namespace A147175.P12509072182198270595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A147112 (n + 1)).toNat

end

end A147175.P12509072182198270595

/-! ## A147175.P7111324222629233579

`A189143(A147402(n+1))`
-/

namespace A147175.P7111324222629233579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189143 (A147402 (n + 1)).toNat

end

end A147175.P7111324222629233579

/-! ## A147175.P4255931786563257952

`A276884(A147252(n+1))`
-/

namespace A147175.P4255931786563257952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276884 (A147252 (n + 1)).toNat

end

end A147175.P4255931786563257952

/-! ## A147175.P4323988036602075863

`or(1, A225859(A147502(n+1)))`
-/

namespace A147175.P4323988036602075863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A225859 (A147502 (n + 1)).toNat)

end

end A147175.P4323988036602075863

/-! ## A147175.P9673604148655260984

`A360676(A147032(n+1))+A276884(A147402(n+1))`
-/

namespace A147175.P9673604148655260984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (A147032 (n + 1)).toNat + A276884 (A147402 (n + 1)).toNat

end

end A147175.P9673604148655260984

/-!
# A147176: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1111-0010-0010 pattern in any orientation.

The programs for A147176, there is no canonical definition to state claims against.
-/

/-! ## A147176.P156332625762028117

`A001222(A069537(n+1))^A155904(n+1)`
-/

namespace A147176.P156332625762028117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A069537 (n + 1)).toNat : ℚ) ^ (A155904 (n + 1) : ℤ)

end

end A147176.P156332625762028117

/-! ## A147176.P6016596325372184951

`A088573(A099132(n))`
-/

namespace A147176.P6016596325372184951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088573 (A099132 n).toNat

end

end A147176.P6016596325372184951

/-! ## A147176.P9510309380836378203

`A213919(A275548(n))`
-/

namespace A147176.P9510309380836378203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213919 (A275548 n).toNat

end

end A147176.P9510309380836378203

/-! ## A147176.P14743452868992874762

`A372593(A229886(n))`
-/

namespace A147176.P14743452868992874762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372593 (A229886 n).toNat

end

end A147176.P14743452868992874762

/-! ## A147176.P5933273155483592654

`A248601(A362055(n))`
-/

namespace A147176.P5933273155483592654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248601 (A362055 n).toNat

end

end A147176.P5933273155483592654

/-!
# A147177: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1000-1111-0010-0010 pattern in any orientation.

The programs for A147177, there is no canonical definition to state claims against.
-/

/-! ## A147177.P15182336349920728778

`A117922(or(A147504(n+1), A165653(n)))`
-/

namespace A147177.P15182336349920728778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117922 (Int.lor (A147504 (n + 1)) (A165653 n)).toNat

end

end A147177.P15182336349920728778

/-!
# A147178: Number of n X n binary arrays with all ones connected only in a 1000-1111-0101 pattern in any orientation.

The programs for A147178, there is no canonical definition to state claims against.
-/

/-! ## A147178.P8022758556036512562

`A147180(2*(n+2))`
-/

namespace A147178.P8022758556036512562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147180 (2 * (n + 2))

end

end A147178.P8022758556036512562

/-!
# A147179: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1000-1111-0101 pattern in any orientation.

The programs for A147179, there is no canonical definition to state claims against.
-/

/-! ## A147179.P13688508980309747257

`or(A004198(A147154(n+1)), A147163(n+1))`
-/

namespace A147179.P13688508980309747257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004198 (A147154 (n + 1)).toNat) (A147163 (n + 1))

end

end A147179.P13688508980309747257

/-! ## A147179.P11222042645172981188

`or(A147161(A147127(n+1)), A147163(n+1))`
-/

namespace A147179.P11222042645172981188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147161 (A147127 (n + 1)).toNat) (A147163 (n + 1))

end

end A147179.P11222042645172981188

/-! ## A147179.P15434497946566075016

`or(A147149(A147151(n+1)), A147163(n+1))`
-/

namespace A147179.P15434497946566075016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147149 (A147151 (n + 1)).toNat) (A147163 (n + 1))

end

end A147179.P15434497946566075016

/-! ## A147179.P14176490697836858521

`or(A147149(A147166(n+1)), A147163(n+1))`
-/

namespace A147179.P14176490697836858521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147149 (A147166 (n + 1)).toNat) (A147163 (n + 1))

end

end A147179.P14176490697836858521

/-! ## A147179.P4864655767769927282

`or(A147149(A147182(n+1)), A147163(n+1))`
-/

namespace A147179.P4864655767769927282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147149 (A147182 (n + 1)).toNat) (A147163 (n + 1))

end

end A147179.P4864655767769927282

/-!
# A147180: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1000-1111-0101 pattern in any orientation.

The programs for A147180, there is no canonical definition to state claims against.
-/

/-! ## A147180.P2004981076694141058

`A147178(∏{e}[A038754(n), #])`
-/

namespace A147180.P2004981076694141058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147178 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A147180.P2004981076694141058

/-!
# A147181: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1111-0101 pattern in any orientation.

The programs for A147181, there is no canonical definition to state claims against.
-/

/-! ## A147181.P7977977516329711860

`A352633(A146371(n+2))`
-/

namespace A147181.P7977977516329711860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352633 (A146371 (n + 2)).toNat

end

end A147181.P7977977516329711860

/-! ## A147181.P11596246220477027805

`A207873(or(3, A004731(n)))`
-/

namespace A147181.P11596246220477027805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207873 (Int.lor 3 (A004731 n)).toNat

end

end A147181.P11596246220477027805

/-! ## A147181.P4838423699901057340

`filter[A017841(n+1), A324964(#)]`
-/

namespace A147181.P4838423699901057340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324964 (f1 j).toNat = 1) n)

end

end A147181.P4838423699901057340

/-! ## A147181.P17121518890787579794

`A272618(A241456(n+1)+3)+1`
-/

namespace A147181.P17121518890787579794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272618 (A241456 (n + 1) + 3).toNat + 1

end

end A147181.P17121518890787579794

/-!
# A147182: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1111-0101 pattern in any orientation.

The programs for A147182, there is no canonical definition to state claims against.
-/

/-! ## A147182.P12095304450875110059

`A147220(n+1)+2*A217657(n)`
-/

namespace A147182.P12095304450875110059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147220 (n + 1) + 2 * A217657 n

end

end A147182.P12095304450875110059

/-! ## A147182.P8758857941096742302

`(A147220(n+1)+A147166(n+1))/2`
-/

namespace A147182.P8758857941096742302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147220 (n + 1) + A147166 (n + 1) : ℚ) / 2

end

end A147182.P8758857941096742302

/-! ## A147182.P46975350581951535

`xor(A061827(n+1), A147220(n+1))+1`
-/

namespace A147182.P46975350581951535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061827 (n + 1)) (A147220 (n + 1)) + 1

end

end A147182.P46975350581951535

/-! ## A147182.P957686867744439775

`A147220(n+1)+10%A131361(n+1)`
-/

namespace A147182.P957686867744439775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147220 (n + 1) + Int.tmod 10 (A131361 (n + 1))

end

end A147182.P957686867744439775

/-! ## A147182.P4892840006643657608

`A257684(A068606(n))+A147220(n+1)`
-/

namespace A147182.P4892840006643657608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (A068606 n).toNat + A147220 (n + 1)

end

end A147182.P4892840006643657608

/-!
# A147183: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1111-0101 pattern in any orientation.

The programs for A147183, there is no canonical definition to state claims against.
-/

/-! ## A147183.P13032365343317302729

`A210608(A147174(n+1))+A147168(n+1)`
-/

namespace A147183.P13032365343317302729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210608 (A147174 (n + 1)).toNat + A147168 (n + 1)

end

end A147183.P13032365343317302729

/-! ## A147183.P16435855307571793845

`A121047(A122024(n))`
-/

namespace A147183.P16435855307571793845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121047 (A122024 n).toNat

end

end A147183.P16435855307571793845

/-! ## A147183.P14747555013608235093

`A103634(or(3, A233585(n+1)))`
-/

namespace A147183.P14747555013608235093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103634 (Int.lor 3 (A233585 (n + 1))).toNat

end

end A147183.P14747555013608235093

/-! ## A147183.P17604622494453852649

`and(A146449(n+3), A146461(n+4))`
-/

namespace A147183.P17604622494453852649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146449 (n + 3)) (A146461 (n + 4))

end

end A147183.P17604622494453852649

/-!
# A147185: Number of n X n binary arrays with all ones connected only in a 11000-01110-00011 pattern in any orientation.

The programs for A147185, there is no canonical definition to state claims against.
-/

/-! ## A147185.P8403677791483062631

`A147187(2*(n+2))`
-/

namespace A147185.P8403677791483062631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147187 (2 * (n + 2))

end

end A147185.P8403677791483062631

/-!
# A147186: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 11000-01110-00011 pattern in any orientation.

The programs for A147186, there is no canonical definition to state claims against.
-/

/-! ## A147186.P108148265334610501

`A327481(A023431(n))`
-/

namespace A147186.P108148265334610501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327481 (A023431 n).toNat

end

end A147186.P108148265334610501

/-! ## A147186.P5875855471088364099

`A353806(A000777(n))`
-/

namespace A147186.P5875855471088364099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353806 (A000777 n).toNat

end

end A147186.P5875855471088364099

/-! ## A147186.P677236155926524083

`A298614(A148331(n))`
-/

namespace A147186.P677236155926524083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298614 (A148331 n).toNat

end

end A147186.P677236155926524083

/-! ## A147186.P16389584558451366964

`A112970(A369399(n))`
-/

namespace A147186.P16389584558451366964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112970 (A369399 n).toNat

end

end A147186.P16389584558451366964

/-!
# A147187: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 11000-01110-00011 pattern in any orientation.

The programs for A147187, there is no canonical definition to state claims against.
-/

/-! ## A147187.P741849829377115736

`A089167(A146141(n+1))`
-/

namespace A147187.P741849829377115736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089167 (A146141 (n + 1)).toNat

end

end A147187.P741849829377115736

/-! ## A147187.P6662485953702533260

`A089867(A147013(n+1))`
-/

namespace A147187.P6662485953702533260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A147013 (n + 1)).toNat

end

end A147187.P6662485953702533260

/-! ## A147187.P11167404138030704973

`A108553(A146245(n+1))`
-/

namespace A147187.P11167404138030704973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108553 (A146245 (n + 1)).toNat

end

end A147187.P11167404138030704973

/-! ## A147187.P1292736080906282756

`A128006(A147249(n+1))`
-/

namespace A147187.P1292736080906282756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128006 (A147249 (n + 1)).toNat

end

end A147187.P1292736080906282756

/-! ## A147187.P14486270510267711851

`A175949(A147446(n+1))`
-/

namespace A147187.P14486270510267711851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175949 (A147446 (n + 1)).toNat

end

end A147187.P14486270510267711851

/-!
# A147188: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 11000-01110-00011 pattern in any orientation.

The programs for A147188, there is no canonical definition to state claims against.
-/

/-! ## A147188.P12163245210957174642

`A147190(2*(n+2))`
-/

namespace A147188.P12163245210957174642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147190 (2 * (n + 2))

end

end A147188.P12163245210957174642

/-! ## A147188.P6945098433041466545

`A118577(A261531(n))`
-/

namespace A147188.P6945098433041466545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118577 (A261531 n).toNat

end

end A147188.P6945098433041466545

/-! ## A147188.P877554414025116069

`A171968(A221547(n))`
-/

namespace A147188.P877554414025116069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171968 (A221547 n).toNat

end

end A147188.P877554414025116069

/-! ## A147188.P5417482736016496592

`A379634(A026563(n))`
-/

namespace A147188.P5417482736016496592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379634 (A026563 n).toNat

end

end A147188.P5417482736016496592

/-! ## A147188.P5521959462939437244

`A101435(A346733(n))`
-/

namespace A147188.P5521959462939437244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101435 (A346733 n).toNat

end

end A147188.P5521959462939437244

/-!
# A147189: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 11000-01110-00011 pattern in any orientation.

The programs for A147189, there is no canonical definition to state claims against.
-/

/-! ## A147189.P6666615639604137962

`A194974(A147251(n+1))`
-/

namespace A147189.P6666615639604137962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194974 (A147251 (n + 1)).toNat

end

end A147189.P6666615639604137962

/-! ## A147189.P7438531019920316003

`A280951(xor(A023137(n+1), A326545(3*n)))`
-/

namespace A147189.P7438531019920316003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (Int.xor (A023137 (n + 1)) (A326545 (3 * n))).toNat

end

end A147189.P7438531019920316003

/-!
# A147190: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 11000-01110-00011 pattern in any orientation.

The programs for A147190, there is no canonical definition to state claims against.
-/

/-! ## A147190.P11011745791040437707

`A123093(A147402(n+1))`
-/

namespace A147190.P11011745791040437707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123093 (A147402 (n + 1)).toNat

end

end A147190.P11011745791040437707

/-! ## A147190.P7216701876198392328

`A194982(A147449(n+1))`
-/

namespace A147190.P7216701876198392328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194982 (A147449 (n + 1)).toNat

end

end A147190.P7216701876198392328

/-! ## A147190.P12002798441860277284

`A316530(A147252(n+1))`
-/

namespace A147190.P12002798441860277284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316530 (A147252 (n + 1)).toNat

end

end A147190.P12002798441860277284

/-! ## A147190.P10834103474059282706

`A000196(or(A146020(n+1), A146458(n+1)))`
-/

namespace A147190.P10834103474059282706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor (A146020 (n + 1)) (A146458 (n + 1))).toNat

end

end A147190.P10834103474059282706

/-!
# A147191: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 11000-01110-00011 pattern in any orientation.

The programs for A147191, there is no canonical definition to state claims against.
-/

/-! ## A147191.P401251407247422108

`A089852(A147017(n+1))`
-/

namespace A147191.P401251407247422108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089852 (A147017 (n + 1)).toNat

end

end A147191.P401251407247422108

/-! ## A147191.P17393232631760900015

`A089853(A147025(n+1))`
-/

namespace A147191.P17393232631760900015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089853 (A147025 (n + 1)).toNat

end

end A147191.P17393232631760900015

/-! ## A147191.P5602263335727965566

`A332071(A271839(3*n))`
-/

namespace A147191.P5602263335727965566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332071 (A271839 (3 * n)).toNat

end

end A147191.P5602263335727965566

/-! ## A147191.P7061036325949149147

`A343150(∑[∑[A297235(2*n+1)]]+1)`
-/

namespace A147191.P7061036325949149147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343150 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A147191.P7061036325949149147

/-! ## A147191.P11729795896441427391

`A020945(A322262(n)+A035618(n+1))`
-/

namespace A147191.P11729795896441427391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020945 (A322262 n + A035618 (n + 1)).toNat

end

end A147191.P11729795896441427391

/-!
# A147193: Number of n X n binary arrays with all ones connected only in a 1100-0100-0111-0001 pattern in any orientation.

The programs for A147193, there is no canonical definition to state claims against.
-/

/-! ## A147193.P8471680415337017000

`A147195(2*(n+2))`
-/

namespace A147193.P8471680415337017000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147195 (2 * (n + 2))

end

end A147193.P8471680415337017000

/-! ## A147193.P15961215058452324333

`A065648(A113440(n))`
-/

namespace A147193.P15961215058452324333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 (A113440 n).toNat

end

end A147193.P15961215058452324333

/-! ## A147193.P5677020116674001802

`A147399(A191134(n+1))`
-/

namespace A147193.P5677020116674001802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147399 (A191134 (n + 1)).toNat

end

end A147193.P5677020116674001802

/-!
# A147194: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1100-0100-0111-0001 pattern in any orientation.

The programs for A147194, there is no canonical definition to state claims against.
-/

/-! ## A147194.P4415534776748729523

`A139555(floor(n^(1/3))^n)`
-/

namespace A147194.P4415534776748729523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139555 (⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ ^ n).toNat

end

end A147194.P4415534776748729523

/-! ## A147194.P14317021422340728237

`A003229(n^A250115(n+1))`
-/

namespace A147194.P14317021422340728237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A250115 (n + 1) : ℤ))).toNat

end

end A147194.P14317021422340728237

/-! ## A147194.P15528769192920134653

`A077949(C(A049537(n+1), n))`
-/

namespace A147194.P15528769192920134653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077949 (Nat.choose (A049537 (n + 1)).toNat n)

end

end A147194.P15528769192920134653

/-!
# A147196: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-0100-0111-0001 pattern in any orientation.

The programs for A147196, there is no canonical definition to state claims against.
-/

/-! ## A147196.P1006174195972945986

`A147198(2*(n+2))`
-/

namespace A147196.P1006174195972945986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147198 (2 * (n + 2))

end

end A147196.P1006174195972945986

/-!
# A147197: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-0100-0111-0001 pattern in any orientation.

The programs for A147197, there is no canonical definition to state claims against.
-/

/-! ## A147197.P11708413011984580260

`or(1, A323638(A010551(n)))`
-/

namespace A147197.P11708413011984580260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A323638 (A010551 n).toNat)

end

end A147197.P11708413011984580260

/-! ## A147197.P752991344552070892

`A241154(A085152(n+1)-A010060(n))`
-/

namespace A147197.P752991344552070892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241154 (A085152 (n + 1) - A010060 n).toNat

end

end A147197.P752991344552070892

/-! ## A147197.P3321363382447538516

`and(A146276(A017912(n)), A146283(n+1))`
-/

namespace A147197.P3321363382447538516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146276 (A017912 n).toNat) (A146283 (n + 1))

end

end A147197.P3321363382447538516

/-! ## A147197.P6014962068061144410

`and(A146283(n+1), A241154(A085152(n+1)))`
-/

namespace A147197.P6014962068061144410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146283 (n + 1)) (A241154 (A085152 (n + 1)).toNat)

end

end A147197.P6014962068061144410

/-!
# A147199: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-0100-0111-0001 pattern in any orientation.

The programs for A147199, there is no canonical definition to state claims against.
-/

/-! ## A147199.P15527279723961860621

`A147403(n+1)-A343380(A147227(n+1))`
-/

namespace A147199.P15527279723961860621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147403 (n + 1) - A343380 (A147227 (n + 1)).toNat

end

end A147199.P15527279723961860621

/-! ## A147199.P10104190179852203707

`or(1, A088568(A001372(n))²)`
-/

namespace A147199.P10104190179852203707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A088568 (A001372 n).toNat ^ 2)

end

end A147199.P10104190179852203707

/-! ## A147199.P15446030999473739568

`∑[A171765(A004694(n))]+1`
-/

namespace A147199.P15446030999473739568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 (A004694 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A147199.P15446030999473739568

/-! ## A147199.P7492398378177466647

`A183096(∏[A241318(n+3)])`
-/

namespace A147199.P7492398378177466647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241318 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183096 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147199.P7492398378177466647

