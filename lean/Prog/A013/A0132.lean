import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C023
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C002
import Seq.B002.C000
import Seq.B005.C000
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021

/-!
# A013203: Expansion of e.g.f. log(sech(x) + arcsin(x)).

The programs for A013203, there is no canonical definition to state claims against.
-/

/-! ## A013203.P11166755838939590357

`xor(∑{d}[n+1, (-1)^#]+1, A334265(A334272(n)))`
-/

namespace A013203.P11166755838939590357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ d ∈ Nat.divisors (f1 n), (-1) ^ d + 1) (A334265 (A334272 n).toNat)

end

end A013203.P11166755838939590357

/-! ## A013203.P11596138637979478739

`A065185(A197648(n+1)*A306505(n))`
-/

namespace A013203.P11596138637979478739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065185 (A197648 (n + 1) * A306505 n).toNat

end

end A013203.P11596138637979478739

/-!
# A013206: E.g.f.: log(sech(x)+sinh(x))=x-2/2!*x^2+6/3!*x^3-20/4!*x^4+120/5!*x^5...

The programs for A013206, there is no canonical definition to state claims against.
-/

/-! ## A013206.P7413121760313557634

`A157982(A080561(n))-char[2*n]`
-/

namespace A013206.P7413121760313557634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157982 (A080561 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A013206.P7413121760313557634

/-! ## A013206.P11200326342371498162

`A033762(A107676(n))-A133942(n)`
-/

namespace A013206.P11200326342371498162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (A107676 n).toNat - A133942 n

end

end A013206.P11200326342371498162

/-!
# A013209: Expansion of e.g.f. log(sech(x) + arctanh(x)).

The programs for A013209, there is no canonical definition to state claims against.
-/

/-! ## A013209.P2151147429230889664

`or(A013204(n), A342770(A008778(n)))`
-/

namespace A013209.P2151147429230889664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013204 n) (A342770 (A008778 n).toNat)

end

end A013209.P2151147429230889664

/-! ## A013209.P9310124381627416300

`A292470(∑[A236770(n)+A159828(2*n+3)]+1)`
-/

namespace A013209.P9310124381627416300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236770 n + A159828 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292470 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A013209.P9310124381627416300

/-!
# A013210: Expansion of e.g.f.: sin(log(x+1) - sin(x)) = -1/2!*x^2+3/3!*x^3-6/4!*x^4+23/5!*x^5...

The programs for A013210, there is no canonical definition to state claims against.
-/

/-! ## A013210.P5381652249958419012

`A013216(n)`
-/

namespace A013210.P5381652249958419012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013216 n

end

end A013210.P5381652249958419012

/-!
# A013211: arcsin(log(x+1)-sin(x))=-1/2!*x^2+3/3!*x^3-6/4!*x^4+23/5!*x^5...

The programs for A013211, there is no canonical definition to state claims against.
-/

/-! ## A013211.P11938016387683067107

`A013215(gcd(11*n, ∑[2*n]))`
-/

namespace A013211.P11938016387683067107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013215 (Nat.gcd (11 * n) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A013211.P11938016387683067107

/-!
# A013212: Expansion of e.g.f. tan(log(x+1) - sin(x)).

The programs for A013212, there is no canonical definition to state claims against.
-/

/-! ## A013212.P10137313882447188985

`A013218(gcd(11*n, ∑[2*n]))`
-/

namespace A013212.P10137313882447188985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013218 (Nat.gcd (11 * n) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A013212.P10137313882447188985

/-!
# A013213: Expansion of e.g.f. arctan(log(x+1) - sin(x)).

The programs for A013213, there is no canonical definition to state claims against.
-/

/-! ## A013213.P13308390278342212863

`A013217(n)`
-/

namespace A013213.P13308390278342212863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013217 n

end

end A013213.P13308390278342212863

/-!
# A013214: E.g.f.: cos(log(x+1)-sin(x))= 1-3/4!*x^4+30/5!*x^5-180/6!*x^6+1113/7!*x^7...

The programs for A013214, there is no canonical definition to state claims against.
-/

/-! ## A013214.P10072848591923815489

`A013221(n^A186754(n))`
-/

namespace A013214.P10072848591923815489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013221 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A186754 n : ℤ))).toNat

