import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C024

/-!
# A303700: Triangle read by rows in which row n gives coefficients of polynomial f_n(x)/(n+1) of degree less than n that satisfies Integral_{x=0..1} g(t - x) * f_n(x) dx = g(t) for any polynomial g(x) of degree less than n.

The programs for A303700, there is no canonical definition to state claims against.
-/

/-! ## A303700.P13310049539705477343

`A303699(n)/log2(A140513(n))`
-/

namespace A303700.P13310049539705477343
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A303699 n : ℝ) / Real.logb 2 (A140513 n : ℝ)

end

end A303700.P13310049539705477343

/-! ## A303700.P18268473006859074259

`A303699(n)/∑[A010054(n)]`
-/

namespace A303700.P18268473006859074259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303699 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A303700.P18268473006859074259

/-! ## A303700.P5740468281205743303

`A303699(n)/A002024(n+1)`
-/

namespace A303700.P5740468281205743303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303699 n : ℚ) / (A002024 (n + 1) : ℚ)

end

end A303700.P5740468281205743303

/-! ## A303700.P13879095105183440210

`A303699(n)/(A003056(n)+1)`
-/

namespace A303700.P13879095105183440210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303699 n : ℚ) / (A003056 n + 1 : ℚ)

end

end A303700.P13879095105183440210

/-! ## A303700.P16166513528855941637

`A303699(n)/sqrt(A093995(n+1))`
-/

namespace A303700.P16166513528855941637
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A303699 n : ℝ) / Real.sqrt (A093995 (n + 1) : ℝ)

end

end A303700.P16166513528855941637

/-! ## A303700.P3602951371260078222

`2/A111650(n+1)*A303699(n)`
-/

namespace A303700.P3602951371260078222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A111650 (n + 1) : ℚ) * (A303699 n : ℚ)

end

end A303700.P3602951371260078222

/-! ## A303700.P13725579855954527994

`A303699(n)/A014682(A111650(n+1))`
-/

namespace A303700.P13725579855954527994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303699 n : ℚ) / (A014682 (A111650 (n + 1)).toNat : ℚ)

end

end A303700.P13725579855954527994

/-! ## A303700.P4005235727551089077

`A165257(n+1)/A027555(n)*A123160(n)`
-/

namespace A303700.P4005235727551089077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165257 (n + 1) : ℚ) / (A027555 n : ℚ) * (A123160 n : ℚ)

end

end A303700.P4005235727551089077

/-!
# A303703: Positive numbers that are congruent mod k! to a divisor of k! for any k > 0.

The programs for A303703, there is no canonical definition to state claims against.
-/

/-! ## A303703.P14680157246330532018

`record[A121457(A225644(n)+n)]`
-/

namespace A303703.P14680157246330532018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121457 (A225644 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303703.P14680157246330532018

/-! ## A303703.P16829584339319460190

`eq[0, A303711(n+1)]+1`
-/

namespace A303703.P16829584339319460190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303711 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A303703.P16829584339319460190

/-! ## A303703.P13153024205391327761

`record[A121663(n)%A121682(n+2)]`
-/

namespace A303703.P13153024205391327761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121663 n) (A121682 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303703.P13153024205391327761

/-! ## A303703.P8973659788553397404

`record[A121663(n)*A093578(A309784(n+1))]`
-/

namespace A303703.P8973659788553397404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 n * A093578 (A309784 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303703.P8973659788553397404

/-! ## A303703.P11852810589833808398

`record[A096111(n)-A093752(A027750(n+1))]`
-/

namespace A303703.P11852810589833808398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096111 n - A093752 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303703.P11852810589833808398

/-!
# A303705: a(1) = 3; a(n) is the smallest prime such that gcd(a(i)-1, a(n)-1) = 2 holds for 1 <= i < n.

The programs for A303705, there is no canonical definition to state claims against.
-/

/-! ## A303705.P12699692832534497003

`p?[or(A119660(n+2), A273712(n))]`
-/

namespace A303705.P12699692832534497003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A119660 (n + 2)) (A273712 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A303705.P12699692832534497003

/-! ## A303705.P5369001190450203534

`A119660(A076084(n+2))`
-/

namespace A303705.P5369001190450203534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119660 (A076084 (n + 2)).toNat

end

end A303705.P5369001190450203534

/-! ## A303705.P10575921976468208700

`∩[A119660(n+1), A138536(n+1)]`
-/

namespace A303705.P10575921976468208700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303705.P10575921976468208700

/-! ## A303705.P11022176376735506358

`∩[A119660(n+1), A223036(n+1)]`
-/

namespace A303705.P11022176376735506358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303705.P11022176376735506358

/-! ## A303705.P16176661305367953791

`A119660(A043320(n+2))`
-/

namespace A303705.P16176661305367953791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119660 (A043320 (n + 2)).toNat

end

end A303705.P16176661305367953791

/-!
# A303706: a(n) is the number of lattice points in a Cartesian grid between an equilateral triangle and an inscribed circle of radius n; one of the side of triangle is perpendicular to the X-axis; the circle's center is at the origin.

The programs for A303706, there is no canonical definition to state claims against.
-/

/-! ## A303706.P13237546450007044388

`A241988(n)+A106400(A000142(n))`
-/

namespace A303706.P13237546450007044388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241988 n + A106400 (A000142 n).toNat

end

end A303706.P13237546450007044388

/-! ## A303706.P7163244046126248543

`A241988(n)-A020985(A242003(n))`
-/

namespace A303706.P7163244046126248543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241988 n - A020985 (A242003 n).toNat

end

end A303706.P7163244046126248543

/-!
# A303707: Number of factorizations of n using elements of A007916 (numbers that are not perfect powers).

The programs for A303707, there is no canonical definition to state claims against.
-/

/-! ## A303707.P17793384784897297361

`A303709(n+1)+A303708(n+1)`
-/

namespace A303707.P17793384784897297361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (n + 1) + A303708 (n + 1)

end

end A303707.P17793384784897297361

/-! ## A303707.P15477366868862857920

`A349056(n+1)+A326291(n+1)`
-/

namespace A303707.P15477366868862857920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349056 (n + 1) + A326291 (n + 1)

end

end A303707.P15477366868862857920

/-! ## A303707.P12006576254280616860

`gcd(A323087(n+1), A393817(n+1))`
-/

namespace A303707.P12006576254280616860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323087 (n + 1)) (A393817 (n + 1))

end

end A303707.P12006576254280616860

/-!
# A303708: Number of aperiodic factorizations of n using elements of A007916 (numbers that are not perfect powers).

The programs for A303708, there is no canonical definition to state claims against.
-/

/-! ## A303708.P17402756362522771788

`A303707(n+1)-A303709(n+1)`
-/

namespace A303708.P17402756362522771788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (n + 1) - A303709 (n + 1)

end

end A303708.P17402756362522771788

/-! ## A303708.P11487929496984092603

`A357622(A319138(n+1))`
-/

namespace A303708.P11487929496984092603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357622 (A319138 (n + 1)).toNat

end

end A303708.P11487929496984092603

/-! ## A303708.P8054522053900891478

`A352829(A139393(n+1))`
-/

namespace A303708.P8054522053900891478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352829 (A139393 (n + 1)).toNat

end

end A303708.P8054522053900891478

/-! ## A303708.P4745399972402611851

`A325660(A076078(n+1))`
-/

namespace A303708.P4745399972402611851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325660 (A076078 (n + 1)).toNat

end

end A303708.P4745399972402611851

/-! ## A303708.P18267510702976345498

`A195467(A300716(n+1))`
-/

namespace A303708.P18267510702976345498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195467 (A300716 (n + 1)).toNat

end

end A303708.P18267510702976345498

/-!
# A303709: Number of periodic factorizations of n using elements of A007916 (numbers that are not perfect powers).

The programs for A303709, there is no canonical definition to state claims against.
-/

/-! ## A303709.P11388869009829051050

`A303707(n+1)-A303708(n+1)`
-/

namespace A303709.P11388869009829051050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (n + 1) - A303708 (n + 1)

end

end A303709.P11388869009829051050

/-! ## A303709.P6704542517994368143

`A303838(A175069(n+1)+A000038(n))`
-/

namespace A303709.P6704542517994368143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303838 (A175069 (n + 1) + A000038 n).toNat

end

end A303709.P6704542517994368143

/-! ## A303709.P7666398514067448468

`A168324(A175069(n+1))-A008683(A275725(n))`
-/

namespace A303709.P7666398514067448468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (A175069 (n + 1)).toNat - A008683 (A275725 n).toNat

end

end A303709.P7666398514067448468

/-! ## A303709.P15470537252845240006

`A168324(A175069(n+1))+A000005(n²+1)%2`
-/

namespace A303709.P15470537252845240006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (A175069 (n + 1)).toNat + Int.tmod (A000005 (n ^ 2 + 1)) 2

end

end A303709.P15470537252845240006

/-! ## A303709.P17480605500145745544

`A066882(A175069(n+1))^A052409(A066048(n+1))`
-/

namespace A303709.P17480605500145745544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066882 (A175069 (n + 1)).toNat : ℚ) ^ (A052409 (A066048 (n + 1)).toNat : ℤ)

end

end A303709.P17480605500145745544

/-! ## A303709.P929449204604014531

`A168324(A175069(n+1))^A266724(n)`
-/

namespace A303709.P929449204604014531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168324 (A175069 (n + 1)).toNat : ℚ) ^ (A266724 n : ℤ)

end

end A303709.P929449204604014531

/-! ## A303709.P683617661483327304

`A215887(A132349(n+1)^A183096(n+1))`
-/

namespace A303709.P683617661483327304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (SequenceMachineLib.roundAway ((A132349 (n + 1) : ℚ) ^ (A183096 (n + 1) : ℤ))).toNat

end

end A303709.P683617661483327304

/-! ## A303709.P12900422889191241191

`A124768(A075802(n+1)*A331599(n+1))`
-/

namespace A303709.P12900422889191241191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A075802 (n + 1) * A331599 (n + 1)).toNat

end

end A303709.P12900422889191241191

/-! ## A303709.P7991335456069523709

`A075802(n+1)*A087039(A295557(n+1))`
-/

namespace A303709.P7991335456069523709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1) * A087039 (A295557 (n + 1)).toNat

end

end A303709.P7991335456069523709

/-! ## A303709.P13343596094478935197

`A168324(A175069(n+1))^A001221(A137688(n))`
-/

namespace A303709.P13343596094478935197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168324 (A175069 (n + 1)).toNat : ℚ) ^ (A001221 (A137688 n).toNat : ℤ)

end

end A303709.P13343596094478935197

/-! ## A303709.P365002261293380040

`A075802(n+1)*A162520(A329607(n+1))`
-/

namespace A303709.P365002261293380040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1) * A162520 (A329607 (n + 1)).toNat

end

end A303709.P365002261293380040

/-! ## A303709.P7788290686337664198

`A231813((n+1)²*A075802(n+1))`
-/

namespace A303709.P7788290686337664198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (((n + 1) ^ 2 : ℤ) * A075802 (n + 1)).toNat

end

end A303709.P7788290686337664198

/-! ## A303709.P10725216994416502533

`A075802(n+1)*A325837(A294897(n+1))`
-/

namespace A303709.P10725216994416502533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1) * A325837 (A294897 (n + 1)).toNat

end

end A303709.P10725216994416502533

/-! ## A303709.P3127957045341802395

`A200976(A288636(n+1)^A119842(n+1))`
-/

namespace A303709.P3127957045341802395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 (SequenceMachineLib.roundAway ((A288636 (n + 1) : ℚ) ^ (A119842 (n + 1) : ℤ))).toNat

end

end A303709.P3127957045341802395

/-! ## A303709.P18182584547082887742

`A178489(A303553(n+1)^A285572(n+1))`
-/

namespace A303709.P18182584547082887742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (SequenceMachineLib.roundAway ((A303553 (n + 1) : ℚ) ^ (A285572 (n + 1) : ℤ))).toNat

end

end A303709.P18182584547082887742

/-! ## A303709.P14365065561770597063

`A264620(A281116(n+1)^A303553(n+1))`
-/

namespace A303709.P14365065561770597063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264620 (SequenceMachineLib.roundAway ((A281116 (n + 1) : ℚ) ^ (A303553 (n + 1) : ℤ))).toNat

end

end A303709.P14365065561770597063

/-! ## A303709.P13559449921946582660

`A303553(n+1)^A290353(A301830(n+1))`
-/

namespace A303709.P13559449921946582660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303553 (n + 1) : ℚ) ^ (A290353 (A301830 (n + 1)).toNat : ℤ)

end

end A303709.P13559449921946582660

/-! ## A303709.P16302954806215174030

`A075802(n+1)+A075802(A294897(n+1)+1)`
-/

namespace A303709.P16302954806215174030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1) + A075802 (A294897 (n + 1) + 1).toNat

end

end A303709.P16302954806215174030

/-! ## A303709.P9763525171761638907

`A075802(n+1)*A231813(A285109(n+1))`
-/

namespace A303709.P9763525171761638907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1) * A231813 (A285109 (n + 1)).toNat

end

end A303709.P9763525171761638907

/-! ## A303709.P17293441906617733773

`A075802(n+1)*A370256(A001597(n+1))`
-/

namespace A303709.P17293441906617733773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1) * A370256 (A001597 (n + 1)).toNat

end

end A303709.P17293441906617733773

/-!
# A303710: Number of factorizations of numbers that are not perfect powers using only numbers that are not perfect powers.

The programs for A303710, there is no canonical definition to state claims against.
-/

/-! ## A303710.P12942256248586233377

`A303707(A007916(n+1))`
-/

namespace A303710.P12942256248586233377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (A007916 (n + 1)).toNat

end

end A303710.P12942256248586233377

/-! ## A303710.P9498420043963631136

`A303708(A007916(2*n+1-n))`
-/

namespace A303710.P9498420043963631136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303708 (A007916 (2 * n + 1 - n)).toNat

end

end A303710.P9498420043963631136

/-! ## A303710.P5297106550156402568

`A303709(A153158(1+n))`
-/

namespace A303710.P5297106550156402568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (A153158 (1 + n)).toNat

end

end A303710.P5297106550156402568

/-! ## A303710.P11190147919375739023

`A323087(A052410(A007916(n+1)²))`
-/

namespace A303710.P11190147919375739023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323087 (A052410 (A007916 (n + 1) ^ 2).toNat).toNat

end

end A303710.P11190147919375739023

/-! ## A303710.P12770828382872152922

`A303709(A153147(n+1))`
-/

namespace A303710.P12770828382872152922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (A153147 (n + 1)).toNat

end

end A303710.P12770828382872152922

/-!
# A303711: For any n > 0 and f > 0, let d_f(n) be the distance from n to the nearest number congruent mod f! to some divisor of f!; a(n) = Sum_{i > 0} d_i(n).

The programs for A303711, there is no canonical definition to state claims against.
-/

/-! ## A303711.P9134576844500020234

`A239622(A196423(n+1))%A000010(n+1)`
-/

namespace A303711.P9134576844500020234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239622 (A196423 (n + 1)).toNat) (A000010 (n + 1))

end

end A303711.P9134576844500020234

/-!
# A303712: a(n) is the smallest number such that there are exactly n numbers k (including a(n) itself) such that U(k) is isomorphic to U(a(n)) (or 0 if no such number exists). Here U(k) is the multiplicative group of integers modulo k.

The programs for A303712, there is no canonical definition to state claims against.
-/

/-! ## A303712.P2551038779703284207

`fo[A317993(n+1)-1]+1`
-/

namespace A303712.P2551038779703284207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317993 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A303712.P2551038779703284207

/-!
# A303713: Number of n X n 0..1 arrays with every element unequal to 0, 1 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303713, there is no canonical definition to state claims against.
-/

/-! ## A303713.P10571887749927824047

`A303719(∑[4*n]+1)`
-/

namespace A303713.P10571887749927824047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303713.P10571887749927824047

/-! ## A303713.P5588282882866432701

`A352695(A002835(n))`
-/

