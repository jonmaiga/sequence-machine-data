import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A013501: Expansion of e.g.f.: exp(sec(x)-exp(x))=1-x+1/2!*x^2-2/3!*x^3+9/4!*x^4-32/5!*x^5...

The programs for A013501, there is no canonical definition to state claims against.
-/

/-! ## A013501.P4982731260530011545

`A013337(n)-A013333(n)`
-/

namespace A013501.P4982731260530011545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013337 n - A013333 n

end

end A013501.P4982731260530011545

/-! ## A013501.P4939140725881866628

`2*A013337(n)-A013327(n)`
-/

namespace A013501.P4939140725881866628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013337 n - A013327 n

end

end A013501.P4939140725881866628

/-! ## A013501.P11188842543776511273

`A013327(n)-2*A013333(n)`
-/

namespace A013501.P11188842543776511273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013327 n - 2 * A013333 n

end

end A013501.P11188842543776511273

/-! ## A013501.P13340959764423331214

`A013337(n)+-A013333(n)%A332168(n)`
-/

namespace A013501.P13340959764423331214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013337 n + Int.tmod (-A013333 n) (A332168 n)

end

end A013501.P13340959764423331214

/-!
# A013502: exp(sec(x)-cosh(x))=1+4/4!*x^4+60/6!*x^6+1944/8!*x^8+100920/10!*x^10...

The programs for A013502, there is no canonical definition to state claims against.
-/

/-! ## A013502.P7196751553249516485

`A243997(A113379(n))`
-/

namespace A013502.P7196751553249516485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243997 (A113379 n).toNat

end

end A013502.P7196751553249516485

/-!
# A013503: E.g.f. exp(sec(x)-sech(x)) (even powers only).

The programs for A013503, there is no canonical definition to state claims against.
-/

/-! ## A013503.P4668898919751741633

`∪[A013509(n), A013513(n)]`
-/

namespace A013503.P4668898919751741633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013509 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013513 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A013503.P4668898919751741633

/-!
# A013509: sinh(sec(x)-sech(x))=2/2!*x^2+242/6!*x^6+438722/10!*x^10...

The programs for A013509, there is no canonical definition to state claims against.
-/

/-! ## A013509.P6187751773713476069

`A013503(Δ[n²])`
-/

namespace A013509.P6187751773713476069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013503 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013509.P6187751773713476069

/-!
# A013513: cosh(sec(x)-sech(x)) = 1+12/4!*x^4+8512/8!*x^8+34406592/12!*x^12...

The programs for A013513, there is no canonical definition to state claims against.
-/

/-! ## A013513.P1974167127250719732

`A013503(2*n)`
-/

namespace A013513.P1974167127250719732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013503 (2 * n)

end

end A013513.P1974167127250719732

/-!
# A013516: Denominators in the Taylor expansion exp(cosec(x)-cot(x))=1 + x/2 + x^2/8 + x^3/16 + 3*x^4/128 + 37*x^5/3840 + 59*x^6/15360 + ...

The programs for A013516, there is no canonical definition to state claims against.
-/

/-! ## A013516.P9679318715754846278

`A047692(n)*2^n`
-/

namespace A013516.P9679318715754846278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047692 n * (2 ^ n : ℤ)

end

end A013516.P9679318715754846278

/-! ## A013516.P14607685706027937479

`A000079(n)*A047692(n)`
-/

namespace A013516.P14607685706027937479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A047692 n

end

end A013516.P14607685706027937479

/-! ## A013516.P5755970907486872953

`∑[A011782(n)]*A047692(n)`
-/

namespace A013516.P5755970907486872953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A047692 n

end

end A013516.P5755970907486872953

/-! ## A013516.P16979820616153775542

`Δ[A000051(n)]*A047692(n)`
-/

namespace A013516.P16979820616153775542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A047692 n

end

end A013516.P16979820616153775542

/-! ## A013516.P11678075390803678885

`n!/A006229(n)*A047691(n)*2^n`
-/

namespace A013516.P11678075390803678885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A006229 n : ℚ) * (A047691 n : ℚ) * (2 ^ n : ℚ)

end

end A013516.P11678075390803678885

/-!
# A013517: Denominator of [x^(2n+1)] in the Taylor expansion sin(cosec(x)-cot(x))= x/2 + x^3/48 - x^5/1280 - 55*x^7/129024 - 143*x^9/1769472 + ...

The programs for A013517, there is no canonical definition to state claims against.
-/

/-! ## A013517.P15987166338828382100

`A096671(n)*2^(2*n+1)`
-/

namespace A013517.P15987166338828382100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096671 n * (2 ^ (2 * n + 1) : ℤ)

end

end A013517.P15987166338828382100

/-! ## A013517.P10956625025974245647

`A004171(n)*A096671(n)`
-/

namespace A013517.P10956625025974245647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n * A096671 n

end

end A013517.P10956625025974245647

/-! ## A013517.P2643522411073137048

`2*A000302(n)*A096671(n)`
-/

namespace A013517.P2643522411073137048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000302 n * A096671 n)

end

end A013517.P2643522411073137048

/-! ## A013517.P12854254229780120212

`2*A000079(n)²*A096671(n)`
-/

namespace A013517.P12854254229780120212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 * A096671 n

end

end A013517.P12854254229780120212

/-! ## A013517.P6632377370330468624

`A000079(2*n+1)*A096671(n)`
-/

namespace A013517.P6632377370330468624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) * A096671 n

end

end A013517.P6632377370330468624

/-!
# A013518: Numerator of [x^(2n+1)] in the Taylor expansion arcsin(cosec(x)-cot(x)) = x/2 + x^3/16 + 3*x^5/256 + 83*x^7/30720 + 8887*x^9/12386304 + ...

The programs for A013518, there is no canonical definition to state claims against.
-/

/-! ## A013518.P10965026537081286149

`A282795(A251705(n²))`
-/

namespace A013518.P10965026537081286149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282795 (A251705 (n ^ 2)).toNat

end

end A013518.P10965026537081286149

/-!
# A013520: A problem in derangements.

The programs for A013520, there is no canonical definition to state claims against.
-/

/-! ## A013520.P5247144172131143002

`A172310(A113300(n))+n`
-/

namespace A013520.P5247144172131143002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172310 (A113300 n).toNat + (n : ℤ)

end

end A013520.P5247144172131143002

/-!
# A013521: Numerator of [x^(2n)] in the Taylor expansion cos(cosec(x)-cot(x))= 1-x^2/8 -7*x^4/384 -97*x^6/46080 -2063*x^8/10321920 -17803*x^10/1238630400 -....

The programs for A013521, there is no canonical definition to state claims against.
-/

/-! ## A013521.P51936688971689811

`A013559(2*n)*A033999(n)`
-/

namespace A013521.P51936688971689811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013559 (2 * n) * A033999 n

end

end A013521.P51936688971689811

/-! ## A013521.P8490337415023176985

`A013559(A005408(n)-1)/A033999(n)`
-/

namespace A013521.P8490337415023176985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013559 (A005408 n - 1).toNat : ℚ) / (A033999 n : ℚ)

end

end A013521.P8490337415023176985

/-! ## A013521.P16213273450046102278

`A003710(n)/gcd(A003710(n), A096716(n))`
-/

namespace A013521.P16213273450046102278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003710 n : ℚ) / (Int.gcd (A003710 n) (A096716 n) : ℚ)

end

end A013521.P16213273450046102278

/-!
# A013522: Numerator of [x^(2n+1)] in the Taylor expansion sinh(cosec(x)-cotan(x))= x/2 +x^3/16 +37*x^5/3840 +137*x^7/92160 +41641*x^9/185794560 + 3887*x^11/117964800 +...

The programs for A013522, there is no canonical definition to state claims against.
-/

/-! ## A013522.P3422846083504336613

`A047691(Δ[n²])`
-/

namespace A013522.P3422846083504336613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047691 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013522.P3422846083504336613

/-! ## A013522.P4708959448577085374

`or(1, A047691(A005408(n)))`
-/

namespace A013522.P4708959448577085374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047691 (A005408 n).toNat)

end

end A013522.P4708959448577085374

/-! ## A013522.P3239383443885155061

`or(1, A047691(A004277(n)+1))`
-/

namespace A013522.P3239383443885155061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047691 (A004277 n + 1).toNat)

end

end A013522.P3239383443885155061

/-! ## A013522.P15056699063061521198

