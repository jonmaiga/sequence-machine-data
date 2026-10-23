import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C002
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A013300: -arcsinh(log(x+1)-arctanh(x))=1/2!*x^2+6/4!*x^4+105/6!*x^6+3780/8!*x^8...

The programs for A013300, there is no canonical definition to state claims against.
-/

/-! ## A013300.P17829373667873652850

`record[-A013240(A062003(n))]`
-/

namespace A013300.P17829373667873652850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A013240 (A062003 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013300.P17829373667873652850

/-! ## A013300.P5093419466644576892

`-A013240(A001222(∑{digits}[n, 10^#]))`
-/

namespace A013300.P5093419466644576892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A013240 (A001222 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum).toNat

end

end A013300.P5093419466644576892

/-!
# A013301: E.g.f.: arctanh(arctanh(x)-log(x+1)).

The programs for A013301, there is no canonical definition to state claims against.
-/

/-! ## A013301.P12094190699093136089

`record[-A013242(A062003(n))]`
-/

namespace A013301.P12094190699093136089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A013242 (A062003 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013301.P12094190699093136089

/-! ## A013301.P12664799818247673678

`abs(A013242(A001222(∑{digits}[n, 10^#])))`
-/

namespace A013301.P12664799818247673678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013242 (A001222 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum).toNat|

end

end A013301.P12664799818247673678

/-!
# A013302: Expansion of e.g.f. cosh(log(x+1)-arctanh(x)) (even powers only).

The programs for A013302, there is no canonical definition to state claims against.
-/

/-! ## A013302.P10705492229021815663

`abs(A000246(A004273(n))*A023443(n))`
-/

namespace A013302.P10705492229021815663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000246 (A004273 n).toNat * A023443 n|

end

end A013302.P10705492229021815663

/-! ## A013302.P3976215927760837704

`abs(A000246(A004273(n))*A024000(n))`
-/

namespace A013302.P3976215927760837704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000246 (A004273 n).toNat * A024000 n|

end

end A013302.P3976215927760837704

/-! ## A013302.P2474787911831325602

`A001818(n)/A060747(n)*A023443(n)`
-/

namespace A013302.P2474787911831325602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001818 n : ℚ) / (A060747 n : ℚ) * (A023443 n : ℚ)

end

end A013302.P2474787911831325602

/-! ## A013302.P1519278242780104966

`2*A008683(6*(n+1)²)+A000246(A004273(n))*A023443(n)`
-/

namespace A013302.P1519278242780104966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008683 (6 * (n + 1) ^ 2) + A000246 (A004273 n).toNat * A023443 n

end

end A013302.P1519278242780104966

/-! ## A013302.P17434350382324728895

`A012248(2*n+1)/(2*n-1)*(n-1)`
-/

namespace A013302.P17434350382324728895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012248 (2 * n + 1) : ℚ) / ((2 * n : ℤ) - 1 : ℚ) * ((n : ℤ) - 1 : ℚ)

end

end A013302.P17434350382324728895

/-!
# A013303: sec(log(x+1)-arctanh(x))=1+3/4!*x^4+90/6!*x^6+5145/8!*x^8...

The programs for A013303, there is no canonical definition to state claims against.
-/

/-! ## A013303.P11124510636461950075

`A013244(n*A073756(n+2))`
-/

namespace A013303.P11124510636461950075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013244 ((n : ℤ) * A073756 (n + 2)).toNat

end

end A013303.P11124510636461950075

/-!
# A013304: sech(log(x+1)-arctanh(x))=1-3/4!*x^4-90/6!*x^6-4095/8!*x^8...

The programs for A013304, there is no canonical definition to state claims against.
-/

/-! ## A013304.P11223745921816535274

`(A001147(n)-A233481(n))*A001147(n)`
-/

namespace A013304.P11223745921816535274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001147 n - A233481 n) * A001147 n

end

end A013304.P11223745921816535274

/-!
# A013307: Numerator of [x^n] in the Taylor series arccosh(exp(x) - tan(x)) = x - x^2/6 - x^3/72 - 43*x^4/432 - 221*x^5/10368 - 89513*x^6/2177280 - ...

The programs for A013307, there is no canonical definition to state claims against.
-/

/-! ## A013307.P486142995238890846

`1-A107130(A321057(n))`
-/

namespace A013307.P486142995238890846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A107130 (A321057 n).toNat

end

end A013307.P486142995238890846

/-!
# A013308: Numerator of [x^n] of the Taylor series arccosh(exp(x)-arctan(x)).

The programs for A013308, there is no canonical definition to state claims against.
-/

/-! ## A013308.P4352420348112271740

`A319192(∑[ceil(3^(n-1))])+char[1]+n`
-/

namespace A013308.P4352420348112271740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319192 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (((if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ)

end

end A013308.P4352420348112271740

/-!
# A013309: Expansion of e.g.f.: exp(exp(x)-cos(x))=1+x+3/2!*x^2+8/3!*x^3+29/4!*x^4+112/5!*x^5...

The programs for A013309, there is no canonical definition to state claims against.
-/

/-! ## A013309.P14263305005766774732

`A013319(n)+A013315(n+1)`
-/

namespace A013309.P14263305005766774732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013319 n + A013315 (n + 1)

end

end A013309.P14263305005766774732

/-! ## A013309.P11850576812079027718

`2*A013319(n)-A013468(n)`
-/

namespace A013309.P11850576812079027718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013319 n - A013468 n

end

end A013309.P11850576812079027718

/-! ## A013309.P17894757034145636622

`A013468(n)+2*A013315(n+1)`
-/

namespace A013309.P17894757034145636622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013468 n + 2 * A013315 (n + 1)

end

end A013309.P17894757034145636622

/-! ## A013309.P1530598184627297464

`A000027(A013319(n)+A013319(n)-A013468(n))`
-/

namespace A013309.P1530598184627297464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A013319 n + (A013319 n - A013468 n)).toNat

end

end A013309.P1530598184627297464

/-! ## A013309.P4682915224506093324

`A000027(A013319(n)-(A013468(n)-A013319(n)))`
-/

namespace A013309.P4682915224506093324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A013319 n - (A013468 n - A013319 n)).toNat

end

end A013309.P4682915224506093324

/-!
# A013310: sin(exp(x)-cos(x))=x+2/2!*x^2-12/4!*x^4-68/5!*x^5-208/6!*x^6...

The programs for A013310, there is no canonical definition to state claims against.
-/

/-! ## A013310.P11873819004268763285

`A000005(A134288(n))-A033488(n)`
-/

namespace A013310.P11873819004268763285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A134288 n).toNat - A033488 n

end

end A013310.P11873819004268763285

/-! ## A013310.P11894938585210173721

`A161511(A308876(n))-A112851(n)`
-/

namespace A013310.P11894938585210173721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A308876 n).toNat - A112851 n

end

end A013310.P11894938585210173721

/-!
# A013311: arcsin(exp(x)-cos(x))=x+2/2!*x^2+2/3!*x^3+12/4!*x^4+80/5!*x^5...

The programs for A013311, there is no canonical definition to state claims against.
-/