namespace A303713.P5588282882866432701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352695 (A002835 n).toNat

end

end A303713.P5588282882866432701

/-!
# A303714: Number of n X 3 0..1 arrays with every element unequal to 0, 1 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303714, the canonical program `A303714.P4639583480988663592` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303714 has offset 1).

The definition of A303714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303714.P9368750430580473219

`ogf((3+2x^2-3x^3)/(1-x-2x^3))`
-/

namespace A303714.P9368750430580473219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 2, -3] [1, -1, 0, -2] n

end

end A303714.P9368750430580473219

namespace A303714

/-- `ogf((3+2x^2-3x^3)/(1-x-2x^3))` -/
def P9368750430580473219.Spec : Prop :=
  ∀ n, P9368750430580473219.a n = A303714 (n + 1)

end A303714

/-! ## A303714.P4639583480988663592

`a(n-1)+2*a(n-3)` with `a(0)=3, a(1)=3, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A303714

/-- `a(n-1)+2*a(n-3)` -/
def P4639583480988663592.Spec : Prop :=
  ∀ n, (P4639583480988663592.a n : ℤ) = A303714 (n + 1)

theorem P4639583480988663592.correct : P4639583480988663592.Spec := by
  intro n
  simp only [A303714, Nat.add_sub_cancel]

end A303714

/-! ## A303714.P3280542198002116283

`a(n-3)+a(n-1)+a(n-3)` with `a(0)=3, a(1)=3, a(2)=5, a(3)=8`
-/

namespace A303714.P3280542198002116283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 5, 8] fun n a =>
  a (n - 3) + (a (n - 1) + a (n - 3))

end

end A303714.P3280542198002116283

namespace A303714

/-- `a(n-3)+a(n-1)+a(n-3)` -/
def P3280542198002116283.Spec : Prop :=
  ∀ n, (P3280542198002116283.a n : ℤ) = A303714 (n + 1)

end A303714

/-! ## A303714.P6558887256353876263

`lcm(2, A052537(n+5)+A052537(n))/2`
-/

namespace A303714.P6558887256353876263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A052537 (n + 5) + A052537 n) : ℚ) / 2

end

end A303714.P6558887256353876263

namespace A303714

/-- `lcm(2, A052537(n+5)+A052537(n))/2` -/
def P6558887256353876263.Spec : Prop :=
  ∀ n, P6558887256353876263.a n = (A303714 (n + 1) : ℚ)

end A303714

/-! ## A303714.P11203727994541291720

`A303719(∑[n+2]+4)`
-/

namespace A303714.P11203727994541291720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303714.P11203727994541291720

namespace A303714

/-- `A303719(∑[n+2]+4)` -/
def P11203727994541291720.Spec : Prop :=
  ∀ n, P11203727994541291720.a n = A303714 (n + 1)

end A303714

/-!
# A303715: Number of nX4 0..1 arrays with every element unequal to 0, 1 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303715, the canonical program `A303715.P1400048967763459824` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303715 has offset 1).

The definition of A303715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303715.P1400048967763459824

`a(n-1)+a(n-2)+3*a(n-3)+a(n-4)-a(n-5)-a(n-6)` with `a(0)=5, a(1)=5, a(2)=8, a(3)=17, a(4)=36, a(5)=76`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A303715

/-- `a(n-1)+a(n-2)+3*a(n-3)+a(n-4)-a(n-5)-a(n-6)` -/
def P1400048967763459824.Spec : Prop :=
  ∀ n, P1400048967763459824.a n = A303715 (n + 1)

theorem P1400048967763459824.correct : P1400048967763459824.Spec := by
  intro n
  simp only [A303715, Nat.add_sub_cancel]

end A303715

/-! ## A303715.P3354841668601926242

`A303719(A374004(n+1))`
-/

namespace A303715.P3354841668601926242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A374004 (n + 1)).toNat

end

end A303715.P3354841668601926242

namespace A303715

/-- `A303719(A374004(n+1))` -/
def P3354841668601926242.Spec : Prop :=
  ∀ n, P3354841668601926242.a n = A303715 (n + 1)

end A303715

/-! ## A303715.P14835782232365269763

`A303719(∑[n+4]+3)`
-/

namespace A303715.P14835782232365269763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A303715.P14835782232365269763

namespace A303715

/-- `A303719(∑[n+4]+3)` -/
def P14835782232365269763.Spec : Prop :=
  ∀ n, P14835782232365269763.a n = A303715 (n + 1)

end A303715

/-!
# A303716: Number of nX5 0..1 arrays with every element unequal to 0, 1 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303716, there is no canonical definition to state claims against.
-/

/-! ## A303716.P16051059829050784838

`A303719(A374005(1+n))`
-/

namespace A303716.P16051059829050784838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A374005 (1 + n)).toNat

end

end A303716.P16051059829050784838

/-!
# A303717: Number of nX6 0..1 arrays with every element unequal to 0, 1 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303717, there is no canonical definition to state claims against.
-/

/-! ## A303717.P15662385445237061639

`A303719(A374007(n+1))`
-/

namespace A303717.P15662385445237061639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A374007 (n + 1)).toNat

end

end A303717.P15662385445237061639

/-! ## A303717.P12258985614187515303

`A303719(∑[n+6]+10)`
-/

namespace A303717.P12258985614187515303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A303717.P12258985614187515303

/-!
# A303718: Number of n X 7 0..1 arrays with every element unequal to 0, 1 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303718, there is no canonical definition to state claims against.
-/

/-! ## A303718.P4250630579364111124

`A303719(A374008(1+n))`
-/

namespace A303718.P4250630579364111124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A374008 (1 + n)).toNat

end

end A303718.P4250630579364111124

/-!
# A303719: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303719, there is no canonical definition to state claims against.
-/

/-! ## A303719.P17841828796938257087

`A304270(n+1)-A163510(A157273(n))`
-/

namespace A303719.P17841828796938257087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (n + 1) - A163510 (A157273 n).toNat

end

end A303719.P17841828796938257087

/-! ## A303719.P18316645900550376464

`A304270(n+1)-A340998(A174376(n))`
-/

namespace A303719.P18316645900550376464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (n + 1) - A340998 ((A174376 n).toNat + 140)

end

end A303719.P18316645900550376464

/-! ## A303719.P15013522368819187410

`A304270(n+1)-A014081(A189111(n+1))`
-/

namespace A303719.P15013522368819187410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (n + 1) - A014081 (A189111 (n + 1)).toNat

end

end A303719.P15013522368819187410

/-! ## A303719.P1432993516964076915

`A304270(n+1)-A037800(A188910(n+1))`
-/

namespace A303719.P1432993516964076915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (n + 1) - A037800 (A188910 (n + 1)).toNat

end

end A303719.P1432993516964076915

/-! ## A303719.P7678056041015623308

`A304270(n+1)+A016389(A022166(n))`
-/

namespace A303719.P7678056041015623308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (n + 1) + A016389 (A022166 n).toNat

end

end A303719.P7678056041015623308

/-!
# A303720: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303720, there is no canonical definition to state claims against.
-/

/-! ## A303720.P985752690150843931

`A303727((n+1)²+n²)`
-/

namespace A303720.P985752690150843931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 ((n + 1) ^ 2 + n ^ 2)

end

end A303720.P985752690150843931

/-! ## A303720.P676113384431494373

`record[A303727(A057979(n²+2))]`
-/

namespace A303720.P676113384431494373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A057979 (n ^ 2 + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303720.P676113384431494373

/-!
# A303721: Number of nX2 0..1 arrays with every element unequal to 0, 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303721, the canonical program `A303721.P2409725540994655588` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303721 has offset 1).

The definition of A303721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303721.P2409725540994655588

`3*a(n-1)+a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=8, a(2)=21, a(3)=49, a(4)=120`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A303721

/-- `3*a(n-1)+a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P2409725540994655588.Spec : Prop :=
  ∀ n, P2409725540994655588.a n = A303721 (n + 1)

theorem P2409725540994655588.correct : P2409725540994655588.Spec := by
  intro n
  simp only [A303721, Nat.add_sub_cancel]

end A303721

/-! ## A303721.P1170088697157530055

`A303727(A133263(n+1))`
-/

namespace A303721.P1170088697157530055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A133263 (n + 1)).toNat

end

end A303721.P1170088697157530055

namespace A303721

/-- `A303727(A133263(n+1))` -/
def P1170088697157530055.Spec : Prop :=
  ∀ n, P1170088697157530055.a n = A303721 (n + 1)

end A303721

/-! ## A303721.P10527706261808063506

`A303727(∑[n+2])`
-/

namespace A303721.P10527706261808063506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303721.P10527706261808063506

namespace A303721

/-- `A303727(∑[n+2])` -/
def P10527706261808063506.Spec : Prop :=
  ∀ n, P10527706261808063506.a n = A303721 (n + 1)

end A303721

/-! ## A303721.P8385434838402668011

`A305230(∑[n+1]+2)`
-/

namespace A303721.P8385434838402668011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A303721.P8385434838402668011

namespace A303721

/-- `A305230(∑[n+1]+2)` -/
def P8385434838402668011.Spec : Prop :=
  ∀ n, P8385434838402668011.a n = A303721 (n + 1)

end A303721

/-! ## A303721.P16879655493989171657

`A304775(∑[n+1]+2)`
-/

namespace A303721.P16879655493989171657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304775 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A303721.P16879655493989171657

namespace A303721

/-- `A304775(∑[n+1]+2)` -/
def P16879655493989171657.Spec : Prop :=
  ∀ n, P16879655493989171657.a n = A303721 (n + 1)

end A303721

/-!
# A303722: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303722, there is no canonical definition to state claims against.
-/

/-! ## A303722.P11893706695869574204

`A303727(A167614(n+1))`
-/

namespace A303722.P11893706695869574204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A167614 (n + 1)).toNat

end

end A303722.P11893706695869574204

/-!
# A303723: Number of n X 4 0..1 arrays with every element unequal to 0, 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303723, the canonical program `A303723.P16940833519807401056` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303723 has offset 1).

The definition of A303723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303723.P16940833519807401056

`a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)-2*a(n-6)` with `a(0)=8, a(1)=49, a(2)=46, a(3)=84, a(4)=133, a(5)=221, a(6)=406, a(7)=743`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A303723

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)-2*a(n-6)` -/
def P16940833519807401056.Spec : Prop :=
  ∀ n, P16940833519807401056.a n = A303723 (n + 1)

theorem P16940833519807401056.correct : P16940833519807401056.Spec := by
  intro n
  simp only [A303723, Nat.add_sub_cancel]

end A303723

/-! ## A303723.P17842388873160764232

`A303727(A055999(n)+10)`
-/

namespace A303723.P17842388873160764232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A055999 n + 10).toNat

end

end A303723.P17842388873160764232

namespace A303723

/-- `A303727(A055999(n)+10)` -/
def P17842388873160764232.Spec : Prop :=
  ∀ n, P17842388873160764232.a n = A303723 (n + 1)

end A303723

/-! ## A303723.P15717633093949277945

`A303727(A374004(n+1))`
-/

namespace A303723.P15717633093949277945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A374004 (n + 1)).toNat

end

end A303723.P15717633093949277945

namespace A303723

/-- `A303727(A374004(n+1))` -/
def P15717633093949277945.Spec : Prop :=
  ∀ n, P15717633093949277945.a n = A303723 (n + 1)

end A303723

/-!
# A303724: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303724, there is no canonical definition to state claims against.
-/

/-! ## A303724.P13146320764877217919

`A303727(A167499(n+3))`
-/

namespace A303724.P13146320764877217919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A167499 (n + 3)).toNat

end

end A303724.P13146320764877217919

/-! ## A303724.P14673953063760381463

`A303727(Δ[A264443(n)])`
-/

namespace A303724.P14673953063760381463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (f1 (n + 1) - f1 n).toNat

end

end A303724.P14673953063760381463

/-!
# A303725: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303725, there is no canonical definition to state claims against.
-/

/-! ## A303725.P2652788100613095451

`A303727(A166136(n+4))`
-/

namespace A303725.P2652788100613095451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A166136 (n + 4)).toNat

end

end A303725.P2652788100613095451

/-! ## A303725.P18274696479241974340

`A303727(A374007(n+1))`
-/

namespace A303725.P18274696479241974340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A374007 (n + 1)).toNat

end

end A303725.P18274696479241974340

/-!
# A303726: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303726, there is no canonical definition to state claims against.
-/

/-! ## A303726.P970225648856342250

`A303727(A167487(n+5))`
-/

namespace A303726.P970225648856342250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A167487 (n + 5)).toNat

end

end A303726.P970225648856342250

/-! ## A303726.P7538199364159296405

`A303727(A374008(n+1))`
-/

namespace A303726.P7538199364159296405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A374008 (n + 1)).toNat

end

end A303726.P7538199364159296405

/-!
# A303727: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303727, there is no canonical definition to state claims against.
-/

/-! ## A303727.P16189128761250071352

`A305230(n+1)-A186745(A306100(n))`
-/

namespace A303727.P16189128761250071352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (n + 1) - A186745 (A306100 n).toNat

end

end A303727.P16189128761250071352

/-! ## A303727.P8590877641635940156

`A305230(n+1)+A016389(A022166(n))`
-/

namespace A303727.P8590877641635940156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (n + 1) + A016389 (A022166 n).toNat

end

end A303727.P8590877641635940156

/-! ## A303727.P3445834826951618441

`A305230(n+1)+A016389(A027336(n))`
-/

namespace A303727.P3445834826951618441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (n + 1) + A016389 (A027336 n).toNat

end

end A303727.P3445834826951618441

/-! ## A303727.P13634142854874835455

`A304775(n+1)+A112053(A022171(n))`
-/

namespace A303727.P13634142854874835455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304775 (n + 1) + A112053 (A022171 n).toNat

end

end A303727.P13634142854874835455

/-! ## A303727.P15851677051376306497

`A305230(n+1)+A290531(A056940(n))`
-/

namespace A303727.P15851677051376306497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (n + 1) + A290531 (A056940 n).toNat

end

end A303727.P15851677051376306497

/-!
# A303730: Number of noncrossing path sets on n nodes with each path having at least two nodes.

The programs for A303730, there is no canonical definition to state claims against.
-/

/-! ## A303730.P3547725984901876700

`∑{#}[n, (-1)^(n-#)*C(n, #)*A390910(#)]`
-/

namespace A303730.P3547725984901876700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A390910 k : ℚ)

end

end A303730.P3547725984901876700

/-! ## A303730.P13352070148678657762

`A112689(A357399(n)+A014137(n))`
-/

namespace A303730.P13352070148678657762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A357399 n + A014137 n).toNat

end

end A303730.P13352070148678657762

/-! ## A303730.P15140664031334060935

`A071068(or(A001791(n), A054977(n)))`
-/

namespace A303730.P15140664031334060935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071068 (Int.lor (A001791 n) (A054977 n)).toNat

end

end A303730.P15140664031334060935

/-!
# A303733: First occurrence of n in A299022.

The programs for A303733, there is no canonical definition to state claims against.
-/

/-! ## A303733.P11779365417115118279

`fo[A299022(n+2)]+2`
-/

namespace A303733.P11779365417115118279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299022 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 2

end

end A303733.P11779365417115118279

/-!
# A303739: Numbers k such that 9*k^2 + 3*k + 1 (A082040) is prime.

The programs for A303739, the canonical program `A303739.P9351438101342438262` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303739 has offset 1).

The definition of A303739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 705 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303739.P9351438101342438262