`or(1, A047691(A005843(n)+1))`
-/

namespace A013522.P15056699063061521198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047691 (A005843 n + 1).toNat)

end

end A013522.P15056699063061521198

/-! ## A013522.P15089879487822229886

`or(1, A047691(or(1, A004277(n))))`
-/

namespace A013522.P15089879487822229886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047691 (Int.lor 1 (A004277 n)).toNat)

end

end A013522.P15089879487822229886

/-!
# A013523: Denominator of [x^(2n+1)] in the Taylor expansion arcsinh(cosec(x) - cot(x)).

The programs for A013523, there is no canonical definition to state claims against.
-/

/-! ## A013523.P11826460149833169431

`A000165(2*n+1)/gcd(A000111(2*n), A000165(2*n+1))`
-/

namespace A013523.P11826460149833169431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 (2 * n + 1) : ℚ) / (Int.gcd (A000111 (2 * n)) (A000165 (2 * n + 1)) : ℚ)

end

end A013523.P11826460149833169431

/-! ## A013523.P16081774406076372535

`A081294(n+1)*A136606(n+1)`
-/

namespace A013523.P16081774406076372535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 (n + 1) * A136606 (n + 1)

end

end A013523.P16081774406076372535

/-! ## A013523.P776700019020486588

`record[A001316(3*n+1)]*A136606(n+1)`
-/

namespace A013523.P776700019020486588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A136606 (n + 1)

end

end A013523.P776700019020486588

/-!
# A013525: E.g.f.: x + (gdinv x - sinh x)/2, where gdinv = inverse-Gudermannian. Sequence has odd-indexed coefficients; others are zero.

The programs for A013525, there is no canonical definition to state claims against.
-/

/-! ## A013525.P4901861757107666257

`floor(abs(A163982(2*n)/2))`
-/

namespace A013525.P4901861757107666257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A163982 (2 * n) : ℚ) / 2|⌋

end

end A013525.P4901861757107666257

/-! ## A013525.P15632798505250902418

`floor(A000364(n)/A036453(n+1))`
-/

namespace A013525.P15632798505250902418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000364 n : ℚ) / (A036453 (n + 1) : ℚ)⌋

end

end A013525.P15632798505250902418

/-! ## A013525.P10487963515686495398

`floor((A000364(n)+A000038(n))/2)`
-/

namespace A013525.P10487963515686495398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000364 n + A000038 n : ℚ) / 2⌋

end

end A013525.P10487963515686495398

/-! ## A013525.P11742831118610077071

`floor(A000364(n)/A014963(A001316(n)))`
-/

namespace A013525.P11742831118610077071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000364 n : ℚ) / (A014963 (A001316 n).toNat : ℚ)⌋

end

end A013525.P11742831118610077071

/-!
# A013526: Numerator of [x^(2n)] of the Taylor expansion cosh(cosec(x)-cot(x))=1 +x^2/8 +3*x^4/128 +59*x^6/15360 +871*x^8/1474560 +....

The programs for A013526, there is no canonical definition to state claims against.
-/

/-! ## A013526.P16365576860494847143

`A047691(2*n)`
-/

namespace A013526.P16365576860494847143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047691 (2 * n)

end

end A013526.P16365576860494847143

/-! ## A013526.P13343700493068408557

`or(1, A047691(A004277(n)))`
-/

namespace A013526.P13343700493068408557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047691 (A004277 n).toNat)

end

end A013526.P13343700493068408557

/-! ## A013526.P11400416943245043783

`or(1, A047691(A005843(n)))`
-/

namespace A013526.P11400416943245043783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047691 (A005843 n).toNat)

end

end A013526.P11400416943245043783

/-! ## A013526.P1482642328501589589

`A047691(A005843(n))+char[A044773(n+1)]`
-/

namespace A013526.P1482642328501589589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044773 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047691 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A013526.P1482642328501589589

/-! ## A013526.P14511403480126404557

`A047691(A005843(n))+A008683(A017018(n))`
-/

namespace A013526.P14511403480126404557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047691 (A005843 n).toNat + A008683 (A017018 n).toNat

end

end A013526.P14511403480126404557

/-!
# A013527: Numerator of [x^(2n)] of the Taylor expansion sec(cosec(x)-cot(x)) = 1+ x^2/8 +13*x^4/384 +397*x^6/46080 +4453*x^8/2064384 + ... .

The programs for A013527, there is no canonical definition to state claims against.
-/

/-! ## A013527.P17337695668354505458

`A355944(A009010(n))`
-/

namespace A013527.P17337695668354505458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355944 (A009010 n).toNat

end

end A013527.P17337695668354505458

/-!
# A013529: Numerator of [x^n] in the Taylor expansion exp(cosec(x) - cosech(x)) = 1 + x/3 + x^2/18 + x^3/162 + x^4/1944 + 211*x^5/51030 + ...

The programs for A013529, there is no canonical definition to state claims against.
-/

/-! ## A013529.P13771324032948086323

`A297837(A052721(n)/3)`
-/

namespace A013529.P13771324032948086323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297837 (SequenceMachineLib.roundAway ((A052721 n : ℚ) / 3)).toNat

end

end A013529.P13771324032948086323

/-! ## A013529.P8661539464500792115

`A267872(((11*n)^4)%A216839(n))`
-/

namespace A013529.P8661539464500792115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (Int.tmod ((11 * n) ^ 4 : ℤ) (A216839 n)).toNat

end

end A013529.P8661539464500792115

/-!
# A013530: Numerator of [x^(2n+1)] of the Taylor expansion sin(cosec(x) - cosech(x)) = x/3 - x^3/162 + 211*x^5/51030 -157*x^7/688905 + 439801*x^9/9821029680 - ...

The programs for A013530, there is no canonical definition to state claims against.
-/

/-! ## A013530.P4241171042439936259

`(-1)^n*A013529(Δ[n²])`
-/

namespace A013530.P4241171042439936259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A013529 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013530.P4241171042439936259

/-! ## A013530.P14858587406018056241

`A013529(Δ[n²])*A033999(n)`
-/

namespace A013530.P14858587406018056241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013529 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A013530.P14858587406018056241

/-! ## A013530.P1943658998477919586

`A013529(2*n+1)*A056594(2*n)`
-/

namespace A013530.P1943658998477919586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013529 (2 * n + 1) * A056594 (2 * n)

end

end A013530.P1943658998477919586

/-! ## A013530.P7782174236225181473

`A013529(2*n+1)*A057077(2*n)`
-/

namespace A013530.P7782174236225181473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013529 (2 * n + 1) * A057077 (2 * n)

end

end A013530.P7782174236225181473

/-! ## A013530.P2664504613659454804

`A013529(A005408(n))/A033999(n)`
-/

namespace A013530.P2664504613659454804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013529 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013530.P2664504613659454804

/-!
# A013531: Numerator of [x^(2n+1)] in the Taylor expansion arcsin(cosec(x) - cosech(x)) = x/3 + x^3/162 + 5*x^5/1134 + 19*x^7/76545 + 13793*x^9/218245104 + ...

The programs for A013531, there is no canonical definition to state claims against.
-/

/-! ## A013531.P9887118056272607177

`A071542((C(abs(1-3*n), n)-n)^A277218(n))`
-/

namespace A013531.P9887118056272607177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (SequenceMachineLib.roundAway (((Nat.choose |1 - (3 * n : ℤ)|.toNat n : ℤ) - (n : ℤ) : ℚ) ^ (A277218 n : ℤ))).toNat

end

end A013531.P9887118056272607177

/-!
# A013534: Numerator of [x^(2n)] in the Taylor expansion cos(cosec(x) - cosech(x)).

The programs for A013534, there is no canonical definition to state claims against.
-/

/-! ## A013534.P11496400930893470858

`A013529(2*n)*A033999(n)`
-/

namespace A013534.P11496400930893470858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013529 (2 * n) * A033999 n

end

end A013534.P11496400930893470858

/-! ## A013534.P8855412327683826773

`A013529(2*n)*A056594(2*n)`
-/

namespace A013534.P8855412327683826773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013529 (2 * n) * A056594 (2 * n)

end

end A013534.P8855412327683826773

/-! ## A013534.P2892732149925804767

`A013529(2*n)*A057077(2*n)`
-/

namespace A013534.P2892732149925804767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013529 (2 * n) * A057077 (2 * n)

end

end A013534.P2892732149925804767

