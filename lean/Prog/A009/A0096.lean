import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C007
import Seq.B003.C002
import Seq.B003.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C024

/-!
# A009600: Expansion of e.g.f. sin(tan(x))*x/2 (even powers only).

The programs for A009600, there is no canonical definition to state claims against.
-/

/-! ## A009600.P15096504402405110609

`A012528(n)/2`
-/

namespace A009600.P15096504402405110609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012528 n : ℚ) / 2

end

end A009600.P15096504402405110609

/-! ## A009600.P8489664925748076403

`A009232(2*n+1)/2`
-/

namespace A009600.P8489664925748076403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009232 (2 * n + 1) : ℚ) / 2

end

end A009600.P8489664925748076403

/-!
# A009601: Expansion of e.g.f.: sinh(tan(log(1+x))).

The programs for A009601, there is no canonical definition to state claims against.
-/

/-! ## A009601.P17752535794477680716

`A009237(n)-A009156(n)`
-/

namespace A009601.P17752535794477680716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009237 n - A009156 n

end

end A009601.P17752535794477680716

/-! ## A009601.P17372244585774266544

`A009676(n)%Δ[A056041(n)]`
-/

namespace A009601.P17372244585774266544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009676 n) (f1 (n + 1) - f1 n)

end

end A009601.P17372244585774266544

/-! ## A009601.P6675322116119833006

`A009676(lcm(n, A178472(2*n+1)))`
-/

namespace A009601.P6675322116119833006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009676 (Int.lcm (n : ℤ) (A178472 (2 * n + 1)))

end

end A009601.P6675322116119833006

/-!
# A009602: Expansion of e.g.f. sinh(tan(sin(x))) (odd powers only).

The programs for A009602, there is no canonical definition to state claims against.
-/

/-! ## A009602.P10358020292069762245

`A009238(Δ[n²])`
-/

namespace A009602.P10358020292069762245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009238 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009602.P10358020292069762245

/-! ## A009602.P16434929343812982710

`or(n, A009238(A005408(n)))-n`
-/

namespace A009602.P16434929343812982710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A009238 (A005408 n).toNat) - (n : ℤ)

end

end A009602.P16434929343812982710

/-! ## A009602.P1818845003000591868

`or(A000007(n), A009238(A005408(n)))`
-/

namespace A009602.P1818845003000591868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A009238 (A005408 n).toNat)

end

end A009602.P1818845003000591868

/-! ## A009602.P8018564308813439075

`A009238(A005408(n))+A000007(n+1)`
-/

namespace A009602.P8018564308813439075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009238 (A005408 n).toNat + A000007 (n + 1)

end

end A009602.P8018564308813439075

/-!
# A009603: Expansion of sinh(tan(tan(x))) (odd powers only).

The programs for A009603, there is no canonical definition to state claims against.
-/

/-! ## A009603.P8408400235681364627

`A009240(Δ[n²])`
-/

namespace A009603.P8408400235681364627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009240 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009603.P8408400235681364627

/-! ## A009603.P14421663888159376827

`record[A009240(floor(n/(n%2+1))+1)]`
-/

namespace A009603.P14421663888159376827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009240 (⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009603.P14421663888159376827

/-! ## A009603.P3193677389237431773

`record[A009240(A004442(n))]`
-/

namespace A009603.P3193677389237431773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009240 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009603.P3193677389237431773

/-! ## A009603.P15073767880903646279

`record[A009240(A006257(n))]`
-/

namespace A009603.P15073767880903646279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009240 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009603.P15073767880903646279

/-! ## A009603.P14785695057061733260

`record[A009240(A006369(n))]`
-/

namespace A009603.P14785695057061733260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009240 (A006369 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009603.P14785695057061733260

/-!
# A009604: Expansion of e.g.f. sinh(tan(x))*cos(x), odd powers only.

The programs for A009604, there is no canonical definition to state claims against.
-/

/-! ## A009604.P13102655927593721868

`abs(A009114(2*n+1))`
-/

namespace A009604.P13102655927593721868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009114 (2 * n + 1)|

end

end A009604.P13102655927593721868

/-! ## A009604.P12564761334130338797

`abs(A009524(2*n+1))`
-/

namespace A009604.P12564761334130338797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009524 (2 * n + 1)|

end

end A009604.P12564761334130338797

/-! ## A009604.P5128697768840480652

`-A009114(A005408(n))`
-/

namespace A009604.P5128697768840480652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A009114 (A005408 n).toNat

end

end A009604.P5128697768840480652

/-! ## A009604.P11621473350693929170

`A009160(n)-A009606(n)`
-/

namespace A009604.P11621473350693929170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009160 n - A009606 n

end

end A009604.P11621473350693929170

/-! ## A009604.P769310381389256031

`-A009114(record[A004442(n)])`
-/

namespace A009604.P769310381389256031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A009114 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A009604.P769310381389256031

/-!
# A009605: Expansion of e.g.f. sinh(tan(x))*exp(x).

The programs for A009605, there is no canonical definition to state claims against.
-/

/-! ## A009605.P17679491285725783495

`A009284(n)-A028310(A009290(n))`
-/

namespace A009605.P17679491285725783495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009284 n - A028310 (A009290 n).toNat

end

end A009605.P17679491285725783495

/-! ## A009605.P2168485511974954201

`A009284(n)%A009287(n+1)-A009290(n)`
-/

namespace A009605.P2168485511974954201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009284 n) (A009287 (n + 1)) - A009290 n

end

end A009605.P2168485511974954201

/-! ## A009605.P1593103151944996103

`A350355(∑[A080876(n)])`
-/

namespace A009605.P1593103151944996103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350355 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A009605.P1593103151944996103

/-!
# A009606: Expansion of e.g.f. sinh(tan(x))*sin(x) (even powers only).

The programs for A009606, there is no canonical definition to state claims against.
-/

/-! ## A009606.P9949099556901333326

`2*A024259(n)`
-/

namespace A009606.P9949099556901333326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024259 n

end

end A009606.P9949099556901333326

/-! ## A009606.P17131347514094792732

`A009543(2*n)`
-/

namespace A009606.P17131347514094792732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009543 (2 * n)

end

end A009606.P17131347514094792732

/-! ## A009606.P17474070362223571799

`abs(A009524(2*n))`
-/

namespace A009606.P17474070362223571799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009524 (2 * n)|

end

end A009606.P17474070362223571799

/-! ## A009606.P17750609195886573457

`lcm(2, A009543(A005843(n)))`
-/

namespace A009606.P17750609195886573457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A009543 (A005843 n).toNat)

end

end A009606.P17750609195886573457

/-! ## A009606.P4548055493283888006

`A009160(n)-A009604(n)`
-/

namespace A009606.P4548055493283888006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009160 n - A009604 n

end

end A009606.P4548055493283888006

/-!
# A009607: Expansion of e.g.f. sinh(tan(x))/cos(x), odd powers only.

The programs for A009607, there is no canonical definition to state claims against.
-/

/-! ## A009607.P15403151326580382307

`A009244(Δ[n²])`
-/

namespace A009607.P15403151326580382307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009244 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009607.P15403151326580382307

/-! ## A009607.P11232796946660720283

`record[A009244(A006369(n))]`
-/

