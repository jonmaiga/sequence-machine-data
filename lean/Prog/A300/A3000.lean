import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C025

/-!
# A300000: The sum of the first n terms of the sequence is the concatenation of the first n digits of the sequence, with a(1) = 1.

The programs for A300000, there is no canonical definition to state claims against.
-/

/-! ## A300000.P14549043139641269436

`Δ[floor(A299301(n+1)/10)]`
-/

namespace A300000.P14549043139641269436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A299301 (n + 1) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A300000.P14549043139641269436

/-! ## A300000.P17179127934244823572

`A333402(A222196(n+3)+n)`
-/

namespace A300000.P17179127934244823572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333402 (A222196 (n + 3) + (n : ℤ)).toNat

end

end A300000.P17179127934244823572

/-!
# A300001: Side length of the smallest equilateral triangle that can be dissected into n equilateral triangles with integer sides, or 0 if no such triangle exists.

The programs for A300001, there is no canonical definition to state claims against.
-/

/-! ## A300001.P17814004846576124202

`A351061(n+1)%A002249(n)`
-/

namespace A300001.P17814004846576124202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351061 (n + 1)) (A002249 n)

end

end A300001.P17814004846576124202

/-! ## A300001.P6145694642042906771

`sqrt(A215539(n+1))%A002249(n)`
-/

namespace A300001.P6145694642042906771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A215539 (n + 1) : ℝ))) (A002249 n)

end

end A300001.P6145694642042906771

/-! ## A300001.P17220850471446835809

`A002262(A351061(n+1)+A008805(n))`
-/

namespace A300001.P17220850471446835809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A351061 (n + 1) + A008805 n).toNat

end

end A300001.P17220850471446835809

/-! ## A300001.P547795892006171984

`A000188(A215539(n+1))%A141038(n)`
-/

namespace A300001.P547795892006171984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000188 (A215539 (n + 1)).toNat) (A141038 n)

end

end A300001.P547795892006171984

/-! ## A300001.P1891859200884520654

`A179797(A351061(n+1))%A141038(n)`
-/

namespace A300001.P1891859200884520654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179797 (A351061 (n + 1)).toNat) (A141038 n)

end

end A300001.P1891859200884520654

/-!
# A300004: First differences of the list A292794 of numbers not congruent to F(k) modulo F(k+1) for any k > 1, where F are the Fibonacci numbers A000045.

The programs for A300004, there is no canonical definition to state claims against.
-/

/-! ## A300004.P2501848850948254325

`A292794(n+1)-A292794(n)`
-/

namespace A300004.P2501848850948254325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292794 (n + 1) - A292794 n

end

end A300004.P2501848850948254325

/-! ## A300004.P738562597740191952

`Δ[A292794(n)]`
-/

namespace A300004.P738562597740191952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A300004.P738562597740191952

/-! ## A300004.P11625026208682788610

`Δ[eq[n, n*A292032(n)]]`
-/

namespace A300004.P11625026208682788610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A292032 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A300004.P11625026208682788610

/-! ## A300004.P10950848143274343314

`Δ[eq[n, A014681(A292031(n))]]`
-/

namespace A300004.P10950848143274343314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A292031 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A300004.P10950848143274343314

/-! ## A300004.P15482774264279833497

`Δ[eq[A057427(n), A292032(n)]]`
-/

namespace A300004.P15482774264279833497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A300004.P15482774264279833497

/-! ## A300004.P17566981836342674147

`eq[1, A292032(n)]-A292794(n)`
-/

namespace A300004.P17566981836342674147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A292794 n

end

end A300004.P17566981836342674147

/-!
# A300006: Matrices of the 2 X 2 sandpile group, with matrix [a,b;c,d] encoded as concat(a,b,c,d), leading 0 omitted.

The programs for A300006, there is no canonical definition to state claims against.
-/

/-! ## A300006.P18239359631181445701

`A300008(A300007(n+1))`
-/

namespace A300006.P18239359631181445701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300008 (A300007 (n + 1)).toNat

end

end A300006.P18239359631181445701

/-! ## A300006.P5463737201684646064

`A239017(A062399(n)+10)`
-/

namespace A300006.P5463737201684646064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239017 (A062399 n + 10).toNat

end

end A300006.P5463737201684646064

/-! ## A300006.P9017515457323200282

`A239017(A351870(n)+10)`
-/

namespace A300006.P9017515457323200282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239017 (A351870 n + 10).toNat

end

end A300006.P9017515457323200282

/-! ## A300006.P9035314300862238148

`A007932(A062399(n)+14)`
-/

namespace A300006.P9035314300862238148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (A062399 n + 14).toNat

end

end A300006.P9035314300862238148

/-! ## A300006.P11167984860330472011

`A007932(A351870(n)+14)`
-/

namespace A300006.P11167984860330472011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (A351870 n + 14).toNat

end

end A300006.P11167984860330472011

/-!
# A300008: Inverse of the n-th 2 X 2 sandpile A300006(n).

The programs for A300008, there is no canonical definition to state claims against.
-/

/-! ## A300008.P4912748202749363298

`A300006(A300007(n+1))`
-/

namespace A300008.P4912748202749363298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300006 (A300007 (n + 1)).toNat

end

end A300008.P4912748202749363298

/-!
# A300010: Numbers k such that 3^k + k - 1 is a prime.

The programs for A300010, there is no canonical definition to state claims against.
-/

/-! ## A300010.P4668129365590737187

`or(A163590(n), A325762(A325767(n+1)))`
-/

namespace A300010.P4668129365590737187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A163590 n) (A325762 (A325767 (n + 1)).toNat)

end

end A300010.P4668129365590737187

/-!
# A300011: Expansion of e.g.f. exp(Sum_{k>=1} phi(k)*x^k/k!), where phi() is the Euler totient function (A000010).

The programs for A300011, there is no canonical definition to state claims against.
-/

/-! ## A300011.P17671807464926337508

`A065361(A276743(n))`
-/

namespace A300011.P17671807464926337508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A276743 n).toNat

end

end A300011.P17671807464926337508

/-! ## A300011.P1295271767793548837

`A081753(A240646(n+1))`
-/

namespace A300011.P1295271767793548837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A240646 (n + 1)).toNat

end

end A300011.P1295271767793548837

/-! ## A300011.P5812887573981646010

`A108954(2*A127784(n))`
-/

namespace A300011.P5812887573981646010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (2 * A127784 n).toNat

end

end A300011.P5812887573981646010

/-!
# A300014: E.g.f.: (1 + LambertW(-x))^(x/LambertW(-x)).

The programs for A300014, there is no canonical definition to state claims against.
-/

/-! ## A300014.P14573948812968261419

`A090735(A335530(n)+2)`
-/

namespace A300014.P14573948812968261419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090735 (A335530 n + 2).toNat

end

end A300014.P14573948812968261419

/-! ## A300014.P1747141614812730439

`A068050(A038710(n)-n)`
-/

namespace A300014.P1747141614812730439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068050 (A038710 n - (n : ℤ)).toNat

end

end A300014.P1747141614812730439

/-!
# A300026: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300026, there is no canonical definition to state claims against.
-/

/-! ## A300026.P4634353245876448926

`A300030(∑[4*n]+1)`
-/

namespace A300026.P4634353245876448926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300026.P4634353245876448926

/-! ## A300026.P6638747658860289720

`A300030(A001844(n))+char[11]`
-/

namespace A300026.P6638747658860289720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300026.P6638747658860289720

/-! ## A300026.P7858271168326265165

`A308920(n)+A300030(A001844(n))`
-/

namespace A300026.P7858271168326265165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308920 n + A300030 (A001844 n).toNat

end

end A300026.P7858271168326265165

/-! ## A300026.P14474174268455696925

`A308921(n)+A300030(A001844(n))`
-/

namespace A300026.P14474174268455696925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308921 n + A300030 (A001844 n).toNat

end

end A300026.P14474174268455696925

/-! ## A300026.P8193145371698157502

`A300030(A001844(n))%A321056(n+1)`
-/

namespace A300026.P8193145371698157502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300030 (A001844 n).toNat) (A321056 (n + 1 + 10))

end

end A300026.P8193145371698157502

/-!
# A300027: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300027, there is no canonical definition to state claims against.
-/

/-! ## A300027.P15211299105692115049

`A300030(∑[n+4]+11)`
-/

namespace A300027.P15211299105692115049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A300027.P15211299105692115049

/-! ## A300027.P9922035833939899158

`A300030(A056000(n)+15)+char[16]`
-/

namespace A300027.P9922035833939899158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (A056000 n + 15).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300027.P9922035833939899158

/-! ## A300027.P4768607129277970808

`A007318(C(2, n))*A300030(A056000(n)+15)`
-/

namespace A300027.P4768607129277970808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A300030 (A056000 n + 15).toNat

end

end A300027.P4768607129277970808

/-! ## A300027.P5261132172948782127

`A000041(floor(n/8))*A300030(A056000(n)+15)`
-/

namespace A300027.P5261132172948782127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊(n : ℚ) / 8⌋.toNat * A300030 (A056000 n + 15).toNat

end

end A300027.P5261132172948782127

/-! ## A300027.P7215582925366489031

`A014963(6*(n+1))*A300030(A056000(n)+15)`
-/

namespace A300027.P7215582925366489031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A300030 (A056000 n + 15).toNat

end

end A300027.P7215582925366489031

/-!
# A300028: Number of n X 6 0..1 arrays with every element equal to 0, 1, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300028, there is no canonical definition to state claims against.
-/

/-! ## A300028.P2711603200032608752

`A300030(A166136(n+4))`
-/

namespace A300028.P2711603200032608752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (A166136 (n + 4)).toNat

end

end A300028.P2711603200032608752

/-! ## A300028.P15369429742344625563

`A300030(A056115(n)+21)`
-/

namespace A300028.P15369429742344625563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (A056115 n + 21).toNat

end

end A300028.P15369429742344625563

/-! ## A300028.P13553950856365790115

`A300030(A167614(n+4)+3)`
-/

namespace A300028.P13553950856365790115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (A167614 (n + 4) + 3).toNat

end

end A300028.P13553950856365790115

/-! ## A300028.P699963146631098597

`A300030(A000124(n+5)+5)`
-/

namespace A300028.P699963146631098597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (A000124 (n + 5) + 5).toNat

end

end A300028.P699963146631098597

/-! ## A300028.P1087721953467092178

`A300030(A000217(n+5)+6)`
-/

namespace A300028.P1087721953467092178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (A000217 (n + 5) + 6).toNat

end

end A300028.P1087721953467092178

/-!
# A300029: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300029, there is no canonical definition to state claims against.
-/

/-! ## A300029.P4060152579804152846

`A300030(A056119(n)+28)`
-/

namespace A300029.P4060152579804152846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (A056119 n + 28).toNat

end

end A300029.P4060152579804152846

/-! ## A300029.P16417738938716849348

