import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C017
import Seq.B000.C021
import Seq.B000.C027
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B002.C000
import Seq.B004.C000
import Seq.B006.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B013.C000
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
import Seq.Opaque.C025

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

/-! ## A013210.P12718762414669030756

`A013216(A002998(n))`
-/

namespace A013210.P12718762414669030756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013216 (A002998 n).toNat

end

end A013210.P12718762414669030756

/-! ## A013210.P11139635969992959286

`A013216(A046469(n))`
-/

namespace A013210.P11139635969992959286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013216 (A046469 n).toNat

end

end A013210.P11139635969992959286

/-! ## A013210.P13181907493676319509

`A013216(A051022(n))`
-/

namespace A013210.P13181907493676319509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013216 (A051022 n).toNat

end

end A013210.P13181907493676319509

/-! ## A013210.P18064936344318241811

`A013216(A082216(n))`
-/

namespace A013210.P18064936344318241811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013216 (A082216 n).toNat

end

end A013210.P18064936344318241811

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

/-! ## A013211.P9646341216963821083

`A013215(A002998(n))`
-/

namespace A013211.P9646341216963821083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013215 (A002998 n).toNat

end

end A013211.P9646341216963821083

/-! ## A013211.P13582634133415373294

`A013215(A039723(n))`
-/

namespace A013211.P13582634133415373294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013215 (A039723 n).toNat

end

end A013211.P13582634133415373294

/-! ## A013211.P177255418889511173

`A013215(A051022(n))`
-/

namespace A013211.P177255418889511173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013215 (A051022 n).toNat

end

end A013211.P177255418889511173

/-! ## A013211.P3265720695111454022

`A013215(A056142(n))`
-/

namespace A013211.P3265720695111454022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013215 (A056142 n).toNat

end

end A013211.P3265720695111454022

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

/-! ## A013212.P12822309024503411434

`A013218(A024664(n))`
-/

namespace A013212.P12822309024503411434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013218 (A024664 n).toNat

end

end A013212.P12822309024503411434

/-! ## A013212.P10597172174412593598

`A013218(A051022(n))`
-/

namespace A013212.P10597172174412593598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013218 (A051022 n).toNat

end

end A013212.P10597172174412593598

/-! ## A013212.P3343262691346989322

`A013218(A056143(n))`
-/

namespace A013212.P3343262691346989322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013218 (A056143 n).toNat

end

end A013212.P3343262691346989322

/-!
# A013213: Expansion of e.g.f. arctan(log(x+1) - sin(x)).

The programs for A013213, there is no canonical definition to state claims against.
-/

/-! ## A013213.P9887082190824311463

`A013217(A002998(n))`
-/

namespace A013213.P9887082190824311463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013217 (A002998 n).toNat

end

end A013213.P9887082190824311463

/-! ## A013213.P5168734221197453027

`A013217(A051022(n))`
-/

namespace A013213.P5168734221197453027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013217 (A051022 n).toNat

end

end A013213.P5168734221197453027

/-! ## A013213.P15447533172859371749

`A013217(A249515(n+1))`
-/

namespace A013213.P15447533172859371749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013217 (A249515 (n + 1)).toNat

end

end A013213.P15447533172859371749

/-! ## A013213.P9468250022297632721

`A013217(A047842(n)-10)`
-/

namespace A013213.P9468250022297632721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013217 (A047842 n - 10).toNat

end

end A013213.P9468250022297632721

/-!
# A013214: E.g.f.: cos(log(x+1)-sin(x))= 1-3/4!*x^4+30/5!*x^5-180/6!*x^6+1113/7!*x^7...

The programs for A013214, there is no canonical definition to state claims against.
-/

/-! ## A013214.P9500596543028216369

`A013221(n^A277604(n))`
-/

namespace A013214.P9500596543028216369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013221 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A277604 n : ℤ))).toNat

end

end A013214.P9500596543028216369

/-! ## A013214.P8839226582450576922

`A013221(n^A293718(n))`
-/

namespace A013214.P8839226582450576922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013221 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A293718 n : ℤ))).toNat

end

end A013214.P8839226582450576922

/-! ## A013214.P2057980280664041876

`A013221(lcm(n, A031876(n)))`
-/

namespace A013214.P2057980280664041876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013221 (Int.lcm (n : ℤ) (A031876 n))

end

end A013214.P2057980280664041876

/-! ## A013214.P266153747217874717

`A013221(n)^A211399(n)!`
-/

namespace A013214.P266153747217874717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013221 n ^ Nat.factorial (A211399 n).toNat

end

end A013214.P266153747217874717

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

/-! ## A013219.P5443516938128262053

`A013220(n^A102480(n))`
-/

namespace A013219.P5443516938128262053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013220 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A102480 n : ℤ))).toNat

end

end A013219.P5443516938128262053

