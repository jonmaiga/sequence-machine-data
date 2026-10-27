import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A355501: Expansion of e.g.f. exp(3 * x * exp(x)).

The programs for A355501, there is no canonical definition to state claims against.
-/

/-! ## A355501.P4010141720745581316

`A187105(∑[n+2]+4)`
-/

namespace A355501.P4010141720745581316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187105 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A355501.P4010141720745581316

/-! ## A355501.P13749043762454046737

`record[A187105(A133263(n)+1)]`
-/

namespace A355501.P13749043762454046737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187105 (A133263 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355501.P13749043762454046737

/-! ## A355501.P16682550461974693461

`record[gcd(A106800(n), A187105(n+4))]`
-/

namespace A355501.P16682550461974693461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106800 n) (A187105 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355501.P16682550461974693461

/-! ## A355501.P1268731342155993509

`record[gcd(A008290(n), A187105(n+5))]`
-/

namespace A355501.P1268731342155993509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A187105 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355501.P1268731342155993509

/-!
# A355503: Total number of m-tuples (p_1, p_2, ..., p_m) of Dyck paths of semilength n-m, such that each p_i is never below p_{i-1} for m=0..n.

The programs for A355503, there is no canonical definition to state claims against.
-/

/-! ## A355503.P15974345702340418619

`A342366(A327288(n))`
-/

namespace A355503.P15974345702340418619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342366 (A327288 (n + 15)).toNat

end

end A355503.P15974345702340418619

/-! ## A355503.P682636604623155333

`A023193(A135881(n))+n`
-/

namespace A355503.P682636604623155333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A135881 n).toNat + (n : ℤ)

end

end A355503.P682636604623155333

/-! ## A355503.P4312237277482215025

`A023193(A197772(n))+n`
-/

namespace A355503.P4312237277482215025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A197772 n).toNat + (n : ℤ)

end

end A355503.P4312237277482215025

/-!
# A355504: Lexicographically earliest sequence of distinct nonnegative integers such that for any n >= 0, among the decimal digits of n and a(n) (counted with multiplicity) there are as many even digits as odd digits.

The programs for A355504, there is no canonical definition to state claims against.
-/

/-! ## A355504.P9677035225070974761

`A152208(n)-A152228(A122890(2*n))`
-/

namespace A355504.P9677035225070974761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152208 n - A152228 (A122890 (2 * n)).toNat

end

end A355504.P9677035225070974761

/-! ## A355504.P1352023647527649168

`xor(A247143(n), A353859(A324424(n+1)))`
-/

namespace A355504.P1352023647527649168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A247143 n) (A353859 (A324424 (n + 1)).toNat)

end

end A355504.P1352023647527649168

/-! ## A355504.P1556099130300735218

`xor(1, lt[n, A338992(2*(n+1))])`
-/

namespace A355504.P1556099130300735218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338992 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A355504.P1556099130300735218

/-! ## A355504.P15091606371478602833

`xor(n, A085436(A309864(n)))`
-/

namespace A355504.P15091606371478602833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A085436 (A309864 n).toNat)

end

end A355504.P15091606371478602833

/-! ## A355504.P17178933602332349504

`xor(A002113(n+1), A165633(A103323(2*(n+1))))`
-/

namespace A355504.P17178933602332349504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002113 (n + 1)) (A165633 (A103323 (2 * (n + 1))).toNat)

end

end A355504.P17178933602332349504

/-!
# A355506: a(n) is the least positive integer not occurring earlier in the sequence such that, if a(m) = a(n)+1, then |m - n| >= a(n).

The programs for A355506, there is no canonical definition to state claims against.
-/

/-! ## A355506.P1757350764083047647

`A114112(A101438(n+1))`
-/

namespace A355506.P1757350764083047647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (A101438 (n + 1)).toNat

end

end A355506.P1757350764083047647

/-!
# A355507: Expansion of e.g.f. (1 - x)^(-x^4/24).

The programs for A355507, there is no canonical definition to state claims against.
-/

/-! ## A355507.P10219666176942719557

`A355610(A052905(n+2))`
-/

namespace A355507.P10219666176942719557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355610 (A052905 (n + 2)).toNat

end

end A355507.P10219666176942719557

/-! ## A355507.P15092575015893143563

`A355610(eq[4, A025581(n)])`
-/

namespace A355507.P15092575015893143563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355507.P15092575015893143563

/-! ## A355507.P3927669323047283823

`A355610(A155212(n+1)+3)`
-/

namespace A355507.P3927669323047283823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355610 (A155212 (n + 1) + 3).toNat

end

end A355507.P3927669323047283823

/-! ## A355507.P5772579748739961101

`A355610(A034856(n+4)-3)`
-/

namespace A355507.P5772579748739961101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355610 (A034856 (n + 4) - 3).toNat

end

end A355507.P5772579748739961101

/-! ## A355507.P6184844583021563159

`A355610(eq[4, A193592(n+1)])`
-/

namespace A355507.P6184844583021563159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355507.P6184844583021563159

/-!
# A355508: E.g.f. satisfies log(A(x)) = x^2 * (exp(x * A(x)) - 1) * A(x).

The programs for A355508, there is no canonical definition to state claims against.
-/

/-! ## A355508.P11263797654379050406

`A362892(n)+A004525(A052785(n))`
-/

namespace A355508.P11263797654379050406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362892 n + A004525 (A052785 n).toNat

end

end A355508.P11263797654379050406

/-! ## A355508.P14060137479886693771

`A371304(n)+A004525(A052785(n))`
-/

namespace A355508.P14060137479886693771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371304 n + A004525 (A052785 n).toNat

end

end A355508.P14060137479886693771

/-! ## A355508.P16830518531432336190

`A052785(n)+A004525(A375662(n))`
-/

namespace A355508.P16830518531432336190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052785 n + A004525 (A375662 n).toNat

end

end A355508.P16830518531432336190

/-!
# A355509: Peaceable coexisting armies of knights: a(n) is the maximum number m such that m white knights and m black knights can coexist on an n X n chessboard without attacking each other.

The programs for A355509, there is no canonical definition to state claims against.
-/

/-! ## A355509.P8872344053889997466

`A004526(A034793(n+1))+A004275(n)`
-/

namespace A355509.P8872344053889997466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A034793 (n + 1)).toNat + A004275 n

end

end A355509.P8872344053889997466

/-! ## A355509.P4969812794484563099

`record[and(A353661(n), A376753(n+1))]`
-/

namespace A355509.P4969812794484563099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A353661 n) (A376753 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355509.P4969812794484563099

/-! ## A355509.P3037095420612242731

`A356254(n+1)+A188014(A002805(n+1))`
-/

namespace A355509.P3037095420612242731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356254 (n + 1) + A188014 (A002805 (n + 1)).toNat

end

end A355509.P3037095420612242731

/-! ## A355509.P11505116244299157244

`∑[A331410(A307132(n+1)+A069491(n+1))]`
-/

namespace A355509.P11505116244299157244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A307132 (n + 1) + A069491 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355509.P11505116244299157244

/-! ## A355509.P17606277144916193049

`A113512(A136484(n+1))`
-/

namespace A355509.P17606277144916193049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113512 (A136484 (n + 1)).toNat

end

end A355509.P17606277144916193049

/-!
# A355510: a(n) is the number of monic polynomials of degree n over GF(7) without linear factors.

The programs for A355510, there is no canonical definition to state claims against.
-/

/-! ## A355510.P351521474002737971

`7*A079952(A002110(n))`
-/

namespace A355510.P351521474002737971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A079952 (A002110 n).toNat

end

end A355510.P351521474002737971

/-!
# A355512: Sum of numerator and denominator in the convergents of the approximation of log(2)/log(3) by a continued fraction.

The programs for A355512, there is no canonical definition to state claims against.
-/

/-! ## A355512.P5455458952995965194

`A005664(n)+A005663(n)`
-/

namespace A355512.P5455458952995965194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005664 n + A005663 n

end

end A355512.P5455458952995965194

/-! ## A355512.P11954958772666203823

`A206788(∑[A028507(n)])+A005663(n)`
-/

namespace A355512.P11954958772666203823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A005663 n

end

end A355512.P11954958772666203823

/-!
# A355514: Sum of numerator and denominator in a rational approximation j/k of q = log(2)/log(3), such that q - j/k is a new minimum, i.e., q is approximated from below.

The programs for A355514, there is no canonical definition to state claims against.
-/

/-! ## A355514.P12805547256214753268

`∑[A151570(∏[A098098(n)])]`
-/

namespace A355514.P12805547256214753268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098098 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355514.P12805547256214753268

/-! ## A355514.P6224405841760194848

`∑[A151570(A152359(n+1))]`
-/

namespace A355514.P6224405841760194848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 (A152359 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355514.P6224405841760194848

/-! ## A355514.P1852625866114202215

`∑[A151570(∏[A005245(n+1)])]`
-/

namespace A355514.P1852625866114202215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355514.P1852625866114202215

/-!
# A355515: Sum of numerator and denominator in a rational approximation j/k of q = log(2)/log(3), such that j/k - q is a new minimum, i.e., q is approximated from above.

The programs for A355515, there is no canonical definition to state claims against.
-/

/-! ## A355515.P15508005975545298422

`filter[A355513(n+1), A085242(#)]`
-/

namespace A355515.P15508005975545298422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085242 (f1 j).toNat = 1) n)

end

end A355515.P15508005975545298422

/-!
# A355516: a(n) is the number of distinct integer values of Product_{k=1..n} (2 + 1/t_k) with integers t_k > 1.

The programs for A355516, there is no canonical definition to state claims against.
-/

/-! ## A355516.P3144849465518724094

`A026819(A149578(n+1))`
-/

namespace A355516.P3144849465518724094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A149578 (n + 1)).toNat

end

end A355516.P3144849465518724094

/-! ## A355516.P3714931176844295103

`A383074(A049152(n+1))`
-/

namespace A355516.P3714931176844295103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383074 (A049152 (n + 1)).toNat

end

end A355516.P3714931176844295103

/-! ## A355516.P18091950934590922519

`A349523(A394380(n+1))`
-/

namespace A355516.P18091950934590922519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349523 (A394380 (n + 1)).toNat

end

end A355516.P18091950934590922519

/-!
# A355517: Number of nonisomorphic systems enumerated by A334254; that is, the number of inequivalent closure operators on a set of n elements where all singletons are closed.

The programs for A355517, there is no canonical definition to state claims against.
-/

/-! ## A355517.P15443750828237844060

`A235604(n)+char[1]`
-/

namespace A355517.P15443750828237844060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235604 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A355517.P15443750828237844060

/-! ## A355517.P13317896412803541099

`A251752(n)+A235604(n)`
-/

namespace A355517.P13317896412803541099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251752 n + A235604 n

end

end A355517.P13317896412803541099

/-! ## A355517.P9385959084997142749

`A268643(n)+A235604(n)`
-/

namespace A355517.P9385959084997142749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n + A235604 n

end

end A355517.P9385959084997142749

/-!
# A355518: Primes that cannot be represented as 2*p - q where p, q and 2*p^2 - q^2 are prime.

The programs for A355518, there is no canonical definition to state claims against.
-/

/-! ## A355518.P4636450686568443261

`A215813(A087830(n))`
-/

namespace A355518.P4636450686568443261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215813 (A087830 n).toNat

end

end A355518.P4636450686568443261

/-! ## A355518.P7006341158821821464

`A215813(A107586(n))`
-/

namespace A355518.P7006341158821821464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215813 (A107586 n).toNat

end

end A355518.P7006341158821821464

/-! ## A355518.P5295508312065017228

`A339817(A325094(n))`
-/

namespace A355518.P5295508312065017228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339817 (A325094 n).toNat

end

end A355518.P5295508312065017228

/-! ## A355518.P167493241219070422

`A079150(A059096(n+1))`
-/

namespace A355518.P167493241219070422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079150 (A059096 (n + 1)).toNat

end

end A355518.P167493241219070422

/-!
# A355519: Number of valid brackets in an n-round tournament.

The programs for A355519, there is no canonical definition to state claims against.
-/

/-! ## A355519.P1001183934257381197

`A216433(n!)+n`
-/

namespace A355519.P1001183934257381197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216433 (Nat.factorial n) + (n : ℤ)

end

end A355519.P1001183934257381197

/-!
# A355520: Number of length-n binary strings having a string attractor of size at most 2.

The programs for A355520, there is no canonical definition to state claims against.
-/

/-! ## A355520.P15161091131918036514

`A339668(n+1)+2`
-/

namespace A355520.P15161091131918036514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339668 (n + 1) + 2

end

end A355520.P15161091131918036514

/-! ## A355520.P8312261710893561418

`A111650(A000961(ceil(17^(n/3))))`
-/

namespace A355520.P8312261710893561418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (A000961 ⌈(17 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉.toNat).toNat

end

end A355520.P8312261710893561418

/-! ## A355520.P8178884838948244392

`A179874(floor(2^(n-1))+1)+1`
-/

namespace A355520.P8178884838948244392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179874 (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat + 1

end

end A355520.P8178884838948244392

/-!
# A355522: Triangle read by rows where T(n,k) is the number of reversed integer partitions of n with maximal difference k, if singletons have maximal difference 0.

The programs for A355522, there is no canonical definition to state claims against.
-/

/-! ## A355522.P2556481688130503089

`A238710(n+1)+char[∑[n]]`
-/

namespace A355522.P2556481688130503089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238710 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A355522.P2556481688130503089

/-! ## A355522.P3192059189406088676

`A238353(lt[1, A025581(n)])`
-/

namespace A355522.P3192059189406088676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A355522.P3192059189406088676

/-! ## A355522.P1740229544454394585

`A238353(lt[1, A061554(n)])`
-/

namespace A355522.P1740229544454394585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A355522.P1740229544454394585

/-! ## A355522.P480219777491065611

`A238353(lt[1, A067176(n)])`
-/

namespace A355522.P480219777491065611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A355522.P480219777491065611

/-! ## A355522.P1718492823981191092

`A238353(lt[1, A079216(n)])`
-/

namespace A355522.P1718492823981191092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A355522.P1718492823981191092

/-! ## A355522.P16923640323994250474

`A238353(lt[2, A130321(n)])`
-/

namespace A355522.P16923640323994250474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A355522.P16923640323994250474

/-! ## A355522.P2546340318104387167

`A238353(lt[3, A107884(n)])`
-/

namespace A355522.P2546340318104387167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A355522.P2546340318104387167

/-! ## A355522.P16518591926528229843

`A238353(lt[1, A007318(n+1)])`
-/

namespace A355522.P16518591926528229843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A355522.P16518591926528229843

/-! ## A355522.P1274955405634897734

`A238353(lt[1, A026747(n+1)])`
-/

namespace A355522.P1274955405634897734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A355522.P1274955405634897734

/-! ## A355522.P6048448114677526215

`A238353(lt[1, A048570(n+1)])`
-/

namespace A355522.P6048448114677526215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A355522.P6048448114677526215

/-!
# A355523: Number of distinct differences between adjacent prime indices of n.

The programs for A355523, there is no canonical definition to state claims against.
-/

/-! ## A355523.P9531385198841002173

`A001221(A325351(n+1)/A020639(n+1))`
-/

namespace A355523.P9531385198841002173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A325351 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A355523.P9531385198841002173

/-! ## A355523.P12932904624537315066

`A001221(ceil(A325351(n+1)/A074828(n+1)))`
-/

namespace A355523.P12932904624537315066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌈(A325351 (n + 1) : ℚ) / (A074828 (n + 1) : ℚ)⌉.toNat

end

end A355523.P12932904624537315066

/-! ## A355523.P9706424733327461771

`A001222(∏{p}[A325351(n+1)/A020639(n+1), #])`
-/

namespace A355523.P9706424733327461771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325351 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A355523.P9706424733327461771

/-! ## A355523.P6196190069785162487

`A001221(A325351(n+1)/A074828((n+1)²))`
-/

namespace A355523.P6196190069785162487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A325351 (n + 1) : ℚ) / (A074828 ((n + 1) ^ 2) : ℚ))).toNat