/-! ## A013534.P437716088970457901

`A013529(A005843(n))/A033999(n)`
-/

namespace A013534.P437716088970457901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013529 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013534.P437716088970457901

/-! ## A013534.P2550001959875734976

`A013529(A005408(n)-1)/A033999(n)`
-/

namespace A013534.P2550001959875734976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013529 (A005408 n - 1).toNat : ℚ) / (A033999 n : ℚ)

end

end A013534.P2550001959875734976

/-!
# A013536: Numerators of coefficients in Taylor series expansion of exp(cosec(x)-cotanh(x)).

The programs for A013536, there is no canonical definition to state claims against.
-/

/-! ## A013536.P9760648043043654128

`Δ[A332412(A056830(n))]`
-/

namespace A013536.P9760648043043654128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332412 (A056830 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013536.P9760648043043654128

/-!
# A013537: Numerator of [x^(2n+1)] of the Taylor expansion sin(cosec(x)-coth(x)).

The programs for A013537, there is no canonical definition to state claims against.
-/

/-! ## A013537.P1481230962456932588

`A013550(2*n+1)*A033999(n)`
-/

namespace A013537.P1481230962456932588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013550 (2 * n + 1) * A033999 n

end

end A013537.P1481230962456932588

/-! ## A013537.P15733076464438140627

`A013550(A005408(n))/A033999(n)`
-/

namespace A013537.P15733076464438140627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013550 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013537.P15733076464438140627

/-!
# A013541: Numerator of the coefficient [x^(2n)] of the Taylor series cos(cosec(x) - coth(x)).

The programs for A013541, there is no canonical definition to state claims against.
-/

/-! ## A013541.P1187343003668126565

`A013550(2*n)/(-1)^n`
-/

namespace A013541.P1187343003668126565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013550 (2 * n) : ℚ) / ((-1) ^ n : ℚ)

end

end A013541.P1187343003668126565

/-! ## A013541.P16744697659557036678

`A013550(2*n)*A033999(n)`
-/

namespace A013541.P16744697659557036678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013550 (2 * n) * A033999 n

end

end A013541.P16744697659557036678

/-!
# A013542: Numerator of the coefficient [x^(2n+1)] of the Taylor series sinh(cosec(x) - coth(x)).

The programs for A013542, there is no canonical definition to state claims against.
-/

/-! ## A013542.P5355697763492168758

`A013536(Δ[n²])`
-/

namespace A013542.P5355697763492168758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013536 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013542.P5355697763492168758

/-! ## A013542.P14607536433030558412

`or(1, A013536(A005408(n)))`
-/

namespace A013542.P14607536433030558412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013536 (A005408 n).toNat)

end

end A013542.P14607536433030558412

/-! ## A013542.P3907630502729958599

`or(1, A013536(A005843(n)+1))`
-/

namespace A013542.P3907630502729958599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013536 (A005843 n + 1).toNat)

end

end A013542.P3907630502729958599

/-! ## A013542.P3315534004531456429

`or(1, A013536(or(1, A005843(n))))`
-/

namespace A013542.P3315534004531456429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013536 (Int.lor 1 (A005843 n)).toNat)

end

end A013542.P3315534004531456429

/-!
# A013546: Numerator of [x^(2n)] in the Taylor expansion cosh(cosec(x)-coth(x))=1 +x^2/72 -215*x^4/31104 +199159*x^6/235146240-...

The programs for A013546, there is no canonical definition to state claims against.
-/

/-! ## A013546.P7123471684385910224

`A013536(2*n)`
-/

namespace A013546.P7123471684385910224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013536 (2 * n)

end

end A013546.P7123471684385910224

/-! ## A013546.P1778125030727347286

`or(1, A013536(A005843(n)))`
-/

namespace A013546.P1778125030727347286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013536 (A005843 n).toNat)

end

end A013546.P1778125030727347286

/-! ## A013546.P13397491182386949222

`A013536(A004277(n))^A178334(n)`
-/

namespace A013546.P13397491182386949222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013536 (A004277 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A013546.P13397491182386949222

/-! ## A013546.P6820015325701491801

`A013536(A005843(n))^A178489(n)`
-/

namespace A013546.P6820015325701491801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013536 (A005843 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A013546.P6820015325701491801

/-! ## A013546.P16507590843065981144

`A013536(A005843(n))%A013507(n)`
-/

namespace A013546.P16507590843065981144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013536 (A005843 n).toNat) (A013507 n)

end

end A013546.P16507590843065981144

/-!
# A013550: Numerator of the coefficient of [x^n] in the Taylor expansion exp(cot(x) - cosech(x)).

The programs for A013550, there is no canonical definition to state claims against.
-/

/-! ## A013550.P5384720426910225809

`A294461(lcm(n, A350489(n)))`
-/

namespace A013550.P5384720426910225809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294461 (Int.lcm (n : ℤ) (A350489 n))

end

end A013550.P5384720426910225809

/-!
# A013551: Numerator of [x^n] in the Taylor expansion exp(cot(x)-coth(x))= 1-2*x/3 +2x^2/9 -4*x^3/81 +2*x^4/243 -136*x^5/25515 +676*x^6/229635 -...

The programs for A013551, there is no canonical definition to state claims against.
-/

/-! ## A013551.P1839834242589641884

`A126617(n)+A126595(ceil(A100828(n)/2))`
-/

namespace A013551.P1839834242589641884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126617 n + A126595 ⌈(A100828 n : ℚ) / 2⌉.toNat

end

end A013551.P1839834242589641884

/-! ## A013551.P4552352271330838979

`A126617(n)+A126595(A247311(3*(n+1)))`
-/

namespace A013551.P4552352271330838979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126617 n + A126595 (A247311 (3 * (n + 1))).toNat

end

end A013551.P4552352271330838979

/-!
# A013552: Numerator of [x^(2n+1)] of the Taylor series sin(cot(x)-coth(x)).

The programs for A013552, there is no canonical definition to state claims against.
-/

/-! ## A013552.P1170115166402211016

`A013551(2*n+1)*A033999(n)`
-/

namespace A013552.P1170115166402211016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013551 (2 * n + 1) * A033999 n

end

end A013552.P1170115166402211016

/-! ## A013552.P18221010147103162409

`A013551(A005408(n))/A033999(n)`
-/

namespace A013552.P18221010147103162409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013551 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013552.P18221010147103162409

/-!
# A013556: Numerator of [x^(2n)] of the Taylor series cos(cot(x)-coth(x))= 1 -2*x^2/9 +2*x^4/243 -676*x^6/229635 +62*x^8/295245 -...

The programs for A013556, there is no canonical definition to state claims against.
-/

/-! ## A013556.P7721981815147893610

`A013551(2*n)/(-1)^n`
-/

namespace A013556.P7721981815147893610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013551 (2 * n) : ℚ) / ((-1) ^ n : ℚ)

end

end A013556.P7721981815147893610

/-! ## A013556.P2689494543882912045

`A013551(2*n)*A033999(n)`
-/

namespace A013556.P2689494543882912045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013551 (2 * n) * A033999 n

end

end A013556.P2689494543882912045

/-!
# A013558: E.g.f. -log(sech(x) - log(x+1)).

The programs for A013558, there is no canonical definition to state claims against.
-/

/-! ## A013558.P4107028806735464743

`A042132(n)%A331913(A042237(n))`
-/

namespace A013558.P4107028806735464743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042132 n) (A331913 (A042237 n).toNat)

end

end A013558.P4107028806735464743

/-! ## A013558.P12587468641320751880

`A322118(A347448(n))*A350338(n+1)`
-/

namespace A013558.P12587468641320751880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322118 (A347448 n).toNat * A350338 (n + 1)

end

end A013558.P12587468641320751880

/-!
# A013560: Cardinality of the permutation (k, k-1, ..., 2, 1)(n, n-1, ..., k+1) in an exchange shuffle applied in all n^n possible ways to (1,2,...,n).

The programs for A013560, there is no canonical definition to state claims against.
-/

/-! ## A013560.P17664754977656862623

`A192053(n+1)`
-/

namespace A013560.P17664754977656862623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192053 (n + 1)

end

end A013560.P17664754977656862623

/-! ## A013560.P11025513123566091064

`A127757(A135345(n)+1)`
-/

namespace A013560.P11025513123566091064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A135345 n + 1).toNat

end

end A013560.P11025513123566091064