/-! ## A013311.P18390701323752278348

`A000010(lcm(A166134(n+1)+1, n!))`
-/

namespace A013311.P18390701323752278348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm (A166134 (n + 1) + 1) (Nat.factorial n : ℤ))

end

end A013311.P18390701323752278348

/-! ## A013311.P4412429835848049497

`A052273(A268830(n)+A005329(n))`
-/

namespace A013311.P4412429835848049497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052273 (A268830 n + A005329 n).toNat

end

end A013311.P4412429835848049497

/-!
# A013312: tan(exp(x)-cos(x)) = x + 2/2!*x^2 + 3/3!*x^3 + 24/4!*x^4 + 157/5!*x^5...

The programs for A013312, there is no canonical definition to state claims against.
-/

/-! ## A013312.P4358252670813643376

`A065712(5*A000629(n))`
-/

namespace A013312.P4358252670813643376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 (5 * A000629 n).toNat

end

end A013312.P4358252670813643376

/-! ## A013312.P8839297539699077408

`∩[A048316(n), A058519(n)]`
-/

namespace A013312.P8839297539699077408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058519 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013312.P8839297539699077408

/-!
# A013313: arctan(exp(x)-cos(x))=x+2/2!*x^2-1/3!*x^3-24/4!*x^4-115/5!*x^5...

The programs for A013313, there is no canonical definition to state claims against.
-/

/-! ## A013313.P9061947531018643455

`∑[A122776(8^n)]`
-/

namespace A013313.P9061947531018643455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122776 (8 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013313.P9061947531018643455

/-!
# A013315: Expansion of e.g.f.: sinh(exp(x)-cos(x))=x+2/2!*x^2+2/3!*x^3+12/4!*x^4+72/5!*x^5...

The programs for A013315, there is no canonical definition to state claims against.
-/

/-! ## A013315.P8672808206552078372

`A013309(n)-A013319(n)`
-/

namespace A013315.P8672808206552078372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013309 n - A013319 n

end

end A013315.P8672808206552078372

/-! ## A013315.P3453042220106071933

`A013319(n)-A013468(n)`
-/

namespace A013315.P3453042220106071933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013319 n - A013468 n

end

end A013315.P3453042220106071933

/-! ## A013315.P8346028767236401239

`(A013309(n)-A013468(n))/2`
-/

namespace A013315.P8346028767236401239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013309 n - A013468 n : ℚ) / 2

end

end A013315.P8346028767236401239

/-! ## A013315.P5059789142025549248

`A014682(A013309(n)-A013468(n))`
-/

namespace A013315.P5059789142025549248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A013309 n - A013468 n).toNat

end

end A013315.P5059789142025549248

/-!
# A013317: Expansion of e.g.f.: tanh(exp(x) - cos(x)) = x + (2/2!)*x^2 - (1/3!)*x^3 - (24/4!)*x^4 - (123/5!)*x^5 + ...

The programs for A013317, there is no canonical definition to state claims against.
-/

/-! ## A013317.P8682727930306714243

`record[A376132(n+1)]-A000244(n)`
-/

namespace A013317.P8682727930306714243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000244 n

end

end A013317.P8682727930306714243

/-! ## A013317.P4379279283252329372

`abs(n*xor(n, -1))-A345167(A088354(n))`
-/

namespace A013317.P4379279283252329372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.xor (n : ℤ) (-1)| - A345167 (A088354 n).toNat

end

end A013317.P4379279283252329372

/-!
# A013318: arctanh(exp(x)-cos(x))=x+2/2!*x^2+3/3!*x^3+24/4!*x^4+165/5!*x^5...

The programs for A013318, there is no canonical definition to state claims against.
-/

/-! ## A013318.P2105172936602967785

`5*A004198(5^n)+n`
-/

namespace A013318.P2105172936602967785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A004198 (5 ^ n) + (n : ℤ)

end

end A013318.P2105172936602967785

/-! ## A013318.P931881326152713397

`A051953(A045846(n)+n)`
-/

namespace A013318.P931881326152713397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A045846 n + (n : ℤ)).toNat

end

end A013318.P931881326152713397

/-!
# A013319: E.g.f.: cosh(exp(x)-cos(x))=1+1/2!*x^2+6/3!*x^3+17/4!*x^4+40/5!*x^5...

The programs for A013319, there is no canonical definition to state claims against.
-/

/-! ## A013319.P13424767966559987417

`A013309(n)-A013315(n+1)`
-/

namespace A013319.P13424767966559987417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013309 n - A013315 (n + 1)

end

end A013319.P13424767966559987417

/-! ## A013319.P14971876234234665570

`A013468(n)+A013315(n+1)`
-/

namespace A013319.P14971876234234665570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013468 n + A013315 (n + 1)

end

end A013319.P14971876234234665570

/-! ## A013319.P3096058640641109736

`(A013468(n)+A013309(n))/2`
-/

namespace A013319.P3096058640641109736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013468 n + A013309 n : ℚ) / 2

end

end A013319.P3096058640641109736

/-! ## A013319.P13775476101020523398

`A014682(A013468(n)+A013309(n))`
-/

namespace A013319.P13775476101020523398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A013468 n + A013309 n).toNat

end

end A013319.P13775476101020523398

/-! ## A013319.P17226341579917214845

`A013309(n)-A014682(A013309(n)-A013468(n))`
-/

namespace A013319.P17226341579917214845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013309 n - A014682 (A013309 n - A013468 n).toNat

end

end A013319.P17226341579917214845

/-!
# A013320: sec(exp(x)-cos(x))=1+1/2!*x^2+6/3!*x^3+21/4!*x^4+120/5!*x^5...

The programs for A013320, there is no canonical definition to state claims against.
-/

/-! ## A013320.P7842305429059942158

`A019554(or(1, n)^n)-n`
-/

namespace A013320.P7842305429059942158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (Nat.lor 1 n ^ n) - (n : ℤ)

end

end A013320.P7842305429059942158

/-! ## A013320.P10448411833476994973

`A033677(or(1, n)^n)-n`
-/

namespace A013320.P10448411833476994973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (Nat.lor 1 n ^ n) - (n : ℤ)

end

end A013320.P10448411833476994973

/-!
# A013322: Golomb-type sequence over triangular numbers.

The programs for A013322, there is no canonical definition to state claims against.
-/

/-! ## A013322.P2764267026825700817

`A127739(A287524(8*(n+2)²)+n)`
-/

namespace A013322.P2764267026825700817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (A287524 (8 * (n + 2) ^ 2) + (n : ℤ)).toNat

end

end A013322.P2764267026825700817

/-! ## A013322.P14273587580392819683

`A057944(A163831(n+1)%A340662(n+1))`
-/

namespace A013322.P14273587580392819683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (Int.tmod (A163831 (n + 1)) (A340662 (n + 1))).toNat

end

end A013322.P14273587580392819683

/-! ## A013322.P349909981713657701

`A057944(A163831(n+1))%A196105(2*(n+2))`
-/

namespace A013322.P349909981713657701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057944 (A163831 (n + 1)).toNat) (A196105 (2 * (n + 2)))