`A300030(eq[11, A066657(n)])`
-/

namespace A300029.P16417738938716849348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300029.P16417738938716849348

/-! ## A300029.P60599026463830892

`A300030(A166136(n+5)+1)`
-/

namespace A300029.P60599026463830892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (A166136 (n + 5) + 1).toNat

end

end A300029.P60599026463830892

/-! ## A300029.P2067495532582440711

`A300030(A167499(n+5)+2)`
-/

namespace A300029.P2067495532582440711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (A167499 (n + 5) + 2).toNat

end

end A300029.P2067495532582440711

/-! ## A300029.P15926406894210719492

`A300030(A000217(n+6)+7)`
-/

namespace A300029.P15926406894210719492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (A000217 (n + 6) + 7).toNat

end

end A300029.P15926406894210719492

/-!
# A300031: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300031, there is no canonical definition to state claims against.
-/

/-! ## A300031.P16673058188883528537

`A300035(∑[4*n]+1)`
-/

namespace A300031.P16673058188883528537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300031.P16673058188883528537

/-! ## A300031.P11314227662240812268

`∑{digits}[n, A300035(A001844(#))]`
-/

namespace A300031.P11314227662240812268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A300035 (A001844 x).toNat).sum

end

end A300031.P11314227662240812268

/-! ## A300031.P17746148794632046140

`and(-1, A300035(A001844(n)))`
-/

namespace A300031.P17746148794632046140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A300035 (A001844 n).toNat)

end

end A300031.P17746148794632046140

/-! ## A300031.P2774649933396058277

`record[A300035(A330613(n+1))]`
-/

namespace A300031.P2774649933396058277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300031.P2774649933396058277

/-! ## A300031.P14775825560504714418

`record[A003982(n)*A300035(n+1)]`
-/

namespace A300031.P14775825560504714418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300031.P14775825560504714418

/-!
# A300032: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300032, there is no canonical definition to state claims against.
-/

/-! ## A300032.P2289879373711780858

`A300035(A374005(n+1))`
-/

namespace A300032.P2289879373711780858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (A374005 (n + 1)).toNat

end

end A300032.P2289879373711780858

/-! ## A300032.P6024388113968386476

`A300035(A155212(n)+13)`
-/

namespace A300032.P6024388113968386476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (A155212 n + 13).toNat

end

end A300032.P6024388113968386476

/-! ## A300032.P5203513265896477106

`A300035(A167614(n+3)+2)`
-/

namespace A300032.P5203513265896477106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (A167614 (n + 3) + 2).toNat

end

end A300032.P5203513265896477106

/-! ## A300032.P6607175354682296053

`A300035(A000124(n+4)+4)`
-/

namespace A300032.P6607175354682296053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (A000124 (n + 4) + 4).toNat

end

end A300032.P6607175354682296053

/-! ## A300032.P17645044284423340024

`A300035(A052905(n+1)+10)`
-/

namespace A300032.P17645044284423340024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (A052905 (n + 1) + 10).toNat

end

end A300032.P17645044284423340024

/-!
# A300033: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300033, there is no canonical definition to state claims against.
-/

/-! ## A300033.P6867564914218665509

`A300035(A374007(n+1))`
-/

namespace A300033.P6867564914218665509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (A374007 (n + 1)).toNat

end

end A300033.P6867564914218665509

/-! ## A300033.P6477736966996036872

`A300035(A166136(n+4))`
-/

namespace A300033.P6477736966996036872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (A166136 (n + 4)).toNat

end

end A300033.P6477736966996036872

/-! ## A300033.P2007633431878683897

`A300035(A056115(n)+21)`
-/

namespace A300033.P2007633431878683897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (A056115 n + 21).toNat

end

end A300033.P2007633431878683897

/-! ## A300033.P4492479155849419587

`A300035(eq[7, A131818(n+1)])`
-/

namespace A300033.P4492479155849419587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300033.P4492479155849419587

/-! ## A300033.P10715703934325749957

`A300035(Δ[A023545(n+1)]+10)`
-/

namespace A300033.P10715703934325749957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (f1 (n + 1) - f1 n + 10).toNat

end

end A300033.P10715703934325749957

/-!
# A300034: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300034, there is no canonical definition to state claims against.
-/

/-! ## A300034.P10452026064916227984

`A300035(A374008(n+1))`
-/

namespace A300034.P10452026064916227984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (A374008 (n + 1)).toNat

end

end A300034.P10452026064916227984

/-! ## A300034.P9246120804887667514

`A300035(eq[8, A131818(n+1)])`
-/

namespace A300034.P9246120804887667514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300034.P9246120804887667514

/-! ## A300034.P1489930250911967611

`A300035(eq[8, A141169(n)]+1)`
-/

namespace A300034.P1489930250911967611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A300034.P1489930250911967611

/-! ## A300034.P12540441953329520113

`A300035(A055999(n+4))`
-/

namespace A300034.P12540441953329520113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (A055999 (n + 4)).toNat

end

end A300034.P12540441953329520113

/-! ## A300034.P5352297574362463116

`A300035(eq[4, A219347(n)])`
-/

namespace A300034.P5352297574362463116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300034.P5352297574362463116

/-!
# A300036: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300036, there is no canonical definition to state claims against.
-/

/-! ## A300036.P17794312490410730636

`A300040(∑[4*n]+1)`
-/

namespace A300036.P17794312490410730636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300036.P17794312490410730636

/-! ## A300036.P16544503801560738667

`record[A003982(n)*A300040(n+1)]`
-/

namespace A300036.P16544503801560738667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300036.P16544503801560738667

/-! ## A300036.P341239369372722997

`A079341(n)*A300040(A001844(n))`
-/

namespace A300036.P341239369372722997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079341 n * A300040 (A001844 n).toNat

end

end A300036.P341239369372722997

/-! ## A300036.P15915225291328422867

`A219924(n)*A300040(A001844(n))`
-/

namespace A300036.P15915225291328422867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 n * A300040 (A001844 n).toNat

end

end A300036.P15915225291328422867

/-! ## A300036.P11578016213644205726

`lcm(A011599(n), A300040(A001844(n)))`
-/

namespace A300036.P11578016213644205726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011599 n) (A300040 (A001844 n).toNat)

end

end A300036.P11578016213644205726

/-!
# A300037: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300037, there is no canonical definition to state claims against.
-/

/-! ## A300037.P1865022126608105555

`A300040(A374005(n+1))`
-/

namespace A300037.P1865022126608105555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (A374005 (n + 1)).toNat

end

end A300037.P1865022126608105555

/-! ## A300037.P8916606286246622488

`A300040(A155212(n)+13)`
-/

namespace A300037.P8916606286246622488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (A155212 n + 13).toNat

end

end A300037.P8916606286246622488

/-! ## A300037.P1659115611116918323

`A300040(A000124(n+4)+4)`
-/

namespace A300037.P1659115611116918323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (A000124 (n + 4) + 4).toNat

end

end A300037.P1659115611116918323

/-! ## A300037.P5539808307547233934

`A300040(Δ[A264443(n)])`
-/

namespace A300037.P5539808307547233934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (f1 (n + 1) - f1 n).toNat

end

end A300037.P5539808307547233934

/-! ## A300037.P12890096598927454644

`A300040(eq[4, A193592(n)])`
-/

namespace A300037.P12890096598927454644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300037.P12890096598927454644

/-!
# A300038: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300038, there is no canonical definition to state claims against.
-/

/-! ## A300038.P4852006797243577570

`A300040(A374007(n+1))`
-/

namespace A300038.P4852006797243577570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (A374007 (n + 1)).toNat

end

end A300038.P4852006797243577570

/-! ## A300038.P9323599423302292568

`A300040(eq[7, A131818(n+1)])`
-/

namespace A300038.P9323599423302292568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300038.P9323599423302292568

/-! ## A300038.P11362843965140442007

`A300040(eq[3, A219347(n)])`
-/

namespace A300038.P11362843965140442007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300038.P11362843965140442007

/-! ## A300038.P11465810567311627569

`A300040(eq[5, A193592(n)])`
-/

namespace A300038.P11465810567311627569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300038.P11465810567311627569

/-! ## A300038.P15033556211878237356

`A300040(eq[8, A258709(n)])`
-/

namespace A300038.P15033556211878237356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300038.P15033556211878237356

/-!
# A300039: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300039, there is no canonical definition to state claims against.
-/

/-! ## A300039.P8406306220138439628

`A300040(A374008(n+1))`
-/

namespace A300039.P8406306220138439628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (A374008 (n + 1)).toNat

end

end A300039.P8406306220138439628

/-! ## A300039.P1716203308529338039

`A300040(A000217(n+6)+7)`
-/

namespace A300039.P1716203308529338039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (A000217 (n + 6) + 7).toNat

end

end A300039.P1716203308529338039

/-! ## A300039.P7645284715254437084

`A300040(eq[8, A131818(n+1)])`
-/

namespace A300039.P7645284715254437084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300039.P7645284715254437084

/-! ## A300039.P398722445516206303

`A300040(A056121(n)+22)`
-/

namespace A300039.P398722445516206303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (A056121 n + 22).toNat

end

end A300039.P398722445516206303

/-! ## A300039.P3523147251046551049

`A300040(eq[6, A193592(n)])`
-/

namespace A300039.P3523147251046551049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300039.P3523147251046551049

/-!
# A300041: G.f. satisfies: A(x) = Sum_{n>=0} x^n * (1 + x*A(x)^(n-1))^n.

The programs for A300041, there is no canonical definition to state claims against.
-/

/-! ## A300041.P12627201734062297716

`A210357(A229046(n))`
-/

namespace A300041.P12627201734062297716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A229046 n).toNat

end

end A300041.P12627201734062297716

/-! ## A300041.P6780122066241784169

`A001462(A319350(n!))`
-/

namespace A300041.P6780122066241784169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A319350 (Nat.factorial n)).toNat

end

end A300041.P6780122066241784169

/-! ## A300041.P8144618833200489711

`A026819(A290280(n)+2)`
-/

namespace A300041.P8144618833200489711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A290280 n + 2).toNat

end

end A300041.P8144618833200489711

/-! ## A300041.P2597702565061755960

`A001462(A212580(n))-ceil((n-3)/4)`
-/

namespace A300041.P2597702565061755960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A212580 n).toNat - ⌈((n : ℤ) - 3 : ℚ) / 4⌉

end

end A300041.P2597702565061755960

/-!
# A300042: G.f. satisfies: A(x) = Sum_{n>=0} x^n * (1 + x*A(x)^(n+1))^n.

The programs for A300042, there is no canonical definition to state claims against.
-/

/-! ## A300042.P9666407039390847984

`A339985(n)+A187188(A207081(n+1))`
-/

namespace A300042.P9666407039390847984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339985 n + A187188 (A207081 (n + 1)).toNat

end

end A300042.P9666407039390847984