end

end A013214.P10072848591923815489

/-!
# A013215: Expansion of e.g.f. sinh(log(x+1) - sin(x)).

The programs for A013215, there is no canonical definition to state claims against.
-/

/-! ## A013215.P10059423430644241449

`A013219(n)-A013341(n)`
-/

namespace A013215.P10059423430644241449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013219 n - A013341 n

end

end A013215.P10059423430644241449

/-!
# A013219: cosh(log(x+1)-sin(x))= 1+3/4!*x^4-30/5!*x^5+180/6!*x^6-1113/7!*x^7...

The programs for A013219, there is no canonical definition to state claims against.
-/

/-! ## A013219.P272829540128433439

`A013341(n)+A013215(n)`
-/

namespace A013219.P272829540128433439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013341 n + A013215 n

end

end A013219.P272829540128433439

/-! ## A013219.P9029362366758229187

`A013220(A001222(5^n))`
-/

namespace A013219.P9029362366758229187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013220 (A001222 (5 ^ n)).toNat

end

end A013219.P9029362366758229187

/-!
# A013222: Expansion of e.g.f. sin(log(x+1) - arcsin(x)).

The programs for A013222, there is no canonical definition to state claims against.
-/

/-! ## A013222.P2698745378763554669

`A013228(n)`
-/

namespace A013222.P2698745378763554669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013228 n

end

end A013222.P2698745378763554669

/-!
# A013223: Expansion of e.g.f. arcsin(log(x+1) - arcsin(x)).

The programs for A013223, there is no canonical definition to state claims against.
-/

/-! ## A013223.P16594567889760270209

`A013227(n)`
-/

namespace A013223.P16594567889760270209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013227 n

end

end A013223.P16594567889760270209

/-!
# A013224: Expansion of e.g.f. tan(log(x+1) - arcsin(x)).

The programs for A013224, there is no canonical definition to state claims against.
-/

/-! ## A013224.P13997979958019481813

`A013230(n)`
-/

namespace A013224.P13997979958019481813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013230 n

end

end A013224.P13997979958019481813

/-!
# A013225: Expansion of e.g.f. arctan(log(x+1) - arcsin(x)).

The programs for A013225, there is no canonical definition to state claims against.
-/

/-! ## A013225.P491145851942648526

`A013229(n)`
-/

namespace A013225.P491145851942648526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013229 n

end

end A013225.P491145851942648526

/-!
# A013226: cos(log(x+1)-arcsin(x))=1-3/4!*x^4+10/5!*x^5-100/6!*x^6+525/7!*x^7...

The programs for A013226, there is no canonical definition to state claims against.
-/

/-! ## A013226.P15254085122653646538

`A013233(A004913(n+1))`
-/

namespace A013226.P15254085122653646538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013233 (A004913 (n + 1)).toNat

end

end A013226.P15254085122653646538

/-!
# A013227: Expansion of e.g.f.: sinh(log(x+1)-arcsin(x))=-1/2!*x^2+1/3!*x^3-6/4!*x^4+15/5!*x^5...

The programs for A013227, there is no canonical definition to state claims against.
-/

/-! ## A013227.P13551189555659812978

`A013231(n)-A013397(n)`
-/

namespace A013227.P13551189555659812978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013231 n - A013397 n

end

end A013227.P13551189555659812978

/-!
# A013231: Expansion of e.g.f.: cosh(log(x+1)-arcsin(x))=1+3/4!*x^4-10/5!*x^5+100/6!*x^6-525/7!*x^7...

The programs for A013231, there is no canonical definition to state claims against.
-/

/-! ## A013231.P17768548873045262227