namespace A009607.P11232796946660720283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009244 (A006369 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009607.P11232796946660720283

/-! ## A009607.P6276610673320961605

`record[A009244(A014681(n)+1)]`
-/

namespace A009607.P6276610673320961605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009244 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009607.P6276610673320961605

/-! ## A009607.P17897227183937175287

`record[A009244(A033999(n)+n)]`
-/

namespace A009607.P17897227183937175287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009244 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009607.P17897227183937175287

/-! ## A009607.P12890284576135145961

`record[A009244(n-A142150(n))]`
-/

namespace A009607.P12890284576135145961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009244 ((n : ℤ) - A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009607.P12890284576135145961

/-!
# A009608: Expansion of e.g.f. sinh(tan(x)*exp(x)).

The programs for A009608, there is no canonical definition to state claims against.
-/

/-! ## A009608.P10825795854829133234

`A009248(n)-A009162(n)`
-/

namespace A009608.P10825795854829133234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009248 n - A009162 n

end

end A009608.P10825795854829133234

/-! ## A009608.P1506619300396932565

`A000720(∑[A024199(n)-val(2*(n+2), 10)]+1)`
-/

namespace A009608.P1506619300396932565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024199 n - (SequenceMachineLib.valuation (2 * (n + 2)) 10 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A009608.P1506619300396932565

/-! ## A009608.P15649965158786391248

`A276796(xor(A282267(n), A288953(n)))`
-/

namespace A009608.P15649965158786391248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (Int.xor (A282267 n) (A288953 n)).toNat

end

end A009608.P15649965158786391248

/-!
# A009609: sinh(tan(x)*sin(x))=2/2!*x^2+4/4!*x^4+182/6!*x^6+4744/8!*x^8...

The programs for A009609, there is no canonical definition to state claims against.
-/

/-! ## A009609.P4464281516147596316

`2*A024240(n)`
-/

namespace A009609.P4464281516147596316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024240 n

end

end A009609.P4464281516147596316

/-! ## A009609.P11732425623034693791

`lcm(A024240(n), A266645(A061393(n)))`
-/

namespace A009609.P11732425623034693791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A024240 n) (A266645 (A061393 n).toNat)

end

end A009609.P11732425623034693791

/-! ## A009609.P15778956395308960112

`A024240(n)+A024240(A055645(n))`
-/

namespace A009609.P15778956395308960112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024240 n + A024240 (A055645 n).toNat

end

end A009609.P15778956395308960112

/-! ## A009609.P9910955911542324093

`A024240(A004884(n+1))+A024240(n)`
-/

namespace A009609.P9910955911542324093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024240 (A004884 (n + 1)).toNat + A024240 n

end

end A009609.P9910955911542324093

/-! ## A009609.P14690488788351090260

`A024240(n)+A024240(A062399(n))`
-/

namespace A009609.P14690488788351090260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024240 n + A024240 (A062399 n).toNat

end

end A009609.P14690488788351090260

/-!
# A009610: sinh(sinh(x)*tan(x)) = 2/2!*x^2 + 12/4!*x^4 + 262/6!*x^6 + 13272/8!*x^8 + ...

The programs for A009610, there is no canonical definition to state claims against.
-/

/-! ## A009610.P11179470761465475941

`2*A024276(n)`
-/

namespace A009610.P11179470761465475941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024276 n

end

end A009610.P11179470761465475941

/-! ## A009610.P9868244087778080747

`A009251(n)-A009165(n)`
-/

namespace A009610.P9868244087778080747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009251 n - A009165 n

end

end A009610.P9868244087778080747

/-! ## A009610.P1956714740221488101

`A024276(n)+A024276(A292579(n))`
-/

namespace A009610.P1956714740221488101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024276 n + A024276 (A292579 n).toNat

end

end A009610.P1956714740221488101

/-! ## A009610.P6402669974553852642

`A024276(n)+A024276(n)/gcd(11, A007318(n))`
-/

namespace A009610.P6402669974553852642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024276 n : ℚ) + (A024276 n : ℚ) / (Int.gcd 11 (A007318 n) : ℚ)

end

end A009610.P6402669974553852642

/-! ## A009610.P7325039584312824808

`A024276(n)+A024276(n)/A153881(n+1)²`
-/

namespace A009610.P7325039584312824808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024276 n : ℚ) + (A024276 n : ℚ) / (A153881 (n + 1) ^ 2 : ℚ)

end

end A009610.P7325039584312824808

/-!
# A009611: Expansion of sinh(tan(x)*x).

The programs for A009611, there is no canonical definition to state claims against.
-/

/-! ## A009611.P10906765904154932149

`2*A024263(n)`
-/

namespace A009611.P10906765904154932149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024263 n

end

end A009611.P10906765904154932149

/-! ## A009611.P8704566152437021562

`A009252(n)-A009166(n)`
-/

namespace A009611.P8704566152437021562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009252 n - A009166 n

end

end A009611.P8704566152437021562

/-! ## A009611.P17688558955727052713

`A024263(n)+A024263(A292579(n))`
-/

namespace A009611.P17688558955727052713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024263 n + A024263 (A292579 n).toNat

end

end A009611.P17688558955727052713

/-! ## A009611.P16393844515390278340

`A024263(n)+A024263(n)%A009252(n)`
-/

namespace A009611.P16393844515390278340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024263 n + Int.tmod (A024263 n) (A009252 n)

end

end A009611.P16393844515390278340

/-! ## A009611.P15221607813523476601

`A024263(A004907(n+1))+A024263(n)`
-/

namespace A009611.P15221607813523476601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024263 (A004907 (n + 1)).toNat + A024263 n

end

end A009611.P15221607813523476601

/-!
# A009612: Expansion of e.g.f. sinh(tan(x)/cos(x)), odd powers only.

The programs for A009612, there is no canonical definition to state claims against.
-/

/-! ## A009612.P268184754881852364

`A009253(Δ[n²])`
-/

namespace A009612.P268184754881852364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009253 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009612.P268184754881852364

/-! ## A009612.P13989198071107865455

`record[A009253(A026741(n))]`
-/

namespace A009612.P13989198071107865455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009253 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009612.P13989198071107865455

/-! ## A009612.P11864448467395832995

`record[A009253(abs(A009001(n)))]`
-/

namespace A009612.P11864448467395832995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009253 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009612.P11864448467395832995

/-! ## A009612.P17467228641749427889

`record[A009253(Δ[A001318(n)])]`
-/

namespace A009612.P17467228641749427889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009253 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009612.P17467228641749427889

/-! ## A009612.P13123529964738434473

`record[A009253(A000265(n+1))]`
-/

namespace A009612.P13123529964738434473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009253 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009612.P13123529964738434473

/-!
# A009613: Expansion of e.g.f. sinh(tan(x)*tan(x)) (even powers only).

The programs for A009613, there is no canonical definition to state claims against.
-/

/-! ## A009613.P17372895714507193093

`2*A024287(n)`
-/

namespace A009613.P17372895714507193093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024287 n

end

end A009613.P17372895714507193093

/-! ## A009613.P4066403085266884035

`A009256(n)-A009168(n)`
-/

namespace A009613.P4066403085266884035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009256 n - A009168 n

end

end A009613.P4066403085266884035

/-! ## A009613.P4641035963652640792

`lcm(2^A093051(n), A024287(n))`
-/

namespace A009613.P4641035963652640792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A093051 n : ℤ))) (A024287 n)

end

end A009613.P4641035963652640792

/-! ## A009613.P7705985592409146700

`lcm(A000079(A093051(n)), A024287(n))`
-/

namespace A009613.P7705985592409146700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 (A093051 n).toNat) (A024287 n)

end

end A009613.P7705985592409146700

/-! ## A009613.P11835931322689356791

`A024287(log2(A000079(n)))+A024287(n)`
-/

namespace A009613.P11835931322689356791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024287 (SequenceMachineLib.roundAway (Real.logb 2 (A000079 n : ℝ))).toNat + A024287 n

end

end A009613.P11835931322689356791

/-!
# A009614: Expansion of sinh(tanh(log(1+x))).

The programs for A009614, there is no canonical definition to state claims against.
-/

/-! ## A009614.P8341839741865085041

`A009257(n)-A009169(n)`
-/

namespace A009614.P8341839741865085041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009257 n - A009169 n

end

end A009614.P8341839741865085041

/-! ## A009614.P14711663279106654826

`A009257(n)+A008683(A020484(n))*A009169(n)`
-/

namespace A009614.P14711663279106654826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009257 n + A008683 (A020484 n).toNat * A009169 n

end

end A009614.P14711663279106654826

/-! ## A009614.P10313688738163619613

`A009257(n)+A009169(n)*A307428(A000040(n+1))`
-/

namespace A009614.P10313688738163619613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009257 n + A009169 n * A307428 (A000040 (n + 1)).toNat

end

end A009614.P10313688738163619613

/-!
# A009616: Expansion of e.g.f.: sinh(tanh(x)*exp(x)).

The programs for A009616, there is no canonical definition to state claims against.
-/

/-! ## A009616.P3487329327896133871

`A009268(n)-A009171(n)`
-/

namespace A009616.P3487329327896133871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009268 n - A009171 n

end

end A009616.P3487329327896133871

/-! ## A009616.P14309173264879653610

`and(A095052(n+1), A179243(A031175(3*n+1)))`
-/

namespace A009616.P14309173264879653610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095052 (n + 1)) (A179243 (A031175 (3 * n + 1)).toNat)

end

end A009616.P14309173264879653610