end

end A013322.P349909981713657701

/-! ## A013322.P3273303782446457132

`A057944(A163831(n+1))%A059744(n+1)`
-/

namespace A013322.P3273303782446457132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057944 (A163831 (n + 1)).toNat) (A059744 (n + 1))

end

end A013322.P3273303782446457132

/-!
# A013324: Numerator of [x^n] of the Taylor series arccosh(exp(x)-tanh(x)).

The programs for A013324, there is no canonical definition to state claims against.
-/

/-! ## A013324.P13524736335924081717

`A316524(A147880(n)+A000105(2*n))`
-/

namespace A013324.P13524736335924081717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A147880 n + A000105 (2 * n)).toNat

end

end A013324.P13524736335924081717

/-!
# A013325: Numerator of [x^n] in the Taylor series arccosh(exp(x)-arctanh(x))= x-x^2/6-x^3/72 -359*x^4/2160 -1681*x^5/51840 -52981*x^6/435456 -...

The programs for A013325, there is no canonical definition to state claims against.
-/

/-! ## A013325.P15836821519409989019

`A128016(A128000(n+1))-A128045(2*n+1)`
-/

namespace A013325.P15836821519409989019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128016 (A128000 (n + 1)).toNat - A128045 (2 * n + 1)

end

end A013325.P15836821519409989019

/-!
# A013326: Expansion of -(2*x^3-x^2+x-1)/(x^4-3*x^3+3*x^2-3*x+1).

The programs for A013326, the canonical program `A013326.P15575302261830273082` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013326 has offset 0).

The definition of A013326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2-2x^3)/(1-3x+3x^2-3x^3+x^4))` (program `A013326.P15575302261830273082`, by `A013326.P15575302261830273082.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013326.P15575302261830273082

`ogf((1-x+x^2-2x^3)/(1-3x+3x^2-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013326

/-- `ogf((1-x+x^2-2x^3)/(1-3x+3x^2-3x^3+x^4))` -/
def P15575302261830273082.Spec : Prop :=
  ∀ n, P15575302261830273082.a n = A013326 n

theorem P15575302261830273082.correct : P15575302261830273082.Spec := by
  intro n
  simp only [A013326]

end A013326

/-! ## A013326.P14940434361355202706

`3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A013326.P14940434361355202706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A013326.P14940434361355202706