`A013397(n)+A013227(n)`
-/

namespace A013231.P17768548873045262227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013397 n + A013227 n

end

end A013231.P17768548873045262227

/-! ## A013231.P4284560092121949315

`A013232(A073789(n))`
-/

namespace A013231.P4284560092121949315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013232 (A073789 n).toNat

end

end A013231.P4284560092121949315

/-!
# A013234: Expansion of e.g.f. sin(log(x+1) - tan(x)).

The programs for A013234, there is no canonical definition to state claims against.
-/

/-! ## A013234.P11194644305729879257

`A013240(n)`
-/

namespace A013234.P11194644305729879257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013240 n

end

end A013234.P11194644305729879257

/-!
# A013235: E.g.f. arcsin(log(x+1)-tan(x))=-1/2!*x^2-6/4!*x^4+8/5!*x^5-135/6!*x^6...

The programs for A013235, there is no canonical definition to state claims against.
-/

/-! ## A013235.P404062869616656051

`A013239(n)`
-/

namespace A013235.P404062869616656051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013239 n

end

end A013235.P404062869616656051

/-!
# A013236: Expansion of e.g.f. tan(log(x+1) - tan(x)).

The programs for A013236, there is no canonical definition to state claims against.
-/

/-! ## A013236.P7991088730322466571

`A013242(n)`
-/

namespace A013236.P7991088730322466571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013242 n

end

end A013236.P7991088730322466571

/-!
# A013237: Expansion of e.g.f. arctan(log(x+1) - tan(x)).

The programs for A013237, there is no canonical definition to state claims against.
-/

/-! ## A013237.P11050566833158772062

`A013241(n)`
-/

namespace A013237.P11050566833158772062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013241 n

end

end A013237.P11050566833158772062

/-!
# A013238: cos(log(x+1)-tan(x))=1-3/4!*x^4-90/6!*x^6+168/7!*x^7-4515/8!*x^8...

The programs for A013238, there is no canonical definition to state claims against.
-/

/-! ## A013238.P14135697213562862210

`A013245(n)`
-/

namespace A013238.P14135697213562862210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013245 n

end

end A013238.P14135697213562862210

/-!
# A013239: sinh(log(x+1)-tan(x)) = -1/2!*x^2 - 6/4!*x^4 + 8/5!*x^5 - 135/6!*x^6 + ...

The programs for A013239, there is no canonical definition to state claims against.
-/

/-! ## A013239.P3446102989931447481

`A013243(n)-A013439(n)`
-/

namespace A013239.P3446102989931447481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013243 n - A013439 n

end

end A013239.P3446102989931447481

/-!
# A013243: Expansion of e.g.f.: cosh(log(x+1)-tan(x))=1+3/4!*x^4+90/6!*x^6-168/7!*x^7+4725/8!*x^8...

The programs for A013243, there is no canonical definition to state claims against.
-/

/-! ## A013243.P3076320443308634985

`A013439(n)+A013239(n)`
-/

namespace A013243.P3076320443308634985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013439 n + A013239 n

end

end A013243.P3076320443308634985

/-! ## A013243.P16171768264892248664

`A013439(n)+A013235(A039723(n))`
-/

namespace A013243.P16171768264892248664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013439 n + A013235 (A039723 n).toNat

end

end A013243.P16171768264892248664

/-! ## A013243.P14624262210030678771

`A013439(n)+A013235(A051022(n))`
-/

namespace A013243.P14624262210030678771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013439 n + A013235 (A051022 n).toNat

end

end A013243.P14624262210030678771

/-! ## A013243.P8956166527639489172

`A013244(A001222(5^n))`
-/

namespace A013243.P8956166527639489172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013244 (A001222 (5 ^ n)).toNat

end

end A013243.P8956166527639489172

/-!
# A013246: E.g.f.: sin(log(x+1)-arctan(x)) = -1/2!*x^2+4/3!*x^3-6/4!*x^4-105/6!*x^6...