/-! ## A013560.P9810284708883834750

`A127757(or(n, A135345(n)))`
-/

namespace A013560.P9810284708883834750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (Int.lor (n : ℤ) (A135345 n)).toNat

end

end A013560.P9810284708883834750

/-!
# A013562: E.g.f. arcsin(log(x+1)/exp(x)).

The programs for A013562, there is no canonical definition to state claims against.
-/

/-! ## A013562.P14169702775778104702

`or(A009584(n), A185274(A009542(n)))`
-/

namespace A013562.P14169702775778104702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009584 n) (A185274 (A009542 n).toNat)

end

end A013562.P14169702775778104702

/-!
# A013563: Expansion of e.g.f. arctan(log(x+1)/exp(x)).

The programs for A013563, there is no canonical definition to state claims against.
-/

/-! ## A013563.P7680396518929952294

`A354104(A354132(n))+A279343(n+1)`
-/

namespace A013563.P7680396518929952294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354104 (A354132 n).toNat + A279343 (n + 1)

end

end A013563.P7680396518929952294

/-!
# A013564: Expansion of e.g.f. arcsinh(log(x+1)/exp(x)).

The programs for A013564, there is no canonical definition to state claims against.
-/

/-! ## A013564.P16569921045141503884

`A292518(A292537(n+1))-A065109(n)`
-/

namespace A013564.P16569921045141503884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292518 (A292537 (n + 1)).toNat - A065109 n

end

end A013564.P16569921045141503884

/-!
# A013568: Almost certainly an erroneous version of A317209.

The programs for A013568, there is no canonical definition to state claims against.
-/

/-! ## A013568.P15542713035604029402

`A292068(A212959(n))+A255326(n)`
-/

namespace A013568.P15542713035604029402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292068 (A212959 n).toNat + A255326 n

end

end A013568.P15542713035604029402

/-! ## A013568.P6697324591157523531

`A105540(A006356(n))-A352034(n+1)`
-/

namespace A013568.P6697324591157523531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105540 (A006356 n).toNat - A352034 (n + 1)

end

end A013568.P6697324591157523531

/-!
# A013569: Expansion of e.g.f. exp(arcsin(x)/exp(x)).

The programs for A013569, there is no canonical definition to state claims against.
-/

/-! ## A013569.P10197895286414114248

`(A012325(n)-A012321(n))*A033999(n)`
-/

namespace A013569.P10197895286414114248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A012325 n - A012321 n) * A033999 n

end

end A013569.P10197895286414114248

/-!
# A013571: Expansion of e.g.f. exp(arctan(x)/exp(x)).

The programs for A013571, there is no canonical definition to state claims against.
-/

/-! ## A013571.P16382757848377699694

`or(A009276(n), A343379(A009006(n)))`
-/

namespace A013571.P16382757848377699694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009276 n) (A343379 (A009006 n).toNat)

end

end A013571.P16382757848377699694

/-! ## A013571.P622611023126004761

`or(A000194(A126122(n+1)), A009276(n))`
-/

namespace A013571.P622611023126004761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000194 (A126122 (n + 1)).toNat) (A009276 n)

end

end A013571.P622611023126004761

/-!
# A013572: Expansion of e.g.f. of exp(arcsinh(x)/exp(x)).

The programs for A013572, there is no canonical definition to state claims against.
-/

/-! ## A013572.P13551976564246424410

`or(A000120(A266069(n)), A009216(n))`
-/

namespace A013572.P13551976564246424410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A266069 n).toNat) (A009216 n)

end

end A013572.P13551976564246424410

/-! ## A013572.P5227633516503824611

`or(A009191(A308310(n+1)), A009216(n))`
-/

namespace A013572.P5227633516503824611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009191 (A308310 (n + 1)).toNat) (A009216 n)

end

end A013572.P5227633516503824611

/-!
# A013573: Expansion of e.g.f. exp(arctanh(x)/exp(x)).

The programs for A013573, there is no canonical definition to state claims against.
-/

/-! ## A013573.P2191716227144561015

`(A012718(n)-A012715(n))*A033999(n)`
-/

namespace A013573.P2191716227144561015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A012718 n - A012715 n) * A033999 n

end

end A013573.P2191716227144561015

/-! ## A013573.P13492719549633899287

`(A012718(n)-A012715(n))/A033999(n+2)`
-/

namespace A013573.P13492719549633899287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012718 n - A012715 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A013573.P13492719549633899287

/-!
# A013574: Minimal scope of an (n,2) difference triangle.

The programs for A013574, the canonical program `A013574.P10430781450455716447` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013574 has offset 1).

The definition of A013574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013574.P10430781450455716447

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=3, a(1)=7, a(2)=10, a(3)=12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013574

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P10430781450455716447.Spec : Prop :=
  ∀ n, P10430781450455716447.a n = A013574 (n + 1)

theorem P10430781450455716447.correct : P10430781450455716447.Spec := by
  intro n
  simp only [A013574, Nat.add_sub_cancel]

end A013574

/-! ## A013574.P12671556718038478908

`∑[C(2, and(3, n))+2]`
-/

namespace A013574.P12671556718038478908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 3 n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013574.P12671556718038478908

namespace A013574

/-- `∑[C(2, and(3, n))+2]` -/
def P12671556718038478908.Spec : Prop :=
  ∀ n, (P12671556718038478908.a n : ℤ) = A013574 (n + 1)

end A013574

/-! ## A013574.P17689595945281376284

`∑[sin(n*asin(1))+3]`
-/

namespace A013574.P17689595945281376284
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin ((n : ℝ) * Real.arcsin (1 : ℝ)) + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013574.P17689595945281376284

namespace A013574

/-- `∑[sin(n*asin(1))+3]` -/
def P17689595945281376284.Spec : Prop :=
  ∀ n, P17689595945281376284.a n = (A013574 (n + 1) : ℝ)

end A013574

/-! ## A013574.P14946130439853156939

`∑[6-a(n-2)]` with `a(0)=3, a(1)=4`
-/

namespace A013574.P14946130439853156939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013574.P14946130439853156939

namespace A013574

/-- `∑[6-a(n-2)]` -/
def P14946130439853156939.Spec : Prop :=
  ∀ n, P14946130439853156939.a n = A013574 (n + 1)

end A013574

/-! ## A013574.P14062305310760311275

`∑[∑[1-and(2, n)]+2]`
-/

namespace A013574.P14062305310760311275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013574.P14062305310760311275

namespace A013574

/-- `∑[∑[1-and(2, n)]+2]` -/
def P14062305310760311275.Spec : Prop :=
  ∀ n, P14062305310760311275.a n = A013574 (n + 1)

end A013574

/-! ## A013574.P9391597888702242626

`∑[2-∑[and(2, n)-1]]`
-/

namespace A013574.P9391597888702242626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013574.P9391597888702242626

namespace A013574

/-- `∑[2-∑[and(2, n)-1]]` -/
def P9391597888702242626.Spec : Prop :=
  ∀ n, P9391597888702242626.a n = A013574 (n + 1)

end A013574

/-! ## A013574.P6875549605033062567

`a(n-4)+12` with `a(0)=3, a(1)=7, a(2)=10, a(3)=12`
-/

namespace A013574.P6875549605033062567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 10, 12] fun n a =>
  a (n - 4) + 12

end

end A013574.P6875549605033062567

namespace A013574

/-- `a(n-4)+12` -/
def P6875549605033062567.Spec : Prop :=
  ∀ n, (P6875549605033062567.a n : ℤ) = A013574 (n + 1)

end A013574

/-! ## A013574.P16857230270092354110

`∑[(n^3+1)%4+2]`
-/

namespace A013574.P16857230270092354110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 3 + 1) % 4 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013574.P16857230270092354110

namespace A013574

/-- `∑[(n^3+1)%4+2]` -/
def P16857230270092354110.Spec : Prop :=
  ∀ n, (P16857230270092354110.a n : ℤ) = A013574 (n + 1)

end A013574

/-! ## A013574.P4129843644396622214

`∑[n]%2+3*(n+1)`
-/

namespace A013574.P4129843644396622214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2 + 3 * (n + 1)

end

end A013574.P4129843644396622214

namespace A013574

/-- `∑[n]%2+3*(n+1)` -/
def P4129843644396622214.Spec : Prop :=
  ∀ n, (P4129843644396622214.a n : ℤ) = A013574 (n + 1)

end A013574