/-! ## A009616.P8420895005278067647

`and(A259384(n+1)!, A013315(n+1))`
-/

namespace A009616.P8420895005278067647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A259384 (n + 1)).toNat : ℤ) (A013315 (n + 1))

end

end A009616.P8420895005278067647

/-!
# A009617: Expansion of e.g.f. sinh(tanh(x)*tan(x))/2 in odd powers of x^2.

The programs for A009617, there is no canonical definition to state claims against.
-/

/-! ## A009617.P3001447644882216135

`A012671(n)/2`
-/

namespace A009617.P3001447644882216135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012671 n : ℚ) / 2

end

end A009617.P3001447644882216135

/-! ## A009617.P4957147502951680990

`A009272(2*n+1)/2`
-/

namespace A009617.P4957147502951680990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009272 (2 * n + 1) : ℚ) / 2

end

end A009617.P4957147502951680990

/-!
# A009618: Expansion of sinh(x)*cos(log(1+x)).

The programs for A009618, there is no canonical definition to state claims against.
-/

/-! ## A009618.P12532349044008980375

`A009174(n)-A009027(n)`
-/

namespace A009618.P12532349044008980375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009174 n - A009027 n

end

end A009618.P12532349044008980375

/-! ## A009618.P11582982828107592963

`A009280(n)-A009174(n)`
-/

namespace A009618.P11582982828107592963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009280 n - A009174 n

end

end A009618.P11582982828107592963

/-! ## A009618.P3828765492250588007

`A009174(n)+A009027(n)*A260196(n+2)`
-/

namespace A009618.P3828765492250588007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009174 n + A009027 n * A260196 (n + 2)

end

end A009618.P3828765492250588007

/-! ## A009618.P16119537377085289680

`A009174(n)+A009027(n)/A134824(n+2)`
-/

namespace A009618.P16119537377085289680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009174 n : ℚ) + (A009027 n : ℚ) / (A134824 (n + 2) : ℚ)

end

end A009618.P16119537377085289680

/-!
# A009619: Expansion of sinh(x)*cos(sin(x)).

The programs for A009619, there is no canonical definition to state claims against.
-/

/-! ## A009619.P15197770634692744625

`-A009045(2*n+1)`
-/

namespace A009619.P15197770634692744625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A009045 (2 * n + 1)

end

end A009619.P15197770634692744625

/-! ## A009619.P17009346091203410043

`char[A017379(n)]-A009045(2*n+1)`
-/

namespace A009619.P17009346091203410043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017379 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A009045 (2 * n + 1)

end

end A009619.P17009346091203410043

/-! ## A009619.P5844479949794305713

`A000007(n+1)-A009045(2*n+1)`
-/

namespace A009619.P5844479949794305713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A009045 (2 * n + 1)

end

end A009619.P5844479949794305713

/-! ## A009619.P9750858854917485521

`A000038(n+1)-A009045(2*n+1)`
-/

namespace A009619.P9750858854917485521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A009045 (2 * n + 1)

end

end A009619.P9750858854917485521

/-! ## A009619.P5639244661466755335

`A008683(8*(n+1))-A009045(2*n+1)`
-/

namespace A009619.P5639244661466755335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * (n + 1)) - A009045 (2 * n + 1)

end

end A009619.P5639244661466755335

/-!
# A009620: Expansion of sinh(x)*cos(tan(x)).

The programs for A009620, there is no canonical definition to state claims against.
-/

/-! ## A009620.P17704790898749842954

`-A009074(2*n+1)`
-/

namespace A009620.P17704790898749842954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A009074 (2 * n + 1)

end

end A009620.P17704790898749842954

/-! ## A009620.P12559009960430744327

`A000007(n+1)-A009074(2*n+1)`
-/

namespace A009620.P12559009960430744327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A009074 (2 * n + 1)

end

end A009620.P12559009960430744327

/-! ## A009620.P3614529487569307751

`A000038(n+1)-A009074(2*n+1)`
-/

namespace A009620.P3614529487569307751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A009074 (2 * n + 1)

end

end A009620.P3614529487569307751

/-! ## A009620.P13661129727213815170

`char[A096399(n+1)]-A009074(2*n+1)`
-/

namespace A009620.P13661129727213815170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096399 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A009074 (2 * n + 1)

end

end A009620.P13661129727213815170

/-! ## A009620.P1500889790310044948

`A008683(A161973(n+1))*A009074(2*n+1)`
-/

namespace A009620.P1500889790310044948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A161973 (n + 1)).toNat * A009074 (2 * n + 1)

end

end A009620.P1500889790310044948

/-!
# A009621: Expansion of sinh(x)*cosh(log(1+x)).

The programs for A009621, there is no canonical definition to state claims against.
-/

/-! ## A009621.P16412146845348030821

`A009281(n)-A009178(n)`
-/

namespace A009621.P16412146845348030821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009281 n - A009178 n

end

end A009621.P16412146845348030821

/-! ## A009621.P15521781593065936252

`A009178(n)-A009132(n)`
-/

namespace A009621.P15521781593065936252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009178 n - A009132 n

end

end A009621.P15521781593065936252

/-! ## A009621.P10630241789930798151

`A093178(n)-(A009573(n)+A009132(n))`
-/

namespace A009621.P10630241789930798151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n - (A009573 n + A009132 n)

end

end A009621.P10630241789930798151

/-! ## A009621.P18006686738466694350

`abs(A009001(n))-(A009573(n)+A009132(n))`
-/

namespace A009621.P18006686738466694350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009001 n| - (A009573 n + A009132 n)

end

end A009621.P18006686738466694350

/-! ## A009621.P9987774659803838208

`A023443(A133265(n))-(A009573(n)+A009132(n))`
-/

namespace A009621.P9987774659803838208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A133265 n).toNat - (A009573 n + A009132 n)

end

end A009621.P9987774659803838208

/-!
# A009622: Expansion of sinh(x)*exp(sin(x)).

The programs for A009622, there is no canonical definition to state claims against.
-/

/-! ## A009622.P952175981961754208

`(A009282(n)-A009209(n))/2`
-/

namespace A009622.P952175981961754208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009282 n - A009209 n : ℚ) / 2

end

end A009622.P952175981961754208

/-! ## A009622.P5549248573676793188

`A009590(n)-A000035(n)*A009209(n)`
-/

namespace A009622.P5549248573676793188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009590 n - A000035 n * A009209 n

end

end A009622.P5549248573676793188

/-! ## A009622.P14185330882228760150

`A009184(n)+A009590(n)-A009145(n)`
-/

namespace A009622.P14185330882228760150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009184 n + (A009590 n - A009145 n)

end

end A009622.P14185330882228760150

/-! ## A009622.P4856532490886135614

`A009184(n)*A033999(n)-A009209(n)`
-/

namespace A009622.P4856532490886135614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009184 n * A033999 n - A009209 n

end

end A009622.P4856532490886135614

/-! ## A009622.P17825162879667349863

`A009282(n)-A009184(n)*A033999(n)`
-/

namespace A009622.P17825162879667349863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009282 n - A009184 n * A033999 n

end

end A009622.P17825162879667349863

/-!
# A009623: Expansion of e.g.f. sinh(x)*exp(sinh(x)).

The programs for A009623, there is no canonical definition to state claims against.
-/

/-! ## A009623.P869969959834175526

`A009283(n)-A003724(n+1)`
-/

namespace A009623.P869969959834175526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009283 n - A003724 (n + 1)

end

end A009623.P869969959834175526

/-! ## A009623.P8966623288641044984

`A003724(n+1)-A009227(n)`
-/

namespace A009623.P8966623288641044984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003724 (n + 1) - A009227 n

end

end A009623.P8966623288641044984

/-! ## A009623.P15626033541942366609

`(A009283(n)-A009227(n))/2`
-/

namespace A009623.P15626033541942366609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009283 n - A009227 n : ℚ) / 2

end

end A009623.P15626033541942366609

/-! ## A009623.P3900792107499733459

`A009598(n)-A000035(n)*A009227(n)`
-/

namespace A009623.P3900792107499733459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009598 n - A000035 n * A009227 n

end

end A009623.P3900792107499733459

/-! ## A009623.P12459955681166276585

`(A009283(n)-A009227(n))*2^A008683(A003629(n+1))`
-/

namespace A009623.P12459955681166276585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009283 n - A009227 n : ℚ) * (2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ)