`eq[1, A289356(3*n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A303739

/-- `eq[1, A289356(3*n)]` -/
def P9351438101342438262.Spec : Prop :=
  ∀ n, (P9351438101342438262.a n : ℤ) = A303739 (n + 1)

theorem P9351438101342438262.correct : P9351438101342438262.Spec := by
  intro n
  simp only [A303739, Nat.add_sub_cancel]

end A303739

/-! ## A303739.P8911811615173939615

`lt[0, A108154(3*n+1)]`
-/

namespace A303739.P8911811615173939615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A303739.P8911811615173939615

namespace A303739

/-- `lt[0, A108154(3*n+1)]` -/
def P8911811615173939615.Spec : Prop :=
  ∀ n, (P8911811615173939615.a n : ℤ) = A303739 (n + 1)

end A303739

/-! ## A303739.P7865009829430950288

`record[gcd(floor((n+2)/3), A214059(n+1))]`
-/

namespace A303739.P7865009829430950288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n + 2 : ℚ) / 3⌋ (A214059 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303739.P7865009829430950288

namespace A303739

/-- `record[gcd(floor((n+2)/3), A214059(n+1))]` -/
def P7865009829430950288.Spec : Prop :=
  ∀ n, (P7865009829430950288.a n : ℤ) = A303739 (n + 1)

end A303739

/-! ## A303739.P3200498316262867597

`record[A135997(A002384(n+2))]`
-/

namespace A303739.P3200498316262867597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A002384 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303739.P3200498316262867597

namespace A303739

/-- `record[A135997(A002384(n+2))]` -/
def P3200498316262867597.Spec : Prop :=
  ∀ n, P3200498316262867597.a n = A303739 (n + 1)

end A303739

/-! ## A303739.P17389059621936371126

`lt[A289356(A016789(n)-2), 2]`
-/

namespace A303739.P17389059621936371126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 (A016789 n - 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A303739.P17389059621936371126

namespace A303739

/-- `lt[A289356(A016789(n)-2), 2]` -/
def P17389059621936371126.Spec : Prop :=
  ∀ n, (P17389059621936371126.a n : ℤ) = A303739 (n + 1)

end A303739

/-! ## A303739.P10407187031159978333

`lt[A289356(3*n)^6, A005117(n+1)]`
-/

namespace A303739.P10407187031159978333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 (3 * n) ^ 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303739.P10407187031159978333

namespace A303739

/-- `lt[A289356(3*n)^6, A005117(n+1)]` -/
def P10407187031159978333.Spec : Prop :=
  ∀ n, (P10407187031159978333.a n : ℤ) = A303739 (n + 1)

end A303739

/-! ## A303739.P4147242683486148439

`lt[A051890(n), A081256(A016777(n))]`
-/

namespace A303739.P4147242683486148439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A016777 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303739.P4147242683486148439

namespace A303739

/-- `lt[A051890(n), A081256(A016777(n))]` -/
def P4147242683486148439.Spec : Prop :=
  ∀ n, (P4147242683486148439.a n : ℤ) = A303739 (n + 1)

end A303739

/-! ## A303739.P3794179276888837821

`eq[2, A278251(3*n+1)]`
-/

namespace A303739.P3794179276888837821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303739.P3794179276888837821

namespace A303739

/-- `eq[2, A278251(3*n+1)]` -/
def P3794179276888837821.Spec : Prop :=
  ∀ n, (P3794179276888837821.a n : ℤ) = A303739 (n + 1)

end A303739

/-! ## A303739.P536471458189304922

`eq[2, A278260(6*n+1)]`
-/

namespace A303739.P536471458189304922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303739.P536471458189304922

namespace A303739

/-- `eq[2, A278260(6*n+1)]` -/
def P536471458189304922.Spec : Prop :=
  ∀ n, (P536471458189304922.a n : ℤ) = A303739 (n + 1)

end A303739

/-! ## A303739.P7345981561833116860

`eq[1, A181953(3*n+1)]`
-/

namespace A303739.P7345981561833116860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181953 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303739.P7345981561833116860

namespace A303739

/-- `eq[1, A181953(3*n+1)]` -/
def P7345981561833116860.Spec : Prop :=
  ∀ n, (P7345981561833116860.a n : ℤ) = A303739 (n + 1)

end A303739

/-!
# A303740: Primes of the form 9*k^2 + 3*k + 1.

The programs for A303740, the canonical program `A303740.P11115927871533014173` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303740 has offset 1).

The definition of A303740 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A303739, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A303740.P11115927871533014173

`A082040(A303739(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A303740

/-- `A082040(A303739(n+1))` -/
def P11115927871533014173.Spec : Prop :=
  ∀ n, P11115927871533014173.a n = A303740 (n + 1)

theorem P11115927871533014173.correct : P11115927871533014173.Spec := by
  intro n
  simp only [A303740, Nat.add_sub_cancel]

end A303740

/-! ## A303740.P8186041028759456217

`∩[A002383(1+n), A082040(n)]`
-/

namespace A303740.P8186041028759456217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P8186041028759456217

namespace A303740

/-- `∩[A002383(1+n), A082040(n)]` -/
def P8186041028759456217.Spec : Prop :=
  ∀ n, (P8186041028759456217.a n : ℤ) = A303740 (n + 1)

end A303740

/-! ## A303740.P15404565616807219145

`∩[A059055(n+1), A082040(n)]`
-/

namespace A303740.P15404565616807219145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P15404565616807219145

namespace A303740

/-- `∩[A059055(n+1), A082040(n)]` -/
def P15404565616807219145.Spec : Prop :=
  ∀ n, (P15404565616807219145.a n : ℤ) = A303740 (n + 1)

end A303740

/-! ## A303740.P6874669506195484788

`∩[A085104(n+1), A082040(n)]`
-/

namespace A303740.P6874669506195484788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P6874669506195484788

namespace A303740

/-- `∩[A085104(n+1), A082040(n)]` -/
def P6874669506195484788.Spec : Prop :=
  ∀ n, (P6874669506195484788.a n : ℤ) = A303740 (n + 1)

end A303740

/-! ## A303740.P10819809605633201173

`∩[A172979(n+1), A082040(n)]`
-/

namespace A303740.P10819809605633201173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P10819809605633201173

namespace A303740

/-- `∩[A172979(n+1), A082040(n)]` -/
def P10819809605633201173.Spec : Prop :=
  ∀ n, (P10819809605633201173.a n : ℤ) = A303740 (n + 1)

end A303740

/-! ## A303740.P5227001857267125438

`∩[A173295(n+1), A082040(n)]`
-/

namespace A303740.P5227001857267125438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P5227001857267125438

namespace A303740

/-- `∩[A173295(n+1), A082040(n)]` -/
def P5227001857267125438.Spec : Prop :=
  ∀ n, (P5227001857267125438.a n : ℤ) = A303740 (n + 1)

end A303740

/-! ## A303740.P13317066668297152856

`∩[A206864(n+1), A082040(n)]`
-/

namespace A303740.P13317066668297152856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P13317066668297152856

namespace A303740

/-- `∩[A206864(n+1), A082040(n)]` -/
def P13317066668297152856.Spec : Prop :=
  ∀ n, (P13317066668297152856.a n : ℤ) = A303740 (n + 1)

end A303740

/-! ## A303740.P7623370938905540857

`∩[A206946(n+1), A082040(n)]`
-/

namespace A303740.P7623370938905540857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P7623370938905540857

namespace A303740

/-- `∩[A206946(n+1), A082040(n)]` -/
def P7623370938905540857.Spec : Prop :=
  ∀ n, (P7623370938905540857.a n : ℤ) = A303740 (n + 1)

end A303740

/-! ## A303740.P13973956416525281807

`∩[A239710(n+1), A082040(n)]`
-/

namespace A303740.P13973956416525281807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P13973956416525281807

namespace A303740

/-- `∩[A239710(n+1), A082040(n)]` -/
def P13973956416525281807.Spec : Prop :=
  ∀ n, (P13973956416525281807.a n : ℤ) = A303740 (n + 1)

end A303740

/-! ## A303740.P446319045343557372

`∩[A346156(n+1), A082040(n)]`
-/

namespace A303740.P446319045343557372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P446319045343557372

namespace A303740

/-- `∩[A346156(n+1), A082040(n)]` -/
def P446319045343557372.Spec : Prop :=
  ∀ n, (P446319045343557372.a n : ℤ) = A303740 (n + 1)

end A303740

/-! ## A303740.P12365956489360184732

`record[A209189(3*(n+1))]`
-/

namespace A303740.P12365956489360184732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209189 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303740.P12365956489360184732

namespace A303740

/-- `record[A209189(3*(n+1))]` -/
def P12365956489360184732.Spec : Prop :=
  ∀ n, P12365956489360184732.a n = A303740 (n + 1)

end A303740

/-! ## A303740.P5624567534471305729

`record[A081256(3*n+4)]`
-/

namespace A303740.P5624567534471305729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303740.P5624567534471305729

namespace A303740

/-- `record[A081256(3*n+4)]` -/
def P5624567534471305729.Spec : Prop :=
  ∀ n, P5624567534471305729.a n = A303740 (n + 1)

end A303740

/-! ## A303740.P7693161187078425151

`record[A108154(3*n+4)]`
-/

namespace A303740.P7693161187078425151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303740.P7693161187078425151

namespace A303740

/-- `record[A108154(3*n+4)]` -/
def P7693161187078425151.Spec : Prop :=
  ∀ n, P7693161187078425151.a n = A303740 (n + 1)

end A303740

/-! ## A303740.P8732046124163432424

`∩[A082040(n), A182047(n)]`
-/

namespace A303740.P8732046124163432424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P8732046124163432424

namespace A303740

/-- `∩[A082040(n), A182047(n)]` -/
def P8732046124163432424.Spec : Prop :=
  ∀ n, (P8732046124163432424.a n : ℤ) = A303740 (n + 1)

end A303740

/-! ## A303740.P16783152235146408834

`A298027(2*eq[2, A278251(3*n+1)])`
-/

namespace A303740.P16783152235146408834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298027 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303740.P16783152235146408834

namespace A303740

/-- `A298027(2*eq[2, A278251(3*n+1)])` -/
def P16783152235146408834.Spec : Prop :=
  ∀ n, P16783152235146408834.a n = A303740 (n + 1)

end A303740

/-! ## A303740.P7124439617063816959

`A130770(3*eq[2, A278251(3*n+1)])`
-/

namespace A303740.P7124439617063816959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303740.P7124439617063816959

namespace A303740

/-- `A130770(3*eq[2, A278251(3*n+1)])` -/
def P7124439617063816959.Spec : Prop :=
  ∀ n, P7124439617063816959.a n = A303740 (n + 1)

end A303740

/-! ## A303740.P2637266939352481101

`∩[A082040(n), A152900(n+1)]`
-/

namespace A303740.P2637266939352481101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P2637266939352481101

namespace A303740

/-- `∩[A082040(n), A152900(n+1)]` -/
def P2637266939352481101.Spec : Prop :=
  ∀ n, (P2637266939352481101.a n : ℤ) = A303740 (n + 1)

end A303740

/-! ## A303740.P10364122921163827322

`p?[ceil(((n+1)/2+n)²)]`
-/

namespace A303740.P10364122921163827322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℚ) / 2 + (n : ℚ)) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A303740.P10364122921163827322

namespace A303740

/-- `p?[ceil(((n+1)/2+n)²)]` -/
def P10364122921163827322.Spec : Prop :=
  ∀ n, P10364122921163827322.a n = A303740 (n + 1)

end A303740

/-!
# A303741: Numbers k such that A(k+1) = A(k) + 2, where A() = A005101() are the abundant numbers.

The programs for A303741, the canonical program `A303741.P16042547146136321047` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303741 has offset 1).

The definition of A303741 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A231086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A303741.P16042547146136321047

`A091194(A231086(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A303741

/-- `A091194(A231086(n+1))` -/
def P16042547146136321047.Spec : Prop :=
  ∀ n, P16042547146136321047.a n = A303741 (n + 1)

theorem P16042547146136321047.correct : P16042547146136321047.Spec := by
  intro n
  simp only [A303741, Nat.add_sub_cancel]

end A303741

/-! ## A303741.P17338130176001419035

`eq[2, A125115(1+n)]+1`
-/

namespace A303741.P17338130176001419035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A303741.P17338130176001419035

namespace A303741

/-- `eq[2, A125115(1+n)]+1` -/
def P17338130176001419035.Spec : Prop :=
  ∀ n, (P17338130176001419035.a n : ℤ) = A303741 (n + 1)

end A303741

/-! ## A303741.P4892016922573403885

`eq[2, A125115(A028310(n))]`
-/

namespace A303741.P4892016922573403885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303741.P4892016922573403885

namespace A303741

/-- `eq[2, A125115(A028310(n))]` -/
def P4892016922573403885.Spec : Prop :=
  ∀ n, (P4892016922573403885.a n : ℤ) = A303741 (n + 1)

end A303741

/-! ## A303741.P522978695951147458

`A020725(eq[2, A125115(n+1)])`
-/

namespace A303741.P522978695951147458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303741.P522978695951147458

namespace A303741

/-- `A020725(eq[2, A125115(n+1)])` -/
def P522978695951147458.Spec : Prop :=
  ∀ n, P522978695951147458.a n = A303741 (n + 1)

end A303741

/-! ## A303741.P10927919992249489044

`eq[2, Δ[A005101(n+1)]]+1`
-/

namespace A303741.P10927919992249489044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A303741.P10927919992249489044

namespace A303741

/-- `eq[2, Δ[A005101(n+1)]]+1` -/
def P10927919992249489044.Spec : Prop :=
  ∀ n, (P10927919992249489044.a n : ℤ) = A303741 (n + 1)

end A303741

/-! ## A303741.P3334376442630247001

`lt[1, A038500(Δ[A005101(n+1)]+1)]+1`
-/

namespace A303741.P3334376442630247001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A303741.P3334376442630247001

namespace A303741

/-- `lt[1, A038500(Δ[A005101(n+1)]+1)]+1` -/
def P3334376442630247001.Spec : Prop :=
  ∀ n, (P3334376442630247001.a n : ℤ) = A303741 (n + 1)

end A303741

/-! ## A303741.P10650839991374386387

`lt[A033879(lt[A033879(n+2), 0]), 0]`
-/

namespace A303741.P10650839991374386387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A303741.P10650839991374386387

namespace A303741

/-- `lt[A033879(lt[A033879(n+2), 0]), 0]` -/
def P10650839991374386387.Spec : Prop :=
  ∀ n, (P10650839991374386387.a n : ℤ) = A303741 (n + 1)

end A303741

/-! ## A303741.P10473084238679878540

`eq[2, A125115(A065033(2*n))]`
-/

namespace A303741.P10473084238679878540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303741.P10473084238679878540

namespace A303741

/-- `eq[2, A125115(A065033(2*n))]` -/
def P10473084238679878540.Spec : Prop :=
  ∀ n, (P10473084238679878540.a n : ℤ) = A303741 (n + 1)

end A303741

/-! ## A303741.P17074462650926414208

`eq[2, A125115(A123108(2*n))]`
-/

namespace A303741.P17074462650926414208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303741.P17074462650926414208

namespace A303741

/-- `eq[2, A125115(A123108(2*n))]` -/
def P17074462650926414208.Spec : Prop :=
  ∀ n, (P17074462650926414208.a n : ℤ) = A303741 (n + 1)

end A303741

/-! ## A303741.P9073353300910320706

`eq[A005101(n+2), A053814(A005101(n+1)+2)]+1`
-/

namespace A303741.P9073353300910320706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053814 (A005101 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A303741.P9073353300910320706

namespace A303741

/-- `eq[A005101(n+2), A053814(A005101(n+1)+2)]+1` -/
def P9073353300910320706.Spec : Prop :=
  ∀ n, (P9073353300910320706.a n : ℤ) = A303741 (n + 1)

end A303741

/-! ## A303741.P2267179800782334041

`lt[A005101(n+1), A001065(A005101(n+1)-2)]`
-/

namespace A303741.P2267179800782334041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A005101 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303741.P2267179800782334041

namespace A303741

/-- `lt[A005101(n+1), A001065(A005101(n+1)-2)]` -/
def P2267179800782334041.Spec : Prop :=
  ∀ n, (P2267179800782334041.a n : ℤ) = A303741 (n + 1)

end A303741

/-! ## A303741.P5782366981220995461

`eq[2, runs[A091194(n+1)]]`
-/

namespace A303741.P5782366981220995461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A303741.P5782366981220995461

namespace A303741

/-- `eq[2, runs[A091194(n+1)]]` -/
def P5782366981220995461.Spec : Prop :=
  ∀ n, (P5782366981220995461.a n : ℤ) = A303741 (n + 1)

end A303741

/-!
# A303742: Number of unlabeled oriented edge-rooted 2-trees which have n triangles.

The programs for A303742, there is no canonical definition to state claims against.
-/

/-! ## A303742.P8175953450275141273

`A054581(n+2)+A054581(n+2)-A063687(n)`
-/

namespace A303742.P8175953450275141273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054581 (n + 2) + (A054581 (n + 2) - A063687 n)

end

end A303742.P8175953450275141273

/-! ## A303742.P11400546928874381938

`A340812(∑[n+2]-1)`
-/

namespace A303742.P11400546928874381938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340812 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A303742.P11400546928874381938

/-!
# A303743: a(n) is a number of lattice points in 3D Cartesian grid between cube with edge length 2*n centered in origin and its inscribed sphere. Three pairs of the cube's faces are parallel to the planes XOY, XOZ, YOZ respectively.

The programs for A303743, there is no canonical definition to state claims against.
-/

/-! ## A303743.P5038120925906280161

`A351711(A279875(∑[n]))`
-/

namespace A303743.P5038120925906280161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351711 (A279875 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A303743.P5038120925906280161

/-!
# A303744: Numbers that are not a difference between same powers (greater than 1) of positive numbers.

The programs for A303744, there is no canonical definition to state claims against.
-/

/-! ## A303744.P2119626040988796637

`record[lcm(A043529(n), A175213(n))]`
-/

namespace A303744.P2119626040988796637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043529 n) (A175213 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303744.P2119626040988796637

/-! ## A303744.P12537726755338832309

`record[A336898(n)+A266539(n+1)]`
-/

namespace A303744.P12537726755338832309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336898 n + A266539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303744.P12537726755338832309

/-! ## A303744.P6321957585284937794

`eq[abs(A118823(n+1)), A051904(n+1)]`
-/

namespace A303744.P6321957585284937794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118823 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A303744.P6321957585284937794

/-! ## A303744.P1346499835931232934

`record[A355662(n+2)+A226783(n+1)]`
-/

namespace A303744.P1346499835931232934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355662 (n + 2) + A226783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303744.P1346499835931232934

/-! ## A303744.P5197913917773824271

`∑[A318622(A286024(2*n)+36)]`
-/

namespace A303744.P5197913917773824271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A286024 (2 * n) + 36).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303744.P5197913917773824271

/-!
# A303745: Totients t where gcd({x: phi(x)=t}) > 1.

The programs for A303745, there is no canonical definition to state claims against.
-/

/-! ## A303745.P2413024502132897616

`filter[(1+n)*2, A323514(#)]`
-/

namespace A303745.P2413024502132897616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) * 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j) = 1) n)