/-! ## A013574.P17869957977509395010

`and(1, ∑[n])+3*(n+1)`
-/

namespace A013574.P17869957977509395010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 3 * (n + 1)

end

end A013574.P17869957977509395010

namespace A013574

/-- `and(1, ∑[n])+3*(n+1)` -/
def P17869957977509395010.Spec : Prop :=
  ∀ n, (P17869957977509395010.a n : ℤ) = A013574 (n + 1)

end A013574

/-! ## A013574.P4164036117831070813

`3*n-gcd(2, ∑[n])+5`
-/

namespace A013574.P4164036117831070813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + 5

end

end A013574.P4164036117831070813

namespace A013574

/-- `3*n-gcd(2, ∑[n])+5` -/
def P4164036117831070813.Spec : Prop :=
  ∀ n, P4164036117831070813.a n = A013574 (n + 1)

end A013574

/-! ## A013574.P14858964127295696077

`∑[3-cos((n+1)*asin(1))]`
-/

namespace A013574.P14858964127295696077
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 - Real.cos ((n + 1 : ℝ) * Real.arcsin (1 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013574.P14858964127295696077

namespace A013574

/-- `∑[3-cos((n+1)*asin(1))]` -/
def P14858964127295696077.Spec : Prop :=
  ∀ n, P14858964127295696077.a n = (A013574 (n + 1) : ℝ)

end A013574

/-! ## A013574.P13782066703688131354

`∑[∑[(-1)^floor(n/2)]+2]`
-/

namespace A013574.P13782066703688131354
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013574.P13782066703688131354

namespace A013574

/-- `∑[∑[(-1)^floor(n/2)]+2]` -/
def P13782066703688131354.Spec : Prop :=
  ∀ n, P13782066703688131354.a n = (A013574 (n + 1) : ℚ)

end A013574

/-! ## A013574.P4745141779507164165

`1-(a(n-2)-6*n)` with `a(0)=3, a(1)=7`
-/

namespace A013574.P4745141779507164165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n a =>
  1 - (a (n - 2) - (6 * n : ℤ))

end

end A013574.P4745141779507164165

namespace A013574

/-- `1-(a(n-2)-6*n)` -/
def P4745141779507164165.Spec : Prop :=
  ∀ n, P4745141779507164165.a n = A013574 (n + 1)

end A013574

/-! ## A013574.P4251729043928834837

`and(2, n+1)!+3*n+2`
-/

namespace A013574.P4251729043928834837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 (n + 1)) + (3 * n + 2)

end

end A013574.P4251729043928834837

namespace A013574

/-- `and(2, n+1)!+3*n+2` -/
def P4251729043928834837.Spec : Prop :=
  ∀ n, (P4251729043928834837.a n : ℤ) = A013574 (n + 1)

end A013574

/-! ## A013574.P16964517414715610450

`record[xor(n, 5^and(1, n))]+2+n`
-/

namespace A013574.P16964517414715610450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (5 ^ Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 + n

end

end A013574.P16964517414715610450

namespace A013574

/-- `record[xor(n, 5^and(1, n))]+2+n` -/
def P16964517414715610450.Spec : Prop :=
  ∀ n, (P16964517414715610450.a n : ℤ) = A013574 (n + 1)

end A013574

/-! ## A013574.P13609581123068744422

`and(2, n+1)/2+2*n+n+3`
-/

namespace A013574.P13609581123068744422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 (n + 1) : ℚ) / 2 + (2 * n + (n + 3) : ℚ)

end

end A013574.P13609581123068744422

namespace A013574

/-- `and(2, n+1)/2+2*n+n+3` -/
def P13609581123068744422.Spec : Prop :=
  ∀ n, P13609581123068744422.a n = (A013574 (n + 1) : ℚ)

end A013574

/-! ## A013574.P9358338401204447642

`and(1, C(n+1, 2))+2*n+n+3`
-/

namespace A013574.P9358338401204447642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose (n + 1) 2) + 2 * n + (n + 3)

end

end A013574.P9358338401204447642

namespace A013574

/-- `and(1, C(n+1, 2))+2*n+n+3` -/
def P9358338401204447642.Spec : Prop :=
  ∀ n, (P9358338401204447642.a n : ℤ) = A013574 (n + 1)

end A013574

/-!
# A013576: Minimal scope of an (n,4) difference triangle.

The programs for A013576, there is no canonical definition to state claims against.
-/

/-! ## A013576.P5226493509670987504

`∑[11-A321101(A086520(n))]`
-/

namespace A013576.P5226493509670987504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - A321101 (A086520 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013576.P5226493509670987504

/-! ## A013576.P15486642778025696809

`A092910(A001045(n))+A017365(n)`
-/

namespace A013576.P15486642778025696809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092910 (A001045 n).toNat + A017365 n

end

end A013576.P15486642778025696809

/-! ## A013576.P14153036619396735675

`∑[A010892(A006882(n))+10]`
-/

namespace A013576.P14153036619396735675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A006882 n).toNat + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013576.P14153036619396735675

/-!
# A013580: Triangle formed in same way as Pascal's triangle (A007318) except 1 is added to central element in even-numbered rows.

The programs for A013580, there is no canonical definition to state claims against.
-/

/-! ## A013580.P1529037956014400325

`ceil(A054110(n)/2)`
-/

namespace A013580.P1529037956014400325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054110 n : ℚ) / 2⌉

end

end A013580.P1529037956014400325

/-! ## A013580.P4139999896179098441

`floor((A054110(n)+1)/dr(A001504(n)))`
-/

namespace A013580.P4139999896179098441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054110 n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (A001504 n) : ℚ)⌋

end

end A013580.P4139999896179098441

/-! ## A013580.P6195412385404488876

`A231147(A001614(n+1))`
-/

namespace A013580.P6195412385404488876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231147 (A001614 (n + 1)).toNat

end

end A013580.P6195412385404488876

/-! ## A013580.P3727754731140903042

`A231147(2*n+1-A003056(n))`
-/

namespace A013580.P3727754731140903042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231147 ((2 * n + 1 : ℤ) - A003056 n).toNat

end

end A013580.P3727754731140903042

/-! ## A013580.P3511058245552632307

`round(A054110(n)/2*A000034(2*n))`
-/

namespace A013580.P3511058245552632307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A054110 n : ℚ) / 2 * (A000034 (2 * n) : ℚ))

end

end A013580.P3511058245552632307

/-! ## A013580.P8909540597993769235

`A231147(A118011(n+1))`
-/

namespace A013580.P8909540597993769235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231147 (A118011 (n + 1)).toNat

end

end A013580.P8909540597993769235

/-! ## A013580.P14539403967978283051

`round((A054110(n)/2)^(A337562(n)-A337561(n)))`
-/

namespace A013580.P14539403967978283051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A054110 n : ℚ) / 2) ^ (A337562 n - A337561 n : ℤ))

end

end A013580.P14539403967978283051

/-! ## A013580.P3365798209861345891

`A038572(A054110(n)+A003982(n))`
-/

namespace A013580.P3365798209861345891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A054110 n + A003982 n).toNat

end

end A013580.P3365798209861345891

/-! ## A013580.P11502978357627186711

`A004525(A054110(n))`
-/

namespace A013580.P11502978357627186711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A054110 n).toNat

end

end A013580.P11502978357627186711

/-! ## A013580.P6741678911968381248

`A004526(A054110(n)+1)`
-/

namespace A013580.P6741678911968381248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A054110 n + 1).toNat

end

end A013580.P6741678911968381248

/-! ## A013580.P8779615973990584660

`A008619(A054110(n)-1)`
-/

namespace A013580.P8779615973990584660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A054110 n - 1).toNat

end

end A013580.P8779615973990584660

/-! ## A013580.P11923647317544764180

`A140106(A054110(n)+3)`
-/

namespace A013580.P11923647317544764180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A054110 n + 3).toNat

end

end A013580.P11923647317544764180

/-! ## A013580.P9824548706940927746

`A028242(xor(1, A054110(n)))`
-/

namespace A013580.P9824548706940927746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A054110 n)).toNat

end

end A013580.P9824548706940927746

/-! ## A013580.P3400733270297735220

`A065033(A054110(n)%(n+1)²)`
-/

namespace A013580.P3400733270297735220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.tmod (A054110 n) ((n + 1) ^ 2 : ℤ)).toNat

end

end A013580.P3400733270297735220