end

end A355523.P6196190069785162487

/-! ## A355523.P2895879884431884795

`∑{e}[A325351(n+1)/A074828((n+1)²), A069777(#)]`
-/

namespace A355523.P2895879884431884795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325351 (n + 1) : ℚ) / (A074828 ((n + 1) ^ 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A069777 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A355523.P2895879884431884795

/-! ## A355523.P13658732991985855087

`A001221(A325351(n+1)/A014673((n+1)²))`
-/

namespace A355523.P13658732991985855087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A325351 (n + 1) : ℚ) / (A014673 ((n + 1) ^ 2) : ℚ))).toNat

end

end A355523.P13658732991985855087

/-! ## A355523.P4255003487259774313

`∑{e}[A325351(n+1)/A014673((n+1)²), A279409(#)]`
-/

namespace A355523.P4255003487259774313
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325351 (n + 1) : ℚ) / (A014673 ((n + 1) ^ 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A279409 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A355523.P4255003487259774313

/-! ## A355523.P17471425599850125249

`∑{p}[A325352(A348717(n+1)), A325352(#)]`
-/

namespace A355523.P17471425599850125249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325352 (A348717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A325352 p

end

end A355523.P17471425599850125249

/-! ## A355523.P2672041867591087285

`A001221(A325352(n+1))`
-/

namespace A355523.P2672041867591087285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A325352 (n + 1)).toNat

end

end A355523.P2672041867591087285

/-! ## A355523.P7215955419503513122

`∑{p}[A325352(n+1), A001222(#)]`
-/

namespace A355523.P7215955419503513122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A355523.P7215955419503513122

/-!
# A355524: Minimal difference between adjacent prime indices of n > 1, or 0 if n is prime.

The programs for A355524, there is no canonical definition to state claims against.
-/

/-! ## A355524.P9997501154888348518

`A297173(A385212(n+2))`
-/

namespace A355524.P9997501154888348518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (A385212 (n + 2)).toNat

end

end A355524.P9997501154888348518

/-! ## A355524.P7467145296268889411

`A008683(n+2)²*A297173(n+2)`
-/

namespace A355524.P7467145296268889411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2) ^ 2 * A297173 (n + 2)

end

end A355524.P7467145296268889411

/-! ## A355524.P3399383150911257222

`A091064(A322994(n+2))`
-/

namespace A355524.P3399383150911257222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 (A322994 (n + 2)).toNat

end

end A355524.P3399383150911257222

/-! ## A355524.P15311954177898880779

`A355525(n+2)%∑[∑{e}[n+1, #]!%2]`
-/

namespace A355524.P15311954177898880779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355525 (n + 2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A355524.P15311954177898880779

/-! ## A355524.P8198253387532802742

`A355525(n+2)%A375277(n)`
-/

namespace A355524.P8198253387532802742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355525 (n + 2)) (A375277 n)

end

end A355524.P8198253387532802742

/-! ## A355524.P4989056084600290181

`A355525(n+2)-A049084(n+2)`
-/

namespace A355524.P4989056084600290181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355525 (n + 2) - A049084 (n + 2)

end

end A355524.P4989056084600290181

/-! ## A355524.P13269597423066979717

`A244063(n+2)*A355525(n+2)`
-/

namespace A355524.P13269597423066979717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244063 (n + 2) * A355525 (n + 2)

end

end A355524.P13269597423066979717

/-! ## A355524.P12591576293509010010

`A261447(n+2)*A355525(n+2)`
-/

namespace A355524.P12591576293509010010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261447 (n + 2) * A355525 (n + 2)

end

end A355524.P12591576293509010010

/-! ## A355524.P4654827325069751850

`lcm(A056051(n+2), A355525(n+2))`
-/

namespace A355524.P4654827325069751850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056051 (n + 2)) (A355525 (n + 2))

end

end A355524.P4654827325069751850

/-! ## A355524.P15111025743812121645

`A286470(n+2)-A286470(A325352(n+2))`
-/

namespace A355524.P15111025743812121645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (n + 2) - A286470 (A325352 (n + 2)).toNat

end

end A355524.P15111025743812121645

/-!
# A355525: Minimal difference between adjacent prime indices of n, or k if n is the k-th prime.

The programs for A355525, there is no canonical definition to state claims against.
-/

/-! ## A355525.P14430895239666954672

`A355524(n+2)+A049084(n+2)`
-/

namespace A355525.P14430895239666954672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355524 (n + 2) + A049084 (n + 2)

end

end A355525.P14430895239666954672

/-! ## A355525.P9486651721876978296

`A241917(A157488(n+2))`
-/

namespace A355525.P9486651721876978296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A157488 (n + 2)).toNat

end

end A355525.P9486651721876978296

/-! ## A355525.P3311445010855304391

`A241917(A308360(n+2))`
-/

namespace A355525.P3311445010855304391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A308360 (n + 2)).toNat

end

end A355525.P3311445010855304391

/-! ## A355525.P1609678339038416568

`A065334(A243052(n+2))`
-/

namespace A355525.P1609678339038416568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065334 (A243052 (n + 2)).toNat

end

end A355525.P1609678339038416568

/-! ## A355525.P3517177806767240546

`A387111(A066759(n+2))`
-/

namespace A355525.P3517177806767240546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387111 (A066759 (n + 2)).toNat

end

end A355525.P3517177806767240546

/-!
# A355526: Maximal difference between adjacent prime indices of n, or k if n is the k-th prime.

The programs for A355526, there is no canonical definition to state claims against.
-/

/-! ## A355526.P12672772190107510323

`A286470(n+2)+A049084(n+2)`
-/

namespace A355526.P12672772190107510323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (n + 2) + A049084 (n + 2)

end

end A355526.P12672772190107510323

/-! ## A355526.P14462496920828173347

`A243056(n+2)+A286470(n+2)-A243055(n+2)`
-/

namespace A355526.P14462496920828173347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (n + 2) + (A286470 (n + 2) - A243055 (n + 2))

end

end A355526.P14462496920828173347

/-! ## A355526.P14865802681678251240

`gcd(A241917(A157488(n+2)), A243056(n+2))`
-/

namespace A355526.P14865802681678251240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A241917 (A157488 (n + 2)).toNat) (A243056 (n + 2))

end

end A355526.P14865802681678251240

/-! ## A355526.P17976898790352268469

`A243056(A061537(n+2))`
-/

namespace A355526.P17976898790352268469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (A061537 (n + 2)).toNat

end

end A355526.P17976898790352268469

/-! ## A355526.P2357730461580871160

`A243056(A062509(n+2))`
-/

namespace A355526.P2357730461580871160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (A062509 (n + 2)).toNat

end

end A355526.P2357730461580871160

/-!
# A355527: Squarefree numbers having at least one pair of consecutive prime factors. Numbers n such that the minimal difference between adjacent prime indices of n is 1.

The programs for A355527, there is no canonical definition to state claims against.
-/

/-! ## A355527.P3886169282853721048

`record[A007913(A104210(n+1))]`
-/

namespace A355527.P3886169282853721048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A104210 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355527.P3886169282853721048

/-! ## A355527.P16354096898995928156

`record[A007947(A104210(n+2))]`
-/

namespace A355527.P16354096898995928156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A104210 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355527.P16354096898995928156

/-! ## A355527.P12477365665434615996

`filter[A104210(n+1), A008966(#)]`
-/

namespace A355527.P12477365665434615996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A355527.P12477365665434615996

/-! ## A355527.P18155352163463039797

`filter[A000469(n+1), A296210(#)]`
-/

namespace A355527.P18155352163463039797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A355527.P18155352163463039797

/-! ## A355527.P11834619100427879257

`filter[A005117(n+1), A296210(#)]`
-/

namespace A355527.P11834619100427879257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A355527.P11834619100427879257

/-! ## A355527.P12682984776494945820

`filter[A087249(n+1), A296210(#)]`
-/

namespace A355527.P12682984776494945820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A355527.P12682984776494945820

/-! ## A355527.P15410101602512593549

`filter[A120944(n+1), A296210(#)]`
-/

namespace A355527.P15410101602512593549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A355527.P15410101602512593549

/-! ## A355527.P13995399805916465551

`filter[A144338(n+1), A296210(#)]`
-/

namespace A355527.P13995399805916465551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A355527.P13995399805916465551

/-! ## A355527.P3131498968202411554

`filter[A104210(n+1), A354819(#)]`
-/

namespace A355527.P3131498968202411554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A355527.P3131498968202411554

/-! ## A355527.P13446372281623059705

`filter[A388427(n+1), A296210(#)]`
-/

namespace A355527.P13446372281623059705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A355527.P13446372281623059705

/-!
# A355528: Minimal difference between adjacent 0-prepended prime indices of n > 1.

The programs for A355528, there is no canonical definition to state claims against.
-/

/-! ## A355528.P15464071522070286413

`val(A122111(n+2), A046523(n+2))`
-/

namespace A355528.P15464071522070286413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A122111 (n + 2)).toNat (A046523 (n + 2)).toNat

end

end A355528.P15464071522070286413

/-! ## A355528.P18042118254313233792

`val(A122111(n+2), A071364(n+2))`
-/

namespace A355528.P18042118254313233792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A122111 (n + 2)).toNat (A071364 (n + 2)).toNat

end

end A355528.P18042118254313233792

/-! ## A355528.P10740316572338450364

`val(A279351(n+2), A284011(n+2))`
-/

namespace A355528.P10740316572338450364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A279351 (n + 2)).toNat (A284011 (n + 2)).toNat

end

end A355528.P10740316572338450364

/-! ## A355528.P5313206553009793648

`val(A122111(n+2)², A278254(n+2))`
-/

namespace A355528.P5313206553009793648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A122111 (n + 2) ^ 2).toNat (A278254 (n + 2)).toNat

end

end A355528.P5313206553009793648

/-! ## A355528.P13659378530032946328

`A055396(A325390(n+2))-1`
-/

namespace A355528.P13659378530032946328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A325390 (n + 2)).toNat - 1

end

end A355528.P13659378530032946328

/-!
# A355529: Numbers of which it is not possible to choose a different prime factor of each prime index (with multiplicity).

The programs for A355529, there is no canonical definition to state claims against.
-/

/-! ## A355529.P7492615665261357330

`comp[A368100(n+1)-1]+1`
-/

namespace A355529.P7492615665261357330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A355529.P7492615665261357330

/-! ## A355529.P4812404755298721995

`∪[2*(n+1), A355535(n+1)]`
-/

namespace A355529.P4812404755298721995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A355529.P4812404755298721995

/-! ## A355529.P6446041554998268189

`comp[A029578(A368100(n+1))]+1`
-/

namespace A355529.P6446041554998268189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A368100 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A355529.P6446041554998268189

/-! ## A355529.P9181889872072971108

`lt[A356224(n+1), 2*A000001(n)]`
-/

namespace A355529.P9181889872072971108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355529.P9181889872072971108

/-! ## A355529.P13851618564095218924

`lt[A320732(n+1), A000001(A008585(n))]`
-/

namespace A355529.P13851618564095218924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A008585 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355529.P13851618564095218924

/-! ## A355529.P13386911236028916358

`lt[A356224(n+1), A063008(A000001(n))]`
-/

namespace A355529.P13386911236028916358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 (A000001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355529.P13386911236028916358

/-! ## A355529.P5755709701878142089

`lt[A347460(n+1), A000001(3*n)]`
-/

namespace A355529.P5755709701878142089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355529.P5755709701878142089

/-!
# A355530: Squarefree numbers that are either even or have at least one pair of consecutive prime factors. Numbers n such that the minimal difference between adjacent 0-prepended prime indices of n is 1.

The programs for A355530, there is no canonical definition to state claims against.
-/

/-! ## A355530.P3868476969125113015

`eq[floor(n/∏{p}[n+1, #]), A356172(n+1)]+1`
-/

namespace A355530.P3868476969125113015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A355530.P3868476969125113015

/-! ## A355530.P6228538734090364713

`∪[A039956(n+1), A355527(n+1)]`
-/

namespace A355530.P6228538734090364713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A355530.P6228538734090364713

/-! ## A355530.P1910008626994080218

`eq[A048146(n+1), A356172(n+1)]+1`
-/

namespace A355530.P1910008626994080218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A355530.P1910008626994080218

/-! ## A355530.P1735976395445180498

`eq[A336551(n+1), A356172(n+1)]+1`
-/

namespace A355530.P1735976395445180498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A355530.P1735976395445180498

/-! ## A355530.P17342999555860271581

`eq[A030153(A003557(n+1)), A356172(n+1)]+1`
-/

namespace A355530.P17342999555860271581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030153 (A003557 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A355530.P17342999555860271581

/-!
# A355531: Minimal augmented difference between adjacent reversed prime indices of n; a(1) = 0.

The programs for A355531, there is no canonical definition to state claims against.
-/

/-! ## A355531.P17759215599155756308

`A055396(A325351(n+1))`
-/

namespace A355531.P17759215599155756308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A325351 (n + 1)).toNat

end

end A355531.P17759215599155756308

/-! ## A355531.P16864651506663053774

`A325184(∏{p}[A325351(n+1), #])`
-/

namespace A355531.P16864651506663053774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325184 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A355531.P16864651506663053774

/-! ## A355531.P13634782967339293392

`A353931(∏{p}[A325351(n+1), #])`
-/

namespace A355531.P13634782967339293392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353931 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A355531.P13634782967339293392

/-! ## A355531.P160268018990276755

`A055396((n+1)*A354185(n+1))`
-/

namespace A355531.P160268018990276755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 ((n + 1 : ℤ) * A354185 (n + 1)).toNat

end

end A355531.P160268018990276755

/-! ## A355531.P2968399145096833836

`(A286470(2*(n+1))+1)%(n+1)-A243055(A325351(n+1))`
-/

namespace A355531.P2968399145096833836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286470 (2 * (n + 1)) + 1) (n + 1 : ℤ) - A243055 (A325351 (n + 1)).toNat