namespace A013326

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` -/
def P14940434361355202706.Spec : Prop :=
  ∀ n, P14940434361355202706.a n = A013326 n

end A013326

/-! ## A013326.P18421861130735302018

`A235963(A005191(n)+n)`
-/

namespace A013326.P18421861130735302018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A005191 n + (n : ℤ)).toNat

end

end A013326.P18421861130735302018

namespace A013326

/-- `A235963(A005191(n)+n)` -/
def P18421861130735302018.Spec : Prop :=
  ∀ n, P18421861130735302018.a n = A013326 n

end A013326

/-! ## A013326.P17220418399791888092

`∑[A325396(A325358(∑[n]))]`
-/

namespace A013326.P17220418399791888092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325396 (A325358 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013326.P17220418399791888092

namespace A013326

/-- `∑[A325396(A325358(∑[n]))]` -/
def P17220418399791888092.Spec : Prop :=
  ∀ n, P17220418399791888092.a n = A013326 n

end A013326

/-!
# A013327: Expansion of e.g.f.: exp(exp(x)-sec(x))=1+x+1/2!*x^2+2/3!*x^3+1/4!*x^4-8/5!*x^5...

The programs for A013327, there is no canonical definition to state claims against.
-/

/-! ## A013327.P9799635040440003474

`A013337(n)+A013333(n)`
-/

namespace A013327.P9799635040440003474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013337 n + A013333 n

end

end A013327.P9799635040440003474

/-! ## A013327.P5708283254574054682

`A013501(n)+2*A013333(n)`
-/

namespace A013327.P5708283254574054682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013501 n + 2 * A013333 n

end

end A013327.P5708283254574054682

/-! ## A013327.P251135424071519645

`2*A013337(n)-A013501(n)`
-/

namespace A013327.P251135424071519645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013337 n - A013501 n

end

end A013327.P251135424071519645

/-! ## A013327.P16242104464230546997

`A013337(n)--A013333(n)%A332168(n)`
-/

namespace A013327.P16242104464230546997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013337 n - Int.tmod (-A013333 n) (A332168 n)

end

end A013327.P16242104464230546997

/-!
# A013329: Expansion of e.g.f. arcsin(exp(x) - sec(x)).

The programs for A013329, there is no canonical definition to state claims against.
-/

/-! ## A013329.P4168739118437581817

`A250002(A000079(n))+A013333(n)`
-/

namespace A013329.P4168739118437581817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (A000079 n).toNat + A013333 n

end

end A013329.P4168739118437581817

/-! ## A013329.P10157721227545846688

`A250002(A056156(n+1))+A013333(n)`
-/

namespace A013329.P10157721227545846688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (A056156 (n + 1)).toNat + A013333 n

end

end A013329.P10157721227545846688

/-! ## A013329.P1028647715747246820

`A176270(2*n)*A265572(A065601(n))`
-/

namespace A013329.P1028647715747246820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 (2 * n) * A265572 (A065601 n).toNat

end

end A013329.P1028647715747246820

/-!
# A013333: sinh(exp(x)-sec(x)) = x + 2/3!*x^3 - 4/4!*x^4 + 12/5!*x^5 - 120/6!*x^6 + ...

The programs for A013333, there is no canonical definition to state claims against.
-/

/-! ## A013333.P7212111381349041503

`A013327(n)-A013337(n)`
-/

namespace A013333.P7212111381349041503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013327 n - A013337 n

end

end A013333.P7212111381349041503

/-! ## A013333.P13381743399987478369

`A013337(n)-A013501(n)`
-/

namespace A013333.P13381743399987478369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013337 n - A013501 n

end

end A013333.P13381743399987478369

/-! ## A013333.P9830092156596382875

`(A013327(n)-A013501(n))/2`
-/

namespace A013333.P9830092156596382875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013327 n - A013501 n : ℚ) / 2

end

end A013333.P9830092156596382875

/-!
# A013337: E.g.f.: cosh(exp(x)-sec(x))=1+1/2!*x^2+5/4!*x^4-20/5!*x^5+37/6!*x^6...

The programs for A013337, there is no canonical definition to state claims against.
-/

/-! ## A013337.P13078543990349472777

`A013501(n)+A013333(n)`
-/

namespace A013337.P13078543990349472777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013501 n + A013333 n

end

end A013337.P13078543990349472777

/-! ## A013337.P15114096016425916662

`A013327(n)-A013333(n)`
-/

namespace A013337.P15114096016425916662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013327 n - A013333 n

end

end A013337.P15114096016425916662

/-! ## A013337.P4350009195287199190

`(A013501(n)+A013327(n))/2`
-/

namespace A013337.P4350009195287199190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013501 n + A013327 n : ℚ) / 2

end

end A013337.P4350009195287199190

/-! ## A013337.P12841332078841608346

`A013327(n)+A013333(n)*A057428(n)`
-/

namespace A013337.P12841332078841608346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013327 n + A013333 n * A057428 n

end

end A013337.P12841332078841608346

/-!
# A013340: arctanh(exp(x)-sech(x))=x+2/2!*x^2+3/3!*x^3+20/4!*x^4+165/5!*x^5...

The programs for A013340, there is no canonical definition to state claims against.
-/

/-! ## A013340.P3628605318120792575

`record[C(n, A002849(n+1))]`
-/

namespace A013340.P3628605318120792575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A002849 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013340.P3628605318120792575

/-! ## A013340.P7001315115562141446

`lcm(n, A039735(ceil(16^(n/3))))`
-/

namespace A013340.P7001315115562141446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A039735 ⌈(16 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉.toNat)

end

end A013340.P7001315115562141446

/-!
# A013341: E.g.f.: exp(sin(x)-log(x+1)).

The programs for A013341, there is no canonical definition to state claims against.
-/

/-! ## A013341.P4144516424763912934

`A002017(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A013341.P4144516424763912934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002017 n - (n : ℤ) * a (n - 1)

end

end A013341.P4144516424763912934

/-! ## A013341.P3377528875445168875

`A013219(n)-A013215(n)`
-/

namespace A013341.P3377528875445168875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013219 n - A013215 n

end

end A013341.P3377528875445168875

/-! ## A013341.P15296738371739583026

`A013219(n)+A013215(n)*A057428(n)`
-/

namespace A013341.P15296738371739583026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013219 n + A013215 n * A057428 n

end

end A013341.P15296738371739583026

/-! ## A013341.P6771099489704537269

`A013219(n)+A013215(n)*A317950(gcd(n, n+1))`
-/

namespace A013341.P6771099489704537269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013219 n + A013215 n * A317950 (Nat.gcd n (n + 1))

end

end A013341.P6771099489704537269

/-! ## A013341.P9520723521798185420

`A012887(n)-n*a(n-1)-A009206(n)` with `a(0)=1`
-/

namespace A013341.P9520723521798185420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A012887 n - (n : ℤ) * a (n - 1) - A009206 n

end

end A013341.P9520723521798185420

/-!
# A013342: Expansion of e.g.f.: exp(sin(x)-arcsin(x))=1-2/3!*x^3-8/5!*x^5+40/6!*x^6-226/7!*x^7...

The programs for A013342, there is no canonical definition to state claims against.
-/

/-! ## A013342.P12006429851932244018

`A013489(n)*A122188(ceil(2^(n-1)))`
-/

namespace A013342.P12006429851932244018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013489 n * A122188 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A013342.P12006429851932244018

/-!
# A013343: -sin(sin(x)-arcsin(x))=2/3!*x^3+8/5!*x^5+226/7!*x^7+8784/9!*x^9...

The programs for A013343, there is no canonical definition to state claims against.
-/

/-! ## A013343.P10505688451152341080

`abs(A013489(2*n+3))`
-/

namespace A013343.P10505688451152341080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013489 (2 * n + 3)|

end

end A013343.P10505688451152341080

/-! ## A013343.P7133352271168200197

`A013489(2*n+3)*A321753(A000040(n+1))`
-/

namespace A013343.P7133352271168200197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013489 (2 * n + 3) * A321753 (A000040 (n + 1)).toNat

end

end A013343.P7133352271168200197

/-! ## A013343.P17545573492763035766

`record[Δ[A013489(val((n+1)², 2)+1)]]`
-/

namespace A013343.P17545573492763035766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013489 (SequenceMachineLib.valuation ((n + 1) ^ 2) 2 + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013343.P17545573492763035766

/-!
# A013344: tan(arcsin(x)-sin(x)) = 2/3!*x^3+8/5!*x^5+226/7!*x^7+15504/9!*x^9...

The programs for A013344, there is no canonical definition to state claims against.
-/

/-! ## A013344.P7575508658726450553

`A325693(A013418(n+1))-A013377(n)`
-/

namespace A013344.P7575508658726450553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325693 (A013418 (n + 1)).toNat - A013377 n

end

end A013344.P7575508658726450553

/-!
# A013346: cos(sin(x)-arcsin(x))=1-40/6!*x^6-896/8!*x^8-62304/10!*x^10...

The programs for A013346, there is no canonical definition to state claims against.
-/

/-! ## A013346.P7722822875442788266

`A013489(2*n)*A033999(n)`
-/

namespace A013346.P7722822875442788266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013489 (2 * n) * A033999 n

end

end A013346.P7722822875442788266

/-! ## A013346.P14322173644661701245

`A013350(A001096(n))`
-/

namespace A013346.P14322173644661701245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013350 (A001096 n).toNat

end

end A013346.P14322173644661701245

/-!
# A013347: -sinh(sin(x)-arcsin(x))=2/3!*x^3+8/5!*x^5+226/7!*x^7+13264/9!*x^9...

The programs for A013347, there is no canonical definition to state claims against.
-/

/-! ## A013347.P4769489852617267815

`record[-A013342(n+3)]`
-/

namespace A013347.P4769489852617267815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A013342 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013347.P4769489852617267815

/-! ## A013347.P13106546355313879437

`abs(A013342(2*n+3))`
-/

namespace A013347.P13106546355313879437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013342 (2 * n + 3)|

end

end A013347.P13106546355313879437

/-! ## A013347.P7693609992359573582

`Δ[-∑[A013342(2*n+1)]]`
-/

namespace A013347.P7693609992359573582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013342 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013347.P7693609992359573582

/-! ## A013347.P15227288922031253815

`lcm(2, A013342(A144396(n+1)))`
-/

namespace A013347.P15227288922031253815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A013342 (A144396 (n + 1)).toNat)

end

end A013347.P15227288922031253815

/-! ## A013347.P2018343438296070932

`-A013342(A111615(2*n+3))`
-/

namespace A013347.P2018343438296070932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A013342 (A111615 (2 * n + 3)).toNat

end

end A013347.P2018343438296070932

/-!
# A013348: cosh(sin(x)-arcsin(x))=1+40/6!*x^6+896/8!*x^8+62304/10!*x^10...

The programs for A013348, there is no canonical definition to state claims against.
-/

/-! ## A013348.P4251776089680298817

`A013342(2*n)`
-/

namespace A013348.P4251776089680298817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013342 (2 * n)

end

end A013348.P4251776089680298817

/-! ## A013348.P195039754749876133

`abs(A013342(A005843(n)))`
-/

namespace A013348.P195039754749876133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013342 (A005843 n).toNat|

end

end A013348.P195039754749876133

/-! ## A013348.P13422225626830563438

`abs(A013342(record[A046666(n+2)]))`
-/

namespace A013348.P13422225626830563438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013342 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A013348.P13422225626830563438

/-! ## A013348.P16878447964274950095

`A013342(A005843(n))/A000045(gcd(n, n+1))`
-/

namespace A013348.P16878447964274950095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013342 (A005843 n).toNat : ℚ) / (A000045 (Nat.gcd n (n + 1)) : ℚ)

end

end A013348.P16878447964274950095