/-! ## A013580.P10618327004043251913

`A065033(or(A000007(n), A054110(n)))`
-/

namespace A013580.P10618327004043251913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.lor (A000007 n) (A054110 n)).toNat

end

end A013580.P10618327004043251913

/-! ## A013580.P6737240298949366856

`A065033(A007318(C(2, n)²)*A054110(n))`
-/

namespace A013580.P6737240298949366856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A007318 (Nat.choose 2 n ^ 2) * A054110 n).toNat

end

end A013580.P6737240298949366856

/-! ## A013580.P14925021732146076719

`A361079(A115216(n))`
-/

namespace A013580.P14925021732146076719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361079 (A115216 n).toNat

end

end A013580.P14925021732146076719

/-!
# A013582: Number of positions in game "Connect Four" (played on usual 6-row, 7-column board) after n moves, up to reflection.

The programs for A013582, there is no canonical definition to state claims against.
-/

/-! ## A013582.P7477918348929312136

`A065033(A212693(n)+A212661(n+3)²)`
-/

namespace A013582.P7477918348929312136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A212693 n + A212661 (n + 3) ^ 2).toNat

end

end A013582.P7477918348929312136

/-!
# A013583: Smallest positive number that can be written as sum of distinct Fibonacci numbers in n ways.

The programs for A013583, there is no canonical definition to state claims against.
-/

/-! ## A013583.P699062602671801735

`floor(ϕ²*A083853(n+1))+1`
-/

namespace A013583.P699062602671801735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ 2 * (A083853 (n + 1) : ℝ)⌋ + 1

end

end A013583.P699062602671801735

/-! ## A013583.P2027021402435905312

`A026352(A083853(n+1))`
-/

namespace A013583.P2027021402435905312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (A083853 (n + 1)).toNat

end

end A013583.P2027021402435905312

/-! ## A013583.P10519075261983296644

`A055635(n+1)-A083853(n+1)`
-/

namespace A013583.P10519075261983296644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055635 (n + 1) - A083853 (n + 1)

end

end A013583.P10519075261983296644

/-! ## A013583.P9751390912409484940

`ceil(A000007(n)+ϕ²*A083853(n+1))`
-/

namespace A013583.P9751390912409484940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000007 n : ℝ) + Real.goldenRatio ^ 2 * (A083853 (n + 1) : ℝ)⌉

end

end A013583.P9751390912409484940

/-! ## A013583.P16875810014579046313

`ceil((ϕ²*A083853(n+1))^A019426(2*n))`
-/

namespace A013583.P16875810014579046313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio ^ 2 * (A083853 (n + 1) : ℝ)) ^ (A019426 (2 * n) : ℤ)⌉

end

end A013583.P16875810014579046313

/-! ## A013583.P11856288130548513572

`A004957(A083853(n+1))+A000007(n)`
-/

namespace A013583.P11856288130548513572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A083853 (n + 1)).toNat + A000007 n

end

end A013583.P11856288130548513572

/-! ## A013583.P1815561606738213093

`A151878(n)+A004957(A083853(n+1))`
-/

namespace A013583.P1815561606738213093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A004957 (A083853 (n + 1)).toNat

end

end A013583.P1815561606738213093

/-! ## A013583.P5194610311869481516

`A004957(A083853(n+1))+C(2, A004957(n))`
-/

namespace A013583.P5194610311869481516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A083853 (n + 1)).toNat + (Nat.choose 2 (A004957 n).toNat : ℤ)

end

end A013583.P5194610311869481516

/-! ## A013583.P11726566392997215543

`A004957(A083853(n+1))+A008683((n+1)²)`
-/

namespace A013583.P11726566392997215543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A083853 (n + 1)).toNat + A008683 ((n + 1) ^ 2)

end

end A013583.P11726566392997215543

/-! ## A013583.P2937290259686334357

`A187945(A347349(n+1))`
-/

namespace A013583.P2937290259686334357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187945 (A347349 (n + 1)).toNat

end

end A013583.P2937290259686334357

/-!
# A013586: Smallest prime p such that n divides one of f(p)-1, f(p) or f(p)+1, where f(p) is product of primes <= p, or 0 if no such p exists.

The programs for A013586, there is no canonical definition to state claims against.
-/

/-! ## A013586.P3241958155262223392

`A008966(n+1)*A046026(∑[A008966(n+1)])`
-/

namespace A013586.P3241958155262223392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A046026 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A013586.P3241958155262223392

/-!
# A013588: Smallest positive integer not the determinant of an n X n {0,1}-matrix.

The programs for A013588, there is no canonical definition to state claims against.
-/

/-! ## A013588.P9322130296222681688

`A051236(n+1)+1`
-/

namespace A013588.P9322130296222681688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051236 (n + 1) + 1

end

end A013588.P9322130296222681688

/-! ## A013588.P15372416013928047083

`A130581(n)+A333321(n)+1`
-/

namespace A013588.P15372416013928047083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130581 n + (A333321 n + 1)

end

end A013588.P15372416013928047083

/-! ## A013588.P8108719192501282447

`∑[or(A171367(n), A332284(n))]+1`
-/

namespace A013588.P8108719192501282447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A171367 n) (A332284 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A013588.P8108719192501282447

/-! ## A013588.P12531773280425168420

`A047169(n+1)+A130581(n)+1`
-/

namespace A013588.P12531773280425168420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047169 (n + 1) + (A130581 n + 1)

end

end A013588.P12531773280425168420

/-! ## A013588.P12350312995859535205

`A130581(n)+A042027(A118729(n))`
-/

namespace A013588.P12350312995859535205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130581 n + A042027 (A118729 n).toNat

end

end A013588.P12350312995859535205

/-!
# A013589: a(n+1) = a(n)*(a(n)+1)/2.

The programs for A013589, there is no canonical definition to state claims against.
-/

/-! ## A013589.P14535401631410179582

`C(a(n-1)+1, 2)` with `a(0)=4`
-/

namespace A013589.P14535401631410179582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.choose (a (n - 1) + 1) 2

end

end A013589.P14535401631410179582

/-! ## A013589.P6194593716048829518

`floor((a(n-1)+1/2)²/2)` with `a(0)=4`
-/

namespace A013589.P6194593716048829518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊((a (n - 1) : ℚ) + (1 : ℚ) / 2) ^ 2 / 2⌋

end

end A013589.P6194593716048829518

/-! ## A013589.P10210537010515091543

`(a(n-1)+a(n-1)²)/2` with `a(0)=4`
-/

namespace A013589.P10210537010515091543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (a (n - 1) + a (n - 1) ^ 2) / 2

end

end A013589.P10210537010515091543

/-! ## A013589.P13423298869092084483

`a(n-1)²-C(a(n-1), 2)` with `a(0)=4`
-/

namespace A013589.P13423298869092084483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) ^ 2 - (Nat.choose (a (n - 1)).toNat 2 : ℤ)

end

end A013589.P13423298869092084483

/-! ## A013589.P1110062742400068148

`(a(n-1)+1)/2*a(n-1)` with `a(0)=4`
-/

namespace A013589.P1110062742400068148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (a (n - 1) + 1) / 2 * a (n - 1)

end

end A013589.P1110062742400068148

/-!
# A013592: Orders of cyclotomic polynomials containing a coefficient the absolute value of which is >= 4.

The programs for A013592, there is no canonical definition to state claims against.
-/

/-! ## A013592.P5949758596767322304

`A006085(A189984(n+2))`
-/

namespace A013592.P5949758596767322304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A189984 (n + 2)).toNat

end

end A013592.P5949758596767322304

/-!
# A013593: Orders of cyclotomic polynomials containing a coefficient the absolute value of which is >= 5.

The programs for A013593, there is no canonical definition to state claims against.
-/

/-! ## A013593.P495285748542374843

`A013592(A178805(n+1)-n)`
-/

namespace A013593.P495285748542374843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013592 (A178805 (n + 1) - (n : ℤ)).toNat

end

end A013593.P495285748542374843

/-!
# A013594: Smallest order of cyclotomic polynomial containing n or -n as a coefficient.

The programs for A013594, there is no canonical definition to state claims against.
-/

/-! ## A013594.P9917783083559719804

`A019530(A160340(n+1))`
-/

namespace A013594.P9917783083559719804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019530 (A160340 (n + 1)).toNat

end

end A013594.P9917783083559719804

/-! ## A013594.P1929843667936238321