/-! ## A013219.P12113397060924162913

`A013220(n^A293718(n))`
-/

namespace A013219.P12113397060924162913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013220 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A293718 n : ℤ))).toNat

end

end A013219.P12113397060924162913

/-!
# A013222: Expansion of e.g.f. sin(log(x+1) - arcsin(x)).

The programs for A013222, there is no canonical definition to state claims against.
-/

/-! ## A013222.P8097752930146657544

`A013228(A002998(n))`
-/

namespace A013222.P8097752930146657544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013228 (A002998 n).toNat

end

end A013222.P8097752930146657544

/-! ## A013222.P4036722928151435927

`A013228(A051022(n))`
-/

namespace A013222.P4036722928151435927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013228 (A051022 n).toNat

end

end A013222.P4036722928151435927

/-! ## A013222.P9011135674766789606

`A013228(A087019(n))`
-/

namespace A013222.P9011135674766789606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013228 (A087019 n).toNat

end

end A013222.P9011135674766789606

/-! ## A013222.P16820923379347234544

`A013228(A249515(n+1))`
-/

namespace A013222.P16820923379347234544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013228 (A249515 (n + 1)).toNat

end

end A013222.P16820923379347234544

/-!
# A013223: Expansion of e.g.f. arcsin(log(x+1) - arcsin(x)).

The programs for A013223, there is no canonical definition to state claims against.
-/

/-! ## A013223.P4772021178608827470

`A013227(A002998(n))`
-/

namespace A013223.P4772021178608827470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013227 (A002998 n).toNat

end

end A013223.P4772021178608827470

/-! ## A013223.P15401259826584550984

`A013227(A051022(n))`
-/

namespace A013223.P15401259826584550984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013227 (A051022 n).toNat

end

end A013223.P15401259826584550984

/-! ## A013223.P1687413014333126808

`A013227(A082216(n))`
-/

namespace A013223.P1687413014333126808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013227 (A082216 n).toNat

end

end A013223.P1687413014333126808

/-! ## A013223.P15920835315587105624

`A013227(A004882(n+1))`
-/

namespace A013223.P15920835315587105624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013227 (A004882 (n + 1)).toNat

end

end A013223.P15920835315587105624

/-!
# A013224: Expansion of e.g.f. tan(log(x+1) - arcsin(x)).

The programs for A013224, there is no canonical definition to state claims against.
-/

/-! ## A013224.P4748657968348650162

`A013230(A082216(n))`
-/

namespace A013224.P4748657968348650162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013230 (A082216 n).toNat

end

end A013224.P4748657968348650162

/-! ## A013224.P13274916203130184154

`A013230(n*A111696(n))`
-/

namespace A013224.P13274916203130184154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013230 ((n : ℤ) * A111696 n).toNat

end

end A013224.P13274916203130184154

/-! ## A013224.P10266829706344976380

`A013230(n^A055642(n))`
-/

namespace A013224.P10266829706344976380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013230 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A013224.P10266829706344976380

/-! ## A013224.P16122436955051039598

`A013230(n^A111696(n))`
-/

namespace A013224.P16122436955051039598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013230 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A111696 n : ℤ))).toNat

end

end A013224.P16122436955051039598

/-!
# A013225: Expansion of e.g.f. arctan(log(x+1) - arcsin(x)).

The programs for A013225, there is no canonical definition to state claims against.
-/

/-! ## A013225.P12335614383592620959

`A013229(A002998(n))`
-/

namespace A013225.P12335614383592620959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013229 (A002998 n).toNat

end

end A013225.P12335614383592620959

/-! ## A013225.P8664795540703334724

`A013229(A039723(n))`
-/

namespace A013225.P8664795540703334724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013229 (A039723 n).toNat

end

end A013225.P8664795540703334724

/-! ## A013225.P1668212299118653576

`A013229(A046469(n))`
-/

namespace A013225.P1668212299118653576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013229 (A046469 n).toNat

end

end A013225.P1668212299118653576

/-! ## A013225.P7825206557149845144

`A343575(A082387(n+1))+A013229(n)`
-/

namespace A013225.P7825206557149845144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343575 (A082387 (n + 1)).toNat + A013229 n

end

end A013225.P7825206557149845144

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

/-! ## A013226.P16415646255377009306

`A013233(A001222(5^n))`
-/

namespace A013226.P16415646255377009306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013233 (A001222 (5 ^ n)).toNat

end

end A013226.P16415646255377009306

/-! ## A013226.P7012299999367075388

`A013233(n^A247026(n))`
-/

namespace A013226.P7012299999367075388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013233 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A247026 n : ℤ))).toNat

end

end A013226.P7012299999367075388

/-! ## A013226.P16363888579143790476

`A013233(lcm(n, A265555(n)))`
-/