/-! ## A013348.P6571264562147954180

`A013342(A005843(n))/A007318(ceil(2/(n+1)))`
-/

namespace A013348.P6571264562147954180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013342 (A005843 n).toNat : ℚ) / (A007318 ⌈2 / (n + 1 : ℚ)⌉.toNat : ℚ)

end

end A013348.P6571264562147954180

/-!
# A013351: Expansion of e.g.f.: exp(sin(x)-tan(x))=1-3/3!*x^3-15/5!*x^5+90/6!*x^6-273/7!*x^7...

The programs for A013351, there is no canonical definition to state claims against.
-/

/-! ## A013351.P5777929474695544265

`A013490(n)*A062157(A099508(2*(n+2)))`
-/

namespace A013351.P5777929474695544265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013490 n * A062157 (A099508 (2 * (n + 2))).toNat

end

end A013351.P5777929474695544265

/-! ## A013351.P2618341884623312405

`A013490(n)*A062157(A270339(3*(n+1)))`
-/

namespace A013351.P2618341884623312405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013490 n * A062157 (A270339 (3 * (n + 1))).toNat

end

end A013351.P2618341884623312405

/-! ## A013351.P2923368910335204796

`A013490(n)*A122188(ceil(2^(n-1)))`
-/

namespace A013351.P2923368910335204796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013490 n * A122188 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A013351.P2923368910335204796

/-! ## A013351.P5792461376048887495

`A013490(n)*A062157(A042081(n))`
-/

namespace A013351.P5792461376048887495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013490 n * A062157 (A042081 n).toNat

end

end A013351.P5792461376048887495

/-!
# A013352: sin(sin(x)-tan(x))=-3/3!*x^3-15/5!*x^5-273/7!*x^7-375/9!*x^9...

The programs for A013352, there is no canonical definition to state claims against.
-/

/-! ## A013352.P2380272872957827726

`A013490(2*n+3)*A062157(n+2)`
-/

namespace A013352.P2380272872957827726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013490 (2 * n + 3) * A062157 (n + 2)

end

end A013352.P2380272872957827726

/-!
# A013355: cos(sin(x)-tan(x))=1-90/6!*x^6-2520/8!*x^8-126630/10!*x^10...

The programs for A013355, there is no canonical definition to state claims against.
-/

/-! ## A013355.P3720803968049109804

`A013490(2*n)*A062157(n+1)`
-/

namespace A013355.P3720803968049109804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013490 (2 * n) * A062157 (n + 1)

end

end A013355.P3720803968049109804

/-! ## A013355.P10589803410348027257

`A013359(n^A200473(n+1))`
-/

namespace A013355.P10589803410348027257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013359 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A200473 (n + 1) : ℤ))).toNat

end

end A013355.P10589803410348027257

/-!
# A013356: sinh(sin(x)-tan(x))=-3/3!*x^3-15/5!*x^5-273/7!*x^7-15495/9!*x^9...

The programs for A013356, there is no canonical definition to state claims against.
-/

/-! ## A013356.P391308553066465348

`record[-A013351(n+3)]`
-/

namespace A013356.P391308553066465348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A013351 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013356.P391308553066465348

/-! ## A013356.P12970117735895318467

`abs(A013351(2*n+3))`
-/

namespace A013356.P12970117735895318467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013351 (2 * n + 3)|

end

end A013356.P12970117735895318467

/-! ## A013356.P14036346688874883193

`char[A254466(n)]-A013351(A005843(n)+3)`
-/

namespace A013356.P14036346688874883193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254466 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A013351 (A005843 n + 3).toNat

end

end A013356.P14036346688874883193

/-! ## A013356.P10842634759613758340

`char[1]*A290031(n)-A013351(A005843(n)+3)`
-/

namespace A013356.P10842634759613758340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A290031 n - A013351 (A005843 n + 3).toNat

end

end A013356.P10842634759613758340

/-! ## A013356.P6162398412081011042

`1-(A013351(A005843(n)+3)+A007318(A033685(n)))`
-/

namespace A013356.P6162398412081011042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A013351 (A005843 n + 3).toNat + A007318 (A033685 n).toNat)

end

end A013356.P6162398412081011042

/-!
# A013357: cosh(sin(x)-tan(x))=1+90/6!*x^6+2520/8!*x^8+126630/10!*x^10...

The programs for A013357, there is no canonical definition to state claims against.
-/

/-! ## A013357.P14289476294287194813

`A013351(2*n)`
-/

namespace A013357.P14289476294287194813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013351 (2 * n)

end

end A013357.P14289476294287194813

/-! ## A013357.P3157284914437238333

`abs(A013351(A005843(n)))`
-/

namespace A013357.P3157284914437238333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013351 (A005843 n).toNat|

end

end A013357.P3157284914437238333

/-! ## A013357.P11275449180005324556

`abs(A013351(Δ[A002061(n)]))`
-/

namespace A013357.P11275449180005324556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013351 (f1 (n + 1) - f1 n).toNat|

end

end A013357.P11275449180005324556

/-! ## A013357.P8061880222388588574

`abs(A013351(record[A294317(n)]))`
-/

namespace A013357.P8061880222388588574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013351 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A013357.P8061880222388588574

/-! ## A013357.P2863002925116684263

`lcm(A013351(A005843(n)), A081729(n))`
-/

namespace A013357.P2863002925116684263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013351 (A005843 n).toNat) (A081729 n)

end

end A013357.P2863002925116684263

/-!
# A013360: Expansion of e.g.f.: exp(sin(x)-arctan(x))=1+1/3!*x^3-23/5!*x^5+10/6!*x^6+719/7!*x^7...

The programs for A013360, there is no canonical definition to state claims against.
-/

/-! ## A013360.P17027182788193727526

`A013491(n)*A123271(A014442(n+1))`
-/

namespace A013360.P17027182788193727526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013491 n * A123271 (A014442 (n + 1)).toNat

end

end A013360.P17027182788193727526

/-! ## A013360.P3357176146004026099

`A008683(A028342(n))*A013491(n)`
-/

namespace A013360.P3357176146004026099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A028342 n).toNat * A013491 n

end

end A013360.P3357176146004026099

/-!
# A013361: sin(sin(x)-arctan(x))=1/3!*x^3-23/5!*x^5+719/7!*x^7-40599/9!*x^9...

The programs for A013361, there is no canonical definition to state claims against.
-/

/-! ## A013361.P7866793195990041386

`abs(A013491(2*n+3))*A033999(n)`
-/

namespace A013361.P7866793195990041386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013491 (2 * n + 3)| * A033999 n

end

end A013361.P7866793195990041386

/-! ## A013361.P9808903630548117090

`A013491(2*n+3)*A033999(A000522(n))`
-/

namespace A013361.P9808903630548117090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013491 (2 * n + 3) * A033999 (A000522 n).toNat

end

end A013361.P9808903630548117090

/-! ## A013361.P9232082418013900801

`A013491(2*n+3)*A033999(A088128(n))`
-/

namespace A013361.P9232082418013900801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013491 (2 * n + 3) * A033999 (A088128 n).toNat