`A131738(A160340(n+1)-1)`
-/

namespace A013594.P1929843667936238321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (A160340 (n + 1) - 1).toNat

end

end A013594.P1929843667936238321

/-! ## A013594.P6717046286697603811

`A326178(A160340(n+1)-1)`
-/

namespace A013594.P6717046286697603811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A160340 (n + 1) - 1).toNat

end

end A013594.P6717046286697603811

/-! ## A013594.P15864789242555743989

`A184985(or(1, A160340(n+1)))`
-/

namespace A013594.P15864789242555743989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (Int.lor 1 (A160340 (n + 1))).toNat

end

end A013594.P15864789242555743989

/-!
# A013595: Irregular triangle read by rows: coefficients of cyclotomic polynomial Phi_n(x) (exponents in increasing order).

The programs for A013595, there is no canonical definition to state claims against.
-/

/-! ## A013595.P2137558898604170840

`A013596(1-A130544(n)+n)`
-/

namespace A013595.P2137558898604170840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013596 (1 - A130544 n + (n : ℤ)).toNat

end

end A013595.P2137558898604170840

/-! ## A013595.P4082543717743835257

`A013596(char[C(n, A000045(n))]+n)`
-/

namespace A013595.P4082543717743835257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A000045 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013596 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A013595.P4082543717743835257

/-! ## A013595.P2223160945724893667

`A013596(char[C(n, A036721(n))]+n)`
-/

namespace A013595.P2223160945724893667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A036721 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013596 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A013595.P2223160945724893667

/-! ## A013595.P11291349100136034058

`A013596(char[C(n+1, A002190(n))]+n)`
-/

namespace A013595.P11291349100136034058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A002190 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013596 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A013595.P11291349100136034058

/-! ## A013595.P10916777143420276208

`A013596(char[C(n, A127603(n+1))]+n)`
-/

namespace A013595.P10916777143420276208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A127603 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013596 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A013595.P10916777143420276208

/-! ## A013595.P9061879253820891745

`A013596(A160755(n+1))`
-/

namespace A013595.P9061879253820891745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013596 (A160755 (n + 1)).toNat

end

end A013595.P9061879253820891745

/-!
# A013596: Irregular triangle of coefficients of cyclotomic polynomial Phi_n(x) (exponents in decreasing order).

The programs for A013596, there is no canonical definition to state claims against.
-/

/-! ## A013596.P11162298364366776155

`A013595(xor(n, A329678(n)))`
-/

namespace A013596.P11162298364366776155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013595 (Int.xor (n : ℤ) (A329678 n)).toNat

end

end A013596.P11162298364366776155

/-!
# A013597: a(n) = nextprime(2^n) - 2^n.

The programs for A013597, the canonical program `A013597.P2064454081418839404` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013597 has offset 0).

The definition of A013597 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A013597.P1413618757731768693

`A151800(2^n)-2^n`
-/

namespace A013597.P1413618757731768693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 ^ n) - (2 ^ n : ℤ)

end

end A013597.P1413618757731768693

namespace A013597

/-- `A151800(2^n)-2^n` -/
def P1413618757731768693.Spec : Prop :=
  ∀ n, P1413618757731768693.a n = A013597 n

end A013597

/-! ## A013597.P2064454081418839404