end

end A355531.P2968399145096833836

/-! ## A355531.P14357196662363037981

`A055396((n+1)*A325352(n+1))`
-/

namespace A355531.P14357196662363037981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 ((n + 1 : ℤ) * A325352 (n + 1)).toNat

end

end A355531.P14357196662363037981

/-! ## A355531.P9810292961704095380

`A055396(lcm(n+1, A325352(n+1)))`
-/

namespace A355531.P9810292961704095380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lcm (n + 1 : ℤ) (A325352 (n + 1)))

end

end A355531.P9810292961704095380

/-! ## A355531.P5284809793531356214

`A055396((n+1)*A241916(A358195(n+1)))`
-/

namespace A355531.P5284809793531356214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 ((n + 1 : ℤ) * A241916 (A358195 (n + 1)).toNat).toNat

end

end A355531.P5284809793531356214

/-! ## A355531.P4357115175755605583

`A286471(A088377(n+1)*A348717(n+1))`
-/

namespace A355531.P4357115175755605583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (A088377 (n + 1) * A348717 (n + 1)).toNat

end

end A355531.P4357115175755605583

/-! ## A355531.P7440530202933716123

`A286471(lcm(A088377(n+1), A348717(n+1)))`
-/

namespace A355531.P7440530202933716123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (Int.lcm (A088377 (n + 1)) (A348717 (n + 1)))

end

end A355531.P7440530202933716123

/-!
# A355532: Maximal augmented difference between adjacent reversed prime indices of n; a(1) = 0.

The programs for A355532, there is no canonical definition to state claims against.
-/

/-! ## A355532.P4394368933749587072

`A286470(2*(n+1))+ceil(abs(sin(n)))`
-/

namespace A355532.P4394368933749587072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (2 * (n + 1)) + ⌈|Real.sin (n : ℝ)|⌉

end

end A355532.P4394368933749587072

/-! ## A355532.P8282614383690582905

`(A286470(2*n+2)+1)%(n+1)`
-/

namespace A355532.P8282614383690582905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286470 (2 * n + 2) + 1) (n + 1 : ℤ)

end

end A355532.P8282614383690582905

/-! ## A355532.P11921820086004583610

`A286470((n+1)*2^∑{e}[n+1, #])-(floor(acot(n))-1)`
-/

namespace A355532.P11921820086004583610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 ((n + 1) * 2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A355532.P11921820086004583610

/-! ## A355532.P8579051449888218313

`A061395(A325351(n+1))`
-/

namespace A355532.P8579051449888218313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A325351 (n + 1)).toNat

end

end A355532.P8579051449888218313

/-! ## A355532.P4663299686954331557

`A367587(∏{p}[A325351(n+1), #])`
-/

namespace A355532.P4663299686954331557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367587 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A355532.P4663299686954331557

/-! ## A355532.P11839219928730097950

`A286470(2*(n+1))-A057428(n)`
-/

namespace A355532.P11839219928730097950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (2 * (n + 1)) - A057428 n

end

end A355532.P11839219928730097950

/-! ## A355532.P12812527967800569258

`A286470(2*n+2)+A057428(2*n)²`
-/

namespace A355532.P12812527967800569258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (2 * n + 2) + A057428 (2 * n) ^ 2

end

end A355532.P12812527967800569258

/-! ## A355532.P11795226967491836212

`A286470(2*(n+1))+1-A049084(2*(n+1))`
-/

namespace A355532.P11795226967491836212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (2 * (n + 1)) + (1 - A049084 (2 * (n + 1)))

end

end A355532.P11795226967491836212

/-! ## A355532.P7470343637841595954

`A355531(n+1)+A243055(A325351(n+1))`
-/

namespace A355532.P7470343637841595954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355531 (n + 1) + A243055 (A325351 (n + 1)).toNat

end

end A355532.P7470343637841595954

/-! ## A355532.P17805032282991434986

`A286470(2*(n+1))+A057428(n)*A057428(n+1)`
-/

namespace A355532.P17805032282991434986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (2 * (n + 1)) + A057428 n * A057428 (n + 1)

end

end A355532.P17805032282991434986

/-!
# A355534: Irregular triangle read by rows where row n lists the augmented differences of the reversed prime indices of n.

The programs for A355534, there is no canonical definition to state claims against.
-/

/-! ## A355534.P17635812898808428677

`A296150(n+1)-A121373(A128372(n+1))`
-/

namespace A355534.P17635812898808428677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (n + 1) - A121373 (A128372 (n + 1)).toNat

end

end A355534.P17635812898808428677

/-! ## A355534.P8187424817461700032

`A296150(n+1)-A347870(A063493(n+3))`
-/

namespace A355534.P8187424817461700032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (n + 1) - A347870 (A063493 (n + 3)).toNat

end

end A355534.P8187424817461700032

/-! ## A355534.P14827856918790031595

`A296150(n+1)-val(A282761(n+1), 70)`
-/

namespace A355534.P14827856918790031595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (n + 1) - (SequenceMachineLib.valuation (A282761 (n + 1)).toNat 70 : ℤ)

end

end A355534.P14827856918790031595

/-! ## A355534.P11514569609475537672

`A296150(n+1)^A164555(n-n*(1-val(∏{p}[n, #], 11)))`
-/

namespace A355534.P11514569609475537672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296150 (n + 1) : ℚ) ^ (A164555 ((n : ℤ) - (n : ℤ) * (1 - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 : ℤ))).toNat : ℤ)

end

end A355534.P11514569609475537672

/-! ## A355534.P15869451199597799043

`A296150(n+1)-A033665(A036627(n))`
-/

namespace A355534.P15869451199597799043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (n + 1) - A033665 (A036627 n).toNat

end

end A355534.P15869451199597799043

/-!
# A355535: Odd numbers of which it is not possible to choose a different prime factor of each prime index.

The programs for A355535, there is no canonical definition to state claims against.
-/

/-! ## A355535.P16077725121183341664

`A005408(eq[0, A367771(n)])`
-/

namespace A355535.P16077725121183341664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355535.P16077725121183341664

/-! ## A355535.P182334830929947754

`∩[2*n+1, A355529(n+1)]`
-/

namespace A355535.P182334830929947754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355535.P182334830929947754

/-! ## A355535.P5903978275973962270

`∩[A355529(n+2), n+1+n]`
-/

namespace A355535.P5903978275973962270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355529 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A355535.P5903978275973962270

/-! ## A355535.P9721304686605013025

`record[A000265(A355529(n+5))]`
-/

namespace A355535.P9721304686605013025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A355529 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355535.P9721304686605013025

/-! ## A355535.P18085013435017204664

`filter[A355529(n+1), A000035(#)]`
-/

namespace A355535.P18085013435017204664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A355535.P18085013435017204664

/-!
# A355536: Irregular triangle read by rows where row n lists the differences between adjacent prime indices of n; if n is prime, row n is empty.

The programs for A355536, there is no canonical definition to state claims against.
-/

/-! ## A355536.P5131704764275149583

`A356958(n+1)-A356936(A220656(3*n+1))`
-/

namespace A355536.P5131704764275149583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356958 (n + 1) - A356936 (A220656 (3 * n + 1)).toNat

end

end A355536.P5131704764275149583

/-! ## A355536.P14998872970108283596

`A026262(n+1)%A297770(A264272(n+1))`
-/

namespace A355536.P14998872970108283596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026262 (n + 1)) (A297770 (A264272 (n + 1)).toNat)

end

end A355536.P14998872970108283596

/-! ## A355536.P10410046329096695171

`A356958(n+1)-A140081(A353402(3*n+1))`
-/

namespace A355536.P10410046329096695171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356958 (n + 1) - A140081 (A353402 (3 * n + 1)).toNat

end

end A355536.P10410046329096695171

/-! ## A355536.P11191113209966429374

`A254107(A052248(3*(n+1)))%A356958(n+1)`
-/

namespace A355536.P11191113209966429374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254107 (A052248 (3 * (n + 1))).toNat) (A356958 (n + 1))

end

end A355536.P11191113209966429374

/-! ## A355536.P12294316634929014309

`A358143(A358154(3*n+4))%A358172(n+1)`
-/

namespace A355536.P12294316634929014309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358143 (A358154 (3 * n + 4)).toNat) (A358172 (n + 1))

end

end A355536.P12294316634929014309

/-!
# A355537: Number of ways to choose a sequence of prime factors, one of each integer from 2 to n.

The programs for A355537, there is no canonical definition to state claims against.
-/

/-! ## A355537.P18380801877384213510

`∏[∏{d}[∑{p}[n+1, gcd(n, #)], #]]`
-/

namespace A355537.P18380801877384213510
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.gcd n p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A355537.P18380801877384213510

/-! ## A355537.P3300554317697273826

`∏[∏{d}[∑{e}[∏{p}[n+1, #], #], #]]`
-/

namespace A355537.P3300554317697273826
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A355537.P3300554317697273826

/-! ## A355537.P2836370036482835686

`∏[∏{p}[∑{e}[∏{p}[n+1, #], #], #]]`
-/

namespace A355537.P2836370036482835686
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A355537.P2836370036482835686

/-! ## A355537.P16909175927188983633

`∏[floor(∑{p}[n+1, root(γ, #)])+1]`
-/

namespace A355537.P16909175927188983633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f2 n), Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A355537.P16909175927188983633

/-! ## A355537.P15604694611056172002

`∏[∏{e}[∏{p}[n+1, 3%#²], #]]`
-/

namespace A355537.P15604694611056172002
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), 3 % p ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A355537.P15604694611056172002

/-!
# A355538: Partial sum of A001221 (number of distinct prime factors) minus 1, ranging from 2 to n.

The programs for A355538, the canonical program `A355538.P14887925225814743849` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355538 has offset 1).

The definition of A355538 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355538.P14887925225814743849

`A013939(n+1)-n`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A355538

/-- `A013939(n+1)-n` -/
def P14887925225814743849.Spec : Prop :=
  ∀ n, P14887925225814743849.a n = A355538 (n + 1)

theorem P14887925225814743849.correct : P14887925225814743849.Spec := by
  intro n
  simp only [A355538, Nat.add_sub_cancel]

end A355538

/-! ## A355538.P648597487720036290

`∑[floor(∑{p}[n+1, root(γ, #)])]`
-/

namespace A355538.P648597487720036290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f2 n), Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355538.P648597487720036290

namespace A355538

/-- `∑[floor(∑{p}[n+1, root(γ, #)])]` -/
def P648597487720036290.Spec : Prop :=
  ∀ n, P648597487720036290.a n = A355538 (n + 1)

end A355538

/-! ## A355538.P7702398545997498864

`∑[∑{p}[n+1, gcd(n, #)]]-n`
-/

namespace A355538.P7702398545997498864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A355538.P7702398545997498864

namespace A355538

/-- `∑[∑{p}[n+1, gcd(n, #)]]-n` -/
def P7702398545997498864.Spec : Prop :=
  ∀ n, P7702398545997498864.a n = A355538 (n + 1)

end A355538

/-! ## A355538.P14367966998881413608

`∑[∑{e}[∏{p}[n+1, #], #]]-n`
-/

namespace A355538.P14367966998881413608
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A355538.P14367966998881413608

namespace A355538

/-- `∑[∑{e}[∏{p}[n+1, #], #]]-n` -/
def P14367966998881413608.Spec : Prop :=
  ∀ n, P14367966998881413608.a n = A355538 (n + 1)

end A355538

/-! ## A355538.P3337863362344319271

`∑[A297155(n+1)]`
-/

namespace A355538.P3337863362344319271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355538.P3337863362344319271

namespace A355538

/-- `∑[A297155(n+1)]` -/
def P3337863362344319271.Spec : Prop :=
  ∀ n, P3337863362344319271.a n = A355538 (n + 1)

end A355538

/-! ## A355538.P6135357356646641366

`∑[log2(A007875(n+1))]`
-/

namespace A355538.P6135357356646641366
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A007875 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355538.P6135357356646641366

namespace A355538

/-- `∑[log2(A007875(n+1))]` -/
def P6135357356646641366.Spec : Prop :=
  ∀ n, P6135357356646641366.a n = (A355538 (n + 1) : ℝ)

end A355538

/-! ## A355538.P9186729416873414055

`∑[A001221(n+1)]-n`
-/

namespace A355538.P9186729416873414055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A355538.P9186729416873414055

namespace A355538

/-- `∑[A001221(n+1)]-n` -/
def P9186729416873414055.Spec : Prop :=
  ∀ n, P9186729416873414055.a n = A355538 (n + 1)

end A355538

/-! ## A355538.P12314233077596938280

`A082186(n+1)-(n+1)`
-/

namespace A355538.P12314233077596938280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (n + 1) - (n + 1 : ℤ)

end

end A355538.P12314233077596938280

namespace A355538

/-- `A082186(n+1)-(n+1)` -/
def P12314233077596938280.Spec : Prop :=
  ∀ n, P12314233077596938280.a n = A355538 (n + 1)

end A355538

/-! ## A355538.P10625234747013723515

`∑[abs(A158210(n+1))]-n`
-/

namespace A355538.P10625234747013723515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158210 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A355538.P10625234747013723515

namespace A355538

/-- `∑[abs(A158210(n+1))]-n` -/
def P10625234747013723515.Spec : Prop :=
  ∀ n, P10625234747013723515.a n = A355538 (n + 1)

end A355538

/-! ## A355538.P11938226873328911194

`A082767(n+1)-Δ[n²]`
-/

namespace A355538.P11938226873328911194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082767 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A355538.P11938226873328911194

namespace A355538

/-- `A082767(n+1)-Δ[n²]` -/
def P11938226873328911194.Spec : Prop :=
  ∀ n, P11938226873328911194.a n = A355538 (n + 1)

end A355538

/-! ## A355538.P11759942558960361667

`∑[log2(A034444(n+1))]-n`
-/

namespace A355538.P11759942558960361667
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A034444 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℝ)

end

end A355538.P11759942558960361667

namespace A355538

/-- `∑[log2(A034444(n+1))]-n` -/
def P11759942558960361667.Spec : Prop :=
  ∀ n, P11759942558960361667.a n = (A355538 (n + 1) : ℝ)

end A355538

/-! ## A355538.P15134219423796619827

`∑[∑{p}[n+1, A001222(#)]]-n`
-/

namespace A355538.P15134219423796619827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A001222 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A355538.P15134219423796619827

namespace A355538

/-- `∑[∑{p}[n+1, A001222(#)]]-n` -/
def P15134219423796619827.Spec : Prop :=
  ∀ n, P15134219423796619827.a n = A355538 (n + 1)

end A355538

/-! ## A355538.P14483580348590947439