/-! ## A300042.P14931311865015493607

`A059995(A191034(n+2)+A151048(n))`
-/

namespace A300042.P14931311865015493607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A191034 (n + 2) + A151048 n).toNat

end

end A300042.P14931311865015493607

/-! ## A300042.P7893006316755674996

`A091226(n²*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A300042.P7893006316755674996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A091226 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A300042.P7893006316755674996

/-!
# A300043: G.f. satisfies: A(x) = Sum_{n>=0} x^n * A(x)^n * (1 + x*A(x)^n)^n.

The programs for A300043, there is no canonical definition to state claims against.
-/

/-! ## A300043.P10108662810367283818

`A132292(xor(A043548(n+1), A361037(n)))`
-/

namespace A300043.P10108662810367283818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (Int.xor (A043548 (n + 1)) (A361037 n)).toNat

end

end A300043.P10108662810367283818

/-! ## A300043.P6254195581412983042

`A302492(xor(A088218(n), A241709(n+1)))`
-/

namespace A300043.P6254195581412983042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (Int.xor (A088218 n) (A241709 (n + 1))).toNat

end

end A300043.P6254195581412983042

/-! ## A300043.P1616200140361696662

`∑[A008615(A303070(n)+A000740(n+1))]`
-/

namespace A300043.P1616200140361696662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A303070 n + A000740 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300043.P1616200140361696662

/-!
# A300045: E.g.f. A(x) satisfies: A(x) = 1 + Integral A(4*x)^(1/2) dx.

The programs for A300045, there is no canonical definition to state claims against.
-/

/-! ## A300045.P5234912492216653994

`A004396(A120608(n))*A011782(n)`
-/

namespace A300045.P5234912492216653994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A120608 n).toNat * A011782 n

end

end A300045.P5234912492216653994

/-!
# A300046: E.g.f. A(x) satisfies: A(x)^2 = 1 + Integral 2*A(4*x) dx.

The programs for A300046, there is no canonical definition to state claims against.
-/

/-! ## A300046.P6044494800733036038

`A300045(n+1)/2^n`
-/

namespace A300046.P6044494800733036038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300045 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A300046.P6044494800733036038

/-!
# A300048: G.f. A(x) satisfies A(x)^3 = 1 + x*A(x) + x*A(x)^2 + x*A(x)^6.

The programs for A300048, there is no canonical definition to state claims against.
-/

/-! ## A300048.P12634848406516955818

`A194920(A280768(n+1))`
-/

namespace A300048.P12634848406516955818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A280768 (n + 1)).toNat

end

end A300048.P12634848406516955818

/-! ## A300048.P5266417013862258100

`A195120(A296044(n)+A028288(n))`
-/

namespace A300048.P5266417013862258100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A296044 n + A028288 n).toNat

end

end A300048.P5266417013862258100

/-! ## A300048.P11971998073074108985

`A187184(A079461(n)+A050381(n+1))`
-/

namespace A300048.P11971998073074108985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187184 (A079461 n + A050381 (n + 1)).toNat

end

end A300048.P11971998073074108985

/-!
# A300049: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n * (2 + 3*x*A(x)^n)^n.

The programs for A300049, there is no canonical definition to state claims against.
-/

/-! ## A300049.P7955115569913179560

`A260731(or(2, A082282(n+1)))`
-/

namespace A300049.P7955115569913179560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (Int.lor 2 (A082282 (n + 1))).toNat

end

end A300049.P7955115569913179560

/-! ## A300049.P1023841090743838936

`A198255(A165216(n)+1)+n+1`
-/

namespace A300049.P1023841090743838936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198255 (A165216 n + 1).toNat + (n + 1 : ℤ)

end

end A300049.P1023841090743838936

/-!
# A300050: G.f. A(x) satisfies: A(x) = Sum_{n>=0} (1 + x*A(x)^n)^n / 2^(n+1).

The programs for A300050, there is no canonical definition to state claims against.
-/

/-! ## A300050.P1383066274519073189

`A001951(A327146(n)+A238640(n))`
-/

namespace A300050.P1383066274519073189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A327146 n + A238640 n).toNat

end

end A300050.P1383066274519073189

/-! ## A300050.P17047829602302792967

`A105025(A380171(n)-A137212(n))`
-/

namespace A300050.P17047829602302792967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105025 (A380171 n - A137212 n).toNat

end

end A300050.P17047829602302792967

/-!
# A300056: Number of normal standard domino tableaux whose shape is the integer partition with Heinz number n.

The programs for A300056, there is no canonical definition to state claims against.
-/

/-! ## A300056.P17193887077773491688

`A300060(n+1)+A185284(A130123(n))`
-/

namespace A300056.P17193887077773491688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300060 (n + 1) + A185284 (A130123 n).toNat

end

end A300056.P17193887077773491688

/-! ## A300056.P9563533094513204608

`or(A185284(A327194(n+3)), A300060(n+1))`
-/

namespace A300056.P9563533094513204608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A327194 (n + 3)).toNat) (A300060 (n + 1))

end

end A300056.P9563533094513204608

/-! ## A300056.P471789999641344641

`A300060(n+1)+A206499(A077320(n+1)-A300060(n+1))`
-/

namespace A300056.P471789999641344641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300060 (n + 1) + A206499 (A077320 (n + 1) - A300060 (n + 1)).toNat

end

end A300056.P471789999641344641

/-! ## A300056.P17403254453868847842

`A000030(A300060(n+1)^A080883(n))`
-/

namespace A300056.P17403254453868847842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A300060 (n + 1) : ℚ) ^ (A080883 n : ℤ))).toNat

end

end A300056.P17403254453868847842

/-! ## A300056.P11193365671143202135

`A300060(n+1)+A214411(A220054(2*n))`
-/

namespace A300056.P11193365671143202135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300060 (n + 1) + A214411 (A220054 (2 * n)).toNat

end

end A300056.P11193365671143202135

/-!
# A300057: Coefficient of z^(3*n) in the expansion of (1 + 9*z + 9*z^2 + z^3)^(2*n).

The programs for A300057, there is no canonical definition to state claims against.
-/

/-! ## A300057.P11931297092202339914

`A300058(n)/C(3*n, n)`
-/

namespace A300057.P11931297092202339914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300058 n : ℚ) / (Nat.choose (3 * n) n : ℚ)

end

end A300057.P11931297092202339914

/-! ## A300057.P10835832968289496337

`A300058(n)/A005809(n)`
-/

namespace A300057.P10835832968289496337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300058 n : ℚ) / (A005809 n : ℚ)

end

end A300057.P10835832968289496337

/-! ## A300057.P18288117476268859128

`A300058(n)/record[A119301(n)]`
-/

namespace A300057.P18288117476268859128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119301 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300058 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A300057.P18288117476268859128

/-! ## A300057.P16954803681810797894

`A066802(n)/A113424(n)*A300058(n)`
-/

namespace A300057.P16954803681810797894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066802 n : ℚ) / (A113424 n : ℚ) * (A300058 n : ℚ)

end

end A300057.P16954803681810797894

/-! ## A300057.P16047708347289918157

`A005721(n)/A295870(n)*A300058(n)`
-/

namespace A300057.P16047708347289918157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005721 n : ℚ) / (A295870 n : ℚ) * (A300058 n : ℚ)

end

end A300057.P16047708347289918157

/-!
# A300058: a(n) = binomial(3*n,n)/(2*Pi)*Integral_{x=0..2*Pi} (12*cos^2(x)*sin(x) + 20*sin^3(x))^(2*n) dx.

The programs for A300058, there is no canonical definition to state claims against.
-/

/-! ## A300058.P11723827791728384543

`A005809(n)*A300057(n)`
-/

namespace A300058.P11723827791728384543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A300057 n

end

end A300058.P11723827791728384543

/-!
# A300059: Numbers k such that k and k+1 are terms of A279767.

The programs for A300059, there is no canonical definition to state claims against.
-/

/-! ## A300059.P9584077486174315130

`A086540(n+1)-1`
-/

namespace A300059.P9584077486174315130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086540 (n + 1) - 1

end

end A300059.P9584077486174315130

/-! ## A300059.P10831092812216975742

`∩[A074997(n+1), A279767(n+1)]-1`
-/

namespace A300059.P10831092812216975742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A300059.P10831092812216975742

/-! ## A300059.P1946399009000017910

`A023443(A086540(n+1))`
-/

namespace A300059.P1946399009000017910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A086540 (n + 1)).toNat

end

end A300059.P1946399009000017910

/-! ## A300059.P6663675931701063080

`A023444(A086540(n+1)+1)`
-/

namespace A300059.P6663675931701063080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A086540 (n + 1) + 1).toNat

end

end A300059.P6663675931701063080

/-! ## A300059.P6811171494822993050

`A289207(A086540(n+1)+1)`
-/

namespace A300059.P6811171494822993050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A086540 (n + 1) + 1).toNat

end

end A300059.P6811171494822993050

/-! ## A300059.P8979871924232685753

`A023447(A086540(n+1)+4)`
-/

namespace A300059.P8979871924232685753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A086540 (n + 1) + 4).toNat

end

end A300059.P8979871924232685753

/-!
# A300060: Number of domino tilings of the diagram of the integer partition with Heinz number n.

The programs for A300060, there is no canonical definition to state claims against.
-/

/-! ## A300060.P16848790795487673923

`A300056(n+1)-A206499(A064094(n+2))`
-/

namespace A300060.P16848790795487673923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300056 (n + 1) - A206499 (A064094 (n + 2)).toNat

end

end A300060.P16848790795487673923

/-! ## A300060.P10498881222420700580

`A000030(A300056(n+1)^A080883(n))`
-/

namespace A300060.P10498881222420700580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A300056 (n + 1) : ℚ) ^ (A080883 n : ℤ))).toNat

end

end A300060.P10498881222420700580

/-! ## A300060.P14460054438670258818

`A054054(A300056(n+1)^A080883(n))`
-/

namespace A300060.P14460054438670258818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (SequenceMachineLib.roundAway ((A300056 (n + 1) : ℚ) ^ (A080883 n : ℤ))).toNat

end

end A300060.P14460054438670258818

/-! ## A300060.P3025183168462586292

`A000030(A300056(n+1)^A186028(n))`
-/

namespace A300060.P3025183168462586292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A300056 (n + 1) : ℚ) ^ (A186028 n : ℤ))).toNat

end

end A300060.P3025183168462586292

/-! ## A300060.P4077957232816789137

`A357621(A300056(n+1)^A257565(n))`
-/

namespace A300060.P4077957232816789137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (SequenceMachineLib.roundAway ((A300056 (n + 1) : ℚ) ^ (A257565 n : ℤ))).toNat

end

end A300060.P4077957232816789137

/-!
# A300061: Heinz numbers of integer partitions of even numbers.

The programs for A300061, the canonical program `A300061.P17707229997706710883` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300061 has offset 1).

The definition of A300061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300061.P11353478170110616655

`comp[A300063(n+1)-1]+1`
-/

namespace A300061.P11353478170110616655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300063 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A300061.P11353478170110616655

namespace A300061

/-- `comp[A300063(n+1)-1]+1` -/
def P11353478170110616655.Spec : Prop :=
  ∀ n, (P11353478170110616655.a n : ℤ) = A300061 (n + 1)

end A300061

/-! ## A300061.P15931316984903859541

`lt[A344616(n+1)%2, 1]+1`
-/

namespace A300061.P15931316984903859541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344616 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A300061.P15931316984903859541

namespace A300061

/-- `lt[A344616(n+1)%2, 1]+1` -/
def P15931316984903859541.Spec : Prop :=
  ∀ n, (P15931316984903859541.a n : ℤ) = A300061 (n + 1)

end A300061

/-! ## A300061.P17707229997706710883

`eq[0, A056239(n+1)%2]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A300061