`A013632(2^n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A013597

/-- `A013632(2^n)` -/
def P2064454081418839404.Spec : Prop :=
  ∀ n, P2064454081418839404.a n = A013597 n

theorem P2064454081418839404.correct : P2064454081418839404.Spec := by
  intro n
  simp only [A013597]

end A013597

/-! ## A013597.P8987517477096377517

`A092131(A233583(n+1))`
-/

namespace A013597.P8987517477096377517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (A233583 (n + 1)).toNat

end

end A013597.P8987517477096377517

namespace A013597

/-- `A092131(A233583(n+1))` -/
def P8987517477096377517.Spec : Prop :=
  ∀ n, P8987517477096377517.a n = A013597 n

end A013597

/-! ## A013597.P15173591538350170230

`A037035(n)+1`
-/

namespace A013597.P15173591538350170230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037035 n + 1

end

end A013597.P15173591538350170230

namespace A013597

/-- `A037035(n)+1` -/
def P15173591538350170230.Spec : Prop :=
  ∀ n, P15173591538350170230.a n = A013597 n

end A013597

/-! ## A013597.P8267584748387123288

`A004442(A037035(n))`
-/

namespace A013597.P8267584748387123288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A037035 n).toNat

end

end A013597.P8267584748387123288

namespace A013597

/-- `A004442(A037035(n))` -/
def P8267584748387123288.Spec : Prop :=
  ∀ n, P8267584748387123288.a n = A013597 n

end A013597

/-! ## A013597.P6278412050467677104

`A014210(n)-2^n`
-/

namespace A013597.P6278412050467677104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n - (2 ^ n : ℤ)

end

end A013597.P6278412050467677104

namespace A013597

/-- `A014210(n)-2^n` -/
def P6278412050467677104.Spec : Prop :=
  ∀ n, P6278412050467677104.a n = A013597 n

end A013597

/-! ## A013597.P8900242068699525641

`A203074(n+1)-2^n`
-/

namespace A013597.P8900242068699525641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 (n + 1) - (2 ^ n : ℤ)

end

end A013597.P8900242068699525641

namespace A013597

/-- `A203074(n+1)-2^n` -/
def P8900242068699525641.Spec : Prop :=
  ∀ n, P8900242068699525641.a n = A013597 n

end A013597

/-! ## A013597.P14454684374545258181

`xor(A014210(n), A171559(n))`
-/

namespace A013597.P14454684374545258181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014210 n) (A171559 n)

end

end A013597.P14454684374545258181

namespace A013597

/-- `xor(A014210(n), A171559(n))` -/
def P14454684374545258181.Spec : Prop :=
  ∀ n, P14454684374545258181.a n = A013597 n

end A013597

/-! ## A013597.P13815735512579283992

`and(A104080(n), A296965(n))+1`
-/

namespace A013597.P13815735512579283992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104080 n) (A296965 n) + 1

end

end A013597.P13815735512579283992

namespace A013597

/-- `and(A104080(n), A296965(n))+1` -/
def P13815735512579283992.Spec : Prop :=
  ∀ n, P13815735512579283992.a n = A013597 n

end A013597

/-! ## A013597.P12067609466572277436

`and(A014210(n), A056453(n+1))+1`
-/

namespace A013597.P12067609466572277436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014210 n) (A056453 (n + 1)) + 1

end

end A013597.P12067609466572277436

namespace A013597

/-- `and(A014210(n), A056453(n+1))+1` -/
def P12067609466572277436.Spec : Prop :=
  ∀ n, P12067609466572277436.a n = A013597 n

end A013597

/-! ## A013597.P18113519976039343399

`and(A056453(n+1), A104080(n))+1`
-/

namespace A013597.P18113519976039343399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056453 (n + 1)) (A104080 n) + 1

end

end A013597.P18113519976039343399

namespace A013597

/-- `and(A056453(n+1), A104080(n))+1` -/
def P18113519976039343399.Spec : Prop :=
  ∀ n, P18113519976039343399.a n = A013597 n

end A013597

/-! ## A013597.P15055845878654901349

`and(A014210(n), A033484(n))+1`
-/

namespace A013597.P15055845878654901349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014210 n) (A033484 n) + 1

end

end A013597.P15055845878654901349

namespace A013597

/-- `and(A014210(n), A033484(n))+1` -/
def P15055845878654901349.Spec : Prop :=
  ∀ n, P15055845878654901349.a n = A013597 n

end A013597

/-! ## A013597.P15565055976114923517

`and(A033484(n), A104080(n))+1`
-/

namespace A013597.P15565055976114923517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033484 n) (A104080 n) + 1

end

end A013597.P15565055976114923517

namespace A013597

/-- `and(A033484(n), A104080(n))+1` -/
def P15565055976114923517.Spec : Prop :=
  ∀ n, P15565055976114923517.a n = A013597 n

end A013597

/-! ## A013597.P2192039692957610643

`and(A014210(n), A134062(n))+1`
-/

namespace A013597.P2192039692957610643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014210 n) (A134062 n) + 1

end

end A013597.P2192039692957610643

namespace A013597

/-- `and(A014210(n), A134062(n))+1` -/
def P2192039692957610643.Spec : Prop :=
  ∀ n, P2192039692957610643.a n = A013597 n

end A013597

/-! ## A013597.P11003804684164596460

`and(A014210(n), A176448(n))+1`
-/

namespace A013597.P11003804684164596460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014210 n) (A176448 n) + 1

end

end A013597.P11003804684164596460

namespace A013597

/-- `and(A014210(n), A176448(n))+1` -/
def P11003804684164596460.Spec : Prop :=
  ∀ n, P11003804684164596460.a n = A013597 n

end A013597

/-! ## A013597.P12367451188974108023

`and(A104080(n), A134062(n))+1`
-/

namespace A013597.P12367451188974108023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104080 n) (A134062 n) + 1

end

end A013597.P12367451188974108023

namespace A013597

/-- `and(A104080(n), A134062(n))+1` -/
def P12367451188974108023.Spec : Prop :=
  ∀ n, P12367451188974108023.a n = A013597 n

end A013597

/-! ## A013597.P13841252728171809921

`and(A104080(n), A176448(n))+1`
-/

namespace A013597.P13841252728171809921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104080 n) (A176448 n) + 1

end

end A013597.P13841252728171809921

namespace A013597

/-- `and(A104080(n), A176448(n))+1` -/
def P13841252728171809921.Spec : Prop :=
  ∀ n, P13841252728171809921.a n = A013597 n

end A013597

/-! ## A013597.P5903351462541389920

`A037127(n)-A037128(n)`
-/

namespace A013597.P5903351462541389920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037127 n - A037128 n

end

end A013597.P5903351462541389920

namespace A013597

/-- `A037127(n)-A037128(n)` -/
def P5903351462541389920.Spec : Prop :=
  ∀ n, P5903351462541389920.a n = A013597 n

end A013597

/-! ## A013597.P5386597533379168892

`round(A203074(n+1)-sqrt(A203074(2*n+1)))`
-/

namespace A013597.P5386597533379168892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A203074 (n + 1) : ℝ) - Real.sqrt (A203074 (2 * n + 1) : ℝ))

end

end A013597.P5386597533379168892

namespace A013597

/-- `round(A203074(n+1)-sqrt(A203074(2*n+1)))` -/
def P5386597533379168892.Spec : Prop :=
  ∀ n, P5386597533379168892.a n = A013597 n

end A013597

/-!
# A013598: a(n) = nextprime(3^n)-3^n.

The programs for A013598, the canonical program `A013598.P2424592840134159747` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013598 has offset 0).

The definition of A013598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013598.P2424592840134159747

`A014211(n)-3^n`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A013598

/-- `A014211(n)-3^n` -/
def P2424592840134159747.Spec : Prop :=
  ∀ n, P2424592840134159747.a n = A013598 n

theorem P2424592840134159747.correct : P2424592840134159747.Spec := by
  intro n
  simp only [A013598]

end A013598

/-! ## A013598.P1131857894319183506

`A037127(n)-A001047(n)`
-/

namespace A013598.P1131857894319183506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037127 n - A001047 n

end

end A013598.P1131857894319183506

namespace A013598

/-- `A037127(n)-A001047(n)` -/
def P1131857894319183506.Spec : Prop :=
  ∀ n, P1131857894319183506.a n = A013598 n

end A013598

/-! ## A013598.P5840071106395817847

`abs(A000244(n)-A014211(n))`
-/

namespace A013598.P5840071106395817847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A014211 n|

end

end A013598.P5840071106395817847

namespace A013598

/-- `abs(A000244(n)-A014211(n))` -/
def P5840071106395817847.Spec : Prop :=
  ∀ n, P5840071106395817847.a n = A013598 n

end A013598

/-! ## A013598.P14475864802257531870

`A037127(n)-Δ[A134063(n)]`
-/

namespace A013598.P14475864802257531870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037127 n - (f1 (n + 1) - f1 n)

end

end A013598.P14475864802257531870

namespace A013598

/-- `A037127(n)-Δ[A134063(n)]` -/
def P14475864802257531870.Spec : Prop :=
  ∀ n, P14475864802257531870.a n = A013598 n

end A013598

/-! ## A013598.P2797275554926058542

`A014211(n)+1-A034472(n)`
-/

namespace A013598.P2797275554926058542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 n + 1 - A034472 n

end

end A013598.P2797275554926058542

namespace A013598

/-- `A014211(n)+1-A034472(n)` -/
def P2797275554926058542.Spec : Prop :=
  ∀ n, P2797275554926058542.a n = A013598 n

end A013598

/-! ## A013598.P14563622137137583856

`A000027(A014211(n)-A000244(n))`
-/

namespace A013598.P14563622137137583856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A014211 n - A000244 n).toNat

end

end A013598.P14563622137137583856

namespace A013598

/-- `A000027(A014211(n)-A000244(n))` -/
def P14563622137137583856.Spec : Prop :=
  ∀ n, P14563622137137583856.a n = A013598 n

end A013598

/-! ## A013598.P6645072547811594425

`A000079(n)+A037127(n)-A000244(n)`
-/

namespace A013598.P6645072547811594425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A037127 n - A000244 n)

end

end A013598.P6645072547811594425

namespace A013598

/-- `A000079(n)+A037127(n)-A000244(n)` -/
def P6645072547811594425.Spec : Prop :=
  ∀ n, P6645072547811594425.a n = A013598 n

end A013598

/-! ## A013598.P17565544816435505229

`A014210(n)+A037128(n)-A000244(n)`
-/

namespace A013598.P17565544816435505229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n + (A037128 n - A000244 n)

end

end A013598.P17565544816435505229

namespace A013598

/-- `A014210(n)+A037128(n)-A000244(n)` -/
def P17565544816435505229.Spec : Prop :=
  ∀ n, P17565544816435505229.a n = A013598 n

end A013598

/-! ## A013598.P15003308917096675032

`A007051(n)+A014211(n)-A007051(n+1)`
-/

namespace A013598.P15003308917096675032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + (A014211 n - A007051 (n + 1))

end

end A013598.P15003308917096675032

namespace A013598

/-- `A007051(n)+A014211(n)-A007051(n+1)` -/
def P15003308917096675032.Spec : Prop :=
  ∀ n, P15003308917096675032.a n = A013598 n

end A013598

/-! ## A013598.P1028742273467131036

`A078245(n+1)%2-(A000244(n)-A014211(n))`
-/

namespace A013598.P1028742273467131036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078245 (n + 1)) 2 - (A000244 n - A014211 n)

end

end A013598.P1028742273467131036

namespace A013598

/-- `A078245(n+1)%2-(A000244(n)-A014211(n))` -/
def P1028742273467131036.Spec : Prop :=
  ∀ n, P1028742273467131036.a n = A013598 n

end A013598

/-! ## A013598.P3465989108504271082

`A078222(n+1)%2-(A000244(n)-A014211(n))`
-/

namespace A013598.P3465989108504271082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078222 (n + 1)) 2 - (A000244 n - A014211 n)

end

end A013598.P3465989108504271082

namespace A013598

/-- `A078222(n+1)%2-(A000244(n)-A014211(n))` -/
def P3465989108504271082.Spec : Prop :=
  ∀ n, P3465989108504271082.a n = A013598 n

end A013598

/-!
# A013599: a(n) = nextprime(5^n) - 5^n.

The programs for A013599, there is no canonical definition to state claims against.
-/

/-! ## A013599.P16715846791612837624

`A054321(n)-5^n`
-/

namespace A013599.P16715846791612837624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054321 n - (5 ^ n : ℤ)

end

end A013599.P16715846791612837624

/-! ## A013599.P2226502906343961398

`abs(A000351(n)-A054321(n))`
-/

namespace A013599.P2226502906343961398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n - A054321 n|

end

end A013599.P2226502906343961398

/-! ## A013599.P9056822126525709125

`A249817(A054321(n)-A000351(n))`
-/

namespace A013599.P9056822126525709125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (A054321 n - A000351 n).toNat

end

end A013599.P9056822126525709125

/-! ## A013599.P9149135618804004784

`A014210(n)+A037132(n)-A000351(n)`
-/

namespace A013599.P9149135618804004784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n + (A037132 n - A000351 n)

end

end A013599.P9149135618804004784

/-! ## A013599.P3222476227105592979

`A000035(2*n)+A054321(n)-A000351(n)`
-/

namespace A013599.P3222476227105592979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + (A054321 n - A000351 n)

end

end A013599.P3222476227105592979