end

end A303745.P2413024502132897616

/-! ## A303745.P17254270729435125879

`eq[1, A323514(n+1)]+1`
-/

namespace A303745.P17254270729435125879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A303745.P17254270729435125879

/-! ## A303745.P7946044361236115587

`lt[1, A323169(1+n)]+1`
-/

namespace A303745.P7946044361236115587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A303745.P7946044361236115587

/-! ## A303745.P1888516480379547158

`eq[0, C(3, A323169(n+1))]+1`
-/

namespace A303745.P1888516480379547158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A323169 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A303745.P1888516480379547158

/-! ## A303745.P11113382066396485982

`A303746(n+1)`
-/

namespace A303745.P11113382066396485982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303746 (n + 1)

end

end A303745.P11113382066396485982

/-!
# A303746: Totients t for which {x: phi(x)=t} share the same largest prime factor.

The programs for A303746, there is no canonical definition to state claims against.
-/

/-! ## A303746.P2176315829220873499

`lt[A164020(n), A323169(n+1)²]+1`
-/

namespace A303746.P2176315829220873499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A303746.P2176315829220873499

/-! ## A303746.P17239367621243702079

`A164020(lt[A164020(n), A323169(n+1)²])`
-/

namespace A303746.P17239367621243702079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A303746.P17239367621243702079

/-! ## A303746.P3445335296690356620

`lt[A233583(n+1), A323169(n+1)²]+1`
-/

namespace A303746.P3445335296690356620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A303746.P3445335296690356620

/-! ## A303746.P13710071479353737419

`lt[A001316(n), A323169(A233583(n+1))]`
-/

namespace A303746.P13710071479353737419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303746.P13710071479353737419

/-! ## A303746.P12771815592541457456

`lt[A004736(n+1), A323169(A233583(n+1))]`
-/

namespace A303746.P12771815592541457456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303746.P12771815592541457456

/-! ## A303746.P3367133832152663050

`lt[A066412(n+1), A323169(A233583(n+1))]`
-/

namespace A303746.P3367133832152663050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303746.P3367133832152663050

/-! ## A303746.P15635653636416259203

`lt[A339738(n+1), A323169(n+1)]+1`
-/

namespace A303746.P15635653636416259203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A303746.P15635653636416259203

/-!
# A303747: Totients t for which gcd({x: phi(x)=t}) equals the largest prime factor of each member of {x: phi(x)=t}.

The programs for A303747, there is no canonical definition to state claims against.
-/

/-! ## A303747.P12501415334170705195

`eq[A094404(n+1), A323514(n+1)]+1`
-/

namespace A303747.P12501415334170705195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A303747.P12501415334170705195

/-! ## A303747.P787516454692995605

`A014681(eq[A094404(n+1), A323514(n+1)])`
-/

namespace A303747.P787516454692995605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A303747.P787516454692995605

/-! ## A303747.P263218955061075355

`lt[(A328311(A205845(n+1))+1)!, A323169(n+1)]+1`
-/

namespace A303747.P263218955061075355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A328311 (A205845 (n + 1)).toNat + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A303747.P263218955061075355

/-! ## A303747.P5839194251739867179

`filter[A274204(n+1), A323514(#)]`
-/

namespace A303747.P5839194251739867179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303747.P5839194251739867179

/-! ## A303747.P16437294230188662399

`filter[A347243(n+1), A323514(#)]`
-/

namespace A303747.P16437294230188662399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303747.P16437294230188662399

/-!
# A303748: a(n) is the number of distinct terms of the form i^j where 0 <= i,j <= n.

The programs for A303748, there is no canonical definition to state claims against.
-/

/-! ## A303748.P14311568651815346570

`A126254(n)+a(A061358(A094743(n+1))-1)` with `a(0)=1`
-/

namespace A303748.P14311568651815346570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126254 n + a (A061358 (A094743 (n + 1)).toNat - 1).toNat

end

end A303748.P14311568651815346570

/-! ## A303748.P8891269330345643230

`A126254(A028310(n))+A000035(A094743(n+1))`
-/

namespace A303748.P8891269330345643230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126254 (A028310 n).toNat + A000035 (A094743 (n + 1)).toNat

end

end A303748.P8891269330345643230

/-! ## A303748.P6911938817073614672

`A126254(A065033(2*n))+A061358(A094743(n+1))`
-/

namespace A303748.P6911938817073614672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126254 (A065033 (2 * n)).toNat + A061358 (A094743 (n + 1)).toNat

end

end A303748.P6911938817073614672

/-! ## A303748.P15800608791499405493

`A126254(A000007(n)+n)+A000035(A094743(n+1))`
-/

namespace A303748.P15800608791499405493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126254 (A000007 n + (n : ℤ)).toNat + A000035 (A094743 (n + 1)).toNat

end

end A303748.P15800608791499405493

/-! ## A303748.P17021418936562924026

`A332992(A137688(n))+A126254(A065033(2*n))`
-/

namespace A303748.P17021418936562924026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332992 (A137688 n).toNat + A126254 (A065033 (2 * n)).toNat

end

end A303748.P17021418936562924026

/-! ## A303748.P13191722925266817742

`A126254(n)+a(A002262(∑[n]+1)-1)` with `a(0)=1`
-/

namespace A303748.P13191722925266817742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126254 n + a (A002262 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1).toNat

end

end A303748.P13191722925266817742

/-! ## A303748.P14645615864998560813

`A126254(A193739(∑[n]))-A057428(n)`
-/

namespace A303748.P14645615864998560813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126254 (A193739 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A057428 n

end

end A303748.P14645615864998560813

/-! ## A303748.P12680805957160186084

`A126254(A028310(n))+A002262(∑[n]+1)`
-/

namespace A303748.P12680805957160186084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126254 (A028310 n).toNat + A002262 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303748.P12680805957160186084

/-! ## A303748.P4689894721562352531

`A126254(A065033(2*n))+A002262(∑[n]+1)`
-/

namespace A303748.P4689894721562352531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126254 (A065033 (2 * n)).toNat + A002262 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303748.P4689894721562352531

/-! ## A303748.P8924186071643607044

`A324903(A030130(n+2))+A126254(A065033(2*n))`
-/

namespace A303748.P8924186071643607044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324903 (A030130 (n + 2)).toNat + A126254 (A065033 (2 * n)).toNat

end

end A303748.P8924186071643607044

/-! ## A303748.P7012227310535262292

`A126254(A137735(n²))+A057427(n)`
-/

namespace A303748.P7012227310535262292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126254 (A137735 (n ^ 2)).toNat + A057427 n

end

end A303748.P7012227310535262292

/-!
# A303749: First differences of A302774; Number of terms in A303762 that have prime(n) as their largest prime factor (A006530).

The programs for A303749, there is no canonical definition to state claims against.
-/

/-! ## A303749.P9725121305153413118

`A302774(n+2)-A302774(n+1)`
-/

namespace A303749.P9725121305153413118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302774 (n + 2) - A302774 (n + 1)

end

end A303749.P9725121305153413118

/-! ## A303749.P9681912520043260355

`3*(or(1, a(n-2))-and(1, n))+1` with `a(0)=1, a(1)=2`
-/

namespace A303749.P9681912520043260355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (Int.lor 1 (a (n - 2)) - (Nat.land 1 n : ℤ)) + 1

end

end A303749.P9681912520043260355

/-! ## A303749.P15860634176522964093

`1-3*(and(1, n)-or(1, a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A303749.P15860634176522964093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - 3 * ((Nat.land 1 n : ℤ) - Int.lor 1 (a (n - 2)))

end

end A303749.P15860634176522964093

/-! ## A303749.P15778103134684329426

`3*xor(n, or(1, xor(n, a(n-2))))+1` with `a(0)=1, a(1)=2`
-/

namespace A303749.P15778103134684329426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * Nat.xor n (Nat.lor 1 (Nat.xor n (a (n - 2)))) + 1

end

end A303749.P15778103134684329426

/-! ## A303749.P13600079564533539572

`Δ[A302774(1+n)]`
-/

namespace A303749.P13600079564533539572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302774 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303749.P13600079564533539572

/-!
# A303750: Positions of odd terms in A303751.

The programs for A303750, there is no canonical definition to state claims against.
-/

/-! ## A303750.P16186618832235884940

`eq[1, A303751(1+n)%2]+1`
-/

namespace A303750.P16186618832235884940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303751 (1 + n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A303750.P16186618832235884940

/-! ## A303750.P8982683649645341323

`record[(n+1)*A303751(2+n)%2+1]`
-/

namespace A303750.P8982683649645341323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A303751 (2 + n)) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303750.P8982683649645341323

/-! ## A303750.P7076935365430631597

`eq[1, A303751(A000038(n)+n)%2]`
-/

namespace A303750.P7076935365430631597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303751 (A000038 n + (n : ℤ)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303750.P7076935365430631597

/-! ## A303750.P3567274544435137943

`eq[1, A000035(A303751(n+1))]+1`
-/

namespace A303750.P3567274544435137943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A303751 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A303750.P3567274544435137943

/-! ## A303750.P6590415415331018459

`A304530(n+1)`
-/

namespace A303750.P6590415415331018459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304530 (n + 1)

end

end A303750.P6590415415331018459

/-!
# A303752: Inverse of A303751.

The programs for A303752, there is no canonical definition to state claims against.
-/

/-! ## A303752.P97427885253585073

`fo[A303751(n+1)-1]+1`
-/

namespace A303752.P97427885253585073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303751 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A303752.P97427885253585073

/-!
# A303753: Ordinal transform of cototient (A051953).

The programs for A303753, there is no canonical definition to state claims against.
-/

/-! ## A303753.P4022071362851053452

`ceil(A285879(n+1)/A321893(n+1))`
-/

namespace A303753.P4022071362851053452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285879 (n + 1) : ℚ) / (A321893 (n + 1) : ℚ)⌉

end

end A303753.P4022071362851053452

/-! ## A303753.P12138279544333268697

`gcd(A067004(n+1), A338569((n+1)²/∏{p}[n+1, #]))`
-/

namespace A303753.P12138279544333268697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067004 (n + 1)) (A338569 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A303753.P12138279544333268697

/-! ## A303753.P14172192174854892308

`gcd(A003359(A276087(n)), A067004(n+1))`
-/

namespace A303753.P14172192174854892308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003359 (A276087 n).toNat) (A067004 (n + 1))

end

end A303753.P14172192174854892308

/-! ## A303753.P2046544002047798005

`A055396(A065306(n+1)*A235395(n+1))`
-/

namespace A303753.P2046544002047798005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A065306 (n + 1) * A235395 (n + 1)).toNat

end

end A303753.P2046544002047798005

/-! ## A303753.P15908053965159491185

`gcd(A001462(n+1), A067004(A187829(n+1)))`
-/

namespace A303753.P15908053965159491185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001462 (n + 1)) (A067004 (A187829 (n + 1)).toNat)

end

end A303753.P15908053965159491185

/-!
# A303754: a(1) = 1 and for n > 1, a(n) = number of values of k, 2 <= k <= n, with A303753(k) = A303753(n), where A303753 is ordinal transform of cototient, A051953.

The programs for A303754, there is no canonical definition to state claims against.
-/

/-! ## A303754.P13277400855995326205

`A325352(A065306(n+1)%A325387(3*n+5))`
-/

namespace A303754.P13277400855995326205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325352 (Int.tmod (A065306 (n + 1)) (A325387 (3 * n + 5))).toNat

end

end A303754.P13277400855995326205

/-! ## A303754.P12689577028900883909

`gcd(A343719(2*n+5), A343755(n+1))`
-/

namespace A303754.P12689577028900883909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A343719 (2 * n + 5)) (A343755 (n + 1))

end

end A303754.P12689577028900883909

/-! ## A303754.P10095147604063515475

`A178487(A032742(n+1)^A039706(n+1))`
-/

namespace A303754.P10095147604063515475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (SequenceMachineLib.roundAway ((A032742 (n + 1) : ℚ) ^ (A039706 (n + 1) : ℤ))).toNat

end

end A303754.P10095147604063515475

/-! ## A303754.P9053672036176486598

`A039637(A342617(n+1))`
-/

namespace A303754.P9053672036176486598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A342617 (n + 1)).toNat

end

end A303754.P9053672036176486598

/-! ## A303754.P10392321897568631963

`A367055(A369924(n+1))`
-/

namespace A303754.P10392321897568631963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367055 (A369924 (n + 1)).toNat

end

end A303754.P10392321897568631963

/-!
# A303755: Ordinal transform of A289625.

The programs for A303755, there is no canonical definition to state claims against.
-/

/-! ## A303755.P3292534324653739670

`A365632(A019565(n+2)*A067538(n+1))`
-/

namespace A303755.P3292534324653739670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365632 (A019565 (n + 2) * A067538 (n + 1)).toNat

end

end A303755.P3292534324653739670

/-! ## A303755.P18269441903267161076

`A360617(xor(12, n+63))`
-/

namespace A303755.P18269441903267161076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360617 (Nat.xor 12 (n + 63))

end

end A303755.P18269441903267161076

/-! ## A303755.P5320451679158714464

`A217626(A000043(n+10))`
-/

namespace A303755.P5320451679158714464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217626 (A000043 (n + 10)).toNat

end