namespace A013226.P16363888579143790476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013233 (Int.lcm (n : ℤ) (A265555 n))

end

end A013226.P16363888579143790476

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

/-! ## A013227.P2121837764886959841

`A013231(n)+A013397(n)*A162512(A152427(n+1))`
-/

namespace A013227.P2121837764886959841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013231 n + A013397 n * A162512 (A152427 (n + 1)).toNat

end

end A013227.P2121837764886959841

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

/-! ## A013231.P723543082966991532

`A013227(n)-(A000038(A077171(n))-A013397(n))`
-/

namespace A013231.P723543082966991532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013227 n - (A000038 (A077171 n).toNat - A013397 n)

end

end A013231.P723543082966991532

/-! ## A013231.P4284560092121949315

`A013232(A073789(n))`
-/

namespace A013231.P4284560092121949315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013232 (A073789 n).toNat

end

end A013231.P4284560092121949315

/-! ## A013231.P13256006022612002573

`A013232(A001222(5^n))`
-/

namespace A013231.P13256006022612002573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013232 (A001222 (5 ^ n)).toNat

end

end A013231.P13256006022612002573

/-!
# A013234: Expansion of e.g.f. sin(log(x+1) - tan(x)).

The programs for A013234, there is no canonical definition to state claims against.
-/

/-! ## A013234.P14983261622343604041

`A013240(n*(1-∑{digits}[n, #]+n))`
-/

namespace A013234.P14983261622343604041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013240 ((n : ℤ) * (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ))).toNat

end

end A013234.P14983261622343604041

/-! ## A013234.P7239666424999207432

`A013240(A002998(n))`
-/

namespace A013234.P7239666424999207432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013240 (A002998 n).toNat

end

end A013234.P7239666424999207432

/-! ## A013234.P4739223829285631667

`A013240(A039723(n))`
-/

namespace A013234.P4739223829285631667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013240 (A039723 n).toNat

end

end A013234.P4739223829285631667

/-! ## A013234.P12498064712031441575

`A013240(n*A136400(n))`
-/

namespace A013234.P12498064712031441575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013240 ((n : ℤ) * A136400 n).toNat

end

end A013234.P12498064712031441575

/-! ## A013234.P750989726919286599

`A013240(n)%A186836(or(1, n))`
-/

namespace A013234.P750989726919286599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013240 n) (A186836 (Nat.lor 1 n))

end

end A013234.P750989726919286599

/-!
# A013235: E.g.f. arcsin(log(x+1)-tan(x))=-1/2!*x^2-6/4!*x^4+8/5!*x^5-135/6!*x^6...

The programs for A013235, there is no canonical definition to state claims against.
-/

/-! ## A013235.P12011688649956450264

`A013239(n*(1-∑{digits}[n, #]+n))`
-/

namespace A013235.P12011688649956450264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013239 ((n : ℤ) * (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ))).toNat

end

end A013235.P12011688649956450264

/-! ## A013235.P4057339870197026678

`A013239(A002998(n))`
-/

namespace A013235.P4057339870197026678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013239 (A002998 n).toNat

end

end A013235.P4057339870197026678

/-! ## A013235.P5489384525749331871

`A013239(A039723(n))`
-/

namespace A013235.P5489384525749331871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013239 (A039723 n).toNat

end

end A013235.P5489384525749331871

/-! ## A013235.P9652431487255988031

`A013239(A051022(n))`
-/

namespace A013235.P9652431487255988031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013239 (A051022 n).toNat

end

end A013235.P9652431487255988031

/-!
# A013236: Expansion of e.g.f. tan(log(x+1) - tan(x)).

The programs for A013236, there is no canonical definition to state claims against.
-/

/-! ## A013236.P15074727612799179444

`A013242(A002998(n))`
-/

namespace A013236.P15074727612799179444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013242 (A002998 n).toNat

end

end A013236.P15074727612799179444

/-! ## A013236.P11108730640765238110

`A013242(A039723(n))`
-/

namespace A013236.P11108730640765238110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013242 (A039723 n).toNat

end

end A013236.P11108730640765238110

/-! ## A013236.P5497818571205758119

`A013242(A046469(n))`
-/

namespace A013236.P5497818571205758119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013242 (A046469 n).toNat

end

end A013236.P5497818571205758119

/-! ## A013236.P9447334553619149

`A013242(A051022(n))`
-/

namespace A013236.P9447334553619149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013242 (A051022 n).toNat

end

end A013236.P9447334553619149

/-!
# A013237: Expansion of e.g.f. arctan(log(x+1) - tan(x)).

The programs for A013237, there is no canonical definition to state claims against.
-/

/-! ## A013237.P13217278306939666887

`A013241(A002998(n))`
-/

namespace A013237.P13217278306939666887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013241 (A002998 n).toNat

end

end A013237.P13217278306939666887