`∑[A001222(∏{p}[n+1, #])]-n`
-/

namespace A355538.P14483580348590947439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A355538.P14483580348590947439

namespace A355538

/-- `∑[A001222(∏{p}[n+1, #])]-n` -/
def P14483580348590947439.Spec : Prop :=
  ∀ n, P14483580348590947439.a n = A355538 (n + 1)

end A355538

/-! ## A355538.P11092583166503098189

`∑[∑{p}[n+1, abs(A008683(#))]]-n`
-/

namespace A355538.P11092583166503098189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), |A008683 p|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A355538.P11092583166503098189

namespace A355538

/-- `∑[∑{p}[n+1, abs(A008683(#))]]-n` -/
def P11092583166503098189.Spec : Prop :=
  ∀ n, P11092583166503098189.a n = A355538 (n + 1)

end A355538

/-! ## A355538.P14774270154422268308

`∑[log2(A000005(∏{p}[n+1, #]))]-n`
-/

namespace A355538.P14774270154422268308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000005 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℝ)

end

end A355538.P14774270154422268308

namespace A355538

/-- `∑[log2(A000005(∏{p}[n+1, #]))]-n` -/
def P14774270154422268308.Spec : Prop :=
  ∀ n, P14774270154422268308.a n = (A355538 (n + 1) : ℝ)

end A355538

/-! ## A355538.P17498413795119510987

`∑[A001221(A028234(n+1))]`
-/

namespace A355538.P17498413795119510987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355538.P17498413795119510987

namespace A355538

/-- `∑[A001221(A028234(n+1))]` -/
def P17498413795119510987.Spec : Prop :=
  ∀ n, P17498413795119510987.a n = A355538 (n + 1)

end A355538

/-! ## A355538.P17314606355639687050

`∑[A001221(A051119(n+1))]`
-/

namespace A355538.P17314606355639687050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A051119 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355538.P17314606355639687050

namespace A355538

/-- `∑[A001221(A051119(n+1))]` -/
def P17314606355639687050.Spec : Prop :=
  ∀ n, P17314606355639687050.a n = A355538 (n + 1)

end A355538

/-! ## A355538.P12363395645780063485

`∑[A001221(A052125(n+1))]`
-/

namespace A355538.P12363395645780063485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A052125 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355538.P12363395645780063485

namespace A355538

/-- `∑[A001221(A052125(n+1))]` -/
def P12363395645780063485.Spec : Prop :=
  ∀ n, P12363395645780063485.a n = A355538 (n + 1)

end A355538

/-! ## A355538.P4318029067613767101

`A082767(n+1)%A157142(n)`
-/

namespace A355538.P4318029067613767101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082767 (n + 1)) (A157142 n)

end

end A355538.P4318029067613767101

namespace A355538

/-- `A082767(n+1)%A157142(n)` -/
def P4318029067613767101.Spec : Prop :=
  ∀ n, P4318029067613767101.a n = A355538 (n + 1)

end A355538

/-!
# A355539: a(1) = 1; for n >= 2, a(n) is the earliest occurrence k of the next distinct pair {x(k), y(k)}, where x(k) and y(k) denote the count of zero digits in A355318(k) and A355317(k), respectively.

The programs for A355539, there is no canonical definition to state claims against.
-/

/-! ## A355539.P5150627294097640935

`A001948(A231669(n+1))`
-/

namespace A355539.P5150627294097640935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001948 (A231669 (n + 1)).toNat

end

end A355539.P5150627294097640935

/-!
# A355540: Triangle read by rows. Row n gives the coefficients of Product_{k=0..n} (x - k!) expanded in decreasing powers of x, with row 0 = {1}.

The programs for A355540, there is no canonical definition to state claims against.
-/

/-! ## A355540.P11809961541547867303

`A136457(∑[char[∑[n]]]²-n)`
-/

namespace A355540.P11809961541547867303
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136457 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A355540.P11809961541547867303

/-! ## A355540.P6695373728805834072

`and(-1, A136457(A038722(n+1)))`
-/

namespace A355540.P6695373728805834072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A136457 (A038722 (n + 1)).toNat)

end

end A355540.P6695373728805834072

/-! ## A355540.P17480867209156353763

`A185246(n)+A136457(A038722(n+1))`
-/

namespace A355540.P17480867209156353763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 n + A136457 (A038722 (n + 1)).toNat

end

end A355540.P17480867209156353763

/-! ## A355540.P9991518290788802116

`or(A000007(n), A136457(A038722(n+1)))`
-/

namespace A355540.P9991518290788802116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A136457 (A038722 (n + 1)).toNat)

end

end A355540.P9991518290788802116

/-! ## A355540.P5947558189038011781

`or(A010054(n), A136457(A038722(n+1)))`
-/

namespace A355540.P5947558189038011781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A136457 (A038722 (n + 1)).toNat)

end

end A355540.P5947558189038011781

/-!
# A355541: Numbers k such that A061201(k) is divisible by k.

The programs for A355541, there is no canonical definition to state claims against.
-/

/-! ## A355541.P1258793391341282418

`A362184(A150311(n))`
-/

namespace A355541.P1258793391341282418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362184 (A150311 n).toNat

end

end A355541.P1258793391341282418

/-!
# A355543: Numbers k such that the sum of the squares of the odd divisors of k (A050999) is divisible by k.

The programs for A355543, there is no canonical definition to state claims against.
-/

/-! ## A355543.P5859093548711805262

`A046762(A028260(n+1)%A134639(n+3))`
-/

namespace A355543.P5859093548711805262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046762 (Int.tmod (A028260 (n + 1)) (A134639 (n + 3))).toNat

end

end A355543.P5859093548711805262

/-!
# A355547: Numbers k such that x^2 - s*x + p has noninteger roots with s sum of digits of k and p product of digits of k.

The programs for A355547, there is no canonical definition to state claims against.
-/

/-! ## A355547.P3193087981349390799

`comp[A355497(n+1)]`
-/

namespace A355547.P3193087981349390799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A355547.P3193087981349390799

/-! ## A355547.P6105387523459322763

`∑[A089181(A306437(2*(n+1))!)]`
-/

namespace A355547.P6105387523459322763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089181 (Nat.factorial (A306437 (2 * (n + 1))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355547.P6105387523459322763

/-! ## A355547.P8014130526552129995

`∑[A289508(A006958(n+1))]+1`
-/

namespace A355547.P8014130526552129995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A006958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A355547.P8014130526552129995

/-! ## A355547.P12365506544823015123

`record[A056143(n)%A327023(2*n+1)]+1`
-/

namespace A355547.P12365506544823015123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056143 n) (A327023 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A355547.P12365506544823015123

/-! ## A355547.P13670787820318897845

`∑[A320322(A118174(n)*A246132(n+1))]`
-/

namespace A355547.P13670787820318897845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320322 (A118174 n * A246132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355547.P13670787820318897845

/-!
# A355549: Number of positive integers k with 1 < k < n such that n occurs in the Reverse-and-Multiply trajectory of k.

The programs for A355549, there is no canonical definition to state claims against.
-/

/-! ## A355549.P8769681394255301598

`and(A152025(n+1), A363711(n+1))`
-/

namespace A355549.P8769681394255301598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152025 (n + 1)) (A363711 (n + 1))

end

end A355549.P8769681394255301598

/-! ## A355549.P6635366122171835123

`and(A138870(n+1), A363711(n+1))`
-/

namespace A355549.P6635366122171835123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138870 (n + 1)) (A363711 (n + 1))

end

end A355549.P6635366122171835123

/-! ## A355549.P8738887179760385251

`and(A341532(n), A363711(n+1))`
-/

namespace A355549.P8738887179760385251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A341532 n) (A363711 (n + 1))

end

end A355549.P8738887179760385251

/-! ## A355549.P3316838730513342317

`A379668(A013952(n+1))`
-/

namespace A355549.P3316838730513342317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379668 (A013952 (n + 1)).toNat

end

end A355549.P3316838730513342317

/-!
# A355551: Number of ways to select 3 or more collinear points from a 3 X n grid.

The programs for A355551, the canonical program `A355551.P12152646335618271206` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355551 has offset 1).

The definition of A355551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355551.P12152646335618271206

`3*(2^(n+1)-1-(n+1)*(n+2)/2)+ceil((n+1)²/2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A355551

/-- `3*(2^(n+1)-1-(n+1)*(n+2)/2)+ceil((n+1)²/2)` -/
def P12152646335618271206.Spec : Prop :=
  ∀ n, P12152646335618271206.a n = (A355551 (n + 1) : ℚ)

end A355551

/-! ## A355551.P12008844737014932495

`∑[3*2^n-2-comp[or(2, n)-1]]`
-/

namespace A355551.P12008844737014932495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - 2 - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355551.P12008844737014932495

namespace A355551

/-- `∑[3*2^n-2-comp[or(2, n)-1]]` -/
def P12008844737014932495.Spec : Prop :=
  ∀ n, P12008844737014932495.a n = A355551 (n + 1)

end A355551

/-!
# A355552: Number of ways to select 3 or more collinear points from a 4 X n grid.

The programs for A355552, the canonical program `A355552.P2723832558211808872` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355552 has offset 1).

The definition of A355552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355552.P2723832558211808872

`∑[A366619(n+1)+A125128(n+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A355552

/-- `∑[A366619(n+1)+A125128(n+1)]` -/
def P2723832558211808872.Spec : Prop :=
  ∀ n, P2723832558211808872.a n = A355552 (n + 1)

theorem P2723832558211808872.correct : P2723832558211808872.Spec := by
  intro n
  simp only [A355552, Nat.add_sub_cancel]

end A355552

/-! ## A355552.P6107573647949358027

`A139251(A007582(n+3))-A097700(n+2)`
-/

namespace A355552.P6107573647949358027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (A007582 (n + 3)).toNat - A097700 (n + 2)

end

end A355552.P6107573647949358027

namespace A355552

/-- `A139251(A007582(n+3))-A097700(n+2)` -/
def P6107573647949358027.Spec : Prop :=
  ∀ n, P6107573647949358027.a n = A355552 (n + 1)

end A355552

/-!
# A355553: Number of ways to select 3 or more collinear points from an n X n grid.

The programs for A355553, there is no canonical definition to state claims against.
-/

/-! ## A355553.P2325540560524566025

`A337979(A094420(n))`
-/

namespace A355553.P2325540560524566025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337979 (A094420 n).toNat

end

end A355553.P2325540560524566025

/-!
# A355555: a(n) is the first prime prime(j) such that prime(j) + prime(k) + prime(k+1) is prime for k = j+1..j+n but not k = j+n+1.

The programs for A355555, there is no canonical definition to state claims against.
-/

/-! ## A355555.P140906678783214053

`A053585(A027040(n)+A027009(2*(n+1)))`
-/

namespace A355555.P140906678783214053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A027040 n + A027009 (2 * (n + 1))).toNat

end

end A355555.P140906678783214053

/-!
# A355556: a(n) is the smallest position in the subtract-a-factorial game for which the value of the Sprague-Grundy function (or nim-value) is n.

The programs for A355556, there is no canonical definition to state claims against.
-/

/-! ## A355556.P12156132942283913338

`(a(n-1)+1)!+10` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A355556.P12156132942283913338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 6] fun n a =>
  Nat.factorial (a (n - 1) + 1) + 10

end

end A355556.P12156132942283913338

/-!
# A355557: a(n) is the smallest position in the subtract-a-prime game for which the value of the Sprague-Grundy function (or nim-value) is n.

The programs for A355557, there is no canonical definition to state claims against.
-/

/-! ## A355557.P1218838445469998346

`∑[A004220(A002262(n)!^(n-2))+1]+n-1`
-/

namespace A355557.P1218838445469998346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004220 (SequenceMachineLib.roundAway ((Nat.factorial (A002262 n).toNat : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1)

end

end A355557.P1218838445469998346

/-! ## A355557.P7187375001650981674

`A028900(eq[A001613(n), A174210(n)])`
-/

namespace A355557.P7187375001650981674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A355557.P7187375001650981674

/-!
# A355559: The independence polynomial of the n-folded cube graph evaluated at -1.

The programs for A355559, there is no canonical definition to state claims against.
-/

/-! ## A355559.P7522456511784720346

`∑[A194522(A258970(n))]`
-/

namespace A355559.P7522456511784720346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194522 (A258970 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355559.P7522456511784720346

/-!
# A355560: Number of configurations of the 8 X 2 variant of the sliding block 15-puzzle that require a minimum of n moves to be reached, starting with the empty square in one of the corners.

The programs for A355560, there is no canonical definition to state claims against.
-/

/-! ## A355560.P1969839270541049521

`Δ[A305442(∑[A267267(n+1)])]`
-/

namespace A355560.P1969839270541049521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267267 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305442 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A355560.P1969839270541049521

/-! ## A355560.P2156858201220071302

`Δ[A305442(A267267(n+1)+n)]`
-/

namespace A355560.P2156858201220071302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305442 (A267267 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A355560.P2156858201220071302

/-! ## A355560.P16973127069934619829

`A185265(n)-A243055(A058254(n))`
-/

namespace A355560.P16973127069934619829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185265 n - A243055 (A058254 n).toNat

end

end A355560.P16973127069934619829

/-! ## A355560.P10928339779053576302

`A001462(A001654(n+1)-A001630(n))`
-/

namespace A355560.P10928339779053576302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A001654 (n + 1) - A001630 n).toNat

end

end A355560.P10928339779053576302

/-! ## A355560.P12846957215346041677

`A001590(n+3)-A018843(A000792(n))`
-/

namespace A355560.P12846957215346041677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 3) - A018843 (A000792 n).toNat

end

end A355560.P12846957215346041677

/-!
# A355561: Number of n-tuples (p_1, p_2, ..., p_n) of positive integers such that p_{i-1} <= p_i <= n^(i-1).

The programs for A355561, there is no canonical definition to state claims against.
-/

/-! ## A355561.P16582425555481950508

`A355576(∑[4*n])`
-/

namespace A355561.P16582425555481950508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355561.P16582425555481950508

/-! ## A355561.P7382008392610419346

`A355576(A046092(n))+A326678(n)`
-/

namespace A355561.P7382008392610419346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (A046092 n).toNat + A326678 n

end

end A355561.P7382008392610419346

/-! ## A355561.P2089177167100152798

`A355576(A046092(n))/A226444(n)`
-/

namespace A355561.P2089177167100152798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355576 (A046092 n).toNat : ℚ) / (A226444 n : ℚ)

end

end A355561.P2089177167100152798

/-! ## A355561.P13594317786542427161

`A355576(A046092(n))/A322494(n)`
-/

namespace A355561.P13594317786542427161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355576 (A046092 n).toNat : ℚ) / (A322494 n : ℚ)

end

end A355561.P13594317786542427161

/-! ## A355561.P3742572915354775314

`lcm(A008836(n+1), A355576(A046092(n)))`
-/