/-- `eq[0, A056239(n+1)%2]+1` -/
def P17707229997706710883.Spec : Prop :=
  ∀ n, (P17707229997706710883.a n : ℤ) = A300061 (n + 1)

theorem P17707229997706710883.correct : P17707229997706710883.Spec := by
  intro n
  simp only [A300061, Nat.add_sub_cancel]

end A300061

/-! ## A300061.P14318612828545702156

`lt[A001057(A056239(n+1)), 1]+1`
-/

namespace A300061.P14318612828545702156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A056239 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A300061.P14318612828545702156

namespace A300061

/-- `lt[A001057(A056239(n+1)), 1]+1` -/
def P14318612828545702156.Spec : Prop :=
  ∀ n, (P14318612828545702156.a n : ℤ) = A300061 (n + 1)

end A300061

/-! ## A300061.P11315213518857171884

`lt[A040865(A056239(n+1)+1), 3]+1`
-/

namespace A300061.P11315213518857171884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040865 (A056239 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A300061.P11315213518857171884

namespace A300061

/-- `lt[A040865(A056239(n+1)+1), 3]+1` -/
def P11315213518857171884.Spec : Prop :=
  ∀ n, (P11315213518857171884.a n : ℤ) = A300061 (n + 1)

end A300061

/-! ## A300061.P8076881508870217717

`record[(n+1)/A000034(A056239(n+1)+2)]`
-/

namespace A300061.P8076881508870217717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000034 (A056239 (n + 1) + 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300061.P8076881508870217717

namespace A300061

/-- `record[(n+1)/A000034(A056239(n+1)+2)]` -/
def P8076881508870217717.Spec : Prop :=
  ∀ n, P8076881508870217717.a n = (A300061 (n + 1) : ℚ)

end A300061

/-! ## A300061.P3096027944686104060

`record[(n+1)/A055396(A056239(n+1)+4)]`
-/

namespace A300061.P3096027944686104060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055396 (A056239 (n + 1) + 4).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300061.P3096027944686104060

namespace A300061

/-- `record[(n+1)/A055396(A056239(n+1)+4)]` -/
def P3096027944686104060.Spec : Prop :=
  ∀ n, P3096027944686104060.a n = (A300061 (n + 1) : ℚ)

end A300061

/-! ## A300061.P13537658311715892216

`eq[A007421(n+1), A007421(A248101(n+1))]+1`
-/

namespace A300061.P13537658311715892216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (A248101 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A300061.P13537658311715892216

namespace A300061

/-- `eq[A007421(n+1), A007421(A248101(n+1))]+1` -/
def P13537658311715892216.Spec : Prop :=
  ∀ n, (P13537658311715892216.a n : ℤ) = A300061 (n + 1)

end A300061

/-! ## A300061.P9151556580554791835

`record[(n+1)*A056239(2*(n+1))%2]`
-/

namespace A300061.P9151556580554791835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A056239 (2 * (n + 1))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300061.P9151556580554791835

namespace A300061

/-- `record[(n+1)*A056239(2*(n+1))%2]` -/
def P9151556580554791835.Spec : Prop :=
  ∀ n, P9151556580554791835.a n = A300061 (n + 1)

end A300061

/-! ## A300061.P9566850974370633557

`record[(n+1)^(1-A135481(A289507(n+1)))]`
-/

namespace A300061.P9566850974370633557
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (1 - A135481 (A289507 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300061.P9566850974370633557

namespace A300061

/-- `record[(n+1)^(1-A135481(A289507(n+1)))]` -/
def P9566850974370633557.Spec : Prop :=
  ∀ n, P9566850974370633557.a n = (A300061 (n + 1) : ℚ)

end A300061

/-!
# A300063: Heinz numbers of integer partitions of odd numbers.

The programs for A300063, the canonical program `A300063.P18376216019794990187` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300063 has offset 1).

The definition of A300063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300063.P2848594567934653340

`eq[1, A007814(A329647(n+1)²+1)]+1`
-/

namespace A300063.P2848594567934653340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A329647 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A300063.P2848594567934653340

namespace A300063

/-- `eq[1, A007814(A329647(n+1)²+1)]+1` -/
def P2848594567934653340.Spec : Prop :=
  ∀ n, (P2848594567934653340.a n : ℤ) = A300063 (n + 1)

end A300063

/-! ## A300063.P5265247346361544849

`lt[A340932(A329647(n+1)+1)%3, 2]+1`
-/

namespace A300063.P5265247346361544849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340932 (A329647 (n + 1) + 1).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A300063.P5265247346361544849

namespace A300063

/-- `lt[A340932(A329647(n+1)+1)%3, 2]+1` -/
def P5265247346361544849.Spec : Prop :=
  ∀ n, (P5265247346361544849.a n : ℤ) = A300063 (n + 1)

end A300063

/-! ## A300063.P18376216019794990187

`eq[1, A257991(n+1)%2]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A300063

/-- `eq[1, A257991(n+1)%2]+1` -/
def P18376216019794990187.Spec : Prop :=
  ∀ n, (P18376216019794990187.a n : ℤ) = A300063 (n + 1)

theorem P18376216019794990187.correct : P18376216019794990187.Spec := by
  intro n
  simp only [A300063, Nat.add_sub_cancel]

end A300063

/-! ## A300063.P7789144439809556098

`eq[1, A056239(n+1)%2]+1`
-/

namespace A300063.P7789144439809556098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A300063.P7789144439809556098

namespace A300063

/-- `eq[1, A056239(n+1)%2]+1` -/
def P7789144439809556098.Spec : Prop :=
  ∀ n, (P7789144439809556098.a n : ℤ) = A300063 (n + 1)

end A300063

/-! ## A300063.P1242228556449448914

`lt[A344616(2*(n+1))%2, 1]+1`
-/

namespace A300063.P1242228556449448914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344616 (2 * (n + 1))) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A300063.P1242228556449448914

namespace A300063

/-- `lt[A344616(2*(n+1))%2, 1]+1` -/
def P1242228556449448914.Spec : Prop :=
  ∀ n, (P1242228556449448914.a n : ℤ) = A300063 (n + 1)

end A300063

/-! ## A300063.P9849941052789364974

`eq[1, A000035(A056239(n+1))]+1`
-/

namespace A300063.P9849941052789364974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A056239 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A300063.P9849941052789364974

namespace A300063

/-- `eq[1, A000035(A056239(n+1))]+1` -/
def P9849941052789364974.Spec : Prop :=
  ∀ n, (P9849941052789364974.a n : ℤ) = A300063 (n + 1)

end A300063

/-! ## A300063.P16344314472724841398

`eq[1, A055396(A056239(n+1)+1)]+1`
-/

namespace A300063.P16344314472724841398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A056239 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A300063.P16344314472724841398

namespace A300063

/-- `eq[1, A055396(A056239(n+1)+1)]+1` -/
def P16344314472724841398.Spec : Prop :=
  ∀ n, (P16344314472724841398.a n : ℤ) = A300063 (n + 1)

end A300063

/-! ## A300063.P4400076861560316496

`eq[1, gcd(2, A056239(A008574(n)))]`
-/

namespace A300063.P4400076861560316496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A056239 (A008574 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A300063.P4400076861560316496

namespace A300063

/-- `eq[1, gcd(2, A056239(A008574(n)))]` -/
def P4400076861560316496.Spec : Prop :=
  ∀ n, (P4400076861560316496.a n : ℤ) = A300063 (n + 1)

end A300063

/-!
# A300064: Numbers k such that there are exactly phi(phi(k)) residues modulo k of the maximum order.

The programs for A300064, there is no canonical definition to state claims against.
-/

/-! ## A300064.P14718857416441224097

`∪[A008578(n+1), A300079(n+1)]`
-/

namespace A300064.P14718857416441224097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A300064.P14718857416441224097

/-! ## A300064.P16010908714197208072

`∪[A033946(n+1), A300079(n+1)]`
-/

namespace A300064.P16010908714197208072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A300064.P16010908714197208072

/-! ## A300064.P3073630831537156689

`∪[A033948(n+1), A300079(n+1)]`
-/

namespace A300064.P3073630831537156689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A300064.P3073630831537156689

/-! ## A300064.P3924115753258474676

`∪[A046022(n+1), A300079(n+1)]`
-/

namespace A300064.P3924115753258474676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A300064.P3924115753258474676

/-! ## A300064.P7656894955667842902

`∪[A066050(n+1), A300079(n+1)]`
-/

namespace A300064.P7656894955667842902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A300064.P7656894955667842902

/-! ## A300064.P16861862939399404398

`∪[A067126(n+1), A300079(n+1)]`
-/

namespace A300064.P16861862939399404398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A300064.P16861862939399404398

/-! ## A300064.P17853446528559635250

`∪[A074583(n+1), A300079(n+1)]`
-/

namespace A300064.P17853446528559635250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A300064.P17853446528559635250

/-! ## A300064.P17055219620675286279

`∪[A084400(n+1), A300079(n+1)]`
-/

namespace A300064.P17055219620675286279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A300064.P17055219620675286279

/-! ## A300064.P5645820639687988650

`∪[A235050(n+1), A300079(n+1)]`
-/

namespace A300064.P5645820639687988650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A300064.P5645820639687988650

/-!
# A300065: Numbers k such that the number of residues modulo k of the maximum order is different from phi(phi(k)).

The programs for A300065, there is no canonical definition to state claims against.
-/

/-! ## A300065.P17173841443088532609

`eq[char[A300064(n+1)], A000007(n)]`
-/

namespace A300065.P17173841443088532609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A300065.P17173841443088532609

/-! ## A300065.P10357624352990364076

`eq[char[A300064(n+1)], A000038(n)]`
-/

namespace A300065.P10357624352990364076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A300065.P10357624352990364076

/-! ## A300065.P11698313040625891756

`eq[char[A300079(n+1)], A339579(n+1)]`
-/

namespace A300065.P11698313040625891756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A300065.P11698313040625891756

/-! ## A300065.P12303072888734601588

`eq[char[A300064(n+1)], A029833(2*(n+1))]`
-/

namespace A300065.P12303072888734601588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A300065.P12303072888734601588

/-! ## A300065.P14435845177848727872

`eq[char[A300064(n+1)], A039975(2*n+1)]`
-/

namespace A300065.P14435845177848727872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039975 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A300065.P14435845177848727872

/-!
# A300066: Number of factorizations of the length-n prefix of the Fibonacci word A003849 into a (not strictly) decreasing sequence of finite Fibonacci words.

The programs for A300066, there is no canonical definition to state claims against.
-/

/-! ## A300066.P8368619190475713616

`ceil((abs(Δ[(n-1)*floor((n+1)/ϕ)]-n)+1)/ϕ)`
-/

namespace A300066.P8368619190475713616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|f1 (n + 1) - f1 n - (n : ℤ)| + 1 : ℝ) / Real.goldenRatio⌉

end

end A300066.P8368619190475713616

/-! ## A300066.P185164021858917924

`(n+1)%(abs(Δ[(n-1)*floor((n+1)/ϕ)]-n)+1)+1`
-/

namespace A300066.P185164021858917924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (|f1 (n + 1) - f1 n - (n : ℤ)| + 1) + 1

end

end A300066.P185164021858917924

/-! ## A300066.P5406545087485099938

`floor(A026242(n+1)/ϕ)+1`
-/

namespace A300066.P5406545087485099938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026242 (n + 1) : ℝ) / Real.goldenRatio⌋ + 1

end

end A300066.P5406545087485099938

/-! ## A300066.P8581455574446214992

`A005206(abs(Δ[(n-1)*floor((n+1)/ϕ)]-n))+1`
-/

namespace A300066.P8581455574446214992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 |f1 (n + 1) - f1 n - (n : ℤ)|.toNat + 1

end

end A300066.P8581455574446214992

/-! ## A300066.P3924518840684690405

`A019446(abs(Δ[(n-1)*floor((n+1)/ϕ)]-n)+1)`
-/

namespace A300066.P3924518840684690405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (|f1 (n + 1) - f1 n - (n : ℤ)| + 1).toNat

end

end A300066.P3924518840684690405

/-! ## A300066.P10464350611406170664

`A060145(A026272(comp[floor(ϕ*n)]))`
-/

namespace A300066.P10464350611406170664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 (A026272 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A300066.P10464350611406170664

/-! ## A300066.P2193672740008900156

`A026242(A000201(n+1)+2)-A026242(n+1)`
-/

namespace A300066.P2193672740008900156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (A000201 (n + 1) + 2).toNat - A026242 (n + 1)

end

end A300066.P2193672740008900156

/-!
# A300067: Period 6: repeat [0, 0, 0, 1, 2, 2].

The programs for A300067, the canonical program `A300067.P601184407983145020` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300067 has offset 0).

The definition of A300067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300067.P601184407983145020

`val((n%6)!², 12)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A300067

/-- `val((n%6)!², 12)` -/
def P601184407983145020.Spec : Prop :=
  ∀ n, (P601184407983145020.a n : ℤ) = A300067 n

theorem P601184407983145020.correct : P601184407983145020.Spec := by
  intro n
  simp only [A300067]

end A300067

/-!
# A300068: A sequence based on the period 6 sequence A300067.

The programs for A300068, the canonical program `A300068.P14212122279735515571` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300068 has offset 0).

The definition of A300068 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300067, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A300068.P14212122279735515571

`A300067(n)+3*floor(n/6)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A300068

/-- `A300067(n)+3*floor(n/6)` -/
def P14212122279735515571.Spec : Prop :=
  ∀ n, P14212122279735515571.a n = A300068 n

theorem P14212122279735515571.correct : P14212122279735515571.Spec := by
  intro n
  simp only [A300068]

end A300068

/-! ## A300068.P14691629208336208408

`∑[char[∑[(n+3)%4]]]`
-/

namespace A300068.P14691629208336208408
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) % 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300068.P14691629208336208408

namespace A300068

/-- `∑[char[∑[(n+3)%4]]]` -/
def P14691629208336208408.Spec : Prop :=
  ∀ n, (P14691629208336208408.a n : ℤ) = A300068 n

end A300068

/-! ## A300068.P10279929418704019447

`∑[char[∑[and(3, n-1)]]]`
-/

namespace A300068.P10279929418704019447
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300068.P10279929418704019447

namespace A300068

/-- `∑[char[∑[and(3, n-1)]]]` -/
def P10279929418704019447.Spec : Prop :=
  ∀ n, (P10279929418704019447.a n : ℤ) = A300068 n

end A300068

/-! ## A300068.P13416458359602273603

`∑[char[∑[and(3, n)]+3]]`
-/

namespace A300068.P13416458359602273603
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300068.P13416458359602273603

namespace A300068

/-- `∑[char[∑[and(3, n)]+3]]` -/
def P13416458359602273603.Spec : Prop :=
  ∀ n, (P13416458359602273603.a n : ℤ) = A300068 n

end A300068

/-! ## A300068.P14445475464325201057

`floor(∑[dr(6*n)/3]/4)`
-/

namespace A300068.P14445475464325201057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (6 * n : ℤ) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) / 4⌋

end

end A300068.P14445475464325201057

namespace A300068

/-- `floor(∑[dr(6*n)/3]/4)` -/
def P14445475464325201057.Spec : Prop :=
  ∀ n, P14445475464325201057.a n = A300068 n

end A300068

/-! ## A300068.P12429100071379498314

`floor((n-Δ[floor(n/3)])/2)`
-/

namespace A300068.P12429100071379498314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - (f1 (n + 1) - f1 n) : ℚ) / 2⌋

end

end A300068.P12429100071379498314

namespace A300068

/-- `floor((n-Δ[floor(n/3)])/2)` -/
def P12429100071379498314.Spec : Prop :=
  ∀ n, P12429100071379498314.a n = A300068 n

end A300068

/-! ## A300068.P14870750516121181634

`∑[char[∑[3-a(n-2)]]]` with `a(0)=3, a(1)=1`
-/

namespace A300068.P14870750516121181634
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f3 =>
  3 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300068.P14870750516121181634

namespace A300068

/-- `∑[char[∑[3-a(n-2)]]]` -/
def P14870750516121181634.Spec : Prop :=
  ∀ n, (P14870750516121181634.a n : ℤ) = A300068 n

end A300068

/-! ## A300068.P9552350313509808316

`round((2*n-gcd(3, n+1))/4)`
-/

namespace A300068.P9552350313509808316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℤ) - (Nat.gcd 3 (n + 1) : ℤ) : ℚ) / 4)

end

end A300068.P9552350313509808316

namespace A300068

/-- `round((2*n-gcd(3, n+1))/4)` -/
def P9552350313509808316.Spec : Prop :=
  ∀ n, P9552350313509808316.a n = A300068 n

end A300068

/-! ## A300068.P2092923459510910833

`∑[7%gcd(n, 3-a(n-1))]` with `a(0)=0`
-/

namespace A300068.P2092923459510910833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  7 % Int.gcd (n : ℤ) (3 - (f1 (n - 1) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300068.P2092923459510910833

namespace A300068

/-- `∑[7%gcd(n, 3-a(n-1))]` -/
def P2092923459510910833.Spec : Prop :=
  ∀ n, (P2092923459510910833.a n : ℤ) = A300068 n

end A300068

/-! ## A300068.P11060716012473665768

`∑[(n+1)%(3-a(n-1))]` with `a(0)=0, a(1)=0`
-/

namespace A300068.P11060716012473665768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  Int.tmod (n + 1 : ℤ) (3 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300068.P11060716012473665768

namespace A300068

/-- `∑[(n+1)%(3-a(n-1))]` -/
def P11060716012473665768.Spec : Prop :=
  ∀ n, P11060716012473665768.a n = A300068 n

end A300068

/-! ## A300068.P17734920332583273037

`∑[char[A047231(n+2)]]`
-/

namespace A300068.P17734920332583273037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300068.P17734920332583273037

namespace A300068

/-- `∑[char[A047231(n+2)]]` -/
def P17734920332583273037.Spec : Prop :=
  ∀ n, (P17734920332583273037.a n : ℤ) = A300068 n

end A300068

/-! ## A300068.P6901959442651452028

`∑[char[A144429(n+3)]]`
-/

namespace A300068.P6901959442651452028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144429 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300068.P6901959442651452028

namespace A300068

/-- `∑[char[A144429(n+3)]]` -/
def P6901959442651452028.Spec : Prop :=
  ∀ n, (P6901959442651452028.a n : ℤ) = A300068 n

end A300068

/-! ## A300068.P17212444374538979145

`A057353(round(2*n/3))`
-/

namespace A300068.P17212444374538979145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A300068.P17212444374538979145

namespace A300068

/-- `A057353(round(2*n/3))` -/
def P17212444374538979145.Spec : Prop :=
  ∀ n, P17212444374538979145.a n = A300068 n

end A300068

/-! ## A300068.P17271118727106224586

`∑[char[A092200(2*n+1)]]`
-/

namespace A300068.P17271118727106224586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300068.P17271118727106224586

namespace A300068

/-- `∑[char[A092200(2*n+1)]]` -/
def P17271118727106224586.Spec : Prop :=
  ∀ n, (P17271118727106224586.a n : ℤ) = A300068 n

end A300068

/-! ## A300068.P12279627329404848829

`∑[char[A130481(2*n)]]-1`
-/

namespace A300068.P12279627329404848829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A300068.P12279627329404848829

namespace A300068

/-- `∑[char[A130481(2*n)]]-1` -/
def P12279627329404848829.Spec : Prop :=
  ∀ n, P12279627329404848829.a n = A300068 n

end A300068

/-! ## A300068.P15529516141642313807

`∑[char[A092200(n+1)+n]]`
-/

namespace A300068.P15529516141642313807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300068.P15529516141642313807

namespace A300068

/-- `∑[char[A092200(n+1)+n]]` -/
def P15529516141642313807.Spec : Prop :=
  ∀ n, (P15529516141642313807.a n : ℤ) = A300068 n

end A300068

/-! ## A300068.P4162176930951871730

`n-∑[char[A047268(n+1)]]`
-/

namespace A300068.P4162176930951871730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A300068.P4162176930951871730

namespace A300068

/-- `n-∑[char[A047268(n+1)]]` -/
def P4162176930951871730.Spec : Prop :=
  ∀ n, P4162176930951871730.a n = A300068 n

end A300068

/-! ## A300068.P577767181526329507

`A004526(A085801(n+1))`
-/

namespace A300068.P577767181526329507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A085801 (n + 1)).toNat

end

end A300068.P577767181526329507

namespace A300068

/-- `A004526(A085801(n+1))` -/
def P577767181526329507.Spec : Prop :=
  ∀ n, P577767181526329507.a n = A300068 n

end A300068

/-! ## A300068.P14517799755616869458

`A037915(A004396(n))-1`
-/

namespace A300068.P14517799755616869458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A004396 n).toNat - 1

end

end A300068.P14517799755616869458

namespace A300068

/-- `A037915(A004396(n))-1` -/
def P14517799755616869458.Spec : Prop :=
  ∀ n, P14517799755616869458.a n = A300068 n

end A300068

/-! ## A300068.P1856775048602846612

`A106251(n)-A204418(n)`
-/

namespace A300068.P1856775048602846612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106251 n - A204418 n

end

end A300068.P1856775048602846612

namespace A300068

/-- `A106251(n)-A204418(n)` -/
def P1856775048602846612.Spec : Prop :=
  ∀ n, P1856775048602846612.a n = A300068 n

end A300068

/-!
# A300069: Period 6: repeat [0, 0, 0, 1, 2, 1].

The programs for A300069, the canonical program `A300069.P14189132953499515225` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300069 has offset 0).

The definition of A300069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300069.P14189132953499515225

`C(2, (n+3)%6)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A300069

/-- `C(2, (n+3)%6)` -/
def P14189132953499515225.Spec : Prop :=
  ∀ n, (P14189132953499515225.a n : ℤ) = A300069 n

theorem P14189132953499515225.correct : P14189132953499515225.Spec := by
  intro n
  simp only [A300069]

end A300069

/-!
# A300075: Period 6: repeat [0, 1, 1, 2, 2, 2].

The programs for A300075, the canonical program `A300075.P12895150144055741171` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300075 has offset 0).

The definition of A300075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300075.P12895150144055741171

`round(sqrt(n%6))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A300075

/-- `round(sqrt(n%6))` -/
def P12895150144055741171.Spec : Prop :=
  ∀ n, P12895150144055741171.a n = A300075 n

theorem P12895150144055741171.correct : P12895150144055741171.Spec := by
  intro n
  simp only [A300075]

end A300075

/-!
# A300076: A sequence based on the period 6 sequence A300075.

The programs for A300076, the canonical program `A300076.P1900940538167367687` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300076 has offset 0).

The definition of A300076 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300075, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A300076.P1900940538167367687

`A300075(n)+3*floor(n/6)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A300076

/-- `A300075(n)+3*floor(n/6)` -/
def P1900940538167367687.Spec : Prop :=
  ∀ n, P1900940538167367687.a n = A300076 n

theorem P1900940538167367687.correct : P1900940538167367687.Spec := by
  intro n
  simp only [A300076]

end A300076

/-! ## A300076.P15642481612379706749

`∑[char[∑[n%3+1]]]`
-/

namespace A300076.P15642481612379706749
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300076.P15642481612379706749

namespace A300076

/-- `∑[char[∑[n%3+1]]]` -/
def P15642481612379706749.Spec : Prop :=
  ∀ n, (P15642481612379706749.a n : ℤ) = A300076 n

end A300076

/-! ## A300076.P16011815466075154593

`∑[char[∑[and(3, n+1)]]]`
-/

namespace A300076.P16011815466075154593
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300076.P16011815466075154593

namespace A300076

/-- `∑[char[∑[and(3, n+1)]]]` -/
def P16011815466075154593.Spec : Prop :=
  ∀ n, (P16011815466075154593.a n : ℤ) = A300076 n

end A300076

/-! ## A300076.P14021627269841276064

`∑[char[∑[and(3, n)]]]-1`
-/

namespace A300076.P14021627269841276064
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A300076.P14021627269841276064

namespace A300076

/-- `∑[char[∑[and(3, n)]]]-1` -/
def P14021627269841276064.Spec : Prop :=
  ∀ n, P14021627269841276064.a n = A300076 n

end A300076

/-! ## A300076.P16013958589176343128

`ceil(floor(n/3)+n/6)`
-/

namespace A300076.P16013958589176343128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(n : ℚ) / 3⌋ : ℚ) + (n : ℚ) / 6⌉

end

end A300076.P16013958589176343128

namespace A300076

/-- `ceil(floor(n/3)+n/6)` -/
def P16013958589176343128.Spec : Prop :=
  ∀ n, P16013958589176343128.a n = A300076 n

end A300076

/-! ## A300076.P8235150622172428376

`round(∑[dr(6*n)/3]/4)`
-/

namespace A300076.P8235150622172428376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (6 * n : ℤ) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) / 4)