end A303755.P5320451679158714464

/-! ## A303755.P1676127997483672274

`A322794(C(A288323(n)+3, 2)*n+1)`
-/

namespace A303755.P1676127997483672274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (Nat.choose (A288323 n + 3).toNat 2 * n + 1)

end

end A303755.P1676127997483672274

/-! ## A303755.P10895594407527256017

`A272677(A401235(n+1))`
-/

namespace A303755.P10895594407527256017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272677 (A401235 (n + 1)).toNat

end

end A303755.P10895594407527256017

/-!
# A303756: Number of values of k, 1 <= k <= n, with A002322(k) = A002322(n), where A002322 is Carmichael lambda.

The programs for A303756, there is no canonical definition to state claims against.
-/

/-! ## A303756.P15372971785492805254

`A303758(1+n)+char[1]`
-/

namespace A303756.P15372971785492805254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303758 (1 + n) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303756.P15372971785492805254

/-! ## A303756.P8566537795494924710

`A303758((n+1)^ceil(3/(n+1)))`
-/

namespace A303756.P8566537795494924710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303758 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌈3 / (n + 1 : ℚ)⌉ : ℤ))).toNat

end

end A303756.P8566537795494924710

/-! ## A303756.P1045643021201643855

`A303758(1+n)*A373565(n)`
-/

namespace A303756.P1045643021201643855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303758 (1 + n) * A373565 n

end

end A303756.P1045643021201643855

/-! ## A303756.P16417254283735993357

`lcm(A303758(n+1), A373565(n))`
-/

namespace A303756.P16417254283735993357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A303758 (n + 1)) (A373565 n)

end

end A303756.P16417254283735993357

/-! ## A303756.P5045585831076306065

`(A063524(n)+1)*A303758(n+1)`
-/

namespace A303756.P5045585831076306065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063524 n + 1) * A303758 (n + 1)

end

end A303756.P5045585831076306065

/-! ## A303756.P17760076414613777904

`max(A303755(n+1), A303758(n+1))`
-/

namespace A303756.P17760076414613777904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A303755 (n + 1)) (A303758 (n + 1))

end

end A303756.P17760076414613777904

/-! ## A303756.P6802320936110268879

`A004525(a(A191265(n))+1)*A303758(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A303756.P6802320936110268879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A004525 (a (A191265 n).toNat + 1).toNat * A303758 (n + 1)

end

end A303756.P6802320936110268879

/-! ## A303756.P1035068547908670883

`A081373(n+1)+A303758(n+1)-A303757(n+1)`
-/

namespace A303756.P1035068547908670883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (n + 1) + (A303758 (n + 1) - A303757 (n + 1))

end

end A303756.P1035068547908670883

/-! ## A303756.P14643851597806271192

`A081373(A081373(n+1)/A303757(n+1))*A303758(n+1)`
-/

namespace A303756.P14643851597806271192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (SequenceMachineLib.roundAway ((A081373 (n + 1) : ℚ) / (A303757 (n + 1) : ℚ))).toNat * A303758 (n + 1)

end

end A303756.P14643851597806271192

/-! ## A303756.P4478840059109849736

`A081373(record[A006530(n+1)])*A303758(n+1)`
-/

namespace A303756.P4478840059109849736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A303758 (n + 1)

end

end A303756.P4478840059109849736

/-! ## A303756.P15555822217889218191

`A081373(A006530(n²+1))*A303758(n+1)`
-/

namespace A303756.P15555822217889218191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (A006530 (n ^ 2 + 1)).toNat * A303758 (n + 1)

end

end A303756.P15555822217889218191

/-!
# A303757: a(1) = 1 and for n > 1, a(n) = number of values of k, 2 <= k <= n, with A000010(k) = A000010(n), where A000010 is Euler totient function phi.

The programs for A303757, there is no canonical definition to state claims against.
-/

/-! ## A303757.P14533088998990369392

`A319989(2*(1+n))`
-/

namespace A303757.P14533088998990369392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319989 (2 * (1 + n))

end

end A303757.P14533088998990369392

/-! ## A303757.P17041160379078982237

`A081373(1+char[1]+n)`
-/

namespace A303757.P17041160379078982237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (1 + ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A303757.P17041160379078982237

/-! ## A303757.P6114595859763277986

`A081373(n+1)^∏{p}[1+n, C(#%n, #)]`
-/

namespace A303757.P6114595859763277986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p)

end

end A303757.P6114595859763277986

/-! ## A303757.P6075854413145053312

`A159075(n)+A081373(n+1)`
-/

namespace A303757.P6075854413145053312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A081373 (n + 1)

end

end A303757.P6075854413145053312

/-! ## A303757.P16656565660324537392

`A081373(n+1)-A063524(n)`
-/

namespace A303757.P16656565660324537392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (n + 1) - A063524 n

end

end A303757.P16656565660324537392

/-! ## A303757.P11778629189475779302

`A081373(n+1)/A373565(n)`
-/

namespace A303757.P11778629189475779302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081373 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A303757.P11778629189475779302

/-! ## A303757.P12253123187974827789

`min(A032742(n+1), A081373(n+1))`
-/

namespace A303757.P12253123187974827789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A032742 (n + 1)) (A081373 (n + 1))

end

end A303757.P12253123187974827789

/-! ## A303757.P15905531051291910793

`min(A081373(n+1), A303754(n+1))`
-/

namespace A303757.P15905531051291910793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A081373 (n + 1)) (A303754 (n + 1))

end

end A303757.P15905531051291910793

/-! ## A303757.P13824272625207826541

`A081373(n+1)-A000035(A171462(n+1))`
-/

namespace A303757.P13824272625207826541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (n + 1) - A000035 (A171462 (n + 1)).toNat

end

end A303757.P13824272625207826541

/-! ## A303757.P8190155015486283870

`∏{e}[A006530(A000010(n+1)), A081373(n*#+1)]`
-/

namespace A303757.P8190155015486283870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A081373 (n * Nat.factorization (f1 n).natAbs p + 1)

end

end A303757.P8190155015486283870

/-! ## A303757.P18038003302507783986

`A081373(n+1)+A303758(n+1)-A303756(n+1)`
-/

namespace A303757.P18038003302507783986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (n + 1) + (A303758 (n + 1) - A303756 (n + 1))

end

end A303757.P18038003302507783986

/-! ## A303757.P10259525549067185729

`A081373(n+1)/A081373(A008578(n+1))`
-/

namespace A303757.P10259525549067185729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081373 (n + 1) : ℚ) / (A081373 (A008578 (n + 1)).toNat : ℚ)

end

end A303757.P10259525549067185729

/-! ## A303757.P451857143183143714

`A081373(n+1)/A081373(record[A006530(n+1)])`
-/

namespace A303757.P451857143183143714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081373 (n + 1) : ℚ) / (A081373 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A303757.P451857143183143714

/-! ## A303757.P13740765341978797097

`A081373(n+1)/A081373(A073582(n+1)/2)`
-/

namespace A303757.P13740765341978797097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081373 (n + 1) : ℚ) / (A081373 (SequenceMachineLib.roundAway ((A073582 (n + 1) : ℚ) / 2)).toNat : ℚ)

end

end A303757.P13740765341978797097

/-! ## A303757.P3165746672492313597

`A081373(n+1)/A331182(A000040(n+1))`
-/

namespace A303757.P3165746672492313597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081373 (n + 1) : ℚ) / (A331182 (A000040 (n + 1)).toNat : ℚ)

end

end A303757.P3165746672492313597

/-! ## A303757.P652410384456014573

`A081373(A028242(2*n))-char[1]`
-/

namespace A303757.P652410384456014573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (A028242 (2 * n)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303757.P652410384456014573

/-! ## A303757.P15703037916629370125

`A081373(n+1)/A014963(A073582(n+1))`
-/

namespace A303757.P15703037916629370125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081373 (n + 1) : ℚ) / (A014963 (A073582 (n + 1)).toNat : ℚ)

end

end A303757.P15703037916629370125

/-! ## A303757.P13660944511998382436

`gcd(A081373(n+1), A356547(n))`
-/

namespace A303757.P13660944511998382436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081373 (n + 1)) (A356547 n)

end

end A303757.P13660944511998382436

/-! ## A303757.P4796572603656915968

`min(A081373(n+1), A289625(n+1))`
-/

namespace A303757.P4796572603656915968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A081373 (n + 1)) (A289625 (n + 1))

end

end A303757.P4796572603656915968

/-! ## A303757.P6704456271551579384

`A081373(n+1)/A081373(A006530(n²+1))`
-/

namespace A303757.P6704456271551579384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081373 (n + 1) : ℚ) / (A081373 (A006530 (n ^ 2 + 1)).toNat : ℚ)

end

end A303757.P6704456271551579384

/-!
# A303758: a(1) = 1 and for n > 1, a(n) = number of values of k, 2 <= k <= n, with A002322(k) = A002322(n), where A002322 is Carmichael lambda.

The programs for A303758, there is no canonical definition to state claims against.
-/

/-! ## A303758.P5582151628187407013

`A303756(1+n)-char[1]`
-/

namespace A303758.P5582151628187407013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (1 + n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303758.P5582151628187407013

/-! ## A303758.P3652310720924171942

`A303756(C(n, C(3, n)+1)+1)`
-/

namespace A303758.P3652310720924171942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (Nat.choose n (Nat.choose 3 n + 1) + 1)

end

end A303758.P3652310720924171942

/-! ## A303758.P7717486394491234593

`A303756(n+1)/A373565(n)`
-/

namespace A303758.P7717486394491234593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303756 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A303758.P7717486394491234593

/-! ## A303758.P1199330936673795772

`∏{e}[A006530(A000010(n+1)), A303756(n*#+1)]`
-/

namespace A303758.P1199330936673795772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A303756 (n * Nat.factorization (f1 n).natAbs p + 1)

end

end A303758.P1199330936673795772

/-! ## A303758.P905880341625442311

`A303757(n+1)+A303756(n+1)-A081373(n+1)`
-/

namespace A303758.P905880341625442311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303757 (n + 1) + (A303756 (n + 1) - A081373 (n + 1))

end

end A303758.P905880341625442311

/-! ## A303758.P1700031823641141813

`gcd(A051549(n), A303756(n+1))`
-/

namespace A303758.P1700031823641141813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051549 n) (A303756 (n + 1))

end

end A303758.P1700031823641141813

/-! ## A303758.P763680858756020115

`min(A289625(n+1), A303756(n+1))`
-/

namespace A303758.P763680858756020115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A289625 (n + 1)) (A303756 (n + 1))

end

end A303758.P763680858756020115

/-! ## A303758.P37503963636149141

`gcd(A003418(n), A303756(n+1))`
-/

namespace A303758.P37503963636149141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A303756 (n + 1))

end

end A303758.P37503963636149141

/-!
# A303759: Number of times the largest prime power factor of n (A034699) is largest prime power factor for numbers <= n; a(1) = 1.

The programs for A303759, there is no canonical definition to state claims against.
-/

/-! ## A303759.P15571593554416971620

`A336816(n+1)+1-A336816(A034699(n+1))`
-/

namespace A303759.P15571593554416971620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336816 (n + 1) + (1 - A336816 (A034699 (n + 1)).toNat)

end

end A303759.P15571593554416971620

/-! ## A303759.P10211478332486104370

`ceil(A160755(n+1)/A000203(A034699(n+1)))`
-/

namespace A303759.P10211478332486104370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A160755 (n + 1) : ℚ) / (A000203 (A034699 (n + 1)).toNat : ℚ)⌉

end

end A303759.P10211478332486104370

/-! ## A303759.P10901320579672960183

`A178487(A324291(n+1)^3)`
-/

namespace A303759.P10901320579672960183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A324291 (n + 1) ^ 3).toNat

end

end A303759.P10901320579672960183

/-! ## A303759.P16309667353081209457

`A209082(A324291(n+1)+1)-1`
-/

namespace A303759.P16309667353081209457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209082 (A324291 (n + 1) + 1).toNat - 1

end

end A303759.P16309667353081209457

/-! ## A303759.P6091341029434460749

`A399680(A183092(n+1))`
-/

namespace A303759.P6091341029434460749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399680 (A183092 (n + 1)).toNat

end

end A303759.P6091341029434460749

/-!
# A303760: Divisor-or-multiple permutation of squarefree numbers: a(0) = 1, and for n >= 1, a(n) is either the least divisor of a(n-1) not already present in the sequence, or (if all divisors already used), a(n-1) * {the least prime p such that p does not divide a(n-1) and p*a(n-1) is not already present}.

The programs for A303760, there is no canonical definition to state claims against.
-/

/-! ## A303760.P7881846110366238676

`A019565(A303767(n))`
-/

namespace A303760.P7881846110366238676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A303767 n).toNat

end

end A303760.P7881846110366238676

/-! ## A303760.P18200493242690067520

`A019565(A052331(A303771(n)))`
-/

namespace A303760.P18200493242690067520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A052331 (A303771 n).toNat).toNat

end

end A303760.P18200493242690067520

/-! ## A303760.P10101689884574841795

`A302033(A006068(A303767(n))%A283477(n))`
-/

namespace A303760.P10101689884574841795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (Int.tmod (A006068 (A303767 n).toNat) (A283477 n)).toNat

end

end A303760.P10101689884574841795

/-! ## A303760.P17256922310584830754

`A332462(A366260(n))`
-/

namespace A303760.P17256922310584830754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (A366260 n).toNat

end

end A303760.P17256922310584830754

/-! ## A303760.P17655063816798870310

`A304537(A304534(A303767(A304534(A304533(n)))))`
-/

namespace A303760.P17655063816798870310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 (A304534 (A303767 (A304534 (A304533 n).toNat).toNat).toNat).toNat

end

end A303760.P17655063816798870310

/-! ## A303760.P5159504842246773250

`A160102(A303771(n))`
-/

namespace A303760.P5159504842246773250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A303771 n).toNat

end

end A303760.P5159504842246773250

/-! ## A303760.P8016424149780578923

`A303778(A303776(A303767(A303774(A303773(n)))))`
-/

namespace A303760.P8016424149780578923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 (A303776 (A303767 (A303774 (A303773 n).toNat).toNat).toNat).toNat

end

end A303760.P8016424149780578923

/-!
# A303761: Divisor-or-multiple permutation of squarefree numbers: a(0) = 1, and for n >= 1, a(n) is either the least divisor of a(n-1) not already present, or (if all divisors already used), a(n) is obtained by iterating the map x -> x*A053669(x), starting from x = a(n-1), until x is found which is not already present in the sequence.

The programs for A303761, there is no canonical definition to state claims against.
-/

/-! ## A303761.P9983797265251497529

`A019565(A303765(n))`
-/

namespace A303761.P9983797265251497529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A303765 n).toNat

end

end A303761.P9983797265251497529

/-! ## A303761.P7997225749913213211

`A303770(A303774(A303765(A303774(A303773(n)))))`
-/

namespace A303761.P7997225749913213211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 (A303774 (A303765 (A303774 (A303773 n).toNat).toNat).toNat).toNat

end

end A303761.P7997225749913213211

/-! ## A303761.P12385217775745517146

`A293442(2^A303765(n))`
-/

namespace A303761.P12385217775745517146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A303765 n : ℤ))).toNat

end

end A303761.P12385217775745517146

/-! ## A303761.P16810133816790576870

`A284003(A013939(n+1)%A090548(3*n+2))`
-/

namespace A303761.P16810133816790576870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (Int.tmod (A013939 (n + 1)) (A090548 (3 * n + 2))).toNat

end

end A303761.P16810133816790576870

/-!
# A303762: a(0) = 1, and for n >= 1, a(n) is either the largest divisor of a(n-1) not already present in the sequence, or (if all divisors already used), a(n-1) * {the least prime p such that p does not divide a(n-1) and p*a(n-1) is not already present}.

The programs for A303762, there is no canonical definition to state claims against.
-/

/-! ## A303762.P14411795971927660016

`A019565(A303769(n))`
-/

namespace A303762.P14411795971927660016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A303769 n).toNat