end

end A009623.P12459955681166276585

/-!
# A009624: Expansion of sinh(x)*exp(tan(x)).

The programs for A009624, there is no canonical definition to state claims against.
-/

/-! ## A009624.P9086421638993801755

`A065864(A330470(n))+n`
-/

namespace A009624.P9086421638993801755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065864 (A330470 n).toNat + (n : ℤ)

end

end A009624.P9086421638993801755

/-! ## A009624.P18371717231021648363

`Δ[A343228(∏[A321745(n+1)])]`
-/

namespace A009624.P18371717231021648363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321745 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A009624.P18371717231021648363

/-! ## A009624.P11883378475158916597

`A100345(n)+A079691(A114801(n!))`
-/

namespace A009624.P11883378475158916597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n + A079691 (A114801 (Nat.factorial n)).toNat

end

end A009624.P11883378475158916597

/-!
# A009625: Expansion of sinh(x)*exp(tanh(x)).

The programs for A009625, there is no canonical definition to state claims against.
-/

/-! ## A009625.P4513785840602912853

`(A009285(n)-A009266(n))/2`
-/

namespace A009625.P4513785840602912853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009285 n - A009266 n : ℚ) / 2

end

end A009625.P4513785840602912853

/-!
# A009626: Expansion of sinh(x)*sin(sin(x)).

The programs for A009626, there is no canonical definition to state claims against.
-/

/-! ## A009626.P3066382992411361413

`2*A024227(n)`
-/

namespace A009626.P3066382992411361413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024227 n

end

end A009626.P3066382992411361413

/-! ## A009626.P8179207160393086802

`A024227(n)/(A000007(n)+1/2)`
-/

namespace A009626.P8179207160393086802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024227 n : ℚ) / ((A000007 n : ℚ) + (1 : ℚ) / 2)

end

end A009626.P8179207160393086802

/-! ## A009626.P11523202768223525795

`A024227(n)/(A005171(A000040(n+1))+1/2)`
-/

namespace A009626.P11523202768223525795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024227 n : ℚ) / ((A005171 (A000040 (n + 1)).toNat : ℚ) + (1 : ℚ) / 2)

end

end A009626.P11523202768223525795

/-! ## A009626.P2295484893790915606

`A009477(2*n)`
-/

namespace A009626.P2295484893790915606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009477 (2 * n)

end

end A009626.P2295484893790915606

/-! ## A009626.P16067587266390409889

`A009477(A004277(n))-A000007(n)`
-/

namespace A009626.P16067587266390409889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009477 (A004277 n).toNat - A000007 n

end

end A009626.P16067587266390409889

/-!
# A009627: Expansion of sinh(x)*sin(tan(x)).

The programs for A009627, there is no canonical definition to state claims against.
-/

/-! ## A009627.P18143965204509656423

`A009507(2*n)`
-/

namespace A009627.P18143965204509656423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009507 (2 * n)

end

end A009627.P18143965204509656423

/-! ## A009627.P13253558082997230401

`2*A024247(n)`
-/

namespace A009627.P13253558082997230401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024247 n

end

end A009627.P13253558082997230401

/-! ## A009627.P7389869239209952070

`A024247(n)+A024247(n)/A007318(C(2, n))`
-/

namespace A009627.P7389869239209952070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024247 n : ℚ) + (A024247 n : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A009627.P7389869239209952070

/-! ## A009627.P18426128933382374177

`A024247(n)+A024247(n)/A073220(n+1)%2`
-/

namespace A009627.P18426128933382374177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024247 n : ℚ) + (A024247 n : ℚ) / (Int.tmod (A073220 (n + 1)) 2 : ℚ)

end

end A009627.P18426128933382374177

/-! ## A009627.P7123834033072897727

`A009507(A005843(n))%A009506(n)`
-/

namespace A009627.P7123834033072897727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009507 (A005843 n).toNat) (A009506 n)

end

end A009627.P7123834033072897727

/-!
# A009628: Expansion of e.g.f.: sinh(x)/(1+x).

The programs for A009628, there is no canonical definition to state claims against.
-/

/-! ## A009628.P17018099237616780618

`n%2-n*a(n-1)` with `a(0)=0`
-/

namespace A009628.P17018099237616780618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n % 2 : ℕ) : ℤ) - (n : ℤ) * a (n - 1)

end

end A009628.P17018099237616780618

/-! ## A009628.P17933160655741886285

`and(1, n)-n*a(n-1)` with `a(0)=0`
-/

namespace A009628.P17933160655741886285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.land 1 n : ℤ) - (n : ℤ) * a (n - 1)

end

end A009628.P17933160655741886285

/-! ## A009628.P12815711949783912940

`2-(gcd(2, n)+n*a(n-1))` with `a(0)=0`
-/

namespace A009628.P12815711949783912940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - ((Nat.gcd 2 n : ℤ) + (n : ℤ) * a (n - 1))

end

end A009628.P12815711949783912940

/-! ## A009628.P12137615281554587973

`char[2*n+1]-n*a(n-1)` with `a(0)=0`
-/

namespace A009628.P12137615281554587973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ) * a (n - 1)

end

end A009628.P12137615281554587973

/-! ## A009628.P16766757060999474678

`A182386(n)-A009179(n)`
-/

namespace A009628.P16766757060999474678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182386 n - A009179 n

end

end A009628.P16766757060999474678

/-! ## A009628.P17532951008139314192

`A177699(n+1)-A009416(n)`
-/

namespace A009628.P17532951008139314192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177699 (n + 1) - A009416 n

end

end A009628.P17532951008139314192

/-!
# A009629: Expansion of sinh(x)/cos(log(1+x)).

The programs for A009629, there is no canonical definition to state claims against.
-/

/-! ## A009629.P17464218546929435122

`A009288(n)-A009180(n)`
-/

namespace A009629.P17464218546929435122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009288 n - A009180 n

end

end A009629.P17464218546929435122

/-!
# A009630: Expansion of sinh(x)/cos(sin(x)).

The programs for A009630, there is no canonical definition to state claims against.
-/

/-! ## A009630.P11907054217206617494

`A009289(Δ[n²])`
-/

namespace A009630.P11907054217206617494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009289 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009630.P11907054217206617494

/-! ## A009630.P17266860048048111271

`or(A000007(n), A009289(2*n+1))`
-/

namespace A009630.P17266860048048111271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A009289 (2 * n + 1))

end

end A009630.P17266860048048111271

/-! ## A009630.P4577759971576507751

`A009289(A005408(n))^floor(atan(n+1))`
-/

namespace A009630.P4577759971576507751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009289 (A005408 n).toNat : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ)

end

end A009630.P4577759971576507751

/-! ## A009630.P13714928724151452659

`A039963(A081706(n+1))+A009289(2*n+1)`
-/

namespace A009630.P13714928724151452659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A081706 (n + 1)).toNat + A009289 (2 * n + 1)

end

end A009630.P13714928724151452659

/-! ## A009630.P15233343987441837748

`A009289(A005408(n))*A055396(A133265(n))`
-/

namespace A009630.P15233343987441837748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009289 (A005408 n).toNat * A055396 (A133265 n).toNat

end

end A009630.P15233343987441837748

/-!
# A009631: Expansion of sinh(x)/cos(tan(x)).

The programs for A009631, there is no canonical definition to state claims against.
-/

/-! ## A009631.P2724476262598672892

`A009291(Δ[n²])`
-/

namespace A009631.P2724476262598672892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009291 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009631.P2724476262598672892

/-! ## A009631.P540331069325386342

`record[A009291(xor(1, n))]`
-/

namespace A009631.P540331069325386342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009291 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009631.P540331069325386342

/-! ## A009631.P14445919232325703688

`record[A009291(n*and(1, n))]`
-/