/-! ## A013237.P14941699204619167093

`A013241(A039723(n))`
-/

namespace A013237.P14941699204619167093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013241 (A039723 n).toNat

end

end A013237.P14941699204619167093

/-! ## A013237.P5613644930885231287

`A013241(A051022(n))`
-/

namespace A013237.P5613644930885231287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013241 (A051022 n).toNat

end

end A013237.P5613644930885231287

/-! ## A013237.P6919474476926703778

`A013241(A249515(n+1))`
-/

namespace A013237.P6919474476926703778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013241 (A249515 (n + 1)).toNat

end

end A013237.P6919474476926703778

/-!
# A013238: cos(log(x+1)-tan(x))=1-3/4!*x^4-90/6!*x^6+168/7!*x^7-4515/8!*x^8...

The programs for A013238, there is no canonical definition to state claims against.
-/

/-! ## A013238.P7051547817627390505

`A013245(A000007(n!)+n)`
-/

namespace A013238.P7051547817627390505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013245 (A000007 (Nat.factorial n) + (n : ℤ)).toNat

end

end A013238.P7051547817627390505

/-! ## A013238.P16556867448180891645

`A013245(n-A000007(n!))`
-/

namespace A013238.P16556867448180891645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013245 ((n : ℤ) - A000007 (Nat.factorial n)).toNat

end

end A013238.P16556867448180891645

/-! ## A013238.P4940463607560639975

`A013245(n)^A320906(n)!`
-/

namespace A013238.P4940463607560639975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013245 n ^ Nat.factorial (A320906 n).toNat

end

end A013238.P4940463607560639975

/-! ## A013238.P6343207640629645976

`A013245(A276142(n+2)-2)`
-/

namespace A013238.P6343207640629645976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013245 (A276142 (n + 2) - 2).toNat

end

end A013238.P6343207640629645976

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

/-! ## A013246.P11041133208565310320

`A013252(A087051(n))`
-/

namespace A013246.P11041133208565310320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013252 (A087051 n).toNat

end

end A013246.P11041133208565310320

/-! ## A013246.P18358665034244288558

`A013252(A004915(n+1))`
-/

namespace A013246.P18358665034244288558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013252 (A004915 (n + 1)).toNat

end

end A013246.P18358665034244288558

/-! ## A013246.P12407642376587734811

`A013252(A023052(n+1))`
-/

namespace A013246.P12407642376587734811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013252 (A023052 (n + 1)).toNat

end

end A013246.P12407642376587734811

/-! ## A013246.P5902181420823036334

`A013252(A249515(n+1))`
-/

namespace A013246.P5902181420823036334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013252 (A249515 (n + 1)).toNat

end

end A013246.P5902181420823036334

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

/-! ## A013247.P1286225465425865327

`A013251(A051022(n))`
-/

namespace A013247.P1286225465425865327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013251 (A051022 n).toNat

end

end A013247.P1286225465425865327

/-! ## A013247.P7278245855229236964

`A013251(n^A061901(n))`
-/

namespace A013247.P7278245855229236964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013251 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A061901 n : ℤ))).toNat

end

end A013247.P7278245855229236964

/-! ## A013247.P15268053024766066296

`A013251(n^A065648(n))`
-/

namespace A013247.P15268053024766066296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013251 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A065648 n : ℤ))).toNat

end

end A013247.P15268053024766066296

/-! ## A013247.P5789657836872254407

`A013251(n^A124778(n))`
-/

namespace A013247.P5789657836872254407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013251 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A124778 n : ℤ))).toNat

end

end A013247.P5789657836872254407

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

/-! ## A013248.P5808321651398312571

`A013254(A051022(n))`
-/

namespace A013248.P5808321651398312571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013254 (A051022 n).toNat

end

end A013248.P5808321651398312571

/-! ## A013248.P11668462958110250361

`A013254(A004893(n+1))`
-/

namespace A013248.P11668462958110250361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013254 (A004893 (n + 1)).toNat

end

end A013248.P11668462958110250361

/-! ## A013248.P17072324001528728373

`A013254(n*A213217(n))`
-/

namespace A013248.P17072324001528728373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013254 ((n : ℤ) * A213217 n).toNat

end

end A013248.P17072324001528728373

/-! ## A013248.P8829980915930177224

`A013254(n^A213217(n))`
-/

namespace A013248.P8829980915930177224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013254 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A213217 n : ℤ))).toNat

end

end A013248.P8829980915930177224

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

/-! ## A013249.P1530426858518965241

`A013253(A051022(n))`
-/

namespace A013249.P1530426858518965241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013253 (A051022 n).toNat

end

end A013249.P1530426858518965241

/-! ## A013249.P2314873879313080616

`A013253(n*A213217(n))`
-/