The programs for A013246, there is no canonical definition to state claims against.
-/

/-! ## A013246.P2652924639087715463

`A013252(n^(1-(∑{digits}[n, #]-n)))`
-/

namespace A013246.P2652924639087715463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013252 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A013246.P2652924639087715463

/-!
# A013247: Expansion of e.g.f. arcsin(log(x+1) - arctan(x)).

The programs for A013247, there is no canonical definition to state claims against.
-/

/-! ## A013247.P4734378015907291357

`A013251(A039723(n))`
-/

namespace A013247.P4734378015907291357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013251 (A039723 n).toNat

end

end A013247.P4734378015907291357

/-!
# A013248: Expansion of e.g.f. tan(log(x+1) - arctan(x)).

The programs for A013248, there is no canonical definition to state claims against.
-/

/-! ## A013248.P12160684090894791629

`A013254(A046469(n))`
-/

namespace A013248.P12160684090894791629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013254 (A046469 n).toNat

end

end A013248.P12160684090894791629

/-!
# A013249: Expansion of e.g.f. arctan(log(x+1) - arctan(x)).

The programs for A013249, there is no canonical definition to state claims against.
-/

/-! ## A013249.P9796738417400763017

`A013253(A002998(n))`
-/

namespace A013249.P9796738417400763017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013253 (A002998 n).toNat

end

end A013249.P9796738417400763017

/-!
# A013250: Expansion of e.g.f.: cos(log(x+1)-arctan(x))=1-3/4!*x^4+40/5!*x^5-250/6!*x^6+840/7!*x^7...

The programs for A013250, there is no canonical definition to state claims against.
-/

/-! ## A013250.P7195948745182237444

`A013257(n)`
-/

namespace A013250.P7195948745182237444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013257 n

end

end A013250.P7195948745182237444

/-! ## A013250.P335257744200040282

`A035182(A001538(n))-A013255(n)`
-/

namespace A013250.P335257744200040282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035182 (A001538 n).toNat - A013255 n

end

end A013250.P335257744200040282

/-!
# A013251: Expansion of e.g.f. sinh(log(x+1) - arctan(x)).

The programs for A013251, there is no canonical definition to state claims against.
-/

/-! ## A013251.P16950640787462187016

`A013255(n)-A013459(n)`
-/

namespace A013251.P16950640787462187016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013255 n - A013459 n

end

end A013251.P16950640787462187016

/-!
# A013255: Expansion of e.g.f.: cosh(log(x+1)-arctan(x)).

The programs for A013255, there is no canonical definition to state claims against.
-/

/-! ## A013255.P12557087068052539276

`A013459(n)+A013251(n)`
-/

namespace A013255.P12557087068052539276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013459 n + A013251 n

end

end A013255.P12557087068052539276

/-! ## A013255.P7663549116834758288

`A013256(n)`
-/

namespace A013255.P7663549116834758288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013256 n

end

end A013255.P7663549116834758288

/-!
# A013262: E.g.f.: cos(log(x+1)-sinh(x))=1-3/4!*x^4+10/5!*x^5-100/6!*x^6+693/7!*x^7...

The programs for A013262, there is no canonical definition to state claims against.
-/

/-! ## A013262.P9144082029383164431

`A013269(n)`
-/

namespace A013262.P9144082029383164431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013269 n

end

end A013262.P9144082029383164431

/-!
# A013263: Expansion of e.g.f. sinh(log(x+1) - sinh(x)).

The programs for A013263, there is no canonical definition to state claims against.
-/

/-! ## A013263.P14957837756202502569

`A013267(n)-A033999(n)*A186762(n)`
-/

namespace A013263.P14957837756202502569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013267 n - A033999 n * A186762 n

end

end A013263.P14957837756202502569

/-! ## A013263.P13119309922724010700

`A013267(n)-A186762(n)/A033999(n+2)`
-/