end

end A300076.P8235150622172428376

namespace A300076

/-- `round(∑[dr(6*n)/3]/4)` -/
def P8235150622172428376.Spec : Prop :=
  ∀ n, P8235150622172428376.a n = A300076 n

end A300076

/-! ## A300076.P15793119762763525877

`∑[char[a(n-3)+6]]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A300076.P15793119762763525877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n f2 =>
  f2 (n - 3) + 6

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300076.P15793119762763525877

namespace A300076

/-- `∑[char[a(n-3)+6]]` -/
def P15793119762763525877.Spec : Prop :=
  ∀ n, (P15793119762763525877.a n : ℤ) = A300076 n

end A300076

/-! ## A300076.P8203004148693768395

`∑[char[∑[3-a(n-2)]]]` with `a(0)=1, a(1)=0`
-/

namespace A300076.P8203004148693768395
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f3 =>
  3 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300076.P8203004148693768395

namespace A300076

/-- `∑[char[∑[3-a(n-2)]]]` -/
def P8203004148693768395.Spec : Prop :=
  ∀ n, (P8203004148693768395.a n : ℤ) = A300076 n

end A300076

/-! ## A300076.P10948713864164298732

`floor(∑[floor(a(n-3))]/2)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A300076.P10948713864164298732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A300076.P10948713864164298732