namespace A013249.P2314873879313080616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013253 ((n : ℤ) * A213217 n).toNat

end

end A013249.P2314873879313080616

/-! ## A013249.P7237687955672514789

`A013253(n^A043562(n))`
-/

namespace A013249.P7237687955672514789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013253 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A043562 n : ℤ))).toNat

end

end A013249.P7237687955672514789

/-! ## A013249.P3808993833832245473

`A013253(n^A055642(n))`
-/

namespace A013249.P3808993833832245473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013253 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A013249.P3808993833832245473

/-!
# A013250: Expansion of e.g.f.: cos(log(x+1)-arctan(x))=1-3/4!*x^4+40/5!*x^5-250/6!*x^6+840/7!*x^7...

The programs for A013250, there is no canonical definition to state claims against.
-/

/-! ## A013250.P7946610926801867612

`∏{e}[7^n, A013257(#)]`
-/

namespace A013250.P7946610926801867612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A013257 (Nat.factorization (f1 n) p)

end

end A013250.P7946610926801867612

/-! ## A013250.P8817185979304999233

`A013257(n^A293669(n))`
-/

namespace A013250.P8817185979304999233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013257 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A293669 n : ℤ))).toNat

end

end A013250.P8817185979304999233

/-! ## A013250.P12599133121789609995

`A013257(n)%A086560(n+1)`
-/

namespace A013250.P12599133121789609995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013257 n) (A086560 (n + 1))

end

end A013250.P12599133121789609995

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

/-! ## A013255.P493367961172585972

`A013256(A004913(n+1))`
-/

namespace A013255.P493367961172585972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013256 (A004913 (n + 1)).toNat

end

end A013255.P493367961172585972

/-! ## A013255.P3794804643307456907

`A013256(n)%A051526(n+1)`
-/

namespace A013255.P3794804643307456907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013256 n) (A051526 (n + 1))

end

end A013255.P3794804643307456907

/-! ## A013255.P11978313256307135543

`A013256(n)^A014963(∑{d}[n+1, #^3])`
-/

namespace A013255.P11978313256307135543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013256 n : ℚ) ^ (A014963 (∑ d ∈ Nat.divisors (f1 n), d ^ 3) : ℤ)

end

end A013255.P11978313256307135543

/-!
# A013258: Expansion of e.g.f. sin(log(x+1)-sinh(x)).

The programs for A013258, there is no canonical definition to state claims against.
-/

/-! ## A013258.P11810080706042602311

`A013264(A024664(n))`
-/

namespace A013258.P11810080706042602311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013264 (A024664 n).toNat

end

end A013258.P11810080706042602311

/-! ## A013258.P12726389210918520545

`A013264(A087019(n))`
-/

namespace A013258.P12726389210918520545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013264 (A087019 n).toNat

end

end A013258.P12726389210918520545

/-! ## A013258.P16354845905038688218

`A013264(A004915(n+1))`
-/

namespace A013258.P16354845905038688218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013264 (A004915 (n + 1)).toNat

end

end A013258.P16354845905038688218

/-! ## A013258.P9332772903264284436

`A013264(A047842(n)-10)`
-/

namespace A013258.P9332772903264284436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013264 (A047842 n - 10).toNat

end

end A013258.P9332772903264284436

/-!
# A013259: Expansion of e.g.f. arcsin(log(x+1) - sinh(x)).

The programs for A013259, there is no canonical definition to state claims against.
-/

/-! ## A013259.P1282425641527068645

`A013263(A002998(n))`
-/

namespace A013259.P1282425641527068645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013263 (A002998 n).toNat

end

end A013259.P1282425641527068645

/-! ## A013259.P14771408750178729334

`A013263(A039723(n))`
-/

namespace A013259.P14771408750178729334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013263 (A039723 n).toNat

end

end A013259.P14771408750178729334

/-! ## A013259.P8142445989845734037

`A013263(A046469(n))`
-/

namespace A013259.P8142445989845734037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013263 (A046469 n).toNat

end

end A013259.P8142445989845734037

/-! ## A013259.P6496551396579342180

`A013263(gcd(n, A023815(n)))`
-/

namespace A013259.P6496551396579342180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013263 (Int.gcd (n : ℤ) (A023815 n))

end

end A013259.P6496551396579342180

/-!
# A013260: Expansion of e.g.f. tan(log(x+1) - sinh(x)).

The programs for A013260, there is no canonical definition to state claims against.
-/

/-! ## A013260.P12047539638093608635

`A013266(A056142(n))`
-/

namespace A013260.P12047539638093608635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013266 (A056142 n).toNat

end

end A013260.P12047539638093608635

/-! ## A013260.P16536297607418556536

`A013266(A087051(n))`
-/

namespace A013260.P16536297607418556536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013266 (A087051 n).toNat

end

end A013260.P16536297607418556536