namespace A013263.P13119309922724010700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013267 n : ℚ) - (A186762 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A013263.P13119309922724010700

/-! ## A013263.P6398804267133363218

`A013267(n)-A033999(n)*A186761(A000217(n))`
-/

namespace A013263.P6398804267133363218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013267 n - A033999 n * A186761 (A000217 n).toNat

end

end A013263.P6398804267133363218

/-! ## A013263.P9108679355778519368

`A013267(n)-A013488(n)`
-/

namespace A013263.P9108679355778519368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013267 n - A013488 n

end

end A013263.P9108679355778519368

/-!
# A013267: cosh(log(x+1)-sinh(x))=1+3/4!*x^4-10/5!*x^5+100/6!*x^6-693/7!*x^7...

The programs for A013267, there is no canonical definition to state claims against.
-/

/-! ## A013267.P18260495079395386524

`A013263(n)+A033999(n)*A186762(n)`
-/

namespace A013267.P18260495079395386524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013263 n + A033999 n * A186762 n

end

end A013267.P18260495079395386524

/-! ## A013267.P17059019099287316104

`A013263(n)+A186762(n)/A033999(n+2)`
-/

namespace A013267.P17059019099287316104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013263 n : ℚ) + (A186762 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A013267.P17059019099287316104

/-! ## A013267.P10750065741520340960

`A013263(n)+A033999(n)*A186761(A000217(n))`
-/

namespace A013267.P10750065741520340960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013263 n + A033999 n * A186761 (A000217 n).toNat

end

end A013267.P10750065741520340960

/-! ## A013267.P2397792509862431366

`A013488(n)+A013263(n)`
-/

namespace A013267.P2397792509862431366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013488 n + A013263 n

end

end A013267.P2397792509862431366

/-!
# A013271: Expansion of e.g.f. arcsin(log(x+1) - arcsinh(x)).

The programs for A013271, there is no canonical definition to state claims against.
-/

/-! ## A013271.P7496809041599741097

`A013275(n)`
-/

namespace A013271.P7496809041599741097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013275 n

end

end A013271.P7496809041599741097

/-!
# A013272: tan(log(x+1)-arcsinh(x))=-1/2!*x^2+3/3!*x^3-6/4!*x^4+15/5!*x^5...

The programs for A013272, there is no canonical definition to state claims against.
-/

/-! ## A013272.P7835757261900481943

`A013278(n)`
-/

namespace A013272.P7835757261900481943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013278 n

end

end A013272.P7835757261900481943

/-!
# A013273: Expansion of e.g.f. arctan(log(x+1) - arcsinh(x)).

The programs for A013273, there is no canonical definition to state claims against.
-/

/-! ## A013273.P9719174457962689392

`A013277(n)`
-/

namespace A013273.P9719174457962689392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013277 n

end

end A013273.P9719174457962689392

/-!
# A013274: E.g.f.: cos(log(x+1)-arcsinh(x))=1-3/4!*x^4+30/5!*x^5-180/6!*x^6+945/7!*x^7...

The programs for A013274, there is no canonical definition to state claims against.
-/

/-! ## A013274.P17596276965080936208

`A013281(A001222(5^n))`
-/

namespace A013274.P17596276965080936208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013281 (A001222 (5 ^ n)).toNat

end

end A013274.P17596276965080936208

/-!
# A013275: E.g.f. sinh(log(x+1) - arcsinh(x)) = -1/2!*x^2 + 3/3!*x^3 - 6/4!*x^4 + 15/5!*x^5 + ...

The programs for A013275, there is no canonical definition to state claims against.
-/

/-! ## A013275.P2024959158803352769

`A013279(n)-A013492(n)`
-/

namespace A013275.P2024959158803352769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013279 n - A013492 n

end

end A013275.P2024959158803352769

/-! ## A013275.P6500835343114006424

`A013078(n)%A233583(n+1)!-A013492(n)`
-/

namespace A013275.P6500835343114006424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013078 n) (Nat.factorial (A233583 (n + 1)).toNat : ℤ) - A013492 n