end

end A013361.P9232082418013900801

/-!
# A013364: E.g.f.: cos(sin(x)-arctan(x))=1-10/6!*x^6+1288/8!*x^8-152934/10!*x^10...

The programs for A013364, there is no canonical definition to state claims against.
-/

/-! ## A013364.P2895729330510852812

`(-1)^n*A013491(2*n)`
-/

namespace A013364.P2895729330510852812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A013491 (2 * n)

end

end A013364.P2895729330510852812

/-! ## A013364.P11926523872748631856

`A013491(2*n)*A033999(n)`
-/

namespace A013364.P11926523872748631856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013491 (2 * n) * A033999 n

end

end A013364.P11926523872748631856

/-!
# A013365: sinh(sin(x)-arctan(x))=1/3!*x^3-23/5!*x^5+719/7!*x^7-40039/9!*x^9...

The programs for A013365, there is no canonical definition to state claims against.
-/

/-! ## A013365.P17565207916747923718

`A013360(2*n+3)`
-/

namespace A013365.P17565207916747923718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013360 (2 * n + 3)

end

end A013365.P17565207916747923718

/-! ## A013365.P6333874226119311324

`or(1, A013360(A144396(n+1)))`
-/

namespace A013365.P6333874226119311324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013360 (A144396 (n + 1)).toNat)

end

end A013365.P6333874226119311324

/-! ## A013365.P4108090227971300931

`A013360(A144396(n+1))^A048298(∑[n])!`
-/

namespace A013365.P4108090227971300931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013360 (A144396 (n + 1)).toNat ^ Nat.factorial (A048298 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A013365.P4108090227971300931

/-! ## A013365.P3358734130239207254

`A013360(A144396(n+1))^A033322(n+1)!`
-/

namespace A013365.P3358734130239207254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013360 (A144396 (n + 1)).toNat ^ Nat.factorial (A033322 (n + 1)).toNat

end

end A013365.P3358734130239207254

/-! ## A013365.P2985343856586966628

`A013360(A144396(n+1))^A034514(n+1)!`
-/

namespace A013365.P2985343856586966628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013360 (A144396 (n + 1)).toNat ^ Nat.factorial (A034514 (n + 1)).toNat

end

end A013365.P2985343856586966628

/-!
# A013366: cosh(sin(x)-arctan(x))=1+10/6!*x^6-1288/8!*x^8+152934/10!*x^10...

The programs for A013366, there is no canonical definition to state claims against.
-/

/-! ## A013366.P5765904146793343792

`A013360(2*n)`
-/

namespace A013366.P5765904146793343792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013360 (2 * n)

end

end A013366.P5765904146793343792

/-! ## A013366.P1681276375435733024

`or(A000007(n), A013360(A005843(n)))`
-/

namespace A013366.P1681276375435733024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A013360 (A005843 n).toNat)

end

end A013366.P1681276375435733024

/-! ## A013366.P15680280864118212745

`A034501(n+1)+A013360(A005843(n))`
-/

namespace A013366.P15680280864118212745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034501 (n + 1) + A013360 (A005843 n).toNat

end

end A013366.P15680280864118212745

/-! ## A013366.P9955741446858474624

`A013360(A005843(n))+A034441(n+1)²`
-/

namespace A013366.P9955741446858474624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013360 (A005843 n).toNat + A034441 (n + 1) ^ 2

end

end A013366.P9955741446858474624

/-! ## A013366.P10923173038799997041

`A267463(A328369(n+1)²)+A013360(A005843(n))`
-/

namespace A013366.P10923173038799997041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267463 (A328369 (n + 1) ^ 2).toNat + A013360 (A005843 n).toNat

end

end A013366.P10923173038799997041

/-!
# A013370: sin(sin(x)-sinh(x))=-2/3!*x^3-2/7!*x^7+2240/9!*x^9-2/11!*x^11...

The programs for A013370, there is no canonical definition to state claims against.
-/

/-! ## A013370.P3909671314665108732

`A013374((n+1)^A067659(n))`
-/

namespace A013370.P3909671314665108732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013374 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A067659 n : ℤ))).toNat

end

end A013370.P3909671314665108732

/-! ## A013370.P14843842405159807663

`A013374((n+1)^A337255(n+1))`
-/

namespace A013370.P14843842405159807663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013374 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A337255 (n + 1) : ℤ))).toNat

end

end A013370.P14843842405159807663

/-!
# A013371: Expansion of tan(sinh(x)-sin(x)) = 2/3!*x^3 + 2/7!*x^7 + 4480/9!*x^9 + 2/11!*x^11 + ...

The programs for A013371, there is no canonical definition to state claims against.
-/

/-! ## A013371.P1852022722163553090

`(a(n-1)+6)!/9` with `a(0)=0, a(1)=2, a(2)=0, a(3)=2`
-/

namespace A013371.P1852022722163553090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 0, 2] fun n a =>
  (Nat.factorial (SequenceMachineLib.roundAway (a (n - 1) + 6)).toNat : ℚ) / 9

end

end A013371.P1852022722163553090

/-!
# A013372: arctan(sin(x)-sinh(x)) = -2/3!*x^3 - 2/7!*x^7 + 4480/9!*x^9 - 2/11!*x^11 + ...

The programs for A013372, there is no canonical definition to state claims against.
-/

/-! ## A013372.P5481498576433267314

`A006345(A001044(n))*A013370(n)`
-/

namespace A013372.P5481498576433267314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006345 (A001044 n).toNat * A013370 n

end

end A013372.P5481498576433267314

/-! ## A013372.P12609978867144163788

`A006345(A001079(n))*A013370(n)`
-/

namespace A013372.P12609978867144163788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006345 (A001079 n).toNat * A013370 n

end

end A013372.P12609978867144163788

/-!
# A013373: cos(sin(x)-sinh(x))=1-40/6!*x^6-480/10!*x^10+246400/12!*x^12...

The programs for A013373, there is no canonical definition to state claims against.
-/

/-! ## A013373.P6112805489466310860

`(-1)^n*A013369(2*n)`
-/

namespace A013373.P6112805489466310860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A013369 (2 * n)

end

end A013373.P6112805489466310860

/-! ## A013373.P13732610074015522975

`A013369(2*n)*A033999(n)`
-/

namespace A013373.P13732610074015522975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013369 (2 * n) * A033999 n

end

end A013373.P13732610074015522975

/-!
# A013374: arcsinh(sin(x)-sinh(x))=-2/3!*x^3-2/7!*x^7+2240/9!*x^9-2/11!*x^11...

The programs for A013374, there is no canonical definition to state claims against.
-/

/-! ## A013374.P11594555110727928924

`A013370((n-1)^A051903(n+1))`
-/

namespace A013374.P11594555110727928924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013370 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ (A051903 (n + 1) : ℤ))).toNat

end

end A013374.P11594555110727928924

/-! ## A013374.P15819987254963921810

`A013370(A013233(n)-A013240(n))`
-/

namespace A013374.P15819987254963921810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013370 (A013233 n - A013240 n).toNat

end

end A013374.P15819987254963921810