/-! ## A013260.P16931959470184708988

`A013266(n*A213217(n))`
-/

namespace A013260.P16931959470184708988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013266 ((n : ℤ) * A213217 n).toNat

end

end A013260.P16931959470184708988

/-! ## A013260.P3701899301836242571

`A013266(n^A213217(n))`
-/

namespace A013260.P3701899301836242571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013266 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A213217 n : ℤ))).toNat

end

end A013260.P3701899301836242571

/-!
# A013261: Expansion of e.g.f. arctan(log(x+1) - sinh(x)).

The programs for A013261, there is no canonical definition to state claims against.
-/

/-! ## A013261.P2144343731295123423

`A013265(A046469(n))`
-/

namespace A013261.P2144343731295123423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013265 (A046469 n).toNat

end

end A013261.P2144343731295123423

/-! ## A013261.P13296324154359893737

`A013265(A045918(n)-10)`
-/

namespace A013261.P13296324154359893737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013265 (A045918 n - 10).toNat

end

end A013261.P13296324154359893737

/-! ## A013261.P9139295458233891692

`A013265(A159713(n)+n)`
-/

namespace A013261.P9139295458233891692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013265 (A159713 n + (n : ℤ)).toNat

end

end A013261.P9139295458233891692

/-! ## A013261.P2445010755845828726

`A013265(n*A213217(n))`
-/

namespace A013261.P2445010755845828726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013265 ((n : ℤ) * A213217 n).toNat

end

end A013261.P2445010755845828726

/-!
# A013262: E.g.f.: cos(log(x+1)-sinh(x))=1-3/4!*x^4+10/5!*x^5-100/6!*x^6+693/7!*x^7...

The programs for A013262, there is no canonical definition to state claims against.
-/

/-! ## A013262.P12376394094800074827

`A013269(A001222(5^n))`
-/

namespace A013262.P12376394094800074827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013269 (A001222 (5 ^ n)).toNat

end

end A013262.P12376394094800074827

/-! ## A013262.P7063996997265911032

`A013269(n^A049586(n))`
-/

namespace A013262.P7063996997265911032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013269 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A049586 n : ℤ))).toNat

end

end A013262.P7063996997265911032

/-! ## A013262.P6928398944166572580

`A013269(lcm(n, A072793(n)))`
-/

namespace A013262.P6928398944166572580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013269 (Int.lcm (n : ℤ) (A072793 n))

end

end A013262.P6928398944166572580

/-! ## A013262.P12629295889957665783

`A013269(n)%A137763(n+5)`
-/

namespace A013262.P12629295889957665783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013269 n) (A137763 (n + 5))

end

end A013262.P12629295889957665783

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

/-! ## A013267.P465836130950763446

`A013263(n)-A013488(n)*A033999(A268581(n))`
-/

namespace A013267.P465836130950763446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013263 n - A013488 n * A033999 (A268581 n).toNat

end

end A013267.P465836130950763446

/-!
# A013270: Expansion of e.g.f. sin(log(x+1) - arcsinh(x)).

The programs for A013270, there is no canonical definition to state claims against.
-/

/-! ## A013270.P17383212862439123863

`A013276(A002998(n))`
-/

namespace A013270.P17383212862439123863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013276 (A002998 n).toNat

end

end A013270.P17383212862439123863

/-! ## A013270.P1520113298200836046

`A013276(A039723(n))`
-/

namespace A013270.P1520113298200836046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013276 (A039723 n).toNat

end

end A013270.P1520113298200836046

/-! ## A013270.P16067694906657986951

`A013276(A046469(n))`
-/

namespace A013270.P16067694906657986951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013276 (A046469 n).toNat

end

end A013270.P16067694906657986951

/-! ## A013270.P14925636895943519060

`A013276(A051022(n))`
-/

namespace A013270.P14925636895943519060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013276 (A051022 n).toNat

end

end A013270.P14925636895943519060

/-!
# A013271: Expansion of e.g.f. arcsin(log(x+1) - arcsinh(x)).

The programs for A013271, there is no canonical definition to state claims against.
-/

/-! ## A013271.P17110357708184490691

`A013275(A050783(n+1))`
-/

namespace A013271.P17110357708184490691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013275 (A050783 (n + 1)).toNat

end

end A013271.P17110357708184490691

/-! ## A013271.P9338223296940027004

`A013275(A338754(n)/11)`
-/

namespace A013271.P9338223296940027004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013275 (SequenceMachineLib.roundAway ((A338754 n : ℚ) / 11)).toNat

end

end A013271.P9338223296940027004

/-! ## A013271.P15326640674392896794

`A013275(n)%A168640(n)`
-/

namespace A013271.P15326640674392896794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013275 n) (A168640 n)

end

end A013271.P15326640674392896794

/-! ## A013271.P3905804060464567452