namespace A355561.P3742572915354775314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A355576 (A046092 n).toNat)

end

end A355561.P3742572915354775314

/-!
# A355562: Number of blunt polypons with n cells.

The programs for A355562, there is no canonical definition to state claims against.
-/

/-! ## A355562.P16972195908738468814

`A060546(n)-A102382(A138879(n+1))`
-/

namespace A355562.P16972195908738468814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n - A102382 (A138879 (n + 1)).toNat

end

end A355562.P16972195908738468814

/-!
# A355564: Triangle read by rows: T(n,k) = n*(1+2*k) - k*(1+k), n >= 1, 0 <= k <= n-1.

The programs for A355564, the canonical program `A355564.P11483705070734901207` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355564 has offset 1).

The definition of A355564 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1)*(1+2*col(n))-col(n)*(1+col(n))` (program `A355564.P11483705070734901207`, by `A355564.P11483705070734901207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A355564.P11483705070734901207

`(row(n)+1)*(1+2*col(n))-col(n)*(1+col(n))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A355564

/-- `(row(n)+1)*(1+2*col(n))-col(n)*(1+col(n))` -/
def P11483705070734901207.Spec : Prop :=
  ∀ n, P11483705070734901207.a n = A355564 (n + 1)

theorem P11483705070734901207.correct : P11483705070734901207.Spec := by
  intro n
  simp only [A355564, Nat.add_sub_cancel]

end A355564

/-! ## A355564.P11687924517234453357

`Δ[n²]-A055630(n)`
-/

namespace A355564.P11687924517234453357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A055630 n

end

end A355564.P11687924517234453357

namespace A355564

/-- `Δ[n²]-A055630(n)` -/
def P11687924517234453357.Spec : Prop :=
  ∀ n, P11687924517234453357.a n = A355564 (n + 1)

end A355564

/-! ## A355564.P12861010572468968739

`∑[char[∑[n]]]²-A095832(n+1)`
-/

namespace A355564.P12861010572468968739
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A095832 (n + 1)

end

end A355564.P12861010572468968739

namespace A355564

/-- `∑[char[∑[n]]]²-A095832(n+1)` -/
def P12861010572468968739.Spec : Prop :=
  ∀ n, P12861010572468968739.a n = A355564 (n + 1)

end A355564

/-! ## A355564.P14114685631808259585

`A225233(n)+C(comp[∑[n]]-n, 2)-n`
-/

namespace A355564.P14114685631808259585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225233 n + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A355564.P14114685631808259585

namespace A355564

/-- `A225233(n)+C(comp[∑[n]]-n, 2)-n` -/
def P14114685631808259585.Spec : Prop :=
  ∀ n, P14114685631808259585.a n = A355564 (n + 1)

end A355564

/-! ## A355564.P12543216131425012805

`lt[(ceil(sqrt(n))²-n)², n]-A025581(n)²`
-/

namespace A355564.P12543216131425012805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - A025581 n ^ 2

end

end A355564.P12543216131425012805

namespace A355564

/-- `lt[(ceil(sqrt(n))²-n)², n]-A025581(n)²` -/
def P12543216131425012805.Spec : Prop :=
  ∀ n, P12543216131425012805.a n = A355564 (n + 1)

end A355564

/-! ## A355564.P143613484852036843

`A105020(n)-(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A355564.P143613484852036843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A355564.P143613484852036843

namespace A355564

/-- `A105020(n)-(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P143613484852036843.Spec : Prop :=
  ∀ n, P143613484852036843.a n = A355564 (n + 1)

end A355564

/-! ## A355564.P11592015743543590789

`A004201(n+1)-(n+1-C(comp[∑[n]]-n, 2))²`
-/

namespace A355564.P11592015743543590789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1) - ((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2

end

end A355564.P11592015743543590789

namespace A355564

/-- `A004201(n+1)-(n+1-C(comp[∑[n]]-n, 2))²` -/
def P11592015743543590789.Spec : Prop :=
  ∀ n, P11592015743543590789.a n = A355564 (n + 1)

end A355564

/-! ## A355564.P7394668734029930331

`A143844(n)+A101447(n)`
-/

namespace A355564.P7394668734029930331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A101447 n

end

end A355564.P7394668734029930331

namespace A355564

/-- `A143844(n)+A101447(n)` -/
def P7394668734029930331.Spec : Prop :=
  ∀ n, P7394668734029930331.a n = A355564 (n + 1)

theorem P7394668734029930331.correct : P7394668734029930331.Spec := by
  intro n
  simp only [A355564, Nat.add_sub_cancel, A355564.P7394668734029930331.a, A355564.P11483705070734901207.a, A101447, A101447.P4489853314784773764.a, A143844, A143844.P13341456288637914710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355564

/-! ## A355564.P4925207462217492882

`A105020(n)-A025581(n)`
-/

namespace A355564.P4925207462217492882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n - A025581 n

end

end A355564.P4925207462217492882

namespace A355564

/-- `A105020(n)-A025581(n)` -/
def P4925207462217492882.Spec : Prop :=
  ∀ n, P4925207462217492882.a n = A355564 (n + 1)

theorem P4925207462217492882.correct : P4925207462217492882.Spec := by
  intro n
  simp only [A355564, Nat.add_sub_cancel, A355564.P4925207462217492882.a, A355564.P11483705070734901207.a, A025581, A025581.P16112744757063613497.a, A105020, A105020.P13422593106926396251.a, A059036, A059036.P14090632459187506294.a, A081493, A081493.P4701708159405145004.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355564

/-! ## A355564.P5427165804280840088

`A101447(n)+A002262(n)²`
-/

namespace A355564.P5427165804280840088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n + A002262 n ^ 2

end

end A355564.P5427165804280840088

namespace A355564

/-- `A101447(n)+A002262(n)²` -/
def P5427165804280840088.Spec : Prop :=
  ∀ n, P5427165804280840088.a n = A355564 (n + 1)

theorem P5427165804280840088.correct : P5427165804280840088.Spec := by
  intro n
  simp only [A355564, Nat.add_sub_cancel, A355564.P5427165804280840088.a, A355564.P11483705070734901207.a, A002262, A002262.P17823619022233514403.a, A101447, A101447.P4489853314784773764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355564

/-!
# A355568: Numbers k > 4 in a Collatz trajectory reaching k after starting at k-1.

The programs for A355568, there is no canonical definition to state claims against.
-/

/-! ## A355568.P11752667253871111512

`A070993(n+2)+1`
-/

namespace A355568.P11752667253871111512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070993 (n + 2) + 1

end

end A355568.P11752667253871111512

/-! ## A355568.P4003618323484423667

`A004482(A070993(n+2))`
-/

namespace A355568.P4003618323484423667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A070993 (n + 2)).toNat

end

end A355568.P4003618323484423667

/-!
# A355569: Numbers k > 4 in a Collatz trajectory reaching k after starting at k+1.

The programs for A355569, there is no canonical definition to state claims against.
-/

/-! ## A355569.P15258320044627402548

`A070991(n+4)-1`
-/

namespace A355569.P15258320044627402548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070991 (n + 4) - 1

end

end A355569.P15258320044627402548

/-! ## A355569.P3310133742860507197

`eq[A028253(n+1), A187831(n)]`
-/

namespace A355569.P3310133742860507197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187831 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355569.P3310133742860507197

/-! ## A355569.P17930859445969257419

`A094267(A016813(n))+A070991(n+4)`
-/

namespace A355569.P17930859445969257419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A016813 n).toNat + A070991 (n + 4)

end

end A355569.P17930859445969257419

/-! ## A355569.P17400106128221724281

`A085097(A225035(n+1))+A070991(n+4)`
-/

namespace A355569.P17400106128221724281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085097 (A225035 (n + 1)).toNat + A070991 (n + 4)

end

end A355569.P17400106128221724281

/-! ## A355569.P10033009583536265973

`A233583(A070991(n+4))`
-/

namespace A355569.P10033009583536265973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A070991 (n + 4)).toNat

end

end A355569.P10033009583536265973

/-!
# A355571: Complement of A007956: numbers not of the form P(k)/k where P(n) is the product of the divisors of n.

The programs for A355571, there is no canonical definition to state claims against.
-/

/-! ## A355571.P16243432429431325227

`comp[A066729(n+1)-1]+1`
-/

namespace A355571.P16243432429431325227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066729 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A355571.P16243432429431325227

/-! ## A355571.P5741064088029792501

`lt[1, A048793(A032741(n))]`
-/

namespace A355571.P5741064088029792501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A355571.P5741064088029792501

/-! ## A355571.P15730702005837208081

`∪[A007624(n+1), A072498(n+1)]`
-/

namespace A355571.P15730702005837208081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A355571.P15730702005837208081

/-! ## A355571.P301288398633146431

`∪[A068567(n+1), A072498(n+1)]`
-/

namespace A355571.P301288398633146431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A355571.P301288398633146431

/-! ## A355571.P9601263039245036375

`comp[A066729(n+1)%A066721(n+4)]`
-/

namespace A355571.P9601263039245036375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066729 (n + 1)) (A066721 (n + 4))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A355571.P9601263039245036375

/-! ## A355571.P12869308741293591504

`∩[A066423(n+1), comp[A066729(n+1)]]`
-/

namespace A355571.P12869308741293591504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066729 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A355571.P12869308741293591504

/-! ## A355571.P4550763896975950167

`comp[xor((n+1)^(A000005(n+1)/2-1), A166260(n+1))]`
-/

namespace A355571.P4550763896975950167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ ((A000005 (n + 1) : ℚ) / 2 - 1 : ℝ))) (A166260 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A355571.P4550763896975950167

/-!
# A355572: Largest LCM of partitions of n into odd parts.

The programs for A355572, there is no canonical definition to state claims against.
-/

/-! ## A355572.P3629841693501998055

`A051593(A043318(n+1))`
-/

namespace A355572.P3629841693501998055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051593 (A043318 (n + 1)).toNat

end

end A355572.P3629841693501998055

/-! ## A355572.P2513198261976260649

`A051593(A044915(n+1))`
-/

namespace A355572.P2513198261976260649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051593 (A044915 (n + 1)).toNat

end

end A355572.P2513198261976260649

/-! ## A355572.P6480667436076155968

`A051593(A055647(n+1))`
-/

namespace A355572.P6480667436076155968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051593 (A055647 (n + 1)).toNat

end

end A355572.P6480667436076155968

/-! ## A355572.P8474716259940145821

`A051593(A055648(n)+1)`
-/

namespace A355572.P8474716259940145821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051593 (A055648 n + 1).toNat

end

end A355572.P8474716259940145821

/-! ## A355572.P15842421053668226416

`A051593(A161951(n+1))`
-/

namespace A355572.P15842421053668226416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051593 (A161951 (n + 1)).toNat

end

end A355572.P15842421053668226416

/-!
# A355573: Largest LCM of partitions of n with a nonzero even number of even parts.

The programs for A355573, there is no canonical definition to state claims against.
-/

/-! ## A355573.P15258672467323062287

`A000793(gcd(2, A000793(n+2))+n)`
-/

namespace A355573.P15258672467323062287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 (Int.gcd 2 (A000793 (n + 2)) + n)

end

end A355573.P15258672467323062287

/-! ## A355573.P15508910488895654669

`A000793(A176743(2*(n+1))-A010052(n+3))`
-/

namespace A355573.P15508910488895654669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 (A176743 (2 * (n + 1)) - A010052 (n + 3)).toNat

end

end A355573.P15508910488895654669

/-!
# A355576: Number A(n,k) of n-tuples (p_1, p_2, ..., p_n) of positive integers such that p_{i-1} <= p_i <= k^(i-1); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A355576, there is no canonical definition to state claims against.
-/

/-! ## A355576.P12268406935725817794

`A104324(A273712(n))`
-/

namespace A355576.P12268406935725817794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104324 (A273712 n).toNat

end

end A355576.P12268406935725817794

/-! ## A355576.P5725303796246397499

`A048766(5*A273712(n))`
-/

namespace A355576.P5725303796246397499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (5 * A273712 n).toNat

end

end A355576.P5725303796246397499

/-! ## A355576.P5663057167146224945

`A068063(A320955(n)^A108611(n))`
-/

namespace A355576.P5663057167146224945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (SequenceMachineLib.roundAway ((A320955 n : ℚ) ^ (A108611 n : ℤ))).toNat

end

end A355576.P5663057167146224945

/-! ## A355576.P3911250024922396679

`A355262(n)+A070141(A270831(n+4))`
-/

namespace A355576.P3911250024922396679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355262 n + A070141 (A270831 (n + 4)).toNat

end

end A355576.P3911250024922396679

/-! ## A355576.P17060170137735162710

`A347589(A347618(n))%31`
-/

namespace A355576.P17060170137735162710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347589 (A347618 n).toNat) 31

end

end A355576.P17060170137735162710

/-!
# A355578: Numbers whose sum of 3-smooth divisors sets a new record.

The programs for A355578, there is no canonical definition to state claims against.
-/

/-! ## A355578.P2504265603308495662

`∩[A029449(n+1), A114334(n+1)]`
-/

namespace A355578.P2504265603308495662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355578.P2504265603308495662

/-! ## A355578.P5164603216711126387

`∩[A029449(n+1), A262609(n+1)]`
-/

namespace A355578.P5164603216711126387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355578.P5164603216711126387

/-! ## A355578.P16320123958990193670

`∩[A029449(n+1), A291442(n+1)]`
-/

namespace A355578.P16320123958990193670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355578.P16320123958990193670

/-! ## A355578.P17383190136592756575

`∩[A114149(n+1), A344472(n+1)]`
-/

namespace A355578.P17383190136592756575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355578.P17383190136592756575

/-! ## A355578.P3903381780448661009

`∩[A263977(n+1), A344472(n+1)]`
-/

namespace A355578.P3903381780448661009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355578.P3903381780448661009

/-!
# A355579: Numbers k such that A072079(k)/k sets a new record.

The programs for A355579, there is no canonical definition to state claims against.
-/

/-! ## A355579.P15880400245110587948

`record[gcd(A004394(n+1), A309015(n+1))]`
-/

namespace A355579.P15880400245110587948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004394 (n + 1)) (A309015 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355579.P15880400245110587948

/-! ## A355579.P3117987075373963746

`record[gcd(A166981(n+1), A309015(2*(n+2)))]`
-/

namespace A355579.P3117987075373963746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166981 (n + 1)) (A309015 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355579.P3117987075373963746

/-! ## A355579.P11528241869121281737

`record[gcd(A000400(n), A004394(n+1))]`
-/

namespace A355579.P11528241869121281737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000400 n) (A004394 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355579.P11528241869121281737

/-! ## A355579.P3470848992172543331

`record[gcd(A000400(n+3), A166981(n+1))]`
-/

namespace A355579.P3470848992172543331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000400 (n + 3)) (A166981 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355579.P3470848992172543331

/-! ## A355579.P3111823071384949219

`record[gcd(6^n, A077006(n+1))]`
-/

namespace A355579.P3111823071384949219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (6 ^ n : ℤ) (A077006 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355579.P3111823071384949219

/-!
# A355580: Powerful 3-smooth numbers: numbers of the form 2^i * 3^j with i, j != 1.

The programs for A355580, there is no canonical definition to state claims against.
-/

/-! ## A355580.P4589582471150624891

`∩[A001694(n+1), A003586(n+1)]`
-/

namespace A355580.P4589582471150624891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355580.P4589582471150624891

/-! ## A355580.P9574871288979706284

`∩[A001694(n+1), A069353(n+1)+1]`
-/

namespace A355580.P9574871288979706284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355580.P9574871288979706284

/-! ## A355580.P6849029426458344835

`∩[A001694(n+1), A055600(n+1)-1]`
-/

namespace A355580.P6849029426458344835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355580.P6849029426458344835

/-! ## A355580.P1277733281237853477

`∩[A001694(n+1), ceil(A190812(n+1)/2)]`
-/

namespace A355580.P1277733281237853477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190812 (n + 1) : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355580.P1277733281237853477

/-! ## A355580.P15052992756340822953

`∩[A001694(n+1), A186711(A186712(n+1))]`
-/

namespace A355580.P15052992756340822953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186711 (A186712 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355580.P15052992756340822953

/-! ## A355580.P12680415285247404867

`∩[A001694(n+1), A122254(n+1)]`
-/

namespace A355580.P12680415285247404867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355580.P12680415285247404867

/-! ## A355580.P9032828491924786957

`record[A079065(A001694(n+1))]`
-/

namespace A355580.P9032828491924786957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079065 (A001694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355580.P9032828491924786957

/-!
# A355581: Exponentially-odd 3-smooth numbers: number of the form 2^i * 3^j where i and j are either 0 or odd.

The programs for A355581, there is no canonical definition to state claims against.
-/

/-! ## A355581.P12556638221747191057

`∩[A069579(n+1), A083854(n)]`
-/

namespace A355581.P12556638221747191057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355581.P12556638221747191057

/-! ## A355581.P5572327775617632012

`∩[A003586(n+1), A069579(n+1)]`
-/

namespace A355581.P5572327775617632012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355581.P5572327775617632012

/-! ## A355581.P5743381637762331878

`∩[A051037(n+1), A069579(n+1)]`
-/

namespace A355581.P5743381637762331878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355581.P5743381637762331878

/-! ## A355581.P8199581436380151955

`∩[A065108(n+1), A069579(n+1)]`
-/

namespace A355581.P8199581436380151955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355581.P8199581436380151955

/-! ## A355581.P17885851388934127256

`∩[A067947(n+1), A069579(n+1)]`
-/

namespace A355581.P17885851388934127256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355581.P17885851388934127256

/-!
# A355582: a(n) is the largest 5-smooth divisor of n.

The programs for A355582, the canonical program `A355582.P2103007522092691824` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355582 has offset 1).

The definition of A355582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355582.P10723923959077683476

`(n+1)/A165725(n+1)`
-/

namespace A355582.P10723923959077683476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165725 (n + 1) : ℚ)

end

end A355582.P10723923959077683476

namespace A355582

/-- `(n+1)/A165725(n+1)` -/
def P10723923959077683476.Spec : Prop :=
  ∀ n, P10723923959077683476.a n = (A355582 (n + 1) : ℚ)

end A355582

/-! ## A355582.P2103007522092691824

`A006519(n+1)*A038500(n+1)*A060904(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A355582

/-- `A006519(n+1)*A038500(n+1)*A060904(n+1)` -/
def P2103007522092691824.Spec : Prop :=
  ∀ n, P2103007522092691824.a n = A355582 (n + 1)

theorem P2103007522092691824.correct : P2103007522092691824.Spec := by
  intro n
  simp only [A355582, Nat.add_sub_cancel]

end A355582

/-! ## A355582.P4982502261446717398

`2^A007814(n+1)*3^A007949(n+1)*5^A112765(n+1)`
-/

namespace A355582.P4982502261446717398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * (3 : ℚ) ^ (A007949 (n + 1) : ℤ) * (5 : ℚ) ^ (A112765 (n + 1) : ℤ)

end

end A355582.P4982502261446717398

namespace A355582

/-- `2^A007814(n+1)*3^A007949(n+1)*5^A112765(n+1)` -/
def P4982502261446717398.Spec : Prop :=
  ∀ n, P4982502261446717398.a n = (A355582 (n + 1) : ℚ)

end A355582

/-! ## A355582.P8691576483770355266

`2^val(n+1, 2)*3^val(n+1, 3)*5^val(n+1, 5)`
-/

namespace A355582.P8691576483770355266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 3 ^ SequenceMachineLib.valuation (n + 1) 3 * 5 ^ SequenceMachineLib.valuation (n + 1) 5

end

end A355582.P8691576483770355266

namespace A355582

/-- `2^val(n+1, 2)*3^val(n+1, 3)*5^val(n+1, 5)` -/
def P8691576483770355266.Spec : Prop :=
  ∀ n, (P8691576483770355266.a n : ℤ) = A355582 (n + 1)

end A355582

/-! ## A355582.P2460027290142766095

`gcd(n+1, A165851(n+1))`
-/

namespace A355582.P2460027290142766095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A165851 (n + 1))

end

end A355582.P2460027290142766095

namespace A355582

/-- `gcd(n+1, A165851(n+1))` -/
def P2460027290142766095.Spec : Prop :=
  ∀ n, (P2460027290142766095.a n : ℤ) = A355582 (n + 1)

end A355582

/-! ## A355582.P12460988659881858464

`5^val(n+1, 5)*A065331(n+1)`
-/

namespace A355582.P12460988659881858464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℤ) * A065331 (n + 1)