namespace A009631.P14445919232325703688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009291 (n * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009631.P14445919232325703688

/-! ## A009631.P5567909286175582581

`record[A009291(n)^and(1, n)]`
-/

namespace A009631.P5567909286175582581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009291 n ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009631.P5567909286175582581

/-! ## A009631.P1778007631331086356

`record[A009291(A099375(n))]`
-/

namespace A009631.P1778007631331086356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009291 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009631.P1778007631331086356

/-!
# A009632: Expansion of sinh(x)/cosh(log(1+x)).

The programs for A009632, there is no canonical definition to state claims against.
-/

/-! ## A009632.P12154197494500363493

`A009294(n)-A009183(n)`
-/

namespace A009632.P12154197494500363493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009294 n - A009183 n

end

end A009632.P12154197494500363493

/-!
# A009635: Expansion of e.g.f. tan(x*exp(x)).

The programs for A009635, there is no canonical definition to state claims against.
-/

/-! ## A009635.P17201736967802370635

`∑[A212321(61*a(n-2))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A009635.P17201736967802370635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 3] fun n f1 =>
  A212321 (61 * f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009635.P17201736967802370635

/-! ## A009635.P6366935946682746539

`A193990(A187806(n))`
-/

namespace A009635.P6366935946682746539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193990 (A187806 n).toNat

end

end A009635.P6366935946682746539

/-!
# A009638: Expansion of e.g.f.: tan(log(1+sinh(x))).

The programs for A009638, there is no canonical definition to state claims against.
-/

/-! ## A009638.P16794787067610946177

`A086916(A000110(n))-A012697(n)`
-/

namespace A009638.P16794787067610946177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086916 (A000110 n).toNat - A012697 n

end

end A009638.P16794787067610946177

/-! ## A009638.P13873857853439491926

`or(A009411(n), A324827(A002110(n)))`
-/

namespace A009638.P13873857853439491926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009411 n) (A324827 (A002110 n).toNat)

end

end A009638.P13873857853439491926

/-!
# A009641: a(n) = Product_{i=0..6} floor((n+i)/7).

The programs for A009641, there is no canonical definition to state claims against.
-/

/-! ## A009641.P16569263717115102942

`A002265(A009714(n+4))`
-/

namespace A009641.P16569263717115102942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A009714 (n + 4)).toNat

end

end A009641.P16569263717115102942

/-! ## A009641.P458882234842354663

`round(A001068(A009714(n+4))/5*A057427(n))`
-/

namespace A009641.P458882234842354663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001068 (A009714 (n + 4)).toNat : ℚ) / 5 * (A057427 n : ℚ))

end

end A009641.P458882234842354663

/-! ## A009641.P16178665144600688468

`round(A001068(A009714(n+4))/5)%A000079(n)`
-/

namespace A009641.P16178665144600688468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001068 (A009714 (n + 4)).toNat : ℚ) / 5)) (A000079 n)

end

end A009641.P16178665144600688468

/-! ## A009641.P546279210809158733

`round(A047752(n+1)+A001068(A009714(n+4))/5)`
-/

namespace A009641.P546279210809158733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A047752 (n + 1) : ℚ) + (A001068 (A009714 (n + 4)).toNat : ℚ) / 5)

end

end A009641.P546279210809158733

/-! ## A009641.P13965955744799182026

`round(A001068(A009714(n+4))/5+n*A000007(n))`
-/

namespace A009641.P13965955744799182026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001068 (A009714 (n + 4)).toNat : ℚ) / 5 + ((n : ℤ) * A000007 n : ℚ))

end

end A009641.P13965955744799182026

/-!
# A009643: Expansion of tan(log(1+x))*cosh(x).

The programs for A009643, there is no canonical definition to state claims against.
-/

/-! ## A009643.P14930840977634725401

`(A009648(n)+A009644(n))/2`
-/

namespace A009643.P14930840977634725401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009648 n + A009644 n : ℚ) / 2

end

end A009643.P14930840977634725401

/-! ## A009643.P12215806842388551283

`(A009648(n)+A009644(n))*2^(A000038(n)-1)`
-/

namespace A009643.P12215806842388551283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009648 n + A009644 n : ℚ) * (2 : ℚ) ^ (A000038 n - 1 : ℤ)

end

end A009643.P12215806842388551283

/-!
# A009644: Expansion of tan(log(1+x))*exp(x).

The programs for A009644, there is no canonical definition to state claims against.
-/

/-! ## A009644.P7371404189573960346

`2*A009643(n)-A009648(n)`
-/

namespace A009644.P7371404189573960346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009643 n - A009648 n

end

end A009644.P7371404189573960346

/-!
# A009645: Expansion of e.g.f.: tan(log(1+x))*log(1+x).

The programs for A009645, there is no canonical definition to state claims against.
-/

/-! ## A009645.P12821340178397266187

`2*A024339(n)`
-/

namespace A009645.P12821340178397266187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024339 n

end

end A009645.P12821340178397266187

/-! ## A009645.P4664985616295818661

`A024339(n)+A024339(A028310(n))`
-/

namespace A009645.P4664985616295818661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024339 n + A024339 (A028310 n).toNat

end

end A009645.P4664985616295818661

/-! ## A009645.P15302905082699994389

`A024339(n)+A024339(A118759(n))`
-/

namespace A009645.P15302905082699994389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024339 n + A024339 (A118759 n).toNat

end

end A009645.P15302905082699994389

/-! ## A009645.P9178176995542818837

`A024339(A199969(n+1))+A024339(n)`
-/

namespace A009645.P9178176995542818837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024339 (A199969 (n + 1)).toNat + A024339 n

end

end A009645.P9178176995542818837

/-! ## A009645.P14963473531106613735

`A024339(A000007(n)+n)+A024339(n)`
-/

namespace A009645.P14963473531106613735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024339 (A000007 n + (n : ℤ)).toNat + A024339 n

end

end A009645.P14963473531106613735

/-!
# A009646: Expansion of tan(log(1+x))/cos(x).

The programs for A009646, there is no canonical definition to state claims against.
-/

/-! ## A009646.P12107991927011743227

`or(A009601(n), A325181(A009605(n)))`
-/

namespace A009646.P12107991927011743227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009601 n) (A325181 (A009605 n).toNat)

end

end A009646.P12107991927011743227

/-! ## A009646.P17397075578882509355

`A009652(n)-5*A167688(A001147(n))`
-/

namespace A009646.P17397075578882509355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009652 n - 5 * A167688 (A001147 n).toNat

end

end A009646.P17397075578882509355

/-!
# A009648: Expansion of tan(log(1+x))/exp(x).

The programs for A009648, there is no canonical definition to state claims against.
-/

/-! ## A009648.P16031520649342845187

`2*A009643(n)-A009644(n)`
-/

namespace A009648.P16031520649342845187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009643 n - A009644 n

end

end A009648.P16031520649342845187

/-!
# A009650: Expansion of tan(log(1+x)*cosh(x)).

The programs for A009650, there is no canonical definition to state claims against.
-/

/-! ## A009650.P17345679340090039028

`A012761(n)-A175099(A033321(n))`
-/

namespace A009650.P17345679340090039028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012761 n - A175099 (A033321 n).toNat

end

end A009650.P17345679340090039028

/-! ## A009650.P7834838525483909170

`A350080(n)-A002262(A020729(n))-A175099(A033321(n))`
-/

namespace A009650.P7834838525483909170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350080 n - A002262 (A020729 n).toNat - A175099 (A033321 n).toNat

end

end A009650.P7834838525483909170

/-!
# A009651: Expansion of tan(log(1+x)*exp(x)).

The programs for A009651, there is no canonical definition to state claims against.
-/

/-! ## A009651.P15902972180280935990

`A193926(A079291(n))*A288386(n)`
-/

namespace A009651.P15902972180280935990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193926 (A079291 n).toNat * A288386 n

end

end A009651.P15902972180280935990

/-!
# A009652: Expansion of tan(log(1+x)/cos(x)).

The programs for A009652, there is no canonical definition to state claims against.
-/

/-! ## A009652.P17768725585593102654

`A012777(n)-A167688(A001147(n))`
-/

namespace A009652.P17768725585593102654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012777 n - A167688 (A001147 n).toNat

end

end A009652.P17768725585593102654

/-! ## A009652.P14169495405001960613

`A303979(A304004(n+1))+A009639(n)`
-/

namespace A009652.P14169495405001960613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303979 (A304004 (n + 1)).toNat + A009639 n

end

end A009652.P14169495405001960613

/-!
# A009655: Expansion of tan(log(1+x)^2).

The programs for A009655, there is no canonical definition to state claims against.
-/

/-! ## A009655.P5280955011852288950

`2*A024336(n)`
-/

namespace A009655.P5280955011852288950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024336 n

end

end A009655.P5280955011852288950

/-! ## A009655.P5042589594934614814

`A024336(n)+A024336(A028310(n))`
-/

namespace A009655.P5042589594934614814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024336 n + A024336 (A028310 n).toNat

end

end A009655.P5042589594934614814

/-! ## A009655.P18297422982333848224

`A024336(n)/2^A008683(A020483(n))`
-/

namespace A009655.P18297422982333848224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024336 n : ℚ) / (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A009655.P18297422982333848224

/-! ## A009655.P8471191803859709470

`A024336(gcd(n, A008486(n)))+A024336(n)`
-/

namespace A009655.P8471191803859709470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024336 (Int.gcd (n : ℤ) (A008486 n)) + A024336 n

end

end A009655.P8471191803859709470

/-! ## A009655.P1426312515333216010

`A024336(A351831(n+1))+A024336(n)`
-/

namespace A009655.P1426312515333216010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024336 (A351831 (n + 1)).toNat + A024336 n

end

end A009655.P1426312515333216010

/-!
# A009662: Expansion of tan(sin(x))*cos(x).

The programs for A009662, there is no canonical definition to state claims against.
-/

/-! ## A009662.P11481959412414684138

`-A009327(2*(n+1))`
-/

namespace A009662.P11481959412414684138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A009327 (2 * (n + 1))

end

end A009662.P11481959412414684138

/-! ## A009662.P14239703059781719322

`Δ[-∑[A009327(2*n)]]`
-/

namespace A009662.P14239703059781719322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009327 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A009662.P14239703059781719322

/-! ## A009662.P5318983220602142843

`char[A237809(n+1)]-A009327(2*n+2)`
-/

namespace A009662.P5318983220602142843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237809 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A009327 (2 * n + 2)

end

end A009662.P5318983220602142843

/-! ## A009662.P14045414491599024738

`char[A009316(3*n+2)]-A009327(2*(n+1))`
-/

namespace A009662.P14045414491599024738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009316 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A009327 (2 * (n + 1))

end

end A009662.P14045414491599024738

/-! ## A009662.P1666472223907009959

`char[A009324(3*n+2)]-A009327(2*(n+1))`
-/

namespace A009662.P1666472223907009959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009324 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A009327 (2 * (n + 1))

end

end A009662.P1666472223907009959

/-!
# A009663: Expansion of tan(sin(x))*cosh(x).

The programs for A009663, there is no canonical definition to state claims against.
-/

/-! ## A009663.P2113728264754065919

`A009664(Δ[n²])`
-/

namespace A009663.P2113728264754065919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009664 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009663.P2113728264754065919

/-! ## A009663.P5032685578315010494

`or(2, A009664(A005408(n)))-2`
-/

namespace A009663.P5032685578315010494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A009664 (A005408 n).toNat) - 2

end

end A009663.P5032685578315010494

/-! ## A009663.P7759455646372983499

`A243834(n)+A009664(2*n+1)`
-/

namespace A009663.P7759455646372983499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243834 n + A009664 (2 * n + 1)

end

end A009663.P7759455646372983499

/-! ## A009663.P3082698894272797422

`A009664(A005408(n))^A178334(n)`
-/

namespace A009663.P3082698894272797422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009664 (A005408 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A009663.P3082698894272797422

/-! ## A009663.P8481471087591482381

`or(A000007(n), A009664(A005408(n)))`
-/

namespace A009663.P8481471087591482381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A009664 (A005408 n).toNat)

end

end A009663.P8481471087591482381

/-!
# A009665: E.g.f. tan(sin(x))*sin(x) (even powers only).

The programs for A009665, there is no canonical definition to state claims against.
-/

/-! ## A009665.P9669937558694056543

`2*A024300(n)`
-/

namespace A009665.P9669937558694056543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024300 n

end

end A009665.P9669937558694056543

/-! ## A009665.P8067176561130627495

`A024300(n)+A024300(A292579(n))`
-/

namespace A009665.P8067176561130627495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024300 n + A024300 (A292579 n).toNat

end

end A009665.P8067176561130627495

/-! ## A009665.P10461745878424235090

`A009803(2*n)*A062157(n)`
-/

namespace A009665.P10461745878424235090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009803 (2 * n) * A062157 n

end

end A009665.P10461745878424235090

/-! ## A009665.P10118657803921652873

`A024300(n)+A024300(A055647(n))`
-/

namespace A009665.P10118657803921652873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024300 n + A024300 (A055647 n).toNat

end

end A009665.P10118657803921652873

/-! ## A009665.P10404765455085318225

`A024300(A004885(n+1))+A024300(n)`
-/

namespace A009665.P10404765455085318225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024300 (A004885 (n + 1)).toNat + A024300 n

end

end A009665.P10404765455085318225

/-!
# A009666: Expansion of tan(sin(x))*sinh(x).

The programs for A009666, there is no canonical definition to state claims against.
-/

/-! ## A009666.P6389150914837109278

`A009664(2*n)`
-/

namespace A009666.P6389150914837109278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009664 (2 * n)

end

end A009666.P6389150914837109278

/-! ## A009666.P1939144130607418208

`2*A024246(n)`
-/

namespace A009666.P1939144130607418208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024246 n

end

end A009666.P1939144130607418208

/-! ## A009666.P10913720910556806582

`A243834(n)+A009664(A005843(n))`
-/

namespace A009666.P10913720910556806582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243834 n + A009664 (A005843 n).toNat

end

end A009666.P10913720910556806582

/-! ## A009666.P5697918611466268145

`A024246(n)+A024246(A243834(n)+n)`
-/

namespace A009666.P5697918611466268145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024246 n + A024246 (A243834 n + (n : ℤ)).toNat

end

end A009666.P5697918611466268145

/-! ## A009666.P12456096417190032593

`A009664(A005843(n))%A009668(n)`
-/

namespace A009666.P12456096417190032593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009664 (A005843 n).toNat) (A009668 n)

end

end A009666.P12456096417190032593

/-!
# A009667: E.g.f. tan(sin(x))*x, even numbered terms only.

The programs for A009667, there is no canonical definition to state claims against.
-/

/-! ## A009667.P7173791302990114168

`2*A024225(n)`
-/

namespace A009667.P7173791302990114168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024225 n

end

end A009667.P7173791302990114168

/-! ## A009667.P11231485985793526030

`2*n*A003705(abs(1-n))`
-/

namespace A009667.P11231485985793526030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A003705 |1 - (n : ℤ)|.toNat)

end

end A009667.P11231485985793526030

/-! ## A009667.P2166002751472384158

`A024225(n)/A000032(C(2, n+2))^-1`
-/

namespace A009667.P2166002751472384158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024225 n : ℚ) / (A000032 (Nat.choose 2 (n + 2)) : ℚ) ^ (-1 : ℤ)

end

end A009667.P2166002751472384158

/-! ## A009667.P7596330952368075639

`A024225(A130696(n+1))+A024225(n)`
-/

namespace A009667.P7596330952368075639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024225 (A130696 (n + 1)).toNat + A024225 n

end

end A009667.P7596330952368075639

/-! ## A009667.P2976657260186812424

`A024225(n)+A024225(n)%A096716(n)`
-/

namespace A009667.P2976657260186812424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024225 n + Int.tmod (A024225 n) (A096716 n)

end

end A009667.P2976657260186812424

/-!
# A009668: Expansion of tan(sin(x))/cos(x).

The programs for A009668, there is no canonical definition to state claims against.
-/

/-! ## A009668.P8557907724296171773

`A004277(Δ[A230316(n)])`
-/

namespace A009668.P8557907724296171773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f1 (n + 1) - f1 n).toNat

end

end A009668.P8557907724296171773

/-!
# A009672: Expansion of e.g.f. tan(sin(x)*exp(x)).

The programs for A009672, there is no canonical definition to state claims against.
-/

/-! ## A009672.P2077884490438798184

`A028310(A013318(n))-A013398(n)`
-/

namespace A009672.P2077884490438798184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A013318 n).toNat - A013398 n

end

end A009672.P2077884490438798184

/-! ## A009672.P16418805165890037002

`4*A344154(a(n-1))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A009672.P16418805165890037002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n a =>
  4 * A344154 (a (n - 1)).toNat

end

end A009672.P16418805165890037002

/-!
# A009673: Expansion of tan(sin(x)*x).

The programs for A009673, there is no canonical definition to state claims against.
-/

/-! ## A009673.P10771129649102450785

`2*A024244(n)`
-/

namespace A009673.P10771129649102450785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024244 n

end

end A009673.P10771129649102450785

/-! ## A009673.P6602487296387969689

`A034852(∑[n])+A024244(n)+A024244(n)`
-/

namespace A009673.P6602487296387969689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (∑ j ∈ Finset.range (n + 1), f1 j) + (A024244 n + A024244 n)

end

end A009673.P6602487296387969689

/-! ## A009673.P16484955103064215147

`∑{d}[A006093(n+1)+1, A024244(n)+A008683(#)]`
-/

namespace A009673.P16484955103064215147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A024244 n + A008683 d)