namespace A300076

/-- `floor(∑[floor(a(n-3))]/2)` -/
def P10948713864164298732.Spec : Prop :=
  ∀ n, P10948713864164298732.a n = A300076 n

end A300076

/-! ## A300076.P9196402278352269986

`a(n-(a(n-1)%3+1))+1` with `a(0)=0`
-/

namespace A300076.P9196402278352269986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - (a (n - 1) % 3 + 1)) + 1

end

end A300076.P9196402278352269986

namespace A300076

/-- `a(n-(a(n-1)%3+1))+1` -/
def P9196402278352269986.Spec : Prop :=
  ∀ n, (P9196402278352269986.a n : ℤ) = A300076 n

end A300076

/-! ## A300076.P9668651319851644741

`floor(a(n-1)+gcd(3, n*a(n-1))/2)` with `a(0)=0`
-/

namespace A300076.P9668651319851644741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (Int.gcd 3 ((n : ℤ) * a (n - 1)) : ℚ) / 2⌋

end

end A300076.P9668651319851644741

namespace A300076

/-- `floor(a(n-1)+gcd(3, n*a(n-1))/2)` -/
def P9668651319851644741.Spec : Prop :=
  ∀ n, P9668651319851644741.a n = A300076 n

end A300076

/-! ## A300076.P17755727374917559383

`n-∑[A214090(n)]`
-/

namespace A300076.P17755727374917559383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300076.P17755727374917559383

namespace A300076

/-- `n-∑[A214090(n)]` -/
def P17755727374917559383.Spec : Prop :=
  ∀ n, P17755727374917559383.a n = A300076 n

end A300076

/-! ## A300076.P1830552506377519757

`(A131734(n)+n)/2`
-/

namespace A300076.P1830552506377519757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131734 n + (n : ℤ) : ℚ) / 2

end

end A300076.P1830552506377519757

namespace A300076

/-- `(A131734(n)+n)/2` -/
def P1830552506377519757.Spec : Prop :=
  ∀ n, P1830552506377519757.a n = (A300076 n : ℚ)

end A300076

/-! ## A300076.P5194286805393965033

`∑[char[A130482(n+1)]]`
-/

namespace A300076.P5194286805393965033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130482 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300076.P5194286805393965033

namespace A300076

/-- `∑[char[A130482(n+1)]]` -/
def P5194286805393965033.Spec : Prop :=
  ∀ n, (P5194286805393965033.a n : ℤ) = A300076 n

end A300076

/-! ## A300076.P14745739531761767288

`∑[char[A047242(n+2)]]`
-/

namespace A300076.P14745739531761767288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300076.P14745739531761767288

namespace A300076

/-- `∑[char[A047242(n+2)]]` -/
def P14745739531761767288.Spec : Prop :=
  ∀ n, (P14745739531761767288.a n : ℤ) = A300076 n

end A300076

/-! ## A300076.P834291265274175427

`∑[char[A130482(n)]]-1`
-/

namespace A300076.P834291265274175427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130482 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A300076.P834291265274175427

namespace A300076

/-- `∑[char[A130482(n)]]-1` -/
def P834291265274175427.Spec : Prop :=
  ∀ n, P834291265274175427.a n = A300076 n

end A300076

/-! ## A300076.P4141967705315665385

`∑[char[A092200(2*n)]]`
-/

namespace A300076.P4141967705315665385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300076.P4141967705315665385

namespace A300076

/-- `∑[char[A092200(2*n)]]` -/
def P4141967705315665385.Spec : Prop :=
  ∀ n, (P4141967705315665385.a n : ℤ) = A300076 n

end A300076

/-! ## A300076.P4457525003748433045

`round((n-A022003(n))/2)`
-/

namespace A300076.P4457525003748433045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - A022003 n : ℚ) / 2)

end

end A300076.P4457525003748433045

namespace A300076

/-- `round((n-A022003(n))/2)` -/
def P4457525003748433045.Spec : Prop :=
  ∀ n, P4457525003748433045.a n = A300076 n

end A300076

/-! ## A300076.P3804988107547841587

`n-∑[and(1, A009947(n))]`
-/

namespace A300076.P3804988107547841587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A009947 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300076.P3804988107547841587

namespace A300076

/-- `n-∑[and(1, A009947(n))]` -/
def P3804988107547841587.Spec : Prop :=
  ∀ n, P3804988107547841587.a n = A300076 n

end A300076

/-! ## A300076.P3321464208469868450

`∑[char[A047267(n+1)+1]]`
-/

namespace A300076.P3321464208469868450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047267 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300076.P3321464208469868450

namespace A300076

/-- `∑[char[A047267(n+1)+1]]` -/
def P3321464208469868450.Spec : Prop :=
  ∀ n, (P3321464208469868450.a n : ℤ) = A300076 n

end A300076

/-!
# A300077: Decimal expansion of Pi/2 truncated to n places.

The programs for A300077, the canonical program `A300077.P16431319336194267716` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300077 has offset 1).

The definition of A300077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300077.P16431319336194267716