end

end A303762.P14411795971927660016

/-! ## A303762.P4131971220554108928

`A054842(A304749(n))`
-/

namespace A303762.P4131971220554108928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A304749 n).toNat

end

end A303762.P4131971220554108928

/-! ## A303762.P15301056791984489815

`A293442(2^A303769(n))`
-/

namespace A303762.P15301056791984489815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A303769 n : ℤ))).toNat

end

end A303762.P15301056791984489815

/-! ## A303762.P17367396001342165316

`A303778(n)`
-/

namespace A303762.P17367396001342165316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

end

end A303762.P17367396001342165316

/-!
# A303763: Permutation of nonnegative integers: a(0) = 0 and for n > 0, a(n) = the least k for which bitor(k,a(n-1)) = a(n-1) and k is not already present, and otherwise, if no such k exists, the least number not already present that can be obtained by cumulatively filling the successive vacant bits of a(n-1) from its least significant end (by toggling 0's to 1's, possibly also one or more leading zeros).

The programs for A303763, there is no canonical definition to state claims against.
-/

/-! ## A303763.P11504924276249612022

`fo[A303764(n)]`
-/

namespace A303763.P11504924276249612022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303764 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A303763.P11504924276249612022

/-!
# A303764: Inverse permutation to A303763.

The programs for A303764, there is no canonical definition to state claims against.
-/

/-! ## A303764.P2958030432697807960

`fo[A303763(n)]`
-/

namespace A303764.P2958030432697807960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303763 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A303764.P2958030432697807960

/-! ## A303764.P8643713569770293536

`A217122(n+1)-A036987(A071333(n+1))`
-/

namespace A303764.P8643713569770293536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217122 (n + 1) - A036987 (A071333 (n + 1)).toNat

end

end A303764.P8643713569770293536

/-! ## A303764.P10280594832899730747

`A217122(A187829(n+1))-A015166(A006463(n))`
-/

namespace A303764.P10280594832899730747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217122 (A187829 (n + 1)).toNat - A015166 (A006463 n).toNat

end

end A303764.P10280594832899730747

/-! ## A303764.P10286337029528455348

`A217122(n+1)-A036987(A052403(n+1))`
-/

namespace A303764.P10286337029528455348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217122 (n + 1) - A036987 (A052403 (n + 1)).toNat

end

end A303764.P10286337029528455348

/-! ## A303764.P7172279559330752188

`A217122(n+1)-A000122(A217154(n+1))`
-/

namespace A303764.P7172279559330752188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217122 (n + 1) - A000122 (A217154 (n + 1)).toNat

end

end A303764.P7172279559330752188

/-!
# A303765: Permutation of nonnegative integers: a(n) = A048675(A303761(n)); see comments for an equivalent alternative description.

The programs for A303765, there is no canonical definition to state claims against.
-/

/-! ## A303765.P15604196349840269733

`A048675(A303761(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A303765.P15604196349840269733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A303761 n).toNat

end

end A303765.P15604196349840269733

/-! ## A303765.P3492392036946735649

`fo[A303766(n)]`
-/

namespace A303765.P3492392036946735649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A303765.P3492392036946735649

/-! ## A303765.P2148745852812837426

`∑{p}[A303761(n), A048676(#)]`
-/

namespace A303765.P2148745852812837426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p

end

end A303765.P2148745852812837426

/-! ## A303765.P2206010387007176075

`∑{p}[A303761(n), A087207(#)]`
-/

namespace A303765.P2206010387007176075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A303765.P2206010387007176075

/-! ## A303765.P1904702290798851449

`∑{p}[A303761(n), A112479(#)]`
-/

namespace A303765.P1904702290798851449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A112479 p

end

end A303765.P1904702290798851449

/-!
# A303766: Inverse permutation to A303765.

The programs for A303766, there is no canonical definition to state claims against.
-/

/-! ## A303766.P11267111341485287647

`fo[A303765(n)]`
-/

namespace A303766.P11267111341485287647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A303766.P11267111341485287647

/-!
# A303767: May code of n: a(0) = 0, and for n > 0, if n = 2^k, a(n) = n + a(n-1), otherwise, when n = 2^k + r (with 0 < r < 2^k), then a(n) = 2^k + a(r-1); see comments for equivalent alternative descriptions.

The programs for A303767, the canonical program `A303767.P15384268189277497336` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303767 has offset 0).

The definition of A303767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303767.P10540119972253815947

`A052331(A303771(n))`
-/

namespace A303767.P10540119972253815947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052331 (A303771 n).toNat

end

end A303767.P10540119972253815947

namespace A303767

/-- `A052331(A303771(n))` -/
def P10540119972253815947.Spec : Prop :=
  ∀ n, P10540119972253815947.a n = A303767 n

end A303767

/-! ## A303767.P17795051625458804772

`A048675(A303760(n))`
-/

namespace A303767.P17795051625458804772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A303760 n).toNat

end

end A303767.P17795051625458804772

namespace A303767

/-- `A048675(A303760(n))` -/
def P17795051625458804772.Spec : Prop :=
  ∀ n, P17795051625458804772.a n = A303767 n

end A303767

/-! ## A303767.P15384268189277497336