end

end A009673.P16484955103064215147

/-! ## A009673.P14264882477295135155

`A024244(n)+A024244(A055645(n))`
-/

namespace A009673.P14264882477295135155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024244 n + A024244 (A055645 n).toNat

end

end A009673.P14264882477295135155

/-! ## A009673.P15234027984190899258

`A024244(A002998(n))+A024244(n)`
-/

namespace A009673.P15234027984190899258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024244 (A002998 n).toNat + A024244 n

end

end A009673.P15234027984190899258

/-!
# A009675: Tan(sin(x)^2) = 2/2!*x^2 - 8/4!*x^4 + 272/6!*x^6 - 13568/8!*x^8 + ...

The programs for A009675, there is no canonical definition to state claims against.
-/

/-! ## A009675.P8716269352252325247

`2*A024264(n)`
-/

namespace A009675.P8716269352252325247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024264 n

end

end A009675.P8716269352252325247

/-! ## A009675.P13293594176665363245

`A024264(n)+A024264(A118759(n))`
-/

namespace A009675.P13293594176665363245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024264 n + A024264 (A118759 n).toNat

end

end A009675.P13293594176665363245

/-! ## A009675.P16626253311685236765

`A024264(A033619(n+1))+A024264(n)`
-/

namespace A009675.P16626253311685236765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024264 (A033619 (n + 1)).toNat + A024264 n