`floor(1/2*π*10^n)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A300077

/-- `floor(1/2*π*10^n)` -/
def P16431319336194267716.Spec : Prop :=
  ∀ n, P16431319336194267716.a n = A300077 (n + 1)

theorem P16431319336194267716.correct : P16431319336194267716.Spec := by
  intro n
  simp only [A300077, Nat.add_sub_cancel]

end A300077

/-! ## A300077.P17531750560153667384

`ceil((A011545(n)-1)/2)`
-/

namespace A300077.P17531750560153667384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A011545 n - 1 : ℚ) / 2⌉

end

end A300077.P17531750560153667384

namespace A300077

/-- `ceil((A011545(n)-1)/2)` -/
def P17531750560153667384.Spec : Prop :=
  ∀ n, P17531750560153667384.a n = A300077 (n + 1)

end A300077

/-! ## A300077.P6136720709104445072

`record[floor(A322777(n+1)/2)]`
-/

namespace A300077.P6136720709104445072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322777 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300077.P6136720709104445072

namespace A300077

/-- `record[floor(A322777(n+1)/2)]` -/
def P6136720709104445072.Spec : Prop :=
  ∀ n, P6136720709104445072.a n = A300077 (n + 1)

end A300077

/-! ## A300077.P8685470362876129070

`ceil(atan(A011557(n))*A011557(n))`
-/

namespace A300077.P8685470362876129070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A011557 n : ℝ) * (A011557 n : ℝ)⌉

end

end A300077.P8685470362876129070

namespace A300077

/-- `ceil(atan(A011557(n))*A011557(n))` -/
def P8685470362876129070.Spec : Prop :=
  ∀ n, P8685470362876129070.a n = A300077 (n + 1)

end A300077

/-!
# A300079: Composite numbers k such that there are exactly phi(phi(k)) residues modulo k of the maximum order.

The programs for A300079, there is no canonical definition to state claims against.
-/

/-! ## A300079.P9774881627613501604

`filter[A300064(n+1), A066247(#)]`
-/

namespace A300079.P9774881627613501604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A300079.P9774881627613501604

/-! ## A300079.P5546384421820196030

`filter[A300064(n+2), A005171(#)]`
-/

namespace A300079.P5546384421820196030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A300079.P5546384421820196030

/-! ## A300079.P17179886560172447570

`∩[A300064(n+1), comp[A351078(n)]]`
-/

namespace A300079.P17179886560172447570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A300079.P17179886560172447570

/-! ## A300079.P3576098589005476719

`∩[A002808(n+1), A300064(n+1)]`
-/

namespace A300079.P3576098589005476719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300079.P3576098589005476719

/-! ## A300079.P18352931373667727949

`∩[A018252(n+2), A300064(n+1)]`
-/

namespace A300079.P18352931373667727949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300079.P18352931373667727949

/-! ## A300079.P10086004968123198922

`∩[comp[A008578(n+1)], A300064(n+1)]`
-/

namespace A300079.P10086004968123198922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A300079.P10086004968123198922

/-! ## A300079.P2168260245284195669

`∩[A141468(n+1), A300064(n+2)]`
-/

namespace A300079.P2168260245284195669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300079.P2168260245284195669

/-! ## A300079.P10049998524495911763

`eq[char[A300065(n+1)], A339579(n+1)]`
-/

namespace A300079.P10049998524495911763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300065 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A300079.P10049998524495911763

/-!
# A300080: Numbers k that are not prime powers, and have exactly phi(phi(k)) residues modulo k of the maximum order.

The programs for A300080, there is no canonical definition to state claims against.
-/

/-! ## A300080.P15967336962263814892

`∩[A024619(n+1), A300064(n+1)]`
-/

namespace A300080.P15967336962263814892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300080.P15967336962263814892

/-! ## A300080.P8494775590672757857

`∩[A024619(n+1), A300079(n+1)]`
-/

namespace A300080.P8494775590672757857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300080.P8494775590672757857

/-! ## A300080.P12503841083102563290

`∩[A080765(n+1)+1, A300079(n+1)]`
-/

namespace A300080.P12503841083102563290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300080.P12503841083102563290

/-! ## A300080.P12741230919688508387

`∩[A300079(n+1), A361102(n+1)]`
-/

namespace A300080.P12741230919688508387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300080.P12741230919688508387

/-! ## A300080.P8580745575762441235

`∩[A085971(n+1), A300079(n+1)]`
-/

namespace A300080.P8580745575762441235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300080.P8580745575762441235

/-! ## A300080.P15867285870795900770

`filter[A300064(n+1), A143731(#)]`
-/

namespace A300080.P15867285870795900770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A300080.P15867285870795900770

/-! ## A300080.P1780528370125269459

`filter[A300079(n+1), A143731(#)]`
-/

namespace A300080.P1780528370125269459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A300080.P1780528370125269459

/-! ## A300080.P6934245616777880715

`∩[A020725(A080765(n+1)), A300079(n+1)]`
-/

namespace A300080.P6934245616777880715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A080765 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300080.P6934245616777880715

/-!
# A300083: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300083, there is no canonical definition to state claims against.
-/

/-! ## A300083.P10476117738423131887

`A300089(∑[4*n]+1)`
-/

namespace A300083.P10476117738423131887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300083.P10476117738423131887

/-! ## A300083.P17473944562242435949

`A300089(A001844(n))+char[10]`
-/

namespace A300083.P17473944562242435949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300083.P17473944562242435949

/-! ## A300083.P16834237566403975270

`A326595(n)+A300089(A001844(n))`
-/

namespace A300083.P16834237566403975270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326595 n + A300089 (A001844 n).toNat

end

end A300083.P16834237566403975270

/-! ## A300083.P13118079816148358898

`lcm(A057077(n), A300089(A001844(n)))`
-/

namespace A300083.P13118079816148358898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A300089 (A001844 n).toNat)

end

end A300083.P13118079816148358898

/-! ## A300083.P15447653657280164231

`A007318(∑[n])*A300089(A001844(n))`
-/

namespace A300083.P15447653657280164231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A300089 (A001844 n).toNat

end

end A300083.P15447653657280164231

/-!
# A300084: Number of nX3 0..1 arrays with every element equal to 0, 1, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300084, there is no canonical definition to state claims against.
-/

/-! ## A300084.P1471040439864343548

`A300089(∑[n+2]+4)`
-/

namespace A300084.P1471040439864343548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300084.P1471040439864343548

/-! ## A300084.P14369774949697549753

`or(char[2], A300089(A055998(n)+6))`
-/

namespace A300084.P14369774949697549753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300089 (A055998 n + 6).toNat)

end

end A300084.P14369774949697549753

/-! ## A300084.P17010074754880282400

`lcm((-1)^n, A300089(A167614(n+1)))`
-/

namespace A300084.P17010074754880282400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A300089 (A167614 (n + 1)).toNat)

end

end A300084.P17010074754880282400

/-! ## A300084.P2841183174979812709

`A300089(A167614(n+1))+A011738(n)`
-/

namespace A300084.P2841183174979812709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (A167614 (n + 1)).toNat + A011738 n

end

end A300084.P2841183174979812709

/-! ## A300084.P4207387725429101682

`A300089(A167614(n+1))+A185037(n)`
-/

namespace A300084.P4207387725429101682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (A167614 (n + 1)).toNat + A185037 n

end

end A300084.P4207387725429101682

/-!
# A300085: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300085, there is no canonical definition to state claims against.
-/

/-! ## A300085.P13039961066362071889

`A300089(∑[n+3]+7)`
-/

namespace A300085.P13039961066362071889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300085.P13039961066362071889

/-! ## A300085.P6433524727384910731

`A300089(A055998(n+2))+A011738(n)`
-/

namespace A300085.P6433524727384910731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (A055998 (n + 2)).toNat + A011738 n

end

end A300085.P6433524727384910731

/-! ## A300085.P12113542918158147281

`A300089(A055998(n+2))+A185037(n)`
-/

namespace A300085.P12113542918158147281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (A055998 (n + 2)).toNat + A185037 n

end

end A300085.P12113542918158147281

/-! ## A300085.P14348320232680961565

`A326684(n)+A300089(A055998(n+2))`
-/

namespace A300085.P14348320232680961565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 n + A300089 (A055998 (n + 2)).toNat

end

end A300085.P14348320232680961565

/-! ## A300085.P2759086822731526798

`A326684(n)+A300089(A056000(n)+7)`
-/

namespace A300085.P2759086822731526798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 n + A300089 (A056000 n + 7).toNat

end

end A300085.P2759086822731526798

/-!
# A300086: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300086, there is no canonical definition to state claims against.
-/

/-! ## A300086.P14638707690644097114

`A300089(∑[n+4]+11)`
-/

namespace A300086.P14638707690644097114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A300086.P14638707690644097114

/-! ## A300086.P17321657691085524040

`A326684(n)+A300089(A133263(n+4)+3)`
-/

namespace A300086.P17321657691085524040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 n + A300089 (A133263 (n + 4) + 3).toNat

end

end A300086.P17321657691085524040

/-! ## A300086.P12436307621918921250

`A300089(A133263(n+4)+3)+A122180(n+1)`
-/

namespace A300086.P12436307621918921250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (A133263 (n + 4) + 3).toNat + A122180 (n + 1)

end

end A300086.P12436307621918921250

/-! ## A300086.P8400333207006187768

`or(A112053(n+1), A300089(A133263(n+4)+3))`
-/

namespace A300086.P8400333207006187768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112053 (n + 1)) (A300089 (A133263 (n + 4) + 3).toNat)

end

end A300086.P8400333207006187768

/-! ## A300086.P3825901435967530067

`A300089(A133263(n+4)+3)+A000038(A049732(n))`
-/

namespace A300086.P3825901435967530067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (A133263 (n + 4) + 3).toNat + A000038 (A049732 n).toNat

end

end A300086.P3825901435967530067

/-!
# A300087: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300087, there is no canonical definition to state claims against.
-/

/-! ## A300087.P7206623449915569148

`A300089(A374007(n+1))`
-/

namespace A300087.P7206623449915569148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (A374007 (n + 1)).toNat

end

end A300087.P7206623449915569148

/-! ## A300087.P3858678227477169732

`A300089(A166136(n+4))`
-/

namespace A300087.P3858678227477169732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (A166136 (n + 4)).toNat

end

end A300087.P3858678227477169732

/-! ## A300087.P2773102958175386937

`A300089(A056115(n)+21)`
-/

namespace A300087.P2773102958175386937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (A056115 n + 21).toNat

end

end A300087.P2773102958175386937

/-! ## A300087.P121130148157347831

`A300089(Δ[A264443(n)]+10)`
-/

namespace A300087.P121130148157347831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (f1 (n + 1) - f1 n + 10).toNat

end

end A300087.P121130148157347831

/-! ## A300087.P11416982424312177562

`A300089(A167499(n+4)+1)`
-/

namespace A300087.P11416982424312177562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (A167499 (n + 4) + 1).toNat

end

end A300087.P11416982424312177562

/-!
# A300088: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300088, there is no canonical definition to state claims against.
-/