/-! ## A013374.P11112428248012207814

`A013370(A013262(n)-A013240(n))`
-/

namespace A013374.P11112428248012207814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013370 (A013262 n - A013240 n).toNat

end

end A013374.P11112428248012207814

/-!
# A013375: sec(sin(x)-sinh(x))=1+40/6!*x^6+480/10!*x^10+1232000/12!*x^12...

The programs for A013375, there is no canonical definition to state claims against.
-/

/-! ## A013375.P1351259885214057458

`A013420(n)%A058312(A078739(n+5))`
-/

namespace A013375.P1351259885214057458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013420 n) (A058312 (A078739 (n + 5)).toNat)

end

end A013375.P1351259885214057458

/-! ## A013375.P9031828117565786269

`A106620(A013369(2*n))`
-/

namespace A013375.P9031828117565786269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 (A013369 (2 * n)).toNat

end

end A013375.P9031828117565786269

/-!
# A013376: exp(sin(x)-arcsinh(x)) = 1-8/5!*x^5+224/7!*x^7-11024/9!*x^9+8064/10!*x^10...

The programs for A013376, there is no canonical definition to state claims against.
-/

/-! ## A013376.P16069162918002079158

`A317839(A200370(n+1)+A072060(n+1))`
-/

namespace A013376.P16069162918002079158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317839 (A200370 (n + 1) + A072060 (n + 1)).toNat

end

end A013376.P16069162918002079158

/-! ## A013376.P450283090065220580

`A182036(A182043(2*(n+2))+A182027(n))`
-/

namespace A013376.P450283090065220580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182036 (A182043 (2 * (n + 2)) + A182027 n).toNat

end

end A013376.P450283090065220580

/-!
# A013377: sin(sin(x)-arcsinh(x)) = -8/5!*x^5+224/7!*x^7-11024/9!*x^9...

The programs for A013377, there is no canonical definition to state claims against.
-/

/-! ## A013377.P17293183301937456306

`A013376(∑[A059025(n+6)]+n)`
-/

namespace A013377.P17293183301937456306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059025 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013376 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A013377.P17293183301937456306

/-! ## A013377.P11236804037936970156

`A013376(A059025(n+6)+2*n)`
-/

namespace A013377.P11236804037936970156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013376 (A059025 (n + 6) + (2 * n : ℤ)).toNat

end

end A013377.P11236804037936970156

/-! ## A013377.P223583032313768973

`A013376(A059025(n+6)+n+n)`
-/

namespace A013377.P223583032313768973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013376 (A059025 (n + 6) + (n : ℤ) + (n : ℤ)).toNat

end

end A013377.P223583032313768973

/-!
# A013378: cos(sin(x)-arcsinh(x)) = 1-8064/10!*x^10 + 1419264/12!*x^12 ...

The programs for A013378, there is no canonical definition to state claims against.
-/

/-! ## A013378.P9959437410128954120

`A013458(n)^gcd(2, n)^4`
-/

namespace A013378.P9959437410128954120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013458 n ^ Nat.gcd 2 n ^ 4

end

end A013378.P9959437410128954120

/-! ## A013378.P12541046835707491744