end

end A009675.P16626253311685236765

/-! ## A009675.P5542157840756527855

`A024264(n)/2^A321804(A007318(n))`
-/

namespace A009675.P5542157840756527855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024264 n : ℚ) / (2 : ℚ) ^ (A321804 (A007318 n).toNat : ℤ)

end

end A009675.P5542157840756527855

/-! ## A009675.P3219187613957707486

`A024264(n)+A024264(n)/A245791(n)!`
-/

namespace A009675.P3219187613957707486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024264 n : ℚ) + (A024264 n : ℚ) / (Nat.factorial (A245791 n).toNat : ℚ)

end

end A009675.P3219187613957707486

/-!
# A009677: Expansion of e.g.f. tan(sinh(sin(x))), odd powers only.

The programs for A009677, there is no canonical definition to state claims against.
-/

/-! ## A009677.P10248354024586284680

`A006519(A344094(n))*A099254(n)`
-/

namespace A009677.P10248354024586284680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A344094 n).toNat * A099254 n

end

end A009677.P10248354024586284680

/-!
# A009679: Number of partitions of {1, ..., 2n} into coprime pairs.

The programs for A009679, there is no canonical definition to state claims against.
-/

/-! ## A009679.P1702859778937252901

`A320423(2*n)`
-/

namespace A009679.P1702859778937252901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320423 (2 * n)

end

end A009679.P1702859778937252901

/-! ## A009679.P14667093689463785595

`A132134(A036612(n+1))`
-/

namespace A009679.P14667093689463785595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132134 (A036612 (n + 1)).toNat

end

end A009679.P14667093689463785595

/-! ## A009679.P1543066979467075745

`A132134(A036613(n+1))`
-/

namespace A009679.P1543066979467075745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132134 (A036613 (n + 1)).toNat

end

end A009679.P1543066979467075745

/-!
# A009680: E.g.f. tan(sinh(x))*cos(x) (odd powers only).

The programs for A009680, there is no canonical definition to state claims against.
-/

/-! ## A009680.P12060928101216901294

`abs(A009794(2*n+1))`
-/

namespace A009680.P12060928101216901294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009794 (2 * n + 1)|

end

end A009680.P12060928101216901294

/-! ## A009680.P17372781137015927821

`gcd(A000038(n), A009794(2*n+1))`
-/

namespace A009680.P17372781137015927821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A009794 (2 * n + 1))

end

end A009680.P17372781137015927821

/-! ## A009680.P15549992961872036808

`lcm(A001316(n), A009794(2*n+1))`
-/

namespace A009680.P15549992961872036808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n) (A009794 (2 * n + 1))

end

end A009680.P15549992961872036808

/-! ## A009680.P15596654647572942159

`A009794(2*n+1)*A087960(n²)`
-/

namespace A009680.P15596654647572942159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009794 (2 * n + 1) * A087960 (n ^ 2)

end

end A009680.P15596654647572942159

/-!
# A009682: Expansion of tan(sinh(x))*sin(x).

The programs for A009682, there is no canonical definition to state claims against.
-/

/-! ## A009682.P12727162136603572673

`2*A024260(n)`
-/

namespace A009682.P12727162136603572673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024260 n

end

end A009682.P12727162136603572673

/-! ## A009682.P15228024931396914434

`abs(A009794(2*n))`
-/

namespace A009682.P15228024931396914434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009794 (2 * n)|

end

end A009682.P15228024931396914434

/-! ## A009682.P12420012724053992284

`lcm(2, A009794(A005843(n)))`
-/

namespace A009682.P12420012724053992284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A009794 (A005843 n).toNat)

end

end A009682.P12420012724053992284

/-! ## A009682.P4723966440770023678

`gcd(A000038(n+1), A009794(2*n))`
-/

namespace A009682.P4723966440770023678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n + 1)) (A009794 (2 * n))

end

end A009682.P4723966440770023678

/-! ## A009682.P14345331895931616785

`A009794(2*n)*A087960((n+1)²)`
-/

namespace A009682.P14345331895931616785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009794 (2 * n) * A087960 ((n + 1) ^ 2)

end

end A009682.P14345331895931616785

/-!
# A009683: Expansion of tan(sinh(x))*x.

The programs for A009683, there is no canonical definition to state claims against.
-/

/-! ## A009683.P18283931535261816923

`2*A024274(n)`
-/

namespace A009683.P18283931535261816923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024274 n

end

end A009683.P18283931535261816923

/-! ## A009683.P15934532017275416623

`2*n*A003716(abs(1-n))`
-/

namespace A009683.P15934532017275416623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A003716 |1 - (n : ℤ)|.toNat)

end

end A009683.P15934532017275416623

/-! ## A009683.P1683803415363411335

`lcm(A004277(n), A024274(n))`
-/

namespace A009683.P1683803415363411335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004277 n) (A024274 n)

end

end A009683.P1683803415363411335

/-! ## A009683.P10504634547062173945

`A003716(abs(1-n))*A005843(n)`
-/

namespace A009683.P10504634547062173945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003716 |1 - (n : ℤ)|.toNat * A005843 n

end

end A009683.P10504634547062173945

/-! ## A009683.P6724686250048672058

`A024274(n)+A024274(n)/A007318(∑[n])`
-/

namespace A009683.P6724686250048672058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024274 n : ℚ) + (A024274 n : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A009683.P6724686250048672058

/-!
# A009686: Expansion of tan(sinh(x).exp(x)).

The programs for A009686, there is no canonical definition to state claims against.
-/

/-! ## A009686.P9193232270364369428

`∑[ceil(A350680(n)/3)]-1`
-/

namespace A009686.P9193232270364369428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A350680 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A009686.P9193232270364369428

/-! ## A009686.P6478429153055870925

`A390446(A348413(n))`
-/

namespace A009686.P6478429153055870925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390446 (A348413 n).toNat

end

end A009686.P6478429153055870925

/-!
# A009687: Expansion of e.g.f. tan(sinh(x)*sin(x))/2 in odd powers of x^2.

The programs for A009687, there is no canonical definition to state claims against.
-/

/-! ## A009687.P13005668464298130373

`A012526(n)/2`
-/

namespace A009687.P13005668464298130373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012526 n : ℚ) / 2

end

end A009687.P13005668464298130373

/-!
# A009692: Number of partitions of {1, 2, ..., 2n} into pairs whose differences are primes.

The programs for A009692, there is no canonical definition to state claims against.
-/

/-! ## A009692.P1453021397112976547

`A008651(A126392(n)+9)`
-/