end

end A355582.P12460988659881858464

namespace A355582

/-- `5^val(n+1, 5)*A065331(n+1)` -/
def P12460988659881858464.Spec : Prop :=
  ∀ n, P12460988659881858464.a n = A355582 (n + 1)

end A355582

/-! ## A355582.P14815620810903949716

`A051037(A379005(n+1))`
-/

namespace A355582.P14815620810903949716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (A379005 (n + 1)).toNat

end

end A355582.P14815620810903949716

namespace A355582

/-- `A051037(A379005(n+1))` -/
def P14815620810903949716.Spec : Prop :=
  ∀ n, P14815620810903949716.a n = A355582 (n + 1)

end A355582

/-! ## A355582.P4748571000810095604

`A392597(A242603(n+1))`
-/

namespace A355582.P4748571000810095604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392597 (A242603 (n + 1)).toNat

end

end A355582.P4748571000810095604

namespace A355582

/-- `A392597(A242603(n+1))` -/
def P4748571000810095604.Spec : Prop :=
  ∀ n, P4748571000810095604.a n = A355582 (n + 1)

end A355582

/-! ## A355582.P15336962289989679711

`A060904(n+1)*A065331(n+1)`
-/

namespace A355582.P15336962289989679711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060904 (n + 1) * A065331 (n + 1)

end

end A355582.P15336962289989679711

namespace A355582

/-- `A060904(n+1)*A065331(n+1)` -/
def P15336962289989679711.Spec : Prop :=
  ∀ n, P15336962289989679711.a n = A355582 (n + 1)

theorem P15336962289989679711.correct : P15336962289989679711.Spec := by
  intro n
  simp only [A355582, Nat.add_sub_cancel, A355582.P15336962289989679711.a, A355582.P2103007522092691824.a, A006519, A006519.P10435570611646570274.a, A038500, A038500.P18314557775098268376.a, A060904, A060904.P2539972540385605862.a, A065331, A065331.P8774004989157438008.a, A112765, A112765.P4892120039852414895.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A355582

/-! ## A355582.P3301328985273997174

`A038500(n+1)*A132741(n+1)`
-/

namespace A355582.P3301328985273997174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1) * A132741 (n + 1)

end

end A355582.P3301328985273997174

namespace A355582

/-- `A038500(n+1)*A132741(n+1)` -/
def P3301328985273997174.Spec : Prop :=
  ∀ n, P3301328985273997174.a n = A355582 (n + 1)

end A355582

/-! ## A355582.P2592440817784994829

`(n+1)/A132740(A038502(n+1))`
-/

namespace A355582.P2592440817784994829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A132740 (A038502 (n + 1)).toNat : ℚ)

end

end A355582.P2592440817784994829

namespace A355582

/-- `(n+1)/A132740(A038502(n+1))` -/
def P2592440817784994829.Spec : Prop :=
  ∀ n, P2592440817784994829.a n = (A355582 (n + 1) : ℚ)

end A355582

/-! ## A355582.P9174424669323519616

`(n+1)/A132739(A065330(n+1))`
-/

namespace A355582.P9174424669323519616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A132739 (A065330 (n + 1)).toNat : ℚ)

end

end A355582.P9174424669323519616

namespace A355582

/-- `(n+1)/A132739(A065330(n+1))` -/
def P9174424669323519616.Spec : Prop :=
  ∀ n, P9174424669323519616.a n = (A355582 (n + 1) : ℚ)

end A355582

/-! ## A355582.P11898681800765952146

`(n+1)/A065330(A132740(n+1))`
-/

namespace A355582.P11898681800765952146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065330 (A132740 (n + 1)).toNat : ℚ)

end

end A355582.P11898681800765952146

namespace A355582

/-- `(n+1)/A065330(A132740(n+1))` -/
def P11898681800765952146.Spec : Prop :=
  ∀ n, P11898681800765952146.a n = (A355582 (n + 1) : ℚ)

end A355582

/-! ## A355582.P13380773288294089344

`(n+1)/A214685(A000265(n+1))`
-/

namespace A355582.P13380773288294089344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A214685 (A000265 (n + 1)).toNat : ℚ)

end

end A355582.P13380773288294089344

namespace A355582

/-- `(n+1)/A214685(A000265(n+1))` -/
def P13380773288294089344.Spec : Prop :=
  ∀ n, P13380773288294089344.a n = (A355582 (n + 1) : ℚ)

end A355582

/-! ## A355582.P4862656980692801272

`(n+1)/A214685(A004151(n+1))`
-/

namespace A355582.P4862656980692801272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A214685 (A004151 (n + 1)).toNat : ℚ)

end

end A355582.P4862656980692801272

namespace A355582

/-- `(n+1)/A214685(A004151(n+1))` -/
def P4862656980692801272.Spec : Prop :=
  ∀ n, P4862656980692801272.a n = (A355582 (n + 1) : ℚ)

end A355582

/-! ## A355582.P1084280561039798555

`(n+1)/A214685(A078268(n+1))`
-/

namespace A355582.P1084280561039798555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A214685 (A078268 (n + 1)).toNat : ℚ)

end

end A355582.P1084280561039798555

namespace A355582

/-- `(n+1)/A214685(A078268(n+1))` -/
def P1084280561039798555.Spec : Prop :=
  ∀ n, P1084280561039798555.a n = (A355582 (n + 1) : ℚ)

end A355582

/-! ## A355582.P1717533948942119749

`A392597((n+1)/A268354(n+1))`
-/

namespace A355582.P1717533948942119749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392597 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A268354 (n + 1) : ℚ))).toNat

end

end A355582.P1717533948942119749

namespace A355582

/-- `A392597((n+1)/A268354(n+1))` -/
def P1717533948942119749.Spec : Prop :=
  ∀ n, P1717533948942119749.a n = A355582 (n + 1)

end A355582

/-! ## A355582.P7868521842980028491

`lcm(A038500((n+1)/and(n+1, -(n+1))), A132741(n+1))`
-/

namespace A355582.P7868521842980028491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038500 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat) (A132741 (n + 1))

end

end A355582.P7868521842980028491

namespace A355582

/-- `lcm(A038500((n+1)/and(n+1, -(n+1))), A132741(n+1))` -/
def P7868521842980028491.Spec : Prop :=
  ∀ n, (P7868521842980028491.a n : ℤ) = A355582 (n + 1)

end A355582

/-! ## A355582.P17712224419638202740

`lcm(A038500(A000265(n+1)), A132741(n+1))`
-/

namespace A355582.P17712224419638202740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038500 (A000265 (n + 1)).toNat) (A132741 (n + 1))

end

end A355582.P17712224419638202740

namespace A355582

/-- `lcm(A038500(A000265(n+1)), A132741(n+1))` -/
def P17712224419638202740.Spec : Prop :=
  ∀ n, (P17712224419638202740.a n : ℤ) = A355582 (n + 1)

end A355582

/-! ## A355582.P7864036595096781275

`gcd(n+1, A123761(n))`
-/

namespace A355582.P7864036595096781275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A123761 n)

end

end A355582.P7864036595096781275

namespace A355582

/-- `gcd(n+1, A123761(n))` -/
def P7864036595096781275.Spec : Prop :=
  ∀ n, (P7864036595096781275.a n : ℤ) = A355582 (n + 1)

end A355582

/-!
# A355583: a(n) is the number of the 5-smooth divisors of n.

The programs for A355583, the canonical program `A355583.P10314736474040308667` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355583 has offset 1).

The definition of A355583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355583.P10314736474040308667

`(val(n+1, 2)+1)*(val(n+1, 3)+1)*(val(n+1, 5)+1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A355583

/-- `(val(n+1, 2)+1)*(val(n+1, 3)+1)*(val(n+1, 5)+1)` -/
def P10314736474040308667.Spec : Prop :=
  ∀ n, (P10314736474040308667.a n : ℤ) = A355583 (n + 1)

theorem P10314736474040308667.correct : P10314736474040308667.Spec := by
  intro n
  simp only [A355583, Nat.add_sub_cancel]

end A355583

/-! ## A355583.P18083759759847844783

`A000005(A355582(n+1))`
-/

namespace A355583.P18083759759847844783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A355582 (n + 1)).toNat

end

end A355583.P18083759759847844783

namespace A355583

/-- `A000005(A355582(n+1))` -/
def P18083759759847844783.Spec : Prop :=
  ∀ n, P18083759759847844783.a n = A355583 (n + 1)

end A355583

/-! ## A355583.P18305956922685841030

`(A007814(n+1)+1)*(A007949(n+1)+1)*(A112765(n+1)+1)`
-/

namespace A355583.P18305956922685841030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * (A007949 (n + 1) + 1) * (A112765 (n + 1) + 1)

end

end A355583.P18305956922685841030

namespace A355583

/-- `(A007814(n+1)+1)*(A007949(n+1)+1)*(A112765(n+1)+1)` -/
def P18305956922685841030.Spec : Prop :=
  ∀ n, P18305956922685841030.a n = A355583 (n + 1)

end A355583

/-! ## A355583.P1518101169648177287

`A368543(A392597(n+1))`
-/

namespace A355583.P1518101169648177287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368543 (A392597 (n + 1)).toNat

end

end A355583.P1518101169648177287

namespace A355583

/-- `A368543(A392597(n+1))` -/
def P1518101169648177287.Spec : Prop :=
  ∀ n, P1518101169648177287.a n = A355583 (n + 1)

end A355583

/-! ## A355583.P14339901943355437084

`A368543(A392598(n+1))`
-/

namespace A355583.P14339901943355437084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368543 (A392598 (n + 1)).toNat

end

end A355583.P14339901943355437084

namespace A355583

/-- `A368543(A392598(n+1))` -/
def P14339901943355437084.Spec : Prop :=
  ∀ n, P14339901943355437084.a n = A355583 (n + 1)

end A355583

/-! ## A355583.P10888602457742866535

`A055457(n+1)*A072078(n+1)`
-/

namespace A355583.P10888602457742866535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (n + 1) * A072078 (n + 1)

end

end A355583.P10888602457742866535

namespace A355583

/-- `A055457(n+1)*A072078(n+1)` -/
def P10888602457742866535.Spec : Prop :=
  ∀ n, P10888602457742866535.a n = A355583 (n + 1)

end A355583

/-! ## A355583.P6529745173001033893

`A000005(gcd(n+1, A165851(n+1)))`
-/

namespace A355583.P6529745173001033893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (n + 1 : ℤ) (A165851 (n + 1)))

end

end A355583.P6529745173001033893

namespace A355583

/-- `A000005(gcd(n+1, A165851(n+1)))` -/
def P6529745173001033893.Spec : Prop :=
  ∀ n, P6529745173001033893.a n = A355583 (n + 1)

end A355583

/-! ## A355583.P7029727578867438732

`∑{d}[A355582(n+1), #/A000027(#)]`
-/

namespace A355583.P7029727578867438732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A000027 d : ℚ)