end

end A013275.P6500835343114006424

/-!
# A013279: cosh(log(x+1)-arcsinh(x))=1+3/4!*x^4-30/5!*x^5+180/6!*x^6-945/7!*x^7...

The programs for A013279, there is no canonical definition to state claims against.
-/

/-! ## A013279.P14054600941417640888

`A013492(n)+A013275(n)`
-/

namespace A013279.P14054600941417640888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013492 n + A013275 n

end

end A013279.P14054600941417640888

/-! ## A013279.P12097348025389850455

`A013078(n)%A233583(n+1)!`
-/

namespace A013279.P12097348025389850455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013078 n) (Nat.factorial (A233583 (n + 1)).toNat : ℤ)

end

end A013279.P12097348025389850455

/-! ## A013279.P17173707547036104203

`A013492(A050783(n+1))+A013271(n)`
-/

namespace A013279.P17173707547036104203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013492 (A050783 (n + 1)).toNat + A013271 n

end

end A013279.P17173707547036104203

/-! ## A013279.P9394217952239846485

`A013280(A061140(n)+n)`
-/

namespace A013279.P9394217952239846485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013280 (A061140 n + (n : ℤ)).toNat

end

end A013279.P9394217952239846485

/-!
# A013283: Expansion of e.g.f. arcsin(log(x+1) - tanh(x)).

The programs for A013283, there is no canonical definition to state claims against.
-/

/-! ## A013283.P15165996065529332723

`A013287(n)`
-/

namespace A013283.P15165996065529332723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013287 n

end

end A013283.P15165996065529332723

/-!
# A013284: tan(log(x+1)-tanh(x)) = -1/2!*x^2+4/3!*x^3-6/4!*x^4+8/5!*x^5... .

The programs for A013284, there is no canonical definition to state claims against.
-/

/-! ## A013284.P3625119711976903841

`A013290(n+2)`
-/

namespace A013284.P3625119711976903841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013290 (n + 2)

end

end A013284.P3625119711976903841

/-!
# A013285: Expansion of e.g.f.: arctan(log(x+1)-tanh(x)).

The programs for A013285, there is no canonical definition to state claims against.
-/

/-! ## A013285.P11678360252458760660

`A013289(n+2)`
-/

namespace A013285.P11678360252458760660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013289 (n + 2)

end

end A013285.P11678360252458760660

/-!
# A013286: cos(log(x+1)-tanh(x))=1-3/4!*x^4+40/5!*x^5-250/6!*x^6+1008/7!*x^7...

The programs for A013286, there is no canonical definition to state claims against.
-/

/-! ## A013286.P4413437800611667674

`A013293(n)`
-/

namespace A013286.P4413437800611667674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013293 n

end

end A013286.P4413437800611667674

/-!
# A013287: Expansion of e.g.f. sinh(log(x+1) - tanh(x)).

The programs for A013287, there is no canonical definition to state claims against.
-/

/-! ## A013287.P4085418476606738580

`A013291(n)-A013495(n)`
-/

namespace A013287.P4085418476606738580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013291 n - A013495 n

end

end A013287.P4085418476606738580

/-!
# A013291: Expansion of e.g.f.: cosh(log(x+1)-tanh(x))=1+3/4!*x^4-40/5!*x^5+250/6!*x^6-1008/7!*x^7...

The programs for A013291, there is no canonical definition to state claims against.
-/

/-! ## A013291.P14942822786271213952

`A013495(n)+A013287(n)`
-/

namespace A013291.P14942822786271213952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013495 n + A013287 n

end

end A013291.P14942822786271213952

/-! ## A013291.P7875390932752955920

`A013292(n)`
-/

namespace A013291.P7875390932752955920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013292 n

end

end A013291.P7875390932752955920

/-!
# A013294: sin(log(x+1)-arctanh(x))=-1/2!*x^2-6/4!*x^4-105/6!*x^6-3780/8!*x^8...