namespace A009692.P1453021397112976547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A126392 n + 9).toNat

end

end A009692.P1453021397112976547

/-! ## A009692.P4572081270311352515

`A390683(n)+A105385(A390684(n))`
-/

namespace A009692.P4572081270311352515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390683 n + A105385 (A390684 n).toNat

end

end A009692.P4572081270311352515

/-! ## A009692.P18064327238151737594

`A060797(n)-A060773(A000045(n))`
-/

namespace A009692.P18064327238151737594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060797 n - A060773 (A000045 n).toNat

end

end A009692.P18064327238151737594

/-!
# A009693: Expansion of tan(tan(tanh(x))).

The programs for A009693, there is no canonical definition to state claims against.
-/

/-! ## A009693.P14052574774915249839

`∑[A244123(n)]*A005865(3*(n+1))`
-/

namespace A009693.P14052574774915249839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A005865 (3 * (n + 1))

end

end A009693.P14052574774915249839

/-!
# A009694: a(n) = Product_{i=0..7} floor((n+i)/8).

The programs for A009694, the canonical program `A009694.P1715986861184328603` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009694 has offset 0).

The definition of A009694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009694.P1715986861184328603

`A008233(floor(n/2))*A008233(A065033(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A009694

/-- `A008233(floor(n/2))*A008233(A065033(n))` -/
def P1715986861184328603.Spec : Prop :=
  ∀ n, P1715986861184328603.a n = A009694 n

theorem P1715986861184328603.correct : P1715986861184328603.Spec := by
  intro n
  simp only [A009694]

end A009694

/-! ## A009694.P13016542326743349157

`A008233(floor(n/2))*A008233(A110654(n))`
-/

namespace A009694.P13016542326743349157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 ⌊(n : ℚ) / 2⌋.toNat * A008233 (A110654 n).toNat

end

end A009694.P13016542326743349157

namespace A009694

/-- `A008233(floor(n/2))*A008233(A110654(n))` -/
def P13016542326743349157.Spec : Prop :=
  ∀ n, P13016542326743349157.a n = A009694 n

end A009694

/-! ## A009694.P14935210417087435616

`A008233(ceil(n/2))*A008233(A123108(n))`
-/

namespace A009694.P14935210417087435616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 ⌈(n : ℚ) / 2⌉.toNat * A008233 (A123108 n).toNat

end

end A009694.P14935210417087435616

namespace A009694

/-- `A008233(ceil(n/2))*A008233(A123108(n))` -/
def P14935210417087435616.Spec : Prop :=
  ∀ n, P14935210417087435616.a n = A009694 n

end A009694

/-! ## A009694.P9998053260761782576

`A004526(A009714(n+2))`
-/

namespace A009694.P9998053260761782576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A009714 (n + 2)).toNat

end

end A009694.P9998053260761782576

namespace A009694

/-- `A004526(A009714(n+2))` -/
def P9998053260761782576.Spec : Prop :=
  ∀ n, P9998053260761782576.a n = A009694 n

end A009694

/-! ## A009694.P15966725460311759313

`A070106(A068032(n))`
-/

namespace A009694.P15966725460311759313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070106 (A068032 n).toNat

end

end A009694.P15966725460311759313

namespace A009694

/-- `A070106(A068032(n))` -/
def P15966725460311759313.Spec : Prop :=
  ∀ n, P15966725460311759313.a n = A009694 n

end A009694

/-!
# A009695: Expansion of tan(tan(x))*cos(x) (odd powers only).

The programs for A009695, there is no canonical definition to state claims against.
-/

/-! ## A009695.P7227384173444158416

`abs(A009821(2*n+1))`
-/

namespace A009695.P7227384173444158416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009821 (2 * n + 1)|

end

end A009695.P7227384173444158416

/-! ## A009695.P1509096088285651770

`A009821(Δ[n²])*A033999(n)`
-/

namespace A009695.P1509096088285651770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009821 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A009695.P1509096088285651770

/-! ## A009695.P548195244413360942

`A009821(2*n+1)/A033999(n)`
-/

namespace A009695.P548195244413360942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009821 (2 * n + 1) : ℚ) / (A033999 n : ℚ)

end

end A009695.P548195244413360942

/-!
# A009696: Expansion of tan(tan(x))*cosh(x) (odd powers only).

The programs for A009696, there is no canonical definition to state claims against.
-/

/-! ## A009696.P6152866353827442097

`A009697(Δ[n²])`
-/

namespace A009696.P6152866353827442097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009697 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009696.P6152866353827442097

/-! ## A009696.P9809953603886291650

`record[A009697(A099375(n))]`
-/

namespace A009696.P9809953603886291650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009697 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009696.P9809953603886291650

/-! ## A009696.P6824187782097048443

`or(1, A009697(A005408(n)))`
-/

namespace A009696.P6824187782097048443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009697 (A005408 n).toNat)

end

end A009696.P6824187782097048443

/-! ## A009696.P589675563710844646

`record[A009697(abs(A138188(n)))]`
-/

namespace A009696.P589675563710844646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009697 |A138188 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009696.P589675563710844646

/-! ## A009696.P15328420202845874934

`record[A009697(gcd(n, A035385(n)))]`
-/

namespace A009696.P15328420202845874934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009697 (Int.gcd (n : ℤ) (A035385 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009696.P15328420202845874934

/-!
# A009697: Expansion of tan(tan(x))*exp(x).

The programs for A009697, there is no canonical definition to state claims against.
-/

/-! ## A009697.P5519873524060555190

`∪[A009696(n+1), A009699(n)]`
-/

namespace A009697.P5519873524060555190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009699 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009697.P5519873524060555190

/-! ## A009697.P8795131551818300070

`∪[A009699(n), A009696(A052938(2*n))]`
-/

namespace A009697.P8795131551818300070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009696 (A052938 (2 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009697.P8795131551818300070

/-! ## A009697.P17189355406925456927

`Δ[A000463(A166358(n))]`
-/

namespace A009697.P17189355406925456927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A166358 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A009697.P17189355406925456927

/-!
# A009698: Expansion of tan(tan(x))*sin(x).

The programs for A009698, there is no canonical definition to state claims against.
-/

/-! ## A009698.P1588100802932143816

`2*A024278(n)`
-/

namespace A009698.P1588100802932143816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024278 n

end

end A009698.P1588100802932143816

/-! ## A009698.P4692732256908357632

`abs(A009821(2*n))`
-/

namespace A009698.P4692732256908357632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009821 (2 * n)|

end

end A009698.P4692732256908357632

/-! ## A009698.P13533042074963285539

`lcm(2, A009821(A005843(n)))`
-/

namespace A009698.P13533042074963285539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A009821 (A005843 n).toNat)

end

end A009698.P13533042074963285539

/-! ## A009698.P9514468650204427536

`lcm(A009821(2*n), A033999(n))`
-/

namespace A009698.P9514468650204427536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009821 (2 * n)) (A033999 n)

end

end A009698.P9514468650204427536

/-! ## A009698.P8615958866013322854

`A009821(2*n)*A033999(n+1)`
-/

namespace A009698.P8615958866013322854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009821 (2 * n) * A033999 (n + 1)

end

end A009698.P8615958866013322854

/-!
# A009699: Expansion of tan(tan(x))*sinh(x).

The programs for A009699, there is no canonical definition to state claims against.
-/

/-! ## A009699.P15492099056831938841

`A009697(2*n)`
-/

namespace A009699.P15492099056831938841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009697 (2 * n)

end

end A009699.P15492099056831938841

/-! ## A009699.P14646686326306490661

`lcm(2, A009697(A005843(n)))`
-/

namespace A009699.P14646686326306490661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A009697 (A005843 n).toNat)

end

end A009699.P14646686326306490661

/-! ## A009699.P10983952212655903931

`record[A009697(A099375(n)-1)]`
-/

namespace A009699.P10983952212655903931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009697 (A099375 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009699.P10983952212655903931

/-! ## A009699.P16175612988532893401

`A009697(A005843(n))/A152851(n)`
-/

namespace A009699.P16175612988532893401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009697 (A005843 n).toNat : ℚ) / (A152851 n : ℚ)

end

end A009699.P16175612988532893401

/-! ## A009699.P3479961691918354590

`2*A024294(n)`
-/

namespace A009699.P3479961691918354590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024294 n

end

end A009699.P3479961691918354590