end

end A355583.P7029727578867438732

namespace A355583

/-- `∑{d}[A355582(n+1), #/A000027(#)]` -/
def P7029727578867438732.Spec : Prop :=
  ∀ n, P7029727578867438732.a n = (A355583 (n + 1) : ℚ)

end A355583

/-! ## A355583.P4619844185384480520

`∑{d}[A355582(n+1), #/A228732(#)]`
-/

namespace A355583.P4619844185384480520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A228732 d : ℚ)

end

end A355583.P4619844185384480520

namespace A355583

/-- `∑{d}[A355582(n+1), #/A228732(#)]` -/
def P4619844185384480520.Spec : Prop :=
  ∀ n, P4619844185384480520.a n = (A355583 (n + 1) : ℚ)

end A355583

/-! ## A355583.P17088206689980591085

`∑{d}[A355582(n+1), #/A355582(#)]`
-/

namespace A355583.P17088206689980591085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A355582 d : ℚ)

end

end A355583.P17088206689980591085

namespace A355583

/-- `∑{d}[A355582(n+1), #/A355582(#)]` -/
def P17088206689980591085.Spec : Prop :=
  ∀ n, P17088206689980591085.a n = (A355583 (n + 1) : ℚ)

end A355583

/-! ## A355583.P5944709929078645618

`(A112765(n+1)+1)*A072078(n+1)`
-/

namespace A355583.P5944709929078645618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A112765 (n + 1) + 1) * A072078 (n + 1)

end

end A355583.P5944709929078645618

namespace A355583

/-- `(A112765(n+1)+1)*A072078(n+1)` -/
def P5944709929078645618.Spec : Prop :=
  ∀ n, P5944709929078645618.a n = A355583 (n + 1)

end A355583

/-! ## A355583.P17043075437208925316

`∏{e}[A060904(n+1)*A065331(n+1), #+1]`
-/

namespace A355583.P17043075437208925316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060904 (n + 1) * A065331 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A355583.P17043075437208925316

namespace A355583

/-- `∏{e}[A060904(n+1)*A065331(n+1), #+1]` -/
def P17043075437208925316.Spec : Prop :=
  ∀ n, (P17043075437208925316.a n : ℤ) = A355583 (n + 1)

end A355583

/-! ## A355583.P10233738126956543833

`∏{e}[n+1, #+1]/A035218(A332819(n+1))`
-/

namespace A355583.P10233738126956543833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / (A035218 (A332819 (n + 1)).toNat : ℚ)

end

end A355583.P10233738126956543833

namespace A355583

/-- `∏{e}[n+1, #+1]/A035218(A332819(n+1))` -/
def P10233738126956543833.Spec : Prop :=
  ∀ n, P10233738126956543833.a n = (A355583 (n + 1) : ℚ)

end A355583

/-! ## A355583.P17426728081568734736

`∑{d}[n+1, A055457(#)*A065333((n+1)/#)]`
-/

namespace A355583.P17426728081568734736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055457 d * A065333 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A355583.P17426728081568734736

namespace A355583

/-- `∑{d}[n+1, A055457(#)*A065333((n+1)/#)]` -/
def P17426728081568734736.Spec : Prop :=
  ∀ n, P17426728081568734736.a n = A355583 (n + 1)

end A355583

/-! ## A355583.P14691118747026560094

`Δ[A054519(n)]/A035218(A332819(n+1))`
-/

namespace A355583.P14691118747026560094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A035218 (A332819 (n + 1)).toNat : ℚ)

end

end A355583.P14691118747026560094

namespace A355583

/-- `Δ[A054519(n)]/A035218(A332819(n+1))` -/
def P14691118747026560094.Spec : Prop :=
  ∀ n, P14691118747026560094.a n = (A355583 (n + 1) : ℚ)

end A355583

/-! ## A355583.P2763246764277321372

`A000005(A038500(n+1)*A132741(n+1))`
-/

namespace A355583.P2763246764277321372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A038500 (n + 1) * A132741 (n + 1)).toNat

end

end A355583.P2763246764277321372

namespace A355583

/-- `A000005(A038500(n+1)*A132741(n+1))` -/
def P2763246764277321372.Spec : Prop :=
  ∀ n, P2763246764277321372.a n = A355583 (n + 1)

end A355583

/-! ## A355583.P16249272605107610690

`A000005(n+1)/A000005(A165725(n+1))`
-/

namespace A355583.P16249272605107610690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A000005 (A165725 (n + 1)).toNat : ℚ)

end

end A355583.P16249272605107610690

namespace A355583

/-- `A000005(n+1)/A000005(A165725(n+1))` -/
def P16249272605107610690.Spec : Prop :=
  ∀ n, P16249272605107610690.a n = (A355583 (n + 1) : ℚ)

end A355583

/-! ## A355583.P8416861948996003507

`A001511(n+1)*A051064(n+1)*A055457(n+1)`
-/

namespace A355583.P8416861948996003507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A051064 (n + 1) * A055457 (n + 1)

end

end A355583.P8416861948996003507

namespace A355583

/-- `A001511(n+1)*A051064(n+1)*A055457(n+1)` -/
def P8416861948996003507.Spec : Prop :=
  ∀ n, P8416861948996003507.a n = A355583 (n + 1)

end A355583

/-! ## A355583.P3627897441614812449

`∑{d}[A355582(n+1), A054977(#)]`
-/

namespace A355583.P3627897441614812449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 d

end

end A355583.P3627897441614812449

namespace A355583

/-- `∑{d}[A355582(n+1), A054977(#)]` -/
def P3627897441614812449.Spec : Prop :=
  ∀ n, P3627897441614812449.a n = A355583 (n + 1)

end A355583

/-!
# A355584: a(n) is the sum of the 5-smooth divisors of n.

The programs for A355584, the canonical program `A355584.P17753018622683635004` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355584 has offset 1).

The definition of A355584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355584.P16900847245369046670

`(2^(val(n+1, 2)+1)-1)*(3^(val(n+1, 3)+1)-1)*(5^(val(n+1, 5)+1)-1)/8`
-/

namespace A355584.P16900847245369046670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 ^ (SequenceMachineLib.valuation (n + 1) 2 + 1) : ℤ) - 1) * ((3 ^ (SequenceMachineLib.valuation (n + 1) 3 + 1) : ℤ) - 1) * ((5 ^ (SequenceMachineLib.valuation (n + 1) 5 + 1) : ℤ) - 1) : ℚ) / 8

end

end A355584.P16900847245369046670

namespace A355584

/-- `(2^(val(n+1, 2)+1)-1)*(3^(val(n+1, 3)+1)-1)*(5^(val(n+1, 5)+1)-1)/8` -/
def P16900847245369046670.Spec : Prop :=
  ∀ n, P16900847245369046670.a n = (A355584 (n + 1) : ℚ)

end A355584

/-! ## A355584.P17753018622683635004

`A000203(A355582(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A355584

/-- `A000203(A355582(n+1))` -/
def P17753018622683635004.Spec : Prop :=
  ∀ n, P17753018622683635004.a n = A355584 (n + 1)

theorem P17753018622683635004.correct : P17753018622683635004.Spec := by
  intro n
  simp only [A355584, Nat.add_sub_cancel]

end A355584

/-! ## A355584.P13899061517714567110

`(2^(A007814(n+1)+1)-1)*(3^(A007949(n+1)+1)-1)*(5^(A112765(n+1)+1)-1)/8`
-/

namespace A355584.P13899061517714567110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A007814 (n + 1) + 1 : ℤ) - 1) * ((3 : ℚ) ^ (A007949 (n + 1) + 1 : ℤ) - 1) * ((5 : ℚ) ^ (A112765 (n + 1) + 1 : ℤ) - 1) / 8

end

end A355584.P13899061517714567110

namespace A355584

/-- `(2^(A007814(n+1)+1)-1)*(3^(A007949(n+1)+1)-1)*(5^(A112765(n+1)+1)-1)/8` -/
def P13899061517714567110.Spec : Prop :=
  ∀ n, P13899061517714567110.a n = (A355584 (n + 1) : ℚ)

end A355584

/-! ## A355584.P13543455378612320462

`A113957(A392597(n+1))`
-/

namespace A355584.P13543455378612320462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113957 (A392597 (n + 1)).toNat

end

end A355584.P13543455378612320462

namespace A355584

/-- `A113957(A392597(n+1))` -/
def P13543455378612320462.Spec : Prop :=
  ∀ n, P13543455378612320462.a n = A355584 (n + 1)

end A355584

/-! ## A355584.P13852507690220360808

`A072079(n+1)*A339747(n+1)`
-/

namespace A355584.P13852507690220360808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072079 (n + 1) * A339747 (n + 1)

end

end A355584.P13852507690220360808

namespace A355584

/-- `A072079(n+1)*A339747(n+1)` -/
def P13852507690220360808.Spec : Prop :=
  ∀ n, P13852507690220360808.a n = A355584 (n + 1)

end A355584

/-! ## A355584.P7377296415714164780

`A000203((n+1)/A165725(n+1))`
-/

namespace A355584.P7377296415714164780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A165725 (n + 1) : ℚ))).toNat

end

end A355584.P7377296415714164780

namespace A355584

/-- `A000203((n+1)/A165725(n+1))` -/
def P7377296415714164780.Spec : Prop :=
  ∀ n, P7377296415714164780.a n = A355584 (n + 1)

end A355584

/-! ## A355584.P10608969206055690763

`A000203(gcd(n+1, A165851(n+1)))`
-/

namespace A355584.P10608969206055690763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.gcd (n + 1 : ℤ) (A165851 (n + 1)))

end

end A355584.P10608969206055690763

namespace A355584

/-- `A000203(gcd(n+1, A165851(n+1)))` -/
def P10608969206055690763.Spec : Prop :=
  ∀ n, P10608969206055690763.a n = A355584 (n + 1)

end A355584

/-! ## A355584.P2311936333467985910

`∑{d}[A060904(n+1)*A065331(n+1), #]`
-/

namespace A355584.P2311936333467985910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060904 (n + 1) * A065331 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A355584.P2311936333467985910

namespace A355584

/-- `∑{d}[A060904(n+1)*A065331(n+1), #]` -/
def P2311936333467985910.Spec : Prop :=
  ∀ n, (P2311936333467985910.a n : ℤ) = A355584 (n + 1)

end A355584

/-! ## A355584.P4538162434637656494

`∑{d}[n+1, A065332(#)*A339747((n+1)/#)]`
-/

namespace A355584.P4538162434637656494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065332 d * A339747 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A355584.P4538162434637656494

namespace A355584

/-- `∑{d}[n+1, A065332(#)*A339747((n+1)/#)]` -/
def P4538162434637656494.Spec : Prop :=
  ∀ n, P4538162434637656494.a n = A355584 (n + 1)

end A355584

/-! ## A355584.P17028041293957664169

`A000203(A060904(n+1)*A065331(n+1))`
-/

namespace A355584.P17028041293957664169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A060904 (n + 1) * A065331 (n + 1)).toNat

end

end A355584.P17028041293957664169

namespace A355584

/-- `A000203(A060904(n+1)*A065331(n+1))` -/
def P17028041293957664169.Spec : Prop :=
  ∀ n, P17028041293957664169.a n = A355584 (n + 1)

theorem P17028041293957664169.correct : P17028041293957664169.Spec := by
  intro n
  simp only [A355584, Nat.add_sub_cancel, A355584.P17028041293957664169.a, A355584.P17753018622683635004.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A060904, A060904.P2539972540385605862.a, A065331, A065331.P8774004989157438008.a, A355582, A355582.P2103007522092691824.a, A006519, A006519.P10435570611646570274.a, A038500, A038500.P18314557775098268376.a, A112765, A112765.P4892120039852414895.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A355584

/-! ## A355584.P13948752874405166794

`A038712(n+1)*A080278(n+1)*A339747(n+1)`
-/

namespace A355584.P13948752874405166794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A080278 (n + 1) * A339747 (n + 1)

end

end A355584.P13948752874405166794

namespace A355584

/-- `A038712(n+1)*A080278(n+1)*A339747(n+1)` -/
def P13948752874405166794.Spec : Prop :=
  ∀ n, P13948752874405166794.a n = A355584 (n + 1)

end A355584

/-!
# A355586: T(j,k) are the denominators t in the representation R = s/t + (2*sqrt(3)/Pi)*u/v of the resistance between two nodes separated by the distance (j,k) in an infinite triangular lattice of one-ohm resistors, where T(j,k), j >= 0, 0 <= k <= floor(j/2) is an irregular triangle read by rows.

The programs for A355586, there is no canonical definition to state claims against.
-/

/-! ## A355586.P17588688612374776319

`A064353(A270641(n+1)+A143588(n+1))`
-/

namespace A355586.P17588688612374776319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (A270641 (n + 1) + A143588 (n + 1)).toNat

end

end A355586.P17588688612374776319

/-! ## A355586.P16926956573014719651

`or(A244316(2*n+1), A244316(A080046(n+1)))`
-/

namespace A355586.P16926956573014719651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A244316 (2 * n + 1)) (A244316 (A080046 (n + 1)).toNat)

end

end A355586.P16926956573014719651

/-! ## A355586.P14797777323901042676