The programs for A013294, there is no canonical definition to state claims against.
-/

/-! ## A013294.P1584763571367905631

`-A013234(A062003(2*(n+1)))`
-/

namespace A013294.P1584763571367905631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A013234 (A062003 (2 * (n + 1))).toNat

end

end A013294.P1584763571367905631

/-!
# A013295: E.g.f.: -arcsin(log(x+1)-arctanh(x)) (even powers only).

The programs for A013295, there is no canonical definition to state claims against.
-/

/-! ## A013295.P16349499157715607695

`record[-A013235(A049872(n))]`
-/

namespace A013295.P16349499157715607695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A013235 (A049872 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013295.P16349499157715607695

/-!
# A013296: tan(arctanh(x)-log(x+1)) = 1/2!*x^2 + 6/4!*x^4 + 150/6!*x^6 + 7560/8!*x^8...

The programs for A013296, there is no canonical definition to state claims against.
-/

/-! ## A013296.P5400599606289739220

`record[-A013236(A048793(n))]`
-/

namespace A013296.P5400599606289739220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A013236 (A048793 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013296.P5400599606289739220

/-! ## A013296.P7235513168398476090

`record[-A013236(A062003(n))]`
-/

namespace A013296.P7235513168398476090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A013236 (A062003 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013296.P7235513168398476090

/-!
# A013297: -arctan(log(x+1)-arctanh(x))=1/2!*x^2+6/4!*x^4+90/6!*x^6+2520/8!*x^8...

The programs for A013297, there is no canonical definition to state claims against.
-/

/-! ## A013297.P6440663447855113882

`A007093(A005329(n))*A165576(n)`
-/

namespace A013297.P6440663447855113882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A005329 n).toNat * A165576 n

end

end A013297.P6440663447855113882

/-!
# A013298: cos(log(x+1)-arctanh(x))=1-3/4!*x^4-90/6!*x^6-4515/8!*x^8...

The programs for A013298, there is no canonical definition to state claims against.
-/

/-! ## A013298.P2278564362593544958

`(1-2*n)²*a(n-1)-A007947(∏[1-2*n]²)` with `a(0)=1`
-/

namespace A013298.P2278564362593544958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (2 * n : ℤ)) ^ 2 * a (n - 1) - A007947 ((∏ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A013298.P2278564362593544958

/-!
# A013299: Expansion of e.g.f. -sinh(log(x+1) - arctanh(x)) (even powers only).

The programs for A013299, there is no canonical definition to state claims against.
-/

/-! ## A013299.P6484953535927377410

`(n+1)*∏[abs(1-(2*n)²)]`
-/

namespace A013299.P6484953535927377410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((2 * n) ^ 2 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A013299.P6484953535927377410

/-! ## A013299.P16124455657799207657

`((2*n+1)²-(2*n+1)/n)*a(n-1)` with `a(0)=1`
-/

namespace A013299.P16124455657799207657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (((2 * n + 1) ^ 2 : ℚ) - (2 * n + 1 : ℚ) / (n : ℚ)) * a (n - 1)

end

end A013299.P16124455657799207657

/-! ## A013299.P8307950542098074835

`xor(∏[(2*n)²-1], -2)+((2*n)²-1)*a(n-1)` with `a(0)=1`
-/

namespace A013299.P8307950542098074835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (∏ j ∈ Finset.range (n + 1), f1 j) (-2) + (((2 * n) ^ 2 : ℤ) - 1) * a (n - 1)

end

end A013299.P8307950542098074835

/-! ## A013299.P17362028071950213136

`record[A013161(n+1)/2]`
-/

namespace A013299.P17362028071950213136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013161 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013299.P17362028071950213136

/-! ## A013299.P7161952389488423582

`A013161(2*n+1)/2`
-/

namespace A013299.P7161952389488423582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013161 (2 * n + 1) : ℚ) / 2

end

end A013299.P7161952389488423582