`fo[A303768(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A303767

/-- `fo[A303768(n)]` -/
def P15384268189277497336.Spec : Prop :=
  ∀ n, (P15384268189277497336.a n : ℤ) = A303767 n

theorem P15384268189277497336.correct : P15384268189277497336.Spec := by
  intro n
  simp only [A303767]

end A303767

/-! ## A303767.P7854917882657257194

`A370790(A153151(n))`
-/

namespace A303767.P7854917882657257194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370790 (A153151 n).toNat

end

end A303767.P7854917882657257194

namespace A303767

/-- `A370790(A153151(n))` -/
def P7854917882657257194.Spec : Prop :=
  ∀ n, P7854917882657257194.a n = A303767 n

end A303767

/-! ## A303767.P11837824607613625369

`∑{p}[A303760(n), A048676(#)]`
-/

namespace A303767.P11837824607613625369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p

end

end A303767.P11837824607613625369

namespace A303767

/-- `∑{p}[A303760(n), A048676(#)]` -/
def P11837824607613625369.Spec : Prop :=
  ∀ n, P11837824607613625369.a n = A303767 n

end A303767

/-! ## A303767.P13617758666800056572

`∑{p}[A303760(n), A087207(#)]`
-/

namespace A303767.P13617758666800056572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A303767.P13617758666800056572

namespace A303767

/-- `∑{p}[A303760(n), A087207(#)]` -/
def P13617758666800056572.Spec : Prop :=
  ∀ n, P13617758666800056572.a n = A303767 n

end A303767

/-! ## A303767.P15687584922288185562

`∑{p}[A303760(n), A112479(#)]`
-/

namespace A303767.P15687584922288185562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A112479 p

end

end A303767.P15687584922288185562

namespace A303767

/-- `∑{p}[A303760(n), A112479(#)]` -/
def P15687584922288185562.Spec : Prop :=
  ∀ n, P15687584922288185562.a n = A303767 n

end A303767

/-! ## A303767.P1696616516694216303

`∑{p}[A303760(n), A156552(#)]`
-/

namespace A303767.P1696616516694216303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A303767.P1696616516694216303

namespace A303767

/-- `∑{p}[A303760(n), A156552(#)]` -/
def P1696616516694216303.Spec : Prop :=
  ∀ n, P1696616516694216303.a n = A303767 n

end A303767

/-! ## A303767.P5373619888642290149

`∑{p}[A303760(n), A162474(#)]`
-/

namespace A303767.P5373619888642290149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A162474 p

end

end A303767.P5373619888642290149

namespace A303767

/-- `∑{p}[A303760(n), A162474(#)]` -/
def P5373619888642290149.Spec : Prop :=
  ∀ n, P5373619888642290149.a n = A303767 n

end A303767

/-! ## A303767.P13093186669746329140

`∑{p}[A303760(n), A233249(#)]`
-/

namespace A303767.P13093186669746329140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A303767.P13093186669746329140

namespace A303767

/-- `∑{p}[A303760(n), A233249(#)]` -/
def P13093186669746329140.Spec : Prop :=
  ∀ n, P13093186669746329140.a n = A303767 n

end A303767

/-! ## A303767.P12435667138085042498

`∑{p}[A303760(n), A248663(#)]`
-/

namespace A303767.P12435667138085042498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A303767.P12435667138085042498

namespace A303767

/-- `∑{p}[A303760(n), A248663(#)]` -/
def P12435667138085042498.Spec : Prop :=
  ∀ n, P12435667138085042498.a n = A303767 n

end A303767

/-! ## A303767.P17655122338198309118

`∑{p}[A303760(n), A252754(#)]`
-/

namespace A303767.P17655122338198309118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A252754 p

end

end A303767.P17655122338198309118

namespace A303767

/-- `∑{p}[A303760(n), A252754(#)]` -/
def P17655122338198309118.Spec : Prop :=
  ∀ n, P17655122338198309118.a n = A303767 n

end A303767

/-! ## A303767.P13524613393871918495

`∑{p}[A303760(n), A277333(#)]`
-/

namespace A303767.P13524613393871918495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277333 p

end

end A303767.P13524613393871918495

namespace A303767

/-- `∑{p}[A303760(n), A277333(#)]` -/
def P13524613393871918495.Spec : Prop :=
  ∀ n, P13524613393871918495.a n = A303767 n

end A303767

/-! ## A303767.P2338226714362366764

`∑{p}[A303760(n), A285330(#)]`
-/

namespace A303767.P2338226714362366764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A285330 p

end

end A303767.P2338226714362366764

namespace A303767

/-- `∑{p}[A303760(n), A285330(#)]` -/
def P2338226714362366764.Spec : Prop :=
  ∀ n, P2338226714362366764.a n = A303767 n

end A303767

/-! ## A303767.P15962146235269125333

`∑{p}[A303760(n), A297108(#)]`
-/

namespace A303767.P15962146235269125333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297108 p

end

end A303767.P15962146235269125333

namespace A303767

/-- `∑{p}[A303760(n), A297108(#)]` -/
def P15962146235269125333.Spec : Prop :=
  ∀ n, P15962146235269125333.a n = A303767 n

end A303767

/-! ## A303767.P18425345898775351686

`∑{p}[A303760(n), A331740(#)]`
-/

namespace A303767.P18425345898775351686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A331740 p

end

end A303767.P18425345898775351686

namespace A303767

/-- `∑{p}[A303760(n), A331740(#)]` -/
def P18425345898775351686.Spec : Prop :=
  ∀ n, P18425345898775351686.a n = A303767 n

end A303767

/-! ## A303767.P6320028617825437363

`∑{p}[A303760(n), A334871(#)]`
-/

namespace A303767.P6320028617825437363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A334871 p

end

end A303767.P6320028617825437363

namespace A303767

/-- `∑{p}[A303760(n), A334871(#)]` -/
def P6320028617825437363.Spec : Prop :=
  ∀ n, P6320028617825437363.a n = A303767 n

end A303767

/-!
# A303768: Inverse permutation to A303767.

The programs for A303768, the canonical program `A303768.P18072890022727355273` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303768 has offset 0).

The definition of A303768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303768.P15332948676269631301

`fo[A303767(n)]`
-/

namespace A303768.P15332948676269631301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A303768.P15332948676269631301

namespace A303768

/-- `fo[A303767(n)]` -/
def P15332948676269631301.Spec : Prop :=
  ∀ n, (P15332948676269631301.a n : ℤ) = A303768 n

end A303768

/-! ## A303768.P18072890022727355273

`or(a(n%A053644(n))+1, A053644(n))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A303768

/-- `or(a(n%A053644(n))+1, A053644(n))` -/
def P18072890022727355273.Spec : Prop :=
  ∀ n, P18072890022727355273.a n = A303768 n

theorem P18072890022727355273.correct : P18072890022727355273.Spec := by
  intro n
  simp only [A303768]

end A303768

/-! ## A303768.P16295407165053017496

`A153152(A370791(n))`
-/

namespace A303768.P16295407165053017496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A370791 n).toNat

end

end A303768.P16295407165053017496

namespace A303768

/-- `A153152(A370791(n))` -/
def P16295407165053017496.Spec : Prop :=
  ∀ n, P16295407165053017496.a n = A303768 n

end A303768

/-! ## A303768.P12454788926844959005

`A303772(A052330(n))`
-/

namespace A303768.P12454788926844959005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303772 (A052330 n).toNat

end

end A303768.P12454788926844959005

namespace A303768

/-- `A303772(A052330(n))` -/
def P12454788926844959005.Spec : Prop :=
  ∀ n, P12454788926844959005.a n = A303768 n

end A303768

/-!
# A303769: a(0) = 0, a(n+1) is either the largest number obtained from a(n) by toggling a single 1-bit off (to 0) if no such number is yet in the sequence, otherwise the least number not yet in sequence that can be obtained from a(n) by toggling a single 0-bit on (to 1). In both cases the bit to be toggled is the rightmost possible that results yet an unencountered number.

The programs for A303769, there is no canonical definition to state claims against.
-/

/-! ## A303769.P10110149784099400124

`∑{p}[A303762(n), A048675(#)]`
-/

namespace A303769.P10110149784099400124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A303769.P10110149784099400124

/-! ## A303769.P12765841058619029625

`∑{p}[A303762(n), A048676(#)]`
-/

namespace A303769.P12765841058619029625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p

end

end A303769.P12765841058619029625

/-! ## A303769.P5505128889161019065

`∑{p}[A303762(n), A087207(#)]`
-/

namespace A303769.P5505128889161019065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A303769.P5505128889161019065

/-! ## A303769.P16806443046372160301

`∑{p}[A303762(n), A112479(#)]`
-/

namespace A303769.P16806443046372160301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A112479 p

end

end A303769.P16806443046372160301

/-! ## A303769.P9697993045219723411

`∑{p}[A303762(n), A156552(#)]`
-/

namespace A303769.P9697993045219723411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A303769.P9697993045219723411

/-! ## A303769.P984488111166622711

`∑{p}[A303762(n), A162474(#)]`
-/

namespace A303769.P984488111166622711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A162474 p

end

end A303769.P984488111166622711

/-! ## A303769.P4339352335547855548

`∑{p}[A303762(n), A233249(#)]`
-/

namespace A303769.P4339352335547855548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A303769.P4339352335547855548

/-! ## A303769.P7404289539207396599

`∑{p}[A303762(n), A248663(#)]`
-/

namespace A303769.P7404289539207396599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A303769.P7404289539207396599

/-! ## A303769.P18360947803841202444

`∑{p}[A303762(n), A252754(#)]`
-/

namespace A303769.P18360947803841202444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A252754 p

end

end A303769.P18360947803841202444

/-! ## A303769.P12840826420336979865

`∑{p}[A303762(n), A277333(#)]`
-/

namespace A303769.P12840826420336979865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277333 p

end

end A303769.P12840826420336979865

/-! ## A303769.P13751104915630627319

`∑{p}[A303762(n), A285330(#)]`
-/

namespace A303769.P13751104915630627319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A285330 p

end

end A303769.P13751104915630627319

/-! ## A303769.P11554898546277700634

`∑{p}[A303762(n), A331740(#)]`
-/

namespace A303769.P11554898546277700634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A331740 p

end

end A303769.P11554898546277700634

/-! ## A303769.P4263406973973744435

`∑{p}[A303762(n), A334871(#)]`
-/

namespace A303769.P4263406973973744435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A334871 p

end

end A303769.P4263406973973744435

/-!
# A303770: Divisor-or-multiple permutation of squarefree numbers: a(n) = A019565(A303773(n)).

The programs for A303770, there is no canonical definition to state claims against.
-/

/-! ## A303770.P18040322910686537346

`A019565(A303773(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A303770.P18040322910686537346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A303773 n).toNat

end

end A303770.P18040322910686537346

/-! ## A303770.P13192064939626207542

`A293442(2^A303773(n))`
-/

namespace A303770.P13192064939626207542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A303773 n : ℤ))).toNat

end

end A303770.P13192064939626207542

/-! ## A303770.P3979038972038550710

`A330919(A134841(∑[n]))`
-/

namespace A303770.P3979038972038550710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330919 (A134841 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A303770.P3979038972038550710

/-!
# A303771: Divisor-or-multiple permutation of natural numbers, "Fermi-Dirac piano played with May code": a(n) = A052330(A303767(n)).

The programs for A303771, there is no canonical definition to state claims against.
-/

/-! ## A303771.P13970965942913304873

`A052330(A303767(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A303771.P13970965942913304873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A303767 n).toNat

end

end A303771.P13970965942913304873

/-! ## A303771.P11312082683832722865

`A052330(A048675(A303760(n)))`
-/

namespace A303771.P11312082683832722865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A048675 (A303760 n).toNat).toNat

end

end A303771.P11312082683832722865

/-! ## A303771.P2771703337058797363

`A302783(A003188(A303767(n))%A283477(n))`
-/

namespace A303771.P2771703337058797363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302783 (Int.tmod (A003188 (A303767 n).toNat) (A283477 n)).toNat

end

end A303771.P2771703337058797363

/-! ## A303771.P14225066879919724230

`A207901(A006068(A303767(n)%A283477(n)))`
-/

namespace A303771.P14225066879919724230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (A006068 (Int.tmod (A303767 n) (A283477 n)).toNat).toNat

end

end A303771.P14225066879919724230

/-! ## A303771.P14167818413090982161

`A302023(A366260(n))`
-/

namespace A303771.P14167818413090982161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302023 (A366260 n).toNat

end

end A303771.P14167818413090982161

/-! ## A303771.P6373008170859761268

`∏{p}[A303760(n), A302023(#)]`
-/

namespace A303771.P6373008170859761268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A302023 p

end

end A303771.P6373008170859761268

/-!
# A303772: Inverse of A303771.

The programs for A303772, there is no canonical definition to state claims against.
-/

/-! ## A303772.P3222345656988633170

`A303768(A052331(n+1))`
-/

namespace A303772.P3222345656988633170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303768 (A052331 (n + 1)).toNat

end

end A303772.P3222345656988633170

/-! ## A303772.P3897986129236027668

`fo[A303771(n)-1]`
-/

namespace A303772.P3897986129236027668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303771 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A303772.P3897986129236027668

/-!
# A303773: Permutation of nonnegative integers constructed with a greedy algorithm producing either-subset-or-superset-mask type of walk in binary lattice (see comments for the exact definition).

The programs for A303773, there is no canonical definition to state claims against.
-/

/-! ## A303773.P16590892978422229724

`fo[A303774(n)]`
-/

namespace A303773.P16590892978422229724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303774 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A303773.P16590892978422229724

/-! ## A303773.P3255249300999774978

`∑{p}[A303770(n), A048675(#)]`
-/

namespace A303773.P3255249300999774978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A303773.P3255249300999774978

/-! ## A303773.P9628286873327254659

`∑{p}[A303770(n), A048676(#)]`
-/

namespace A303773.P9628286873327254659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p

end

end A303773.P9628286873327254659

/-! ## A303773.P8281877478224042731

`∑{p}[A303770(n), A087207(#)]`
-/

namespace A303773.P8281877478224042731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A303773.P8281877478224042731

/-! ## A303773.P11253720693688176175

`∑{p}[A303770(n), A112479(#)]`
-/

namespace A303773.P11253720693688176175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A112479 p

end

end A303773.P11253720693688176175

/-! ## A303773.P5172030178355419234

`∑{p}[A303770(n), A156552(#)]`
-/

namespace A303773.P5172030178355419234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A303773.P5172030178355419234

/-! ## A303773.P7269717648443025488

`∑{p}[A303770(n), A162474(#)]`
-/

namespace A303773.P7269717648443025488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A162474 p

end

end A303773.P7269717648443025488

/-! ## A303773.P2092805957675477844

`∑{p}[A303770(n), A233249(#)]`
-/

namespace A303773.P2092805957675477844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A303773.P2092805957675477844

/-! ## A303773.P13224669164121402034

`∑{p}[A303770(n), A248663(#)]`
-/

namespace A303773.P13224669164121402034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A303773.P13224669164121402034

/-! ## A303773.P14764995730320507587

`∑{p}[A303770(n), A277333(#)]`
-/

namespace A303773.P14764995730320507587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277333 p

end

end A303773.P14764995730320507587

/-! ## A303773.P510697265091023645

`∑{p}[A303770(n), A285330(#)]`
-/

namespace A303773.P510697265091023645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A285330 p

end

end A303773.P510697265091023645

/-! ## A303773.P2881507945446443878

`∑{p}[A303770(n), A297108(#)]`
-/

namespace A303773.P2881507945446443878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297108 p

end

end A303773.P2881507945446443878

/-!
# A303774: Inverse permutation to A303773.

The programs for A303774, there is no canonical definition to state claims against.
-/

/-! ## A303774.P16848203558174394367

`fo[A303773(n)]`
-/

namespace A303774.P16848203558174394367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A303774.P16848203558174394367

/-!
# A303775: Permutation of nonnegative integers: Minimal subset/superset bitmask transform of Blue code, A193231.

The programs for A303775, there is no canonical definition to state claims against.
-/

/-! ## A303775.P15314636541185704250

`∑{p}[A303778(n), A048675(#)]`
-/

namespace A303775.P15314636541185704250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A303775.P15314636541185704250

/-! ## A303775.P3450064345355367322

`∑{p}[A303778(n), A048676(#)]`
-/

namespace A303775.P3450064345355367322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p

end

end A303775.P3450064345355367322

/-! ## A303775.P5045230743035158297

`∑{p}[A303778(n), A087207(#)]`
-/

namespace A303775.P5045230743035158297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A303775.P5045230743035158297

/-! ## A303775.P4727564325723713643

`∑{p}[A303778(n), A112479(#)]`
-/

namespace A303775.P4727564325723713643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A112479 p

end

end A303775.P4727564325723713643

/-! ## A303775.P3249043579740226290

`∑{p}[A303778(n), A156552(#)]`
-/

namespace A303775.P3249043579740226290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A303775.P3249043579740226290

/-! ## A303775.P2394541511695643947

`∑{p}[A303778(n), A162474(#)]`
-/

namespace A303775.P2394541511695643947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A162474 p

end

end A303775.P2394541511695643947

/-! ## A303775.P17382933746581700306

`∑{p}[A303778(n), A233249(#)]`
-/

namespace A303775.P17382933746581700306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A303775.P17382933746581700306

/-! ## A303775.P5761224210640038102

`∑{p}[A303778(n), A248663(#)]`
-/

namespace A303775.P5761224210640038102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A303775.P5761224210640038102

/-! ## A303775.P7392807013678785945

`∑{p}[A303778(n), A277333(#)]`
-/

namespace A303775.P7392807013678785945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277333 p

end

end A303775.P7392807013678785945

/-! ## A303775.P15472875726092023053

`∑{p}[A303778(n), A331740(#)]`
-/

namespace A303775.P15472875726092023053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A331740 p

end

end A303775.P15472875726092023053

/-! ## A303775.P14320955176626232877

`∑{p}[A303778(n), A335426(#)]`
-/

namespace A303775.P14320955176626232877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A335426 p

end

end A303775.P14320955176626232877

/-!
# A303776: Inverse permutation to A303775.

The programs for A303776, there is no canonical definition to state claims against.
-/

/-! ## A303776.P6735732742357356604

`fo[A303775(n)]`
-/

namespace A303776.P6735732742357356604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303775 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A303776.P6735732742357356604

/-!
# A303777: Ordinal transform of A081373; ordinal transform of {the ordinal transform of A000010}.

The programs for A303777, there is no canonical definition to state claims against.
-/

/-! ## A303777.P5123403407422060748

`A064839(A101296(n+1))*A241919(A233583(n+2)^A003557(n+2))`
-/

namespace A303777.P5123403407422060748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A101296 (n + 1)).toNat * A241919 (SequenceMachineLib.roundAway ((A233583 (n + 2) : ℚ) ^ (A003557 (n + 2) : ℤ))).toNat

end

end A303777.P5123403407422060748

/-! ## A303777.P1347418444339961066

`A086161(n+2)-A191372(A097331(n))`
-/

namespace A303777.P1347418444339961066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (n + 2) - A191372 (A097331 n).toNat

end

end A303777.P1347418444339961066

/-! ## A303777.P15572975678253380264

`A286610(n+1)-A025439(A046464(n+1))`
-/

namespace A303777.P15572975678253380264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286610 (n + 1) - A025439 (A046464 (n + 1)).toNat

end

end A303777.P15572975678253380264

/-! ## A303777.P13784495364956846875

`A002376(A304117(n+1)^A302044(n+1))`
-/

namespace A303777.P13784495364956846875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (SequenceMachineLib.roundAway ((A304117 (n + 1) : ℚ) ^ (A302044 (n + 1) : ℤ))).toNat

end

end A303777.P13784495364956846875

/-! ## A303777.P492809450117547593

`gcd(A056239(n+1), A333755(A250277(n+1)))`
-/

namespace A303777.P492809450117547593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056239 (n + 1)) (A333755 (A250277 (n + 1)).toNat)

end

end A303777.P492809450117547593

/-!
# A303778: Divisor-or-multiple permutation of squarefree numbers: a(n) = A019565(A303775(n)).

The programs for A303778, there is no canonical definition to state claims against.
-/

/-! ## A303778.P11986619172003874477

`A019565(A303775(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A303778.P11986619172003874477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A303775 n).toNat

end

end A303778.P11986619172003874477

/-! ## A303778.P1659462613068655329

`A339809(A303775(n))%A060103(n)+1`
-/

namespace A303778.P1659462613068655329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339809 (A303775 n).toNat) (A060103 n) + 1

end

end A303778.P1659462613068655329

/-! ## A303778.P7360928535795952679

`A303770(A303774(A303775(A303774(A303773(n)))))`
-/

namespace A303778.P7360928535795952679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 (A303774 (A303775 (A303774 (A303773 n).toNat).toNat).toNat).toNat

end

end A303778.P7360928535795952679

/-!
# A303780: Binary weight of A303775(n).

The programs for A303780, there is no canonical definition to state claims against.
-/

/-! ## A303780.P7068761141640741498

`A000120(A303775(n))`
-/

namespace A303780.P7068761141640741498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A303775 n).toNat

end

end A303780.P7068761141640741498

/-! ## A303780.P9018039907616926780

`A001222(A278222(2*A303775(n)))`
-/

namespace A303780.P9018039907616926780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 (2 * A303775 n).toNat).toNat

end

end A303780.P9018039907616926780

/-! ## A303780.P7644030640525851415

`A001222(A005940(A303775(n)+1))`
-/

namespace A303780.P7644030640525851415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005940 (A303775 n + 1).toNat).toNat

end

end A303780.P7644030640525851415

/-! ## A303780.P7758678260217169132

`A001222(A278222(A303775(n))²)/2`
-/

namespace A303780.P7758678260217169132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A278222 (A303775 n).toNat ^ 2).toNat : ℚ) / 2

end

end A303780.P7758678260217169132

/-! ## A303780.P5587151064947782447

`∑{e}[A303778(n), #]`
-/

namespace A303780.P5587151064947782447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A303780.P5587151064947782447

/-! ## A303780.P13046976021858596085

`∑{p}[A303778(n), A001221(#)]`
-/

namespace A303780.P13046976021858596085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A303780.P13046976021858596085

/-! ## A303780.P17506102775503108463

`∑{p}[A303778(n), A001222(#)]`
-/

namespace A303780.P17506102775503108463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A303780.P17506102775503108463

/-! ## A303780.P4330275857120773625

`∑{p}[A303778(n), A014673(#)]`
-/

namespace A303780.P4330275857120773625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014673 p

end

end A303780.P4330275857120773625

/-! ## A303780.P17770056362623218990

`∑{p}[A303778(n), A225656(#)]`
-/

namespace A303780.P17770056362623218990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A225656 p

end

end A303780.P17770056362623218990

/-! ## A303780.P187383693511704230

`∑{p}[A303778(n), A002260(A000124(#))]`
-/

namespace A303780.P187383693511704230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002260 (A000124 p).toNat

end

end A303780.P187383693511704230

/-! ## A303780.P155195146488702402

`∑{p}[A303778(n), A303778(A248663(#²))]`
-/

namespace A303780.P155195146488702402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A303778 (A248663 (p ^ 2)).toNat

end

end A303780.P155195146488702402

/-! ## A303780.P7114044983404558004

`∑{p}[A303778(n), A303778(A277333(#²))]`
-/

namespace A303780.P7114044983404558004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A303778 (A277333 (p ^ 2)).toNat

end

end A303780.P7114044983404558004

/-! ## A303780.P11871187272579616535

`∑{p}[A303778(n), A303778(A335426(#²))]`
-/

namespace A303780.P11871187272579616535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A303778 (A335426 (p ^ 2)).toNat

end

end A303780.P11871187272579616535

/-! ## A303780.P11830670957476198152

`A001221(A303778(n))`
-/

namespace A303780.P11830670957476198152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A303778 n).toNat

end

end A303780.P11830670957476198152

/-!
# A303781: a(2) = 1; for n <> 2, a(n) = gcd(n, A000005(n)), where A000005(n) = number of divisors of n.

The programs for A303781, the canonical program `A303781.P6125466833604398313` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303781 has offset 1).

The definition of A303781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303781.P10320428016948061984

`gcd(char[1]+1+n, ∏{e}[n+1, #+1])`
-/

namespace A303781.P10320428016948061984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A303781.P10320428016948061984

namespace A303781