`A013458(n-a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A013378.P12541046835707491744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A013458 ((n : ℤ) - a (n - 1)).toNat

end

end A013378.P12541046835707491744

/-!
# A013379: Expansion of e.g.f.: exp(sin(x)-tanh(x))=1+1/3!*x^3-15/5!*x^5+10/6!*x^6+271/7!*x^7...

The programs for A013379, there is no canonical definition to state claims against.
-/

/-! ## A013379.P4461192378598298603

`A013449(n)*A158388(A013451(n))`
-/

namespace A013379.P4461192378598298603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013449 n * A158388 (A013451 n).toNat

end

end A013379.P4461192378598298603

/-! ## A013379.P15002125935825078194

`A013449(n)*A034947(A319552(n))`
-/

namespace A013379.P15002125935825078194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013449 n * A034947 (A319552 n).toNat

end

end A013379.P15002125935825078194

/-! ## A013379.P11250983709205527480

`A013449(n)*A034947(A346199(n+1))`
-/

namespace A013379.P11250983709205527480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013449 n * A034947 (A346199 (n + 1)).toNat

end

end A013379.P11250983709205527480

/-! ## A013379.P5785284401384740301

`A013449(n)*A071936(A243803(n+3))`
-/

namespace A013379.P5785284401384740301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013449 n * A071936 (A243803 (n + 3)).toNat

end

end A013379.P5785284401384740301

/-!
# A013383: cos(sin(x)-tanh(x))=1-10/6!*x^6+840/8!*x^8-60870/10!*x^10...

The programs for A013383, there is no canonical definition to state claims against.
-/

/-! ## A013383.P16239460700993230381

`(-1)^n*A013449(2*n)`
-/

namespace A013383.P16239460700993230381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A013449 (2 * n)

end

end A013383.P16239460700993230381

/-! ## A013383.P7565192856952889806

`A013449(2*n)*A034947(n²+5)`
-/

namespace A013383.P7565192856952889806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013449 (2 * n) * A034947 (n ^ 2 + 5)

end

end A013383.P7565192856952889806

/-! ## A013383.P388746871141838511

`A013449(2*n)*A130151(A046691(2*n+1))`
-/

namespace A013383.P388746871141838511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013449 (2 * n) * A130151 (A046691 (2 * n + 1)).toNat

end

end A013383.P388746871141838511

/-!
# A013384: sinh(sin(x)-tanh(x))=1/3!*x^3-15/5!*x^5+271/7!*x^7-7655/9!*x^9...

The programs for A013384, there is no canonical definition to state claims against.
-/

/-! ## A013384.P11680844103467838245

`A013379(2*n+3)`
-/

namespace A013384.P11680844103467838245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013379 (2 * n + 3)

end

end A013384.P11680844103467838245

/-! ## A013384.P6748122200281716677

`or(1, A013379(A144396(n+1)))`
-/

namespace A013384.P6748122200281716677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013379 (A144396 (n + 1)).toNat)

end

end A013384.P6748122200281716677

/-!
# A013385: cosh(sin(x)-tanh(x))=1+10/6!*x^6-840/8!*x^8+60870/10!*x^10...

The programs for A013385, there is no canonical definition to state claims against.
-/

/-! ## A013385.P9108328658417069239

`A013379(2*n)`
-/

namespace A013385.P9108328658417069239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013379 (2 * n)

end

end A013385.P9108328658417069239

/-! ## A013385.P6449174096219984846

`A013379(A004277(n))+A000007(n)`
-/

namespace A013385.P6449174096219984846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013379 (A004277 n).toNat + A000007 n

end

end A013385.P6449174096219984846

/-! ## A013385.P865668293482285536

`or(A000007(n), A013379(A005843(n)))`
-/

namespace A013385.P865668293482285536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A013379 (A005843 n).toNat)

end

end A013385.P865668293482285536

/-! ## A013385.P12111247348501407601

`A013379(A004277(n))+A008683((n+1)²)`
-/

namespace A013385.P12111247348501407601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013379 (A004277 n).toNat + A008683 ((n + 1) ^ 2)

end

end A013385.P12111247348501407601

/-! ## A013385.P15693718245280467044

`A077957(n+1+n)+A013379(A005843(n))`
-/

namespace A013385.P15693718245280467044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 1 + n) + A013379 (A005843 n).toNat

end

end A013385.P15693718245280467044

/-!
# A013388: Expansion of e.g.f.: exp(sin(x)-arctanh(x))=1-3/3!*x^3-23/5!*x^5+90/6!*x^6-721/7!*x^7...

The programs for A013388, there is no canonical definition to state claims against.
-/

/-! ## A013388.P2167052876777244524

`A008836(A001250(n))*A013460(n)`
-/

namespace A013388.P2167052876777244524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A001250 n).toNat * A013460 n

end

end A013388.P2167052876777244524

/-! ## A013388.P15649413571130302197

`A008836(A002212(n))*A013460(n)`
-/

namespace A013388.P15649413571130302197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A002212 n).toNat * A013460 n

end

end A013388.P15649413571130302197

/-! ## A013388.P8343932028563778701

`A013460(n)/A087960(A013467(n))`
-/

namespace A013388.P8343932028563778701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013460 n : ℚ) / (A087960 (A013467 n).toNat : ℚ)

end

end A013388.P8343932028563778701

/-! ## A013388.P16750606473318972393

`A008836(A007317(n+1))*A013460(n)`
-/

namespace A013388.P16750606473318972393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A007317 (n + 1)).toNat * A013460 n

end

end A013388.P16750606473318972393

/-!
# A013392: cos(sin(x)-arctanh(x))=1-90/6!*x^6-3864/8!*x^8-326214/10!*x^10...

The programs for A013392, there is no canonical definition to state claims against.
-/

/-! ## A013392.P11481540875197245095

`(-1)^n*A013460(2*n)`
-/

namespace A013392.P11481540875197245095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A013460 (2 * n)

end

end A013392.P11481540875197245095

/-! ## A013392.P9146967981989854793

`A013460(2*n)*A033999(n)`
-/

namespace A013392.P9146967981989854793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013460 (2 * n) * A033999 n

end

end A013392.P9146967981989854793

/-! ## A013392.P10461319476955847378

`A013460(A005843(n))/A033999(n)`
-/

namespace A013392.P10461319476955847378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013460 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013392.P10461319476955847378

/-! ## A013392.P8504086450469793412

`A000007(n)-abs(A013460(A004277(n)))`
-/

namespace A013392.P8504086450469793412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - |A013460 (A004277 n).toNat|

end

end A013392.P8504086450469793412

/-!
# A013393: sinh(sin(x)-arctanh(x))=-3/3!*x^3-23/5!*x^5-721/7!*x^7-47879/9!*x^9...

The programs for A013393, there is no canonical definition to state claims against.
-/

/-! ## A013393.P13831607451233672464

`record[-A013388(n+3)]`
-/

namespace A013393.P13831607451233672464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A013388 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013393.P13831607451233672464

/-! ## A013393.P6903140474763783951

`abs(A013388(2*n+3))`
-/

namespace A013393.P6903140474763783951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013388 (2 * n + 3)|

end

end A013393.P6903140474763783951

/-! ## A013393.P3983177046758508981

`-A013388(Δ[A005563(n)])`
-/

namespace A013393.P3983177046758508981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A013388 (f1 (n + 1) - f1 n).toNat

end

end A013393.P3983177046758508981

/-! ## A013393.P4906029858172683397

`-(A270599(2*(n+2))+A013388(2*n+3))`
-/

namespace A013393.P4906029858172683397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A270599 (2 * (n + 2)) + A013388 (2 * n + 3))

end

end A013393.P4906029858172683397

/-! ## A013393.P7057435951128055940

`A353494(A007304(n+1))-A013388(2*n+3)`
-/

namespace A013393.P7057435951128055940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (A007304 (n + 1)).toNat - A013388 (2 * n + 3)

end

end A013393.P7057435951128055940

/-!
# A013394: cosh(sin(x)-arctanh(x))=1+90/6!*x^6+3864/8!*x^8+326214/10!*x^10...

The programs for A013394, there is no canonical definition to state claims against.
-/

/-! ## A013394.P11736269173730526598

`A013388(2*n)`
-/

namespace A013394.P11736269173730526598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013388 (2 * n)

end

end A013394.P11736269173730526598

/-! ## A013394.P3206594315388953453

`abs(A013388(A005843(n)))`
-/

namespace A013394.P3206594315388953453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013388 (A005843 n).toNat|

end

end A013394.P3206594315388953453

/-! ## A013394.P13005854615668187907

`gcd(A000038(n), A013388(A005843(n)))`
-/

namespace A013394.P13005854615668187907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A013388 (A005843 n).toNat)

end

end A013394.P13005854615668187907

/-! ## A013394.P2853735754700722286

`lcm(A008836(n+1), A013388(A005843(n)))`
-/

namespace A013394.P2853735754700722286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A013388 (A005843 n).toNat)

end

end A013394.P2853735754700722286

/-! ## A013394.P9061284662890502050

`A013388(A005843(n))%A013389(n)`
-/

namespace A013394.P9061284662890502050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013388 (A005843 n).toNat) (A013389 n)

end

end A013394.P9061284662890502050

/-!
# A013397: exp(arcsin(x)-log(x+1))=1+1/2!*x^2-1/3!*x^3+9/4!*x^4-25/5!*x^5...

The programs for A013397, there is no canonical definition to state claims against.
-/

/-! ## A013397.P6527476552978781376

`A006228(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A013397.P6527476552978781376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006228 n - (n : ℤ) * a (n - 1)

end

end A013397.P6527476552978781376

/-! ## A013397.P10453567838132644954

`A013231(n)-A013227(n)`
-/

namespace A013397.P10453567838132644954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013231 n - A013227 n

end

end A013397.P10453567838132644954

/-! ## A013397.P12349045064958483523

`A013231(n)+A013227(n)*A260196(n)`
-/

namespace A013397.P12349045064958483523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013231 n + A013227 n * A260196 n

end

end A013397.P12349045064958483523

/-! ## A013397.P12982884757055642776

`A013231(n)+A013227(n)*A162512(A152427(n+1))`
-/

namespace A013397.P12982884757055642776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013231 n + A013227 n * A162512 (A152427 (n + 1)).toNat

end

end A013397.P12982884757055642776

/-!
# A013399: arcsin(arcsin(x)-tan(x))=-1/3!*x^3-7/5!*x^5-47/7!*x^7+2809/9!*x^9...

The programs for A013399, there is no canonical definition to state claims against.
-/

/-! ## A013399.P12863668203762732921

`A013398(record[A105658(n)+2])`
-/

namespace A013399.P12863668203762732921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105658 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013398 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A013399.P12863668203762732921

/-! ## A013399.P13873671469107828724

`A013398(A105658(2*n+1)+2)`
-/

namespace A013399.P13873671469107828724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013398 (A105658 (2 * n + 1) + 2).toNat

end

end A013399.P13873671469107828724