`A013275(n)+A000007(A000108(n))`
-/

namespace A013271.P3905804060464567452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013275 n + A000007 (A000108 n).toNat

end

end A013271.P3905804060464567452

/-!
# A013272: tan(log(x+1)-arcsinh(x))=-1/2!*x^2+3/3!*x^3-6/4!*x^4+15/5!*x^5...

The programs for A013272, there is no canonical definition to state claims against.
-/

/-! ## A013272.P13215938880007011295

`A013278(A056143(n))`
-/

namespace A013272.P13215938880007011295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013278 (A056143 n).toNat

end

end A013272.P13215938880007011295

/-! ## A013272.P7345922875719439977

`A013278(A087019(n))`
-/

namespace A013272.P7345922875719439977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013278 (A087019 n).toNat

end

end A013272.P7345922875719439977

/-! ## A013272.P6747129674364997317

`A013278(n)%A023815(n)`
-/

namespace A013272.P6747129674364997317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013278 n) (A023815 n)

end

end A013272.P6747129674364997317

/-! ## A013272.P5880591974905580263

`A013278(gcd(n, A023815(n)))`
-/

namespace A013272.P5880591974905580263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013278 (Int.gcd (n : ℤ) (A023815 n))

end

end A013272.P5880591974905580263

/-!
# A013273: Expansion of e.g.f. arctan(log(x+1) - arcsinh(x)).

The programs for A013273, there is no canonical definition to state claims against.
-/

/-! ## A013273.P10249111752142400962

`A013277(A218556(n+1))`
-/

namespace A013273.P10249111752142400962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013277 (A218556 (n + 1)).toNat

end

end A013273.P10249111752142400962

/-! ## A013273.P5079874510093978095

`A013277(A249517(n+1))`
-/

namespace A013273.P5079874510093978095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013277 (A249517 (n + 1)).toNat

end

end A013273.P5079874510093978095

/-! ## A013273.P13216972866802215382

`A013277(A097598(n)-10)`
-/

namespace A013273.P13216972866802215382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013277 (A097598 n - 10).toNat

end

end A013273.P13216972866802215382

/-! ## A013273.P14261761594912967243

`A013277(n)%A095645(n)`
-/

namespace A013273.P14261761594912967243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013277 n) (A095645 n)

end

end A013273.P14261761594912967243

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

/-! ## A013274.P6099101316614614869

`A013281(A061140(n)+n)`
-/

namespace A013274.P6099101316614614869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013281 (A061140 n + (n : ℤ)).toNat

end

end A013274.P6099101316614614869

/-! ## A013274.P812175677203135612

`A013281(n^A293718(n))`
-/

namespace A013274.P812175677203135612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013281 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A293718 n : ℤ))).toNat

end

end A013274.P812175677203135612

/-! ## A013274.P18405695474747935670

`A013281(lcm(n, A031876(n)))`
-/

namespace A013274.P18405695474747935670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013281 (Int.lcm (n : ℤ) (A031876 n))

end

end A013274.P18405695474747935670

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
# A013282: Expansion of e.g.f.: sin(log(x+1) - tanh(x)).

The programs for A013282, there is no canonical definition to state claims against.
-/

/-! ## A013282.P11342032079532687416

`A013288(A039723(n))`
-/

namespace A013282.P11342032079532687416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013288 (A039723 n).toNat

end

end A013282.P11342032079532687416

/-! ## A013282.P14175207744797356215

`A013288(A087019(n))`
-/

namespace A013282.P14175207744797356215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013288 (A087019 n).toNat

end

end A013282.P14175207744797356215

/-! ## A013282.P792389746362538783

`A013288(A241186(∑[n]))`
-/

namespace A013282.P792389746362538783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013288 (A241186 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A013282.P792389746362538783

/-! ## A013282.P13978783842396361580

`A013288(A227549(n+1))`
-/

namespace A013282.P13978783842396361580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013288 (A227549 (n + 1)).toNat

end

end A013282.P13978783842396361580

/-!
# A013283: Expansion of e.g.f. arcsin(log(x+1) - tanh(x)).

The programs for A013283, there is no canonical definition to state claims against.
-/

/-! ## A013283.P11441656294610014937

`A013287(A002998(n))`
-/

namespace A013283.P11441656294610014937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013287 (A002998 n).toNat

end

end A013283.P11441656294610014937

/-! ## A013283.P7019899077396169535

`A013287(A087036(n))`
-/

namespace A013283.P7019899077396169535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013287 (A087036 n).toNat

end

end A013283.P7019899077396169535

/-! ## A013283.P16468721937680791677

`A013287(A087051(n))`
-/

namespace A013283.P16468721937680791677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013287 (A087051 n).toNat

end

end A013283.P16468721937680791677

/-! ## A013283.P13701087810314760473

`A013287(A004882(n+1))`
-/

namespace A013283.P13701087810314760473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013287 (A004882 (n + 1)).toNat

end

end A013283.P13701087810314760473

/-! ## A013283.P18090497373928985959

`A013287(n)%A050279(n+5)`
-/

namespace A013283.P18090497373928985959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013287 n) (A050279 (n + 5))