`and(3, A032655(A195943(n+1)))`
-/

namespace A355586.P14797777323901042676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A032655 (A195943 (n + 1)).toNat)

end

end A355586.P14797777323901042676

/-! ## A355586.P4499544979001985690

`gcd(3, A255607(A335911(3*n+4)))`
-/

namespace A355586.P4499544979001985690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A255607 (A335911 (3 * n + 4)).toNat)

end

end A355586.P4499544979001985690

/-! ## A355586.P17780696375433181733

`A279340(xor(A227870(n+1), A299265(n+1)))`
-/

namespace A355586.P17780696375433181733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279340 (Int.xor (A227870 (n + 1)) (A299265 (n + 1))).toNat

end

end A355586.P17780696375433181733

/-!
# A355588: T(j,k) are the denominators v in the representation R = s/t + (2*sqrt(3)/Pi)*u/v of the resistance between two nodes separated by the distance (j,k) in an infinite triangular lattice of one-ohm resistors, where T(j,k), j >= 0, 0 <= k <= floor(j/2) is an irregular triangle read by rows.

The programs for A355588, there is no canonical definition to state claims against.
-/

/-! ## A355588.P6489530762655936013

`gcd(35, A204436(A111656(3*n+4)))`
-/

namespace A355588.P6489530762655936013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 35 (A204436 (A111656 (3 * n + 4)).toNat)

end

end A355588.P6489530762655936013

/-! ## A355588.P11921113447438157124

`A291813(∑[A246203(2*(n+1)+∑[n²-1]+n)%2])`
-/

namespace A355588.P11921113447438157124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246203 ((2 * (n + 1) : ℤ) + (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ))).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291813 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355588.P11921113447438157124

/-! ## A355588.P611781353196011192

`A000104(A035481(round(sqrt(n+1))))`
-/

namespace A355588.P611781353196011192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000104 (A035481 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))).toNat).toNat

end

end A355588.P611781353196011192

/-! ## A355588.P17909836455772248551

`A132690(A000142(round(sqrt(n+1))-1))`
-/

namespace A355588.P17909836455772248551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132690 (A000142 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1).toNat).toNat

end

end A355588.P17909836455772248551

/-! ## A355588.P6935780044336206860

`A130378(A069352((round(sqrt(n+1))-1)!))`
-/

namespace A355588.P6935780044336206860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130378 (A069352 (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1).toNat)).toNat

end

end A355588.P6935780044336206860

/-!
# A355590: a(n) = (product of the first n primes) - (sum of the first n primes).

The programs for A355590, the canonical program `A355590.P1276271810179045554` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355590 has offset 0).

The definition of A355590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355590.P1276271810179045554

`A002110(n)-A007504(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A355590

/-- `A002110(n)-A007504(n)` -/
def P1276271810179045554.Spec : Prop :=
  ∀ n, P1276271810179045554.a n = A355590 n

theorem P1276271810179045554.correct : P1276271810179045554.Spec := by
  intro n
  simp only [A355590]

end A355590

/-! ## A355590.P7987690488285801046

`A006862(n)-(A007504(n)+1)`
-/

namespace A355590.P7987690488285801046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 n - (A007504 n + 1)

end

end A355590.P7987690488285801046

namespace A355590

/-- `A006862(n)-(A007504(n)+1)` -/
def P7987690488285801046.Spec : Prop :=
  ∀ n, P7987690488285801046.a n = A355590 n

theorem P7987690488285801046.correct : P7987690488285801046.Spec := by
  intro n
  simp only [A355590, Nat.add_sub_cancel, A355590.P7987690488285801046.a, A355590.P1276271810179045554.a, A002110, A002110.P13704446489392701398.a, A006862, A006862.P2963727191997132236.a, A007504, A007504.P14310834286015847203.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355590

/-! ## A355590.P15704209849805471355

`∏[record[A006530(n+1)]]-A007504(n)`
-/

namespace A355590.P15704209849805471355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A007504 n

end

end A355590.P15704209849805471355

namespace A355590

/-- `∏[record[A006530(n+1)]]-A007504(n)` -/
def P15704209849805471355.Spec : Prop :=
  ∀ n, P15704209849805471355.a n = A355590 n

end A355590

/-! ## A355590.P14328060579721400848

`∏[record[A014963(n+1)]]-A007504(n)`
-/

namespace A355590.P14328060579721400848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A007504 n

end

end A355590.P14328060579721400848

namespace A355590

/-- `∏[record[A014963(n+1)]]-A007504(n)` -/
def P14328060579721400848.Spec : Prop :=
  ∀ n, P14328060579721400848.a n = A355590 n

end A355590

/-! ## A355590.P2155889323056745402

`∏[record[A020639(n+1)]]-A007504(n)`
-/

namespace A355590.P2155889323056745402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A007504 n

end

end A355590.P2155889323056745402

namespace A355590

/-- `∏[record[A020639(n+1)]]-A007504(n)` -/
def P2155889323056745402.Spec : Prop :=
  ∀ n, P2155889323056745402.a n = A355590 n

end A355590

/-! ## A355590.P14085877257956180651

`∏[record[A006530(n+1)]]-(A014284(n+1)-1)`
-/

namespace A355590.P14085877257956180651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A014284 (n + 1) - 1)

end

end A355590.P14085877257956180651

namespace A355590

/-- `∏[record[A006530(n+1)]]-(A014284(n+1)-1)` -/
def P14085877257956180651.Spec : Prop :=
  ∀ n, P14085877257956180651.a n = A355590 n

end A355590

/-! ## A355590.P3889922823277239545

`∏[record[A020639(n+1)]]-(A014284(n+1)-1)`
-/

namespace A355590.P3889922823277239545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A014284 (n + 1) - 1)

end

end A355590.P3889922823277239545

namespace A355590

/-- `∏[record[A020639(n+1)]]-(A014284(n+1)-1)` -/
def P3889922823277239545.Spec : Prop :=
  ∀ n, P3889922823277239545.a n = A355590 n

end A355590

/-! ## A355590.P6571481856568857401

`∏[record[A006530(n+1)]]-(A036439(n+1)-2)`
-/

namespace A355590.P6571481856568857401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A036439 (n + 1) - 2)

end

end A355590.P6571481856568857401

namespace A355590

/-- `∏[record[A006530(n+1)]]-(A036439(n+1)-2)` -/
def P6571481856568857401.Spec : Prop :=
  ∀ n, P6571481856568857401.a n = A355590 n

end A355590

/-! ## A355590.P16605541343662009516

`A066838(Δ[A007504(n)])-A007504(n)`
-/

namespace A355590.P16605541343662009516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066838 (f1 (n + 1) - f1 n).toNat - A007504 n

end

end A355590.P16605541343662009516

namespace A355590

/-- `A066838(Δ[A007504(n)])-A007504(n)` -/
def P16605541343662009516.Spec : Prop :=
  ∀ n, P16605541343662009516.a n = A355590 n

end A355590

/-! ## A355590.P14602917098163921427

`A034386(A182986(n+1))-∑[A182986(n+1)]`
-/

namespace A355590.P14602917098163921427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A182986 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355590.P14602917098163921427

namespace A355590

/-- `A034386(A182986(n+1))-∑[A182986(n+1)]` -/
def P14602917098163921427.Spec : Prop :=
  ∀ n, P14602917098163921427.a n = A355590 n

end A355590

/-!
# A355591: a(n) = (product of the first n odd primes) - (sum of the first n odd primes).

The programs for A355591, there is no canonical definition to state claims against.
-/

/-! ## A355591.P766467161156882031

`A070826(n+1)-(A007504(n+1)-2)`
-/

namespace A355591.P766467161156882031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 1) - (A007504 (n + 1) - 2)

end

end A355591.P766467161156882031

/-! ## A355591.P13761380424523077264

`A070826(n+1)+1-∑[A006005(n+1)]`
-/

namespace A355591.P13761380424523077264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 1) + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355591.P13761380424523077264

/-! ## A355591.P19894007333404039

`∏[A000040(n+1)]/2+1-∑[A006005(n+1)]`
-/

namespace A355591.P19894007333404039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 + 1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A355591.P19894007333404039

/-! ## A355591.P6242691629517914026

`A065091(n+1)+A070826(n+1)-A071148(n+1)`
-/

namespace A355591.P6242691629517914026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (A070826 (n + 1) - A071148 (n + 1))

end

end A355591.P6242691629517914026

/-!
# A355592: Positions of records in A357299: integers m such that the number of divisors whose first digit equals the first digit of m sets a new record.

The programs for A355592, there is no canonical definition to state claims against.
-/

/-! ## A355592.P13917344150937496808

`filter[A357300(n+1), A086299(#)]`
-/

namespace A355592.P13917344150937496808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A355592.P13917344150937496808

/-! ## A355592.P4614318937673610729

`A357300(record[A357299(3*(n+1))])`
-/

namespace A355592.P4614318937673610729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357299 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A355592.P4614318937673610729

/-! ## A355592.P17206708214121234314

`filter[A357300(n+1), A070887(#)]`
-/

namespace A355592.P17206708214121234314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070887 (f1 j).toNat = 1) n)

end

end A355592.P17206708214121234314

/-!
# A355593: a(n) is the number of alternating integers that divide n.

The programs for A355593, there is no canonical definition to state claims against.
-/

/-! ## A355593.P16707923713015588906

`∑{d}[n+1, A228710(#)]`
-/

namespace A355593.P16707923713015588906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A228710 d

end

end A355593.P16707923713015588906

/-! ## A355593.P7086259917128842899

`∏{e}[n+1, #+1]-A084888(2^∑{digits}[n, #%C(n, #)])`
-/

namespace A355593.P7086259917128842899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A084888 (2 ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x % Nat.choose n x).sum)

end

end A355593.P7086259917128842899

/-! ## A355593.P14772972378036882326

`∏{e}[n+1, #+1]-A292374(A276086(3*n+2))`
-/

namespace A355593.P14772972378036882326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A292374 (A276086 (3 * n + 2)).toNat

end

end A355593.P14772972378036882326

/-! ## A355593.P18216424713898975627

`A000005(n+1)-A000035(A110724(n))`
-/

namespace A355593.P18216424713898975627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000035 (A110724 n).toNat

end

end A355593.P18216424713898975627

/-! ## A355593.P12191592948463960406

`A000005(n+1)-A011745(A291944(n))`
-/

namespace A355593.P12191592948463960406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A011745 (A291944 n).toNat

end

end A355593.P12191592948463960406

/-!
# A355594: a(n) is the smallest integer that has exactly n alternating divisors.

The programs for A355594, there is no canonical definition to state claims against.
-/

/-! ## A355594.P17209409876453394023

`A000005(lcm(A143176(n+1), A205504(n)))`
-/

namespace A355594.P17209409876453394023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A143176 (n + 1)) (A205504 n))

end

end A355594.P17209409876453394023

/-! ## A355594.P10503376062726223877

`A005179(A266646(n+1))%A108377(3*n+4)`
-/

namespace A355594.P10503376062726223877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005179 (A266646 (n + 1)).toNat) (A108377 (3 * n + 4))

end

end A355594.P10503376062726223877

/-!
# A355595: Positions of records in A355593: Integers whose number of alternating divisors sets a new record.

The programs for A355595, there is no canonical definition to state claims against.
-/

/-! ## A355595.P5666996395900608683

`A355594(record[A355593(n+1)])`
-/

namespace A355595.P5666996395900608683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355594 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A355595.P5666996395900608683

/-! ## A355595.P1040944585028145668

`record[A129644(n+4)*A317934(2*n+1)]`
-/

namespace A355595.P1040944585028145668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129644 (n + 4) * A317934 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355595.P1040944585028145668

/-! ## A355595.P2259224871794135596

`record[A008480(A253565(2*n))*A047726(2*(n+1))]`
-/

namespace A355595.P2259224871794135596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A253565 (2 * n)).toNat * A047726 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355595.P2259224871794135596

/-! ## A355595.P2812753679154965560

`record[A047726(2*(n+1))*A321648(A163511(2*n))]`
-/

namespace A355595.P2812753679154965560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (2 * (n + 1)) * A321648 (A163511 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355595.P2812753679154965560

/-! ## A355595.P16179472717262734604

`record[A001616(A275142(n+1))]`
-/

namespace A355595.P16179472717262734604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (A275142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355595.P16179472717262734604

/-!
# A355596: Numbers all of whose divisors are alternating numbers (A030141).

The programs for A355596, there is no canonical definition to state claims against.
-/

/-! ## A355596.P4249381185762159965

`eq[A000005(n+1), A355593(n+1)]+1`
-/

namespace A355596.P4249381185762159965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A355596.P4249381185762159965

/-! ## A355596.P8051669625952917546

`∑[A308964(A308928(n)+2)]`
-/

namespace A355596.P8051669625952917546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308964 (A308928 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355596.P8051669625952917546

/-! ## A355596.P6729767542257019592

`record[A109728(2*n)%A122806(n+1)]`
-/

namespace A355596.P6729767542257019592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109728 (2 * n)) (A122806 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355596.P6729767542257019592

/-! ## A355596.P7354775641254670531

`lt[A323633(n), A007413(A018818(3*n+1))]`
-/

namespace A355596.P7354775641254670531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323633 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (A018818 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355596.P7354775641254670531

/-!
# A355597: a(1) = 2. For n > 1, a(n) = smallest prime q such that q^(a(n-1)-1) == 1 (mod a(n-1)^2).

The programs for A355597, there is no canonical definition to state claims against.
-/

/-! ## A355597.P4016709520644445261

`A355658(A000720(a(n-1)))` with `a(0)=2`
-/

namespace A355597.P4016709520644445261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A355658 (A000720 (a (n - 1)).toNat).toNat

end

end A355597.P4016709520644445261

/-! ## A355597.P13498506589129747315

`A249162(∑[n]+1)`
-/

namespace A355597.P13498506589129747315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249162 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A355597.P13498506589129747315

/-! ## A355597.P6634800156989601410

`record[A249162(∑[A169695(n)])]`
-/

namespace A355597.P6634800156989601410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249162 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355597.P6634800156989601410

/-! ## A355597.P976018494570086755

`record[A249162(record[A064578(n+1)])]`
-/

namespace A355597.P976018494570086755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249162 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355597.P976018494570086755

/-!
# A355598: a(1) = 3. For n > 1, a(n) = smallest prime q such that q^(a(n-1)-1) == 1 (mod a(n-1)^2).

The programs for A355598, there is no canonical definition to state claims against.
-/

/-! ## A355598.P10735975449234314432

`A249162(∑[n+1]+2)`
-/

namespace A355598.P10735975449234314432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249162 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A355598.P10735975449234314432

/-! ## A355598.P1269462253699938913

`p?[A167374(A166350(n+1))*A249162(n+1)]`
-/

namespace A355598.P1269462253699938913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (A166350 (n + 1)).toNat * A249162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355598.P1269462253699938913