/-- `gcd(char[1]+1+n, ∏{e}[n+1, #+1])` -/
def P10320428016948061984.Spec : Prop :=
  ∀ n, (P10320428016948061984.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P13684601400291414944

`gcd(1+char[1]+n, ∑{d}[n+1, gcd(n, #)])`
-/

namespace A303781.P13684601400291414944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (1 + ((if ∃ j, f1 j = n then 1 else 0) + n)) (∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d)

end

end A303781.P13684601400291414944

namespace A303781

/-- `gcd(1+char[1]+n, ∑{d}[n+1, gcd(n, #)])` -/
def P13684601400291414944.Spec : Prop :=
  ∀ n, (P13684601400291414944.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P5245781392036772553

`A009191(char[1]+1+n)`
-/

namespace A303781.P5245781392036772553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A303781.P5245781392036772553

namespace A303781

/-- `A009191(char[1]+1+n)` -/
def P5245781392036772553.Spec : Prop :=
  ∀ n, P5245781392036772553.a n = A303781 (n + 1)

end A303781

/-! ## A303781.P10901672726509824965

`A009191(n+1)-C(C(2, n), 2)`
-/

namespace A303781.P10901672726509824965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (n + 1) - (Nat.choose (Nat.choose 2 n) 2 : ℤ)

end

end A303781.P10901672726509824965

namespace A303781

/-- `A009191(n+1)-C(C(2, n), 2)` -/
def P10901672726509824965.Spec : Prop :=
  ∀ n, P10901672726509824965.a n = A303781 (n + 1)

end A303781

/-! ## A303781.P1443221357431586662

`gcd(char[1]+1+n, A000005(n+1))`
-/

namespace A303781.P1443221357431586662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((if ∃ j, f1 j = n then 1 else 0) + 1 + n : ℕ) : ℤ) (A000005 (n + 1))

end

end A303781.P1443221357431586662

namespace A303781

/-- `gcd(char[1]+1+n, A000005(n+1))` -/
def P1443221357431586662.Spec : Prop :=
  ∀ n, (P1443221357431586662.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P16786485457490152066

`A159075(n)+A009191(n+1)`
-/

namespace A303781.P16786485457490152066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A009191 (n + 1)

end

end A303781.P16786485457490152066

namespace A303781

/-- `A159075(n)+A009191(n+1)` -/
def P16786485457490152066.Spec : Prop :=
  ∀ n, P16786485457490152066.a n = A303781 (n + 1)

end A303781

/-! ## A303781.P6125466833604398313

`A009191(n+1)-A063524(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A303781

/-- `A009191(n+1)-A063524(n)` -/
def P6125466833604398313.Spec : Prop :=
  ∀ n, P6125466833604398313.a n = A303781 (n + 1)

theorem P6125466833604398313.correct : P6125466833604398313.Spec := by
  intro n
  simp only [A303781, Nat.add_sub_cancel]

end A303781

/-! ## A303781.P11544057002159907361

`A009191(n+1)/A373565(n)`
-/

namespace A303781.P11544057002159907361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009191 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A303781.P11544057002159907361

namespace A303781

/-- `A009191(n+1)/A373565(n)` -/
def P11544057002159907361.Spec : Prop :=
  ∀ n, P11544057002159907361.a n = (A303781 (n + 1) : ℚ)

end A303781

/-! ## A303781.P17662658438277629880

`gcd(A000005(n+1), A153152(n))`
-/

namespace A303781.P17662658438277629880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A153152 n)

end

end A303781.P17662658438277629880

namespace A303781

/-- `gcd(A000005(n+1), A153152(n))` -/
def P17662658438277629880.Spec : Prop :=
  ∀ n, (P17662658438277629880.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P4568769498959010982

`gcd(A085926(n), A306671(n+1))`
-/

namespace A303781.P4568769498959010982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085926 n) (A306671 (n + 1))

end

end A303781.P4568769498959010982

namespace A303781

/-- `gcd(A085926(n), A306671(n+1))` -/
def P4568769498959010982.Spec : Prop :=
  ∀ n, (P4568769498959010982.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P8772566069415764489

`gcd(A326178(n), A345741(n+1))`
-/

namespace A303781.P8772566069415764489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326178 n) (A345741 (n + 1))

end

end A303781.P8772566069415764489

namespace A303781

/-- `gcd(A326178(n), A345741(n+1))` -/
def P8772566069415764489.Spec : Prop :=
  ∀ n, (P8772566069415764489.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P1157928980714737677

`gcd(A005451(n+1), A049820(n+1))`
-/

namespace A303781.P1157928980714737677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005451 (n + 1)) (A049820 (n + 1))

end

end A303781.P1157928980714737677

namespace A303781

/-- `gcd(A005451(n+1), A049820(n+1))` -/
def P1157928980714737677.Spec : Prop :=
  ∀ n, (P1157928980714737677.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P8249446013723127418

`gcd(A014683(n+1), A062249(n+1))`
-/

namespace A303781.P8249446013723127418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014683 (n + 1)) (A062249 (n + 1))

end

end A303781.P8249446013723127418

namespace A303781

/-- `gcd(A014683(n+1), A062249(n+1))` -/
def P8249446013723127418.Spec : Prop :=
  ∀ n, (P8249446013723127418.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P8646526549331620865

`gcd(A093007(n+1), A140482(n+1))`
-/

namespace A303781.P8646526549331620865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093007 (n + 1)) (A140482 (n + 1))

end

end A303781.P8646526549331620865

namespace A303781

/-- `gcd(A093007(n+1), A140482(n+1))` -/
def P8646526549331620865.Spec : Prop :=
  ∀ n, (P8646526549331620865.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P9620277653153706893

`gcd(A065998(n+1), A171526(n+1))`
-/

namespace A303781.P9620277653153706893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065998 (n + 1)) (A171526 (n + 1))

end

end A303781.P9620277653153706893

namespace A303781

/-- `gcd(A065998(n+1), A171526(n+1))` -/
def P9620277653153706893.Spec : Prop :=
  ∀ n, (P9620277653153706893.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P1367345318394160657

`gcd(n+1, A306671(A014685(n+1)))`
-/

namespace A303781.P1367345318394160657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A306671 (A014685 (n + 1)).toNat)

end

end A303781.P1367345318394160657

namespace A303781

/-- `gcd(n+1, A306671(A014685(n+1)))` -/
def P1367345318394160657.Spec : Prop :=
  ∀ n, (P1367345318394160657.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P1813615404729881376

`gcd(A329484(n+1), A348776(n+1))`
-/

namespace A303781.P1813615404729881376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A329484 (n + 1)) (A348776 (n + 1))

end

end A303781.P1813615404729881376

namespace A303781

/-- `gcd(A329484(n+1), A348776(n+1))` -/
def P1813615404729881376.Spec : Prop :=
  ∀ n, (P1813615404729881376.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P7485869739315284920

`min(A009191(n+1), A062968(n+1))`
-/

namespace A303781.P7485869739315284920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A009191 (n + 1)) (A062968 (n + 1))

end

end A303781.P7485869739315284920

namespace A303781

/-- `min(A009191(n+1), A062968(n+1))` -/
def P7485869739315284920.Spec : Prop :=
  ∀ n, P7485869739315284920.a n = A303781 (n + 1)

end A303781

/-! ## A303781.P3161925768939428261

`gcd(n*A000005(n+1), (n+1)/A014963(n+1))`
-/

namespace A303781.P3161925768939428261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A000005 (n + 1)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ)))

end

end A303781.P3161925768939428261

namespace A303781

/-- `gcd(n*A000005(n+1), (n+1)/A014963(n+1))` -/
def P3161925768939428261.Spec : Prop :=
  ∀ n, (P3161925768939428261.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P3072052957506872574

`A009191(n+1)-A129950(A009191(n+1))*A129950(n+1)`
-/

namespace A303781.P3072052957506872574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (n + 1) - A129950 (A009191 (n + 1)).toNat * A129950 (n + 1)

end

end A303781.P3072052957506872574

namespace A303781

/-- `A009191(n+1)-A129950(A009191(n+1))*A129950(n+1)` -/
def P3072052957506872574.Spec : Prop :=
  ∀ n, P3072052957506872574.a n = A303781 (n + 1)

end A303781

/-!
# A303784: Lexicographically earliest sequence of distinct terms such that what emerges from the mask is even (see the Comment section for the mask explanation).

The programs for A303784, there is no canonical definition to state claims against.
-/

/-! ## A303784.P4243509651668490892

`A007877(A080663(3*n+4))*A168230(n+3)`
-/

namespace A303784.P4243509651668490892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A080663 (3 * n + 4)).toNat * A168230 (n + 3)

end

end A303784.P4243509651668490892

/-! ## A303784.P7957585820895100604

`A007913(A000079(n))*A168230(n+3)`
-/

namespace A303784.P7957585820895100604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000079 n).toNat * A168230 (n + 3)

end

end A303784.P7957585820895100604

/-! ## A303784.P12210050255849076995

`A303785(n+1)-A000035(A007088(n))`
-/

namespace A303784.P12210050255849076995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303785 (n + 1) - A000035 (A007088 n).toNat

end

end A303784.P12210050255849076995

/-! ## A303784.P15718849659299440110

`A303785(n+1)-A140344(A002620(n+2))`
-/

namespace A303784.P15718849659299440110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303785 (n + 1) - A140344 (A002620 (n + 2)).toNat

end

end A303784.P15718849659299440110

/-! ## A303784.P8102232454488306575

`A303785(n+1)-A000035(A115005(n+1))`
-/

namespace A303784.P8102232454488306575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303785 (n + 1) - A000035 (A115005 (n + 1)).toNat

end

end A303784.P8102232454488306575

/-!
# A303785: Lexicographically earliest sequence of distinct terms such that what emerges from the mask is odd (see the Comment section for the mask explanation).

The programs for A303785, there is no canonical definition to state claims against.
-/

/-! ## A303785.P10907088814340320178

`A122620(A303848(n+1))`
-/

namespace A303785.P10907088814340320178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122620 (A303848 (n + 1)).toNat

end

end A303785.P10907088814340320178

/-! ## A303785.P7541752337362369161

`A331009(A318486(n+1))`
-/

namespace A303785.P7541752337362369161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331009 (A318486 (n + 1)).toNat

end

end A303785.P7541752337362369161

/-! ## A303785.P17292124434382491698

`A142150(A004438(n+1))+A004438(A303848(n+1))`
-/

namespace A303785.P17292124434382491698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A004438 (n + 1)).toNat + A004438 (A303848 (n + 1)).toNat

end

end A303785.P17292124434382491698

/-! ## A303785.P1550722334551037055

`A032741(A038754(n))+A010691(n)`
-/

namespace A303785.P1550722334551037055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A038754 n).toNat + A010691 n

end

end A303785.P1550722334551037055

/-! ## A303785.P384724610508276989

`A026741(n)+A010691(A007088(n))`
-/

namespace A303785.P384724610508276989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + A010691 (A007088 n).toNat

end

end A303785.P384724610508276989

/-!
# A303786: Lexicographically earliest sequence of distinct terms such that what emerges from the mask rebuilds the sequence itself, term by term (see the Comment section for the mask explanation).

The programs for A303786, there is no canonical definition to state claims against.
-/

/-! ## A303786.P4830436851623079844

`∑[10^(2^n-1)]`
-/

namespace A303786.P4830436851623079844
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303786.P4830436851623079844

/-! ## A303786.P1663338513054034252

`∑[10*a(n-1)²]` with `a(0)=1`
-/

namespace A303786.P1663338513054034252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303786.P1663338513054034252

/-! ## A303786.P2379538284367215182

`∑[a(n-1)²]/10` with `a(0)=10`
-/

namespace A303786.P2379538284367215182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 10

end

end A303786.P2379538284367215182

/-!
# A303787: a(n) = Sum_{i=0..m} d(i)*4^i, where Sum_{i=0..m} d(i)*5^i is the base-5 representation of n.

The programs for A303787, there is no canonical definition to state claims against.
-/

/-! ## A303787.P9093632804911474349

`A028899(A007091(n))`
-/

namespace A303787.P9093632804911474349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A007091 n).toNat

end

end A303787.P9093632804911474349

/-!
# A303788: a(n) = Sum_{i=0..m} d(i)*5^i, where Sum_{i=0..m} d(i)*6^i is the base-6 representation of n.

The programs for A303788, there is no canonical definition to state claims against.
-/

/-! ## A303788.P13349929620447122297

`A028900(A007092(n))`
-/

namespace A303788.P13349929620447122297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A007092 n).toNat

end

end A303788.P13349929620447122297

/-!
# A303789: a(n) = Sum_{i=0..m} d(i)*6^i, where Sum_{i=0..m} d(i)*7^i is the base-7 representation of n.

The programs for A303789, the canonical program `A303789.P8809668206282545156` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303789 has offset 0).

The definition of A303789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303789.P8809668206282545156

`A028901(A007093(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A303789

/-- `A028901(A007093(n))` -/
def P8809668206282545156.Spec : Prop :=
  ∀ n, P8809668206282545156.a n = A303789 n

theorem P8809668206282545156.correct : P8809668206282545156.Spec := by
  intro n
  simp only [A303789]

end A303789

/-! ## A303789.P2116455570626887572

`A145569(n)`
-/

namespace A303789.P2116455570626887572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 n

end

end A303789.P2116455570626887572

namespace A303789

/-- `A145569(n)` -/
def P2116455570626887572.Spec : Prop :=
  ∀ n, P2116455570626887572.a n = A303789 n

end A303789

/-! ## A303789.P16338480807774627114

`∑[char[A226293(n+1)]]`
-/

namespace A303789.P16338480807774627114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226293 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303789.P16338480807774627114

namespace A303789

/-- `∑[char[A226293(n+1)]]` -/
def P16338480807774627114.Spec : Prop :=
  ∀ n, (P16338480807774627114.a n : ℤ) = A303789 n

end A303789

/-! ## A303789.P4757220973766273468

`∑[A070472((3*n)²)]`
-/

namespace A303789.P4757220973766273468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070472 ((3 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303789.P4757220973766273468

namespace A303789

/-- `∑[A070472((3*n)²)]` -/
def P4757220973766273468.Spec : Prop :=
  ∀ n, P4757220973766273468.a n = A303789 n

end A303789

/-! ## A303789.P11736644934427843013

`∑[A109720((3*n)²)]`
-/

namespace A303789.P11736644934427843013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 ((3 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303789.P11736644934427843013

namespace A303789

/-- `∑[A109720((3*n)²)]` -/
def P11736644934427843013.Spec : Prop :=
  ∀ n, P11736644934427843013.a n = A303789 n

end A303789

/-!
# A303793: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303793, there is no canonical definition to state claims against.
-/

/-! ## A303793.P7420928426213671174

`A303800(∑[4*n]+1)`
-/

namespace A303793.P7420928426213671174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303793.P7420928426213671174

/-!
# A303794: Number of nX2 0..1 arrays with every element unequal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303794, the canonical program `A303794.P1791398509874808126` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303794 has offset 1).

The definition of A303794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303794.P1791398509874808126

`2*a(n-1)+8*a(n-3)-8*a(n-4)-8*a(n-5)` with `a(0)=2, a(1)=4, a(2)=12, a(3)=24, a(4)=64, a(5)=184`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A303794

/-- `2*a(n-1)+8*a(n-3)-8*a(n-4)-8*a(n-5)` -/
def P1791398509874808126.Spec : Prop :=
  ∀ n, P1791398509874808126.a n = A303794 (n + 1)

theorem P1791398509874808126.correct : P1791398509874808126.Spec := by
  intro n
  simp only [A303794, Nat.add_sub_cancel]

end A303794

/-! ## A303794.P673414913490700818

`A303800(∑[n+1]+2)`
-/

namespace A303794.P673414913490700818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A303794.P673414913490700818

namespace A303794

/-- `A303800(∑[n+1]+2)` -/
def P673414913490700818.Spec : Prop :=
  ∀ n, P673414913490700818.a n = A303794 (n + 1)

end A303794

/-! ## A303794.P15128978388951091725

`A305245(∑[n+1]+2)`
-/

namespace A303794.P15128978388951091725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A303794.P15128978388951091725

namespace A303794

/-- `A305245(∑[n+1]+2)` -/
def P15128978388951091725.Spec : Prop :=
  ∀ n, P15128978388951091725.a n = A303794 (n + 1)

end A303794

/-! ## A303794.P17322736004930234422

`A304848(∑[n+1]+2)`
-/

namespace A303794.P17322736004930234422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A303794.P17322736004930234422

namespace A303794

/-- `A304848(∑[n+1]+2)` -/
def P17322736004930234422.Spec : Prop :=
  ∀ n, P17322736004930234422.a n = A303794 (n + 1)

end A303794

/-! ## A303794.P14119070780722403781

`A316545(∑[n+1]+2)`
-/

namespace A303794.P14119070780722403781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A303794.P14119070780722403781

namespace A303794

/-- `A316545(∑[n+1]+2)` -/
def P14119070780722403781.Spec : Prop :=
  ∀ n, P14119070780722403781.a n = A303794 (n + 1)

end A303794

/-!
# A303795: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303795, there is no canonical definition to state claims against.
-/

/-! ## A303795.P11947059675828763360

`A303800(∑[n+2]+4)`
-/

namespace A303795.P11947059675828763360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303795.P11947059675828763360

/-!
# A303796: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303796, there is no canonical definition to state claims against.
-/

/-! ## A303796.P9593604943043246379

`A303800(∑[n+3]+7)`
-/

namespace A303796.P9593604943043246379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303796.P9593604943043246379

/-!
# A303797: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303797, there is no canonical definition to state claims against.
-/

/-! ## A303797.P5823270610699128675

`A303800(∑[n+4]+11)`
-/

namespace A303797.P5823270610699128675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A303797.P5823270610699128675

/-!
# A303798: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303798, there is no canonical definition to state claims against.
-/

/-! ## A303798.P18224209353496431822

`A303800(∑[n+5]+16)`
-/

namespace A303798.P18224209353496431822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A303798.P18224209353496431822

/-!
# A303799: Number of n X 7 0..1 arrays with every element unequal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303799, there is no canonical definition to state claims against.
-/

/-! ## A303799.P13631079337096849587

`A303800(A374008(n+1))`
-/

namespace A303799.P13631079337096849587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (A374008 (n + 1)).toNat

end

end A303799.P13631079337096849587