/-! ## A300088.P10460918379040359942

`A300089(A374008(n+1))`
-/

namespace A300088.P10460918379040359942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (A374008 (n + 1)).toNat

end

end A300088.P10460918379040359942

/-! ## A300088.P8671902659220643571

`A300089(A056119(n)+28)`
-/

namespace A300088.P8671902659220643571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (A056119 n + 28).toNat

end

end A300088.P8671902659220643571

/-! ## A300088.P6872174104068205531

`A300089(eq[11, A066657(n)])`
-/

namespace A300088.P6872174104068205531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300088.P6872174104068205531

/-! ## A300088.P14686272135484677042

`A300089(A167499(n+5)+2)`
-/

namespace A300088.P14686272135484677042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (A167499 (n + 5) + 2).toNat

end

end A300088.P14686272135484677042

/-! ## A300088.P11140531929753089292

`A300089(A167614(n+5)+4)`
-/

namespace A300088.P11140531929753089292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (A167614 (n + 5) + 4).toNat

end

end A300088.P11140531929753089292

/-!
# A300089: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300089, there is no canonical definition to state claims against.
-/

/-! ## A300089.P807410898330117507

`A326684(A059117(n))+A299451(n+1)`
-/

namespace A300089.P807410898330117507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 (A059117 n).toNat + A299451 (n + 1)

end

end A300089.P807410898330117507

/-! ## A300089.P3811115450694566839

`A299451(n+1)+A112053(A045213(n+1))`
-/

namespace A300089.P3811115450694566839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (n + 1) + A112053 (A045213 (n + 1)).toNat

end

end A300089.P3811115450694566839

/-!
# A300090: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300090, there is no canonical definition to state claims against.
-/

/-! ## A300090.P16605809775127930292

`A300096(∑[4*n]+1)`
-/

namespace A300090.P16605809775127930292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300090.P16605809775127930292

/-! ## A300090.P5703295881075874205

`record[A300096(∑[A266981(n)])]`
-/

namespace A300090.P5703295881075874205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300090.P5703295881075874205

/-! ## A300090.P7129335107006239278

`and(-1, A300096(A001844(n)))`
-/

namespace A300090.P7129335107006239278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A300096 (A001844 n).toNat)

end

end A300090.P7129335107006239278

/-! ## A300090.P484267384486827712

`record[A300096(A272267(n+1))]`
-/

namespace A300090.P484267384486827712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300090.P484267384486827712

/-! ## A300090.P6005753793485710583

`record[A300096(A330613(n+1))]`
-/

namespace A300090.P6005753793485710583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300090.P6005753793485710583

/-!
# A300091: Number of n X 3 0..1 arrays with every element equal to 0, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300091, there is no canonical definition to state claims against.
-/

/-! ## A300091.P3738700077186819073

`A300096(∑[n+2]+4)`
-/

namespace A300091.P3738700077186819073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300091.P3738700077186819073

/-! ## A300091.P14966863325197226934

`or(1, A300096(A167614(n+1)))`
-/

namespace A300091.P14966863325197226934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A300096 (A167614 (n + 1)).toNat)

end

end A300091.P14966863325197226934

/-! ## A300091.P8755101307743325517

`or(1, A300096(A167499(n)+n))`
-/

namespace A300091.P8755101307743325517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A300096 (A167499 n + (n : ℤ)).toNat)

end

end A300091.P8755101307743325517

/-! ## A300091.P16008606666867342882

`or(1, A300096(A000217(n+2)+3))`
-/

namespace A300091.P16008606666867342882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A300096 (A000217 (n + 2) + 3).toNat)

end

end A300091.P16008606666867342882

/-! ## A300091.P7941836713054936368

`A300096(A167614(n+1))+A025444(n)`
-/

namespace A300091.P7941836713054936368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (A167614 (n + 1)).toNat + A025444 n

end

end A300091.P7941836713054936368

/-!
# A300092: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300092, there is no canonical definition to state claims against.
-/

/-! ## A300092.P11672777389660736387

`A300096(∑[n+3]+7)`
-/

namespace A300092.P11672777389660736387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300092.P11672777389660736387

/-! ## A300092.P10613891462291447025

`A300096(A055999(n)+10)+char[16]`
-/

namespace A300092.P10613891462291447025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300092.P10613891462291447025

/-! ## A300092.P8006861761260585677

`A300096(A055999(n)+10)%A000108(n+4)`
-/

namespace A300092.P8006861761260585677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300096 (A055999 n + 10).toNat) (A000108 (n + 4))

end

end A300092.P8006861761260585677

/-! ## A300092.P12155997046191395344

`A007318(and(1, -n))*A300096(A055999(n)+10)`
-/

namespace A300092.P12155997046191395344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A300096 (A055999 n + 10).toNat

end

end A300092.P12155997046191395344

/-! ## A300092.P14286176292547100744

`A000108(C(n, 64)²)*A300096(A055999(n)+10)`
-/

namespace A300092.P14286176292547100744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n 64 ^ 2) * A300096 (A055999 n + 10).toNat

end

end A300092.P14286176292547100744

/-!
# A300093: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300093, there is no canonical definition to state claims against.
-/

/-! ## A300093.P5051944286661534600

`A300096(∑[n+4]+11)`
-/

namespace A300093.P5051944286661534600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A300093.P5051944286661534600

/-! ## A300093.P16478747271293955170

`A300096(A000217(n+4)+5)+char[15]`
-/

namespace A300093.P16478747271293955170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (A000217 (n + 4) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300093.P16478747271293955170

/-! ## A300093.P10162924187540395728

`A300096(A167499(n+3))%A279266(n+1)`
-/

namespace A300093.P10162924187540395728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300096 (A167499 (n + 3)).toNat) (A279266 (n + 1))

end

end A300093.P10162924187540395728

/-! ## A300093.P10334042035034897997

`A007318(C(2, n))*A300096(A000217(n+4)+5)`
-/

namespace A300093.P10334042035034897997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A300096 (A000217 (n + 4) + 5).toNat

end

end A300093.P10334042035034897997

/-! ## A300093.P14720869067857045763

`A300096(A000217(n+4)+5)^A014963(4*n+2)`
-/

namespace A300093.P14720869067857045763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300096 (A000217 (n + 4) + 5).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A300093.P14720869067857045763

/-!
# A300094: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300094, there is no canonical definition to state claims against.
-/

/-! ## A300094.P11439443341753729865

`A300096(A374007(n+1))`
-/

namespace A300094.P11439443341753729865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (A374007 (n + 1)).toNat

end

end A300094.P11439443341753729865

/-! ## A300094.P13233006829810762673

`A300096(A166136(n+4))`
-/

namespace A300094.P13233006829810762673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (A166136 (n + 4)).toNat

end

end A300094.P13233006829810762673

/-! ## A300094.P2386574693098137133

`A300096(A056115(n)+21)`
-/

namespace A300094.P2386574693098137133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (A056115 n + 21).toNat

end

end A300094.P2386574693098137133

/-! ## A300094.P14312334066618684907

`A300096(A167499(n+4)+1)`
-/

namespace A300094.P14312334066618684907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (A167499 (n + 4) + 1).toNat

end

end A300094.P14312334066618684907

/-! ## A300094.P17743899032972311905

`A300096(A167614(n+4)+3)`
-/

namespace A300094.P17743899032972311905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (A167614 (n + 4) + 3).toNat

end

end A300094.P17743899032972311905

/-!
# A300095: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300095, there is no canonical definition to state claims against.
-/

/-! ## A300095.P3208181544238845937

`A300096(A374008(n+1))`
-/

namespace A300095.P3208181544238845937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (A374008 (n + 1)).toNat

end

end A300095.P3208181544238845937

/-! ## A300095.P9452017739481860939

`A300096(A056119(n)+28)`
-/

namespace A300095.P9452017739481860939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (A056119 n + 28).toNat

end

end A300095.P9452017739481860939

/-! ## A300095.P11307028234167947250

`A300096(eq[11, A066657(n)])`
-/

namespace A300095.P11307028234167947250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300095.P11307028234167947250

/-! ## A300095.P4397007301728784129

`A300096(A167614(n+5)+4)`
-/

namespace A300095.P4397007301728784129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (A167614 (n + 5) + 4).toNat

end

end A300095.P4397007301728784129

/-! ## A300095.P11318920457820579710

`A300096(A000096(n+5)+8)`
-/

namespace A300095.P11318920457820579710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (A000096 (n + 5) + 8).toNat

end

end A300095.P11318920457820579710

/-!
# A300096: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300096, there is no canonical definition to state claims against.
-/

/-! ## A300096.P5260569430512788513

`or(A185043(A322114(n)), A299458(n+1))`
-/

namespace A300096.P5260569430512788513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185043 (A322114 n).toNat) (A299458 (n + 1))

end

end A300096.P5260569430512788513

/-!
# A300097: Primes for which A288814 gives a new record.

The programs for A300097, there is no canonical definition to state claims against.
-/

/-! ## A300097.P6798315776689866415

`A001414(A300098(n+1))`
-/

namespace A300097.P6798315776689866415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A300098 (n + 1)).toNat

end

end A300097.P6798315776689866415

/-! ## A300097.P16064601998366074560

`A001414(record[A295185(n+3)])`
-/

namespace A300097.P16064601998366074560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295185 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A300097.P16064601998366074560

/-! ## A300097.P18107934669354234468

`A001414(record[A288814(p?[2*n+5])])`
-/

namespace A300097.P18107934669354234468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A300097.P18107934669354234468

/-! ## A300097.P8602487896395479186

`A082343(record[A295185(n+3)])`
-/

namespace A300097.P8602487896395479186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295185 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082343 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A300097.P8602487896395479186

/-! ## A300097.P5704957522526247436

`A082343(A300098(Δ[n²]-n))`
-/

namespace A300097.P5704957522526247436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082343 (A300098 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A300097.P5704957522526247436

/-!
# A300098: Records of A288814.

The programs for A300098, there is no canonical definition to state claims against.
-/

/-! ## A300098.P711925915935870117

`record[A295185(n+3)]`
-/

namespace A300098.P711925915935870117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295185 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300098.P711925915935870117

/-! ## A300098.P7719803382908969488

`A288814(A300097(n+1))`
-/

namespace A300098.P7719803382908969488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (A300097 (n + 1)).toNat

end

end A300098.P7719803382908969488

/-! ## A300098.P14504102460338914926

`record[A288814(p?[A062545(n)])]`
-/

namespace A300098.P14504102460338914926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300098.P14504102460338914926

/-! ## A300098.P3329165719727596545

`record[A288814(A045344(n+2))]`
-/

namespace A300098.P3329165719727596545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (A045344 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300098.P3329165719727596545

/-! ## A300098.P9256208002186369336

`record[A288814(A000040(n+3))]`
-/

namespace A300098.P9256208002186369336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (A000040 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300098.P9256208002186369336