end

end A013283.P18090497373928985959

/-!
# A013284: tan(log(x+1)-tanh(x)) = -1/2!*x^2+4/3!*x^3-6/4!*x^4+8/5!*x^5... .

The programs for A013284, there is no canonical definition to state claims against.
-/

/-! ## A013284.P12714144748572044206

`A013290(A032555(n+2))`
-/

namespace A013284.P12714144748572044206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013290 (A032555 (n + 2)).toNat

end

end A013284.P12714144748572044206

/-! ## A013284.P11928908934606487665

`A013290(A004891(n+1)+2)`
-/

namespace A013284.P11928908934606487665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013290 (A004891 (n + 1) + 2).toNat

end

end A013284.P11928908934606487665

/-! ## A013284.P12267800862735404732

`A013290(n+2)%∑[A051526(n+1)]`
-/

namespace A013284.P12267800862735404732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013290 (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A013284.P12267800862735404732

/-! ## A013284.P11818732349847176250

`A013290(n+2)*A057427(A160618(n))`
-/

namespace A013284.P11818732349847176250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013290 (n + 2) * A057427 (A160618 n).toNat

end

end A013284.P11818732349847176250

/-!
# A013285: Expansion of e.g.f.: arctan(log(x+1)-tanh(x)).

The programs for A013285, there is no canonical definition to state claims against.
-/

/-! ## A013285.P14487706780313805470

`A013289((n+2)^A143632(n))`
-/

namespace A013285.P14487706780313805470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013289 (SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ (A143632 n : ℤ))).toNat

end

end A013285.P14487706780313805470

/-! ## A013285.P14829337795648664081

`A013289((n+2)*A121308(n+1)!)`
-/

namespace A013285.P14829337795648664081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013289 ((n + 2) * Nat.factorial (A121308 (n + 1)).toNat)

end

end A013285.P14829337795648664081

/-! ## A013285.P14629799824503439967

`A013289(n+2)%A137351(A273603(n))`
-/

namespace A013285.P14629799824503439967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013289 (n + 2)) (A137351 (A273603 n).toNat)

end

end A013285.P14629799824503439967

/-!
# A013286: cos(log(x+1)-tanh(x))=1-3/4!*x^4+40/5!*x^5-250/6!*x^6+1008/7!*x^7...

The programs for A013286, there is no canonical definition to state claims against.
-/

/-! ## A013286.P10026439126437868947

`A013293(A001222(5^n))`
-/

namespace A013286.P10026439126437868947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013293 (A001222 (5 ^ n)).toNat

end

end A013286.P10026439126437868947

/-! ## A013286.P7051514532773110271

`A013293(n^A293669(n))`
-/

namespace A013286.P7051514532773110271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013293 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A293669 n : ℤ))).toNat

end

end A013286.P7051514532773110271

/-! ## A013286.P16489291366075666465

`A013293(n)%A051526(n+1)`
-/

namespace A013286.P16489291366075666465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013293 n) (A051526 (n + 1))

end

end A013286.P16489291366075666465

/-! ## A013286.P287420066018084229

`A073445(A387845(n))+A013293(n)`
-/

namespace A013286.P287420066018084229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073445 (A387845 n).toNat + A013293 n

end

end A013286.P287420066018084229

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

/-! ## A013291.P9660648396910521391

`A013292(A004891(n+1))`
-/

namespace A013291.P9660648396910521391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013292 (A004891 (n + 1)).toNat

end

end A013291.P9660648396910521391

/-! ## A013291.P3063958147977597755

`A013292(A001222(5^n))`
-/

namespace A013291.P3063958147977597755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013292 (A001222 (5 ^ n)).toNat

end

end A013291.P3063958147977597755

/-! ## A013291.P4726771244673478864

`A013292(n)%A326943(n)`
-/

namespace A013291.P4726771244673478864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013292 n) (A326943 n)

end

end A013291.P4726771244673478864

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

/-! ## A013297.P11236984843851467105

`record[gcd(A013237(2*n), A064458(2*n))]`
-/

namespace A013297.P11236984843851467105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013237 (2 * n)) (A064458 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013297.P11236984843851467105

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

/-! ## A013299.P2043886909531984758

`A079484(n)+((2*n)²-1)*a(n-1)` with `a(0)=1`
-/

namespace A013299.P2043886909531984758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079484 n + (((2 * n) ^ 2 : ℤ) - 1) * a (n - 1)

end

end A013299.P2043886909531984758

