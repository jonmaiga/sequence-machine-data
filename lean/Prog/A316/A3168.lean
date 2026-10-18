import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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

/-!
# A316800: Number of nX7 0..1 arrays with every element unequal to 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316800, there is no canonical definition to state claims against.
-/

/-! ## A316800.P162325692593002194

`A316801(A056119(n)+28)`
-/

namespace A316800.P162325692593002194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (A056119 n + 28).toNat

end

end A316800.P162325692593002194

/-! ## A316800.P18137388452762945895

`A316801(eq[11, A066657(n)])`
-/

namespace A316800.P18137388452762945895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316800.P18137388452762945895

/-! ## A316800.P2405468271348229568

`A316801(A167614(n+5)+4)`
-/

namespace A316800.P2405468271348229568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (A167614 (n + 5) + 4).toNat

end

end A316800.P2405468271348229568

/-! ## A316800.P10024873900914005984

`A316801(A000217(n+6)+7)`
-/

namespace A316800.P10024873900914005984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (A000217 (n + 6) + 7).toNat

end

end A316800.P10024873900914005984

/-! ## A316800.P16599083603260381389

`A316801(eq[8, A131818(n+1)])`
-/

namespace A316800.P16599083603260381389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316800.P16599083603260381389

/-!
# A316802: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A316802, there is no canonical definition to state claims against.
-/

/-! ## A316802.P1047486653524377977

`A316808(∑[4*n]+1)`
-/

namespace A316802.P1047486653524377977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316802.P1047486653524377977

/-! ## A316802.P6760511470772452181

`gcd(A055641(n), A316808(A001844(n)))`
-/

namespace A316802.P6760511470772452181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055641 n) (A316808 (A001844 n).toNat)

end

end A316802.P6760511470772452181

/-! ## A316802.P4262695689157649445

`lcm(A245477(n), A316808(A001844(n)))`
-/

namespace A316802.P4262695689157649445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A245477 n) (A316808 (A001844 n).toNat)

end

end A316802.P4262695689157649445

/-! ## A316802.P15955950823714497480

`A316808(A001844(n))+A044941(n+1)`
-/

namespace A316802.P15955950823714497480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A001844 n).toNat + A044941 (n + 1)

end

end A316802.P15955950823714497480

/-! ## A316802.P16614566273261787767

`A000045(A000032((n%2)^n))*A316808(A001844(n))`
-/

namespace A316802.P16614566273261787767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000032 ((n % 2) ^ n)).toNat * A316808 (A001844 n).toNat

end

end A316802.P16614566273261787767

/-!
# A316803: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A316803, there is no canonical definition to state claims against.
-/

/-! ## A316803.P13939549321836889519

`A316808(∑[n+2]+4)`
-/

namespace A316803.P13939549321836889519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316803.P13939549321836889519

/-! ## A316803.P6901216358752725843

`lcm(A033999(n), A316808(A167614(n+1)))`
-/

namespace A316803.P6901216358752725843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A316808 (A167614 (n + 1)).toNat)

end

end A316803.P6901216358752725843

/-! ## A316803.P9649488402360457286

`or(A316808(A167614(n+1)), A316867(n))`
-/

namespace A316803.P9649488402360457286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A316808 (A167614 (n + 1)).toNat) (A316867 n)

end

end A316803.P9649488402360457286

/-! ## A316803.P2525457400883942232

`A316808(A167614(n+1))%A265216(n+1)`
-/

namespace A316803.P2525457400883942232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316808 (A167614 (n + 1)).toNat) (A265216 (n + 1))

end

end A316803.P2525457400883942232

/-! ## A316803.P3038530163674300266

`or(A044941(n+1), A316808(A167614(n+1)))`
-/

namespace A316803.P3038530163674300266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044941 (n + 1)) (A316808 (A167614 (n + 1)).toNat)

end

end A316803.P3038530163674300266

/-!
# A316804: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A316804, there is no canonical definition to state claims against.
-/

/-! ## A316804.P7084155698214023530

`A316808(A374004(n+1))`
-/

namespace A316804.P7084155698214023530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A374004 (n + 1)).toNat

end

end A316804.P7084155698214023530

/-! ## A316804.P6243553885667029730

`A316808(A141214(n)+7)`
-/

namespace A316804.P6243553885667029730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A141214 n + 7).toNat

end

end A316804.P6243553885667029730

/-! ## A316804.P4149666670844712143

`A316808(A052905(n)+9)`
-/

namespace A316804.P4149666670844712143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A052905 n + 9).toNat

end

end A316804.P4149666670844712143

/-! ## A316804.P8535224637714982033

`A316808(A055999(n)+10)`
-/

namespace A316804.P8535224637714982033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A055999 n + 10).toNat

end

end A316804.P8535224637714982033

/-! ## A316804.P3760957296841930099

`A316808(A167614(n+2)+1)`
-/

namespace A316804.P3760957296841930099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A167614 (n + 2) + 1).toNat

end

end A316804.P3760957296841930099

/-!
# A316805: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A316805, there is no canonical definition to state claims against.
-/

/-! ## A316805.P9882572872897386422

`A316808(A374005(n+1))`
-/

namespace A316805.P9882572872897386422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A374005 (n + 1)).toNat

end

end A316805.P9882572872897386422

/-! ## A316805.P9787907357919887843

`A316808(A167499(n+3))`
-/

namespace A316805.P9787907357919887843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A167499 (n + 3)).toNat

end

end A316805.P9787907357919887843

/-! ## A316805.P12203033857644094006

`A316808(A008619(Δ[A026046(n+6)]))`
-/

namespace A316805.P12203033857644094006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A008619 (f1 (n + 1) - f1 n).toNat).toNat

end

end A316805.P12203033857644094006

/-! ## A316805.P10389273883303767801

`A316808(A046691(n+3))`
-/

namespace A316805.P10389273883303767801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A046691 (n + 3)).toNat

end

end A316805.P10389273883303767801

/-! ## A316805.P2450507487888790372

`A316808(eq[4, A193592(n)])`
-/

namespace A316805.P2450507487888790372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316805.P2450507487888790372

/-!
# A316806: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A316806, there is no canonical definition to state claims against.
-/

/-! ## A316806.P5049169085584008028

`A316808(A374007(n+1))`
-/

namespace A316806.P5049169085584008028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A374007 (n + 1)).toNat

end

end A316806.P5049169085584008028

/-! ## A316806.P3983891977795603692

`A316808(A000217(n+5)+6)`
-/

namespace A316806.P3983891977795603692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A000217 (n + 5) + 6).toNat

end

end A316806.P3983891977795603692

/-! ## A316806.P16182456591129784088

`A316808(eq[7, A131818(n+1)])`
-/

namespace A316806.P16182456591129784088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316806.P16182456591129784088

/-! ## A316806.P528353355352143712

`A316808(A052905(n+3))`
-/

namespace A316806.P528353355352143712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A052905 (n + 3)).toNat

end

end A316806.P528353355352143712

/-! ## A316806.P16568223373954820230

`A316808(A302537(n)+15)`
-/

namespace A316806.P16568223373954820230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A302537 n + 15).toNat

end

end A316806.P16568223373954820230

/-!
# A316807: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A316807, there is no canonical definition to state claims against.
-/

/-! ## A316807.P13036102455452275403

`A316808(A374008(n+1))`
-/

namespace A316807.P13036102455452275403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A374008 (n + 1)).toNat

end

end A316807.P13036102455452275403

/-! ## A316807.P7757161896334266321

`A316808(A000217(n+6)+7)`
-/

namespace A316807.P7757161896334266321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A000217 (n + 6) + 7).toNat

end

end A316807.P7757161896334266321

/-! ## A316807.P4593670776553204047

`A316808(A027379(n+4)+10)`
-/

namespace A316807.P4593670776553204047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (A027379 (n + 4) + 10).toNat

end

end A316807.P4593670776553204047

/-! ## A316807.P11413853372308757544

`A316808(eq[8, A131818(n+1)])`
-/

namespace A316807.P11413853372308757544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316807.P11413853372308757544

/-! ## A316807.P9835126352395559825

`A316808(eq[4, A219347(n)])`
-/

namespace A316807.P9835126352395559825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316807.P9835126352395559825

/-!
# A316808: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A316808, there is no canonical definition to state claims against.
-/

/-! ## A316808.P12382668098787716904

`A317525(n+1)-A173636(A174545(n))²`
-/

namespace A316808.P12382668098787716904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (n + 1) - A173636 (A174545 n).toNat ^ 2

end

end A316808.P12382668098787716904

/-! ## A316808.P7828618425545545599

`A300182(n+1)-A184616(A317525(n+1))`
-/

namespace A316808.P7828618425545545599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (n + 1) - A184616 (A317525 (n + 1)).toNat

end

end A316808.P7828618425545545599

/-! ## A316808.P10361323811049734313

`A317525(n+1)-A184616(A317517(n+1))`
-/

namespace A316808.P10361323811049734313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317525 (n + 1) - A184616 (A317517 (n + 1)).toNat

end

end A316808.P10361323811049734313

/-! ## A316808.P9764652379839113820

`A300182(n+1)-A184616(A227594(n+1)/2)`
-/

namespace A316808.P9764652379839113820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (n + 1) - A184616 (SequenceMachineLib.roundAway ((A227594 (n + 1) : ℚ) / 2)).toNat

end

end A316808.P9764652379839113820

/-! ## A316808.P5450049833491485768

`A106251(A227594(n+1))-A184616(A300182(n+1))`
-/

namespace A316808.P5450049833491485768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106251 (A227594 (n + 1)).toNat - A184616 (A300182 (n + 1)).toNat

end

end A316808.P5450049833491485768

/-!
# A316809: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316809, there is no canonical definition to state claims against.
-/

/-! ## A316809.P4569318323423221251

`A316815(∑[4*n]+1)`
-/

namespace A316809.P4569318323423221251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316809.P4569318323423221251

/-! ## A316809.P8215667569685622740

`record[A003982(n)*A316815(n+1)]`
-/

namespace A316809.P8215667569685622740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316809.P8215667569685622740

/-! ## A316809.P3631855055790685881

`record[gcd(A037012(n), A316815(n+1))]`
-/

namespace A316809.P3631855055790685881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A316815 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316809.P3631855055790685881

/-! ## A316809.P10295426158958450463

`A316815(A001844(n))+A011730(n)`
-/

namespace A316809.P10295426158958450463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (A001844 n).toNat + A011730 n

end

end A316809.P10295426158958450463

/-! ## A316809.P4597793756413702093

`A316815(A001844(n))+A249733(n)`
-/

namespace A316809.P4597793756413702093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (A001844 n).toNat + A249733 n

end

end A316809.P4597793756413702093

/-!
# A316810: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316810, there is no canonical definition to state claims against.
-/

/-! ## A316810.P7207238568722670917

`A316815(∑[n+2]+4)`
-/

namespace A316810.P7207238568722670917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316810.P7207238568722670917

/-! ## A316810.P4160830127747151134

`A326542(n)+A316815(A167614(n+1))`
-/

namespace A316810.P4160830127747151134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326542 n + A316815 (A167614 (n + 1)).toNat

end

end A316810.P4160830127747151134

/-! ## A316810.P2147924601197339746

`A015526(n)*A316815(A167614(n+1))`
-/

namespace A316810.P2147924601197339746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015526 n * A316815 (A167614 (n + 1)).toNat

end

end A316810.P2147924601197339746

/-! ## A316810.P7177685087644066526

`lcm(A033999(n), A316815(A167614(n+1)))`
-/

namespace A316810.P7177685087644066526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A316815 (A167614 (n + 1)).toNat)

end

end A316810.P7177685087644066526

/-! ## A316810.P14394204007021828864

`or(A316815(A167614(n+1)), A316867(n))`
-/

namespace A316810.P14394204007021828864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A316815 (A167614 (n + 1)).toNat) (A316867 n)

end

end A316810.P14394204007021828864

/-!
# A316811: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316811, there is no canonical definition to state claims against.
-/

/-! ## A316811.P16137659674739592675

`A316815(A374004(n+1))`
-/

namespace A316811.P16137659674739592675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (A374004 (n + 1)).toNat

end

end A316811.P16137659674739592675

/-! ## A316811.P5611183004027093977

`A316815(A052905(n)+9)`
-/

namespace A316811.P5611183004027093977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (A052905 n + 9).toNat

end

end A316811.P5611183004027093977

/-! ## A316811.P14910461972467105501

`A316815(A055999(n)+10)`
-/

namespace A316811.P14910461972467105501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (A055999 n + 10).toNat

end

end A316811.P14910461972467105501

/-! ## A316811.P3091514432536621119

`A316815(A167614(n+2)+1)`
-/

namespace A316811.P3091514432536621119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (A167614 (n + 2) + 1).toNat

end

end A316811.P3091514432536621119

/-! ## A316811.P10107786413678530640

`A316815(Δ[A264443(n)-n²])`
-/

namespace A316811.P10107786413678530640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (f1 (n + 1) - f1 n).toNat

end

end A316811.P10107786413678530640

/-!
# A316812: Number of n X 5 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316812, there is no canonical definition to state claims against.
-/

/-! ## A316812.P15635514135772976596

`A316815(A374005(n+1))`
-/

namespace A316812.P15635514135772976596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (A374005 (n + 1)).toNat

end

end A316812.P15635514135772976596

/-! ## A316812.P6526685152605886028

`A316815(A155212(n)+13)`
-/

namespace A316812.P6526685152605886028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (A155212 n + 13).toNat

end

end A316812.P6526685152605886028

/-! ## A316812.P9471062670113304693

`A316815(A056000(n)+15)`
-/

namespace A316812.P9471062670113304693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (A056000 n + 15).toNat

end

end A316812.P9471062670113304693

/-! ## A316812.P9045976626809379094

`A316815(Δ[A264443(n)])`
-/

namespace A316812.P9045976626809379094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (f1 (n + 1) - f1 n).toNat

end

end A316812.P9045976626809379094

/-! ## A316812.P18231652279935666798

`A316815(A046691(n+3))`
-/

namespace A316812.P18231652279935666798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (A046691 (n + 3)).toNat

end

end A316812.P18231652279935666798

/-!
# A316813: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316813, there is no canonical definition to state claims against.
-/

/-! ## A316813.P17297908640605912347

`A316815(A374007(n+1))`
-/

namespace A316813.P17297908640605912347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (A374007 (n + 1)).toNat

end

end A316813.P17297908640605912347

/-! ## A316813.P13714748604170667786

`A316815(A000217(n+5)+6)`
-/

namespace A316813.P13714748604170667786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (A000217 (n + 5) + 6).toNat

end

end A316813.P13714748604170667786

/-! ## A316813.P9431949753037816253

`A316815(eq[7, A131818(n+1)])`
-/

namespace A316813.P9431949753037816253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316813.P9431949753037816253

/-! ## A316813.P6114111607108847256

`A316815(A052905(n+3))`
-/

namespace A316813.P6114111607108847256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (A052905 (n + 3)).toNat

end

end A316813.P6114111607108847256

/-! ## A316813.P13245419673399482707

`A316815(eq[5, A193592(n)])`
-/

namespace A316813.P13245419673399482707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316813.P13245419673399482707

/-!
# A316814: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316814, there is no canonical definition to state claims against.
-/

/-! ## A316814.P6840682918463725052

`A316815(A374008(n+1))`
-/

namespace A316814.P6840682918463725052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (A374008 (n + 1)).toNat

end

end A316814.P6840682918463725052

/-! ## A316814.P35915967202176195

`A316815(eq[8, A131818(n+1)])`
-/

namespace A316814.P35915967202176195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316814.P35915967202176195

/-! ## A316814.P11352649664869119837

`A316815(eq[4, A219347(n)])`
-/

namespace A316814.P11352649664869119837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316814.P11352649664869119837

/-! ## A316814.P7866222188221977793

`A316815(eq[6, A193592(n)])`
-/

namespace A316814.P7866222188221977793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316814.P7866222188221977793

/-! ## A316814.P1860212582460194105

`A316815(eq[7, A200370(n+1)])`
-/

namespace A316814.P1860212582460194105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316814.P1860212582460194105

/-!
# A316815: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316815, there is no canonical definition to state claims against.
-/

/-! ## A316815.P13547508989565356320

`A317565(n+1)-A321609(A001263(n+1))`
-/

namespace A316815.P13547508989565356320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (n + 1) - A321609 (A001263 (n + 1)).toNat

end

end A316815.P13547508989565356320

/-! ## A316815.P3594746981261294741

`A317565(n+1)-A184616(A300182(n+1))`
-/

namespace A316815.P3594746981261294741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (n + 1) - A184616 (A300182 (n + 1)).toNat

end

end A316815.P3594746981261294741

/-! ## A316815.P17263107807315047075

`A320371(n+1)-A064559(A300182(n+1))²`
-/

namespace A316815.P17263107807315047075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (n + 1) - A064559 (A300182 (n + 1)).toNat ^ 2

end

end A316815.P17263107807315047075

/-!
# A316816: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316816, there is no canonical definition to state claims against.
-/

/-! ## A316816.P15512912461696172113

`A316822(∑[4*n]+1)`
-/

namespace A316816.P15512912461696172113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316816.P15512912461696172113

/-! ## A316816.P11866418240670538300

`record[A003982(n)*A316822(n+1)]`
-/

namespace A316816.P11866418240670538300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316816.P11866418240670538300

/-! ## A316816.P2279904338347893160

`record[and(A185917(n+1), A316822(n+1))]`
-/

namespace A316816.P2279904338347893160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A316822 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316816.P2279904338347893160

/-! ## A316816.P11596700671706169478

`A316822(A001844(n))+A025465(n)`
-/

namespace A316816.P11596700671706169478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (A001844 n).toNat + A025465 n

end

end A316816.P11596700671706169478

/-! ## A316816.P10396663995249188677

`A316822(A001844(n))+A102683(n)`
-/

namespace A316816.P10396663995249188677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (A001844 n).toNat + A102683 n

end

end A316816.P10396663995249188677

/-!
# A316817: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316817, there is no canonical definition to state claims against.
-/

/-! ## A316817.P13041359279502576153

`A316822(∑[n+2]+4)`
-/

namespace A316817.P13041359279502576153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316817.P13041359279502576153

/-! ## A316817.P7106236833067616885

`A316822(A167614(n+1))+A011738(n)`
-/

namespace A316817.P7106236833067616885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (A167614 (n + 1)).toNat + A011738 n

end

end A316817.P7106236833067616885

/-! ## A316817.P1976386174450549069

`A316822(A167614(n+1))+A025444(n)`
-/

namespace A316817.P1976386174450549069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (A167614 (n + 1)).toNat + A025444 n

end

end A316817.P1976386174450549069

/-! ## A316817.P16825116255974272237

`A316822(A167614(n+1))+A185284(n)`
-/

namespace A316817.P16825116255974272237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (A167614 (n + 1)).toNat + A185284 n

end

end A316817.P16825116255974272237

/-! ## A316817.P18226320008891385685

`lcm(A033999(n), A316822(A167614(n+1)))`
-/

namespace A316817.P18226320008891385685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A316822 (A167614 (n + 1)).toNat)

end

end A316817.P18226320008891385685

/-!
# A316818: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316818, there is no canonical definition to state claims against.
-/

/-! ## A316818.P14827843542052531889

`A316822(A374004(n+1))`
-/

namespace A316818.P14827843542052531889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (A374004 (n + 1)).toNat

end

end A316818.P14827843542052531889

/-! ## A316818.P6113797055287485892

`A316822(A141214(n)+7)`
-/

namespace A316818.P6113797055287485892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (A141214 n + 7).toNat

end

end A316818.P6113797055287485892

/-! ## A316818.P12192332630231380070

`A316822(A052905(n)+9)`
-/

namespace A316818.P12192332630231380070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (A052905 n + 9).toNat

end

end A316818.P12192332630231380070

/-! ## A316818.P6162881037220656850

`A316822(A055999(n)+10)`
-/

namespace A316818.P6162881037220656850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (A055999 n + 10).toNat

end

end A316818.P6162881037220656850

/-! ## A316818.P16627208365441175737

`A316822(A167614(n+2)+1)`
-/

namespace A316818.P16627208365441175737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (A167614 (n + 2) + 1).toNat

end

end A316818.P16627208365441175737

/-!
# A316819: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316819, there is no canonical definition to state claims against.
-/

/-! ## A316819.P15454310304726394321

`A316822(A374005(n+1))`
-/

namespace A316819.P15454310304726394321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (A374005 (n + 1)).toNat

end

end A316819.P15454310304726394321

/-! ## A316819.P1658866488516103813

`A316822(A167499(n+3))`
-/

namespace A316819.P1658866488516103813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (A167499 (n + 3)).toNat

end

end A316819.P1658866488516103813

/-! ## A316819.P557434974183084881

`A316822(A155212(n)+13)`
-/

namespace A316819.P557434974183084881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (A155212 n + 13).toNat

end

end A316819.P557434974183084881

/-! ## A316819.P1282178777934522628

`A316822(A051936(n+4)+14)`
-/

namespace A316819.P1282178777934522628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (A051936 (n + 4) + 14).toNat

end

end A316819.P1282178777934522628

/-! ## A316819.P14964552962872478638

`A316822(eq[6, A131818(n+1)])`
-/

namespace A316819.P14964552962872478638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316819.P14964552962872478638

/-!
# A316820: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316820, there is no canonical definition to state claims against.
-/

/-! ## A316820.P12350425206461371413

`A316822(A374007(n+1))`
-/

namespace A316820.P12350425206461371413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (A374007 (n + 1)).toNat

end

end A316820.P12350425206461371413

/-! ## A316820.P18133229295546598573

`A316822(eq[7, A131818(n+1)])`
-/

namespace A316820.P18133229295546598573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316820.P18133229295546598573

/-! ## A316820.P2529585120962552709

`A316822(eq[3, A219347(n)])`
-/

namespace A316820.P2529585120962552709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316820.P2529585120962552709

/-! ## A316820.P16089110456768296118

`A316822(eq[5, A193592(n)])`
-/

namespace A316820.P16089110456768296118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316820.P16089110456768296118

/-! ## A316820.P7086222848355922666

`A316822(eq[16, A057728(n+1)])`
-/

namespace A316820.P7086222848355922666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316820.P7086222848355922666

/-!
# A316821: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316821, there is no canonical definition to state claims against.
-/

/-! ## A316821.P13307580322083221422

`A316822(A374008(n+1))`
-/

namespace A316821.P13307580322083221422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (A374008 (n + 1)).toNat

end

end A316821.P13307580322083221422

/-! ## A316821.P17178957989634257717

`A316822(eq[11, A066657(n)])`
-/

namespace A316821.P17178957989634257717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316821.P17178957989634257717

/-! ## A316821.P8660988198203981165

`A316822(eq[8, A131818(n+1)])`
-/

namespace A316821.P8660988198203981165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316821.P8660988198203981165

/-! ## A316821.P5808758764818521883

`A316822(eq[4, A219347(n)])`
-/

namespace A316821.P5808758764818521883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316821.P5808758764818521883

/-! ## A316821.P15512983086838149407

`A316822(eq[6, A193592(n)])`
-/

namespace A316821.P15512983086838149407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316821.P15512983086838149407

/-!
# A316822: T(n,k) = Number of n X k 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316822, there is no canonical definition to state claims against.
-/

/-! ## A316822.P8018240135772603950

`A317572(n+1)+A016389(A022166(n))`
-/

namespace A316822.P8018240135772603950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (n + 1) + A016389 (A022166 n).toNat

end

end A316822.P8018240135772603950

/-! ## A316822.P17251997742968871001

`A317572(n+1)+A016389(A027336(n))`
-/

namespace A316822.P17251997742968871001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (n + 1) + A016389 (A027336 n).toNat

end

end A316822.P17251997742968871001

/-! ## A316822.P8985772374243076372

`A317572(n+1)+A016389(A176561(n))`
-/

namespace A316822.P8985772374243076372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (n + 1) + A016389 (A176561 n).toNat

end

end A316822.P8985772374243076372

/-! ## A316822.P11459768009472993904

`A317572(n+1)+A178780(A174376(n))`
-/

namespace A316822.P11459768009472993904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (n + 1) + A178780 (A174376 n).toNat

end

end A316822.P11459768009472993904

/-! ## A316822.P11729721629970113837

`A317572(n+1)-A011731(A022171(n))`
-/

namespace A316822.P11729721629970113837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317572 (n + 1) - A011731 (A022171 n).toNat

end

end A316822.P11729721629970113837

/-!
# A316823: Balanced nonary enumeration (or balanced nonary representation) of integers; write n in nonary (base 9) and then replace 5's with (-4)'s, 6's with (-3)'s, 7's with (-2)'s, and 8's with (-1)'s.

The programs for A316823, there is no canonical definition to state claims against.
-/

/-! ## A316823.P12768335469362372134

`A004519(n)-n`
-/

namespace A316823.P12768335469362372134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004519 n - (n : ℤ)

end

end A316823.P12768335469362372134

/-! ## A316823.P2415833178277361194

`A024000(n+1)+A004519(n)`
-/

namespace A316823.P2415833178277361194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 1) + A004519 n

end

end A316823.P2415833178277361194

/-! ## A316823.P14716821058346374367

`A022958(n+2)+A004519(n)`
-/

namespace A316823.P14716821058346374367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (n + 2) + A004519 n

end

end A316823.P14716821058346374367

/-! ## A316823.P15025608180985873832

`A022960(n+4)+A004519(n)`
-/

namespace A316823.P15025608180985873832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022960 (n + 4) + A004519 n

end

end A316823.P15025608180985873832

/-! ## A316823.P4910099860520477778

`A023444(A004519(n))+A022958(n)`
-/

namespace A316823.P4910099860520477778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A004519 n).toNat + A022958 n

end

end A316823.P4910099860520477778

/-! ## A316823.P16730776343653206065

`A023482(A004519(n))+A022996(n)`
-/

namespace A316823.P16730776343653206065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023482 (A004519 n).toNat + A022996 n

end

end A316823.P16730776343653206065

/-! ## A316823.P12621994915098016001

`A024000(n)+A023443(A004519(n))`
-/

namespace A316823.P12621994915098016001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A023443 (A004519 n).toNat

end

end A316823.P12621994915098016001

/-! ## A316823.P18441036034322832340

`A319047(∑[n+4]+2)`
-/

namespace A316823.P18441036034322832340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A316823.P18441036034322832340

/-! ## A316823.P3117328276099290608

`or(char[1], A319047(A046691(n+2)))`
-/

namespace A316823.P3117328276099290608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A319047 (A046691 (n + 2)).toNat)

end

end A316823.P3117328276099290608

/-! ## A316823.P7242162566187159373

`A319047(A155212(n)+4)%(n+1)`
-/

namespace A316823.P7242162566187159373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319047 (A155212 n + 4).toNat) (n + 1 : ℤ)

end

end A316823.P7242162566187159373

/-! ## A316823.P5760806973923746733

`A057427(n)*A319047(A046691(n+2))`
-/

namespace A316823.P5760806973923746733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A319047 (A046691 (n + 2)).toNat

end

end A316823.P5760806973923746733

/-! ## A316823.P1126944599557733357

`A319047(A046691(n+2))%A016777(n)`
-/

namespace A316823.P1126944599557733357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319047 (A046691 (n + 2)).toNat) (A016777 n)

end

end A316823.P1126944599557733357

/-! ## A316823.P10805982572679903676

`abs(A033999(n))*A319047(A046691(n+2))`
-/

namespace A316823.P10805982572679903676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n| * A319047 (A046691 (n + 2)).toNat

end

end A316823.P10805982572679903676

/-! ## A316823.P15624298443082118933

`A319047(A046691(n+2))+A000007(n+1)`
-/

namespace A316823.P15624298443082118933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (A046691 (n + 2)).toNat + A000007 (n + 1)

end

end A316823.P15624298443082118933

/-! ## A316823.P2126437846276717547

`A319047(A046691(n+2))+A000038(n+1)`
-/

namespace A316823.P2126437846276717547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (A046691 (n + 2)).toNat + A000038 (n + 1)

end

end A316823.P2126437846276717547

/-! ## A316823.P8030319797095656655

`A319047(A046691(n+2))+A000035(2*n)`
-/

namespace A316823.P8030319797095656655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (A046691 (n + 2)).toNat + A000035 (2 * n)

end

end A316823.P8030319797095656655

/-! ## A316823.P12366728468102102742

`A319047(A046691(n+2))+A008683(25*(n+1))`
-/

namespace A316823.P12366728468102102742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (A046691 (n + 2)).toNat + A008683 (25 * (n + 1))

end

end A316823.P12366728468102102742

/-! ## A316823.P4216668169159245144

`A014963(lcm(22, n+1))*A319047(A046691(n+2))`
-/

namespace A316823.P4216668169159245144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.lcm 22 (n + 1)) * A319047 (A046691 (n + 2)).toNat

end

end A316823.P4216668169159245144

/-! ## A316823.P12804949887705615237

`A248909(A000005(2*n+1))*A319047(A046691(n+2))`
-/

namespace A316823.P12804949887705615237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (A000005 (2 * n + 1)).toNat * A319047 (A046691 (n + 2)).toNat

end

end A316823.P12804949887705615237

/-!
# A316824: A second example of a word that is uniform morphic and recurrent, but neither pure morphic nor primitive morphic.

The programs for A316824, the canonical program `A316824.P14787056752320120660` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316824 has offset 0).

The definition of A316824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316824.P16372310646395235170

`a(floor(n/3))^a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A316824.P16372310646395235170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat ^ a (n - 3)

end

end A316824.P16372310646395235170

namespace A316824

/-- `a(floor(n/3))^a(n-3)` -/
def P16372310646395235170.Spec : Prop :=
  ∀ n, (P16372310646395235170.a n : ℤ) = A316824 n

end A316824

/-! ## A316824.P9984064879289742202

`1-char[eq[0, val(n, 3)-a(n-1)]]` with `a(0)=0`
-/

namespace A316824.P9984064879289742202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  (SequenceMachineLib.valuation n 3 : ℤ) - f3 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316824.P9984064879289742202

namespace A316824

/-- `1-char[eq[0, val(n, 3)-a(n-1)]]` -/
def P9984064879289742202.Spec : Prop :=
  ∀ n, P9984064879289742202.a n = A316824 n

end A316824

/-! ## A316824.P14787056752320120660

`A316829(floor(n/3))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A316824

/-- `A316829(floor(n/3))` -/
def P14787056752320120660.Spec : Prop :=
  ∀ n, P14787056752320120660.a n = A316824 n

theorem P14787056752320120660.correct : P14787056752320120660.Spec := by
  intro n
  simp only [A316824]

end A316824

/-! ## A316824.P10020008409613576193

`char[lt[1, A244042(n)]]`
-/

namespace A316824.P10020008409613576193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A316824.P10020008409613576193

namespace A316824

/-- `char[lt[1, A244042(n)]]` -/
def P10020008409613576193.Spec : Prop :=
  ∀ n, (P10020008409613576193.a n : ℤ) = A316824 n

end A316824

/-! ## A316824.P9598180756991324978

`char[lt[1, A289813(n)]]`
-/

namespace A316824.P9598180756991324978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A316824.P9598180756991324978

namespace A316824

/-- `char[lt[1, A289813(n)]]` -/
def P9598180756991324978.Spec : Prop :=
  ∀ n, (P9598180756991324978.a n : ℤ) = A316824 n

end A316824

/-! ## A316824.P18339424124082016342

`char[lt[2, A289815(n)]]`
-/

namespace A316824.P18339424124082016342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A316824.P18339424124082016342

namespace A316824

/-- `char[lt[2, A289815(n)]]` -/
def P18339424124082016342.Spec : Prop :=
  ∀ n, (P18339424124082016342.a n : ℤ) = A316824 n

end A316824

/-! ## A316824.P15350383055132263107

`and(1, A132328(n)+1)`
-/

namespace A316824.P15350383055132263107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A132328 n + 1)

end

end A316824.P15350383055132263107

namespace A316824

/-- `and(1, A132328(n)+1)` -/
def P15350383055132263107.Spec : Prop :=
  ∀ n, P15350383055132263107.a n = A316824 n

end A316824

/-! ## A316824.P12098483023085895164

`floor(atan(A094114(3*n+2)))`
-/

namespace A316824.P12098483023085895164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A094114 (3 * n + 2) : ℝ)⌋

end

end A316824.P12098483023085895164

namespace A316824

/-- `floor(atan(A094114(3*n+2)))` -/
def P12098483023085895164.Spec : Prop :=
  ∀ n, P12098483023085895164.a n = A316824 n

end A316824

/-! ## A316824.P7130139157757822671

`A001179(A190906(n))`
-/

namespace A316824.P7130139157757822671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001179 (A190906 n).toNat

end

end A316824.P7130139157757822671

namespace A316824

/-- `A001179(A190906(n))` -/
def P7130139157757822671.Spec : Prop :=
  ∀ n, P7130139157757822671.a n = A316824 n

end A316824

/-! ## A316824.P8653750049231180683

`A157928(A289813(n))`
-/

namespace A316824.P8653750049231180683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A289813 n).toNat

end

end A316824.P8653750049231180683

namespace A316824

/-- `A157928(A289813(n))` -/
def P8653750049231180683.Spec : Prop :=
  ∀ n, P8653750049231180683.a n = A316824 n

end A316824

/-! ## A316824.P15174330131540580936

`A157928(A332497(n))`
-/

namespace A316824.P15174330131540580936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A332497 n).toNat

end

end A316824.P15174330131540580936

namespace A316824

/-- `A157928(A332497(n))` -/
def P15174330131540580936.Spec : Prop :=
  ∀ n, P15174330131540580936.a n = A316824 n

end A316824

/-! ## A316824.P11101104433988149404

`A189820(A007612(n+1))`
-/

namespace A316824.P11101104433988149404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (A007612 (n + 1)).toNat

end

end A316824.P11101104433988149404

namespace A316824

/-- `A189820(A007612(n+1))` -/
def P11101104433988149404.Spec : Prop :=
  ∀ n, P11101104433988149404.a n = A316824 n

end A316824

/-! ## A316824.P4814605553172794711

`A189820(A026167(n+1))`
-/

namespace A316824.P4814605553172794711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (A026167 (n + 1)).toNat

end

end A316824.P4814605553172794711

namespace A316824

/-- `A189820(A026167(n+1))` -/
def P4814605553172794711.Spec : Prop :=
  ∀ n, P4814605553172794711.a n = A316824 n

end A316824

/-! ## A316824.P14376965023808872972

`A189820(A026214(n+1))`
-/

namespace A316824.P14376965023808872972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (A026214 (n + 1)).toNat

end

end A316824.P14376965023808872972

namespace A316824

/-- `A189820(A026214(n+1))` -/
def P14376965023808872972.Spec : Prop :=
  ∀ n, P14376965023808872972.a n = A316824 n

end A316824

/-! ## A316824.P3459429422975317747

`A157928(A093347(n+1))`
-/

namespace A316824.P3459429422975317747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A093347 (n + 1)).toNat

end

end A316824.P3459429422975317747

namespace A316824

/-- `A157928(A093347(n+1))` -/
def P3459429422975317747.Spec : Prop :=
  ∀ n, P3459429422975317747.a n = A316824 n

end A316824

/-! ## A316824.P12987047259983423450

`A189820(A105637(n+1))`
-/

namespace A316824.P12987047259983423450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (A105637 (n + 1)).toNat

end

end A316824.P12987047259983423450

namespace A316824

/-- `A189820(A105637(n+1))` -/
def P12987047259983423450.Spec : Prop :=
  ∀ n, P12987047259983423450.a n = A316824 n

end A316824

/-! ## A316824.P7834217534400376005

`A189820(A137719(n+1))`
-/

namespace A316824.P7834217534400376005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (A137719 (n + 1)).toNat

end

end A316824.P7834217534400376005

namespace A316824

/-- `A189820(A137719(n+1))` -/
def P7834217534400376005.Spec : Prop :=
  ∀ n, P7834217534400376005.a n = A316824 n

end A316824

/-! ## A316824.P2601174728373296350

`A105220(A002264(n))-1`
-/

namespace A316824.P2601174728373296350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 (A002264 n).toNat - 1

end

end A316824.P2601174728373296350

namespace A316824

/-- `A105220(A002264(n))-1` -/
def P2601174728373296350.Spec : Prop :=
  ∀ n, P2601174728373296350.a n = A316824 n

end A316824

/-! ## A316824.P9552313137974792028

`A189820(A130917(n+2))`
-/

namespace A316824.P9552313137974792028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (A130917 (n + 2)).toNat

end

end A316824.P9552313137974792028

namespace A316824

/-- `A189820(A130917(n+2))` -/
def P9552313137974792028.Spec : Prop :=
  ∀ n, P9552313137974792028.a n = A316824 n

end A316824

/-! ## A316824.P18410451996008236722

`A189820(A189674(n+2))`
-/

namespace A316824.P18410451996008236722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (A189674 (n + 2)).toNat

end

end A316824.P18410451996008236722

namespace A316824

/-- `A189820(A189674(n+2))` -/
def P18410451996008236722.Spec : Prop :=
  ∀ n, P18410451996008236722.a n = A316824 n

end A316824

/-!
# A316825: Fibonacci word A003849 with its initial term changed to 2.

The programs for A316825, the canonical program `A316825.P2265286052494110243` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316825 has offset 0).

The definition of A316825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316825.P17304114799410510929

`C(2, Δ[floor((n+1)/ϕ)²])`
-/

namespace A316825.P17304114799410510929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋ ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat

end

end A316825.P17304114799410510929

namespace A316825

/-- `C(2, Δ[floor((n+1)/ϕ)²])` -/
def P17304114799410510929.Spec : Prop :=
  ∀ n, (P17304114799410510929.a n : ℤ) = A316825 n

end A316825

/-! ## A316825.P11085283119326233212

`log2(a(Δ[floor((n+1)/ϕ)]))` with `a(0)=2`
-/

namespace A316825.P11085283119326233212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  Real.logb 2 (a (f1 (n + 1) - f1 n).toNat)

end

end A316825.P11085283119326233212

namespace A316825

/-- `log2(a(Δ[floor((n+1)/ϕ)]))` -/
def P11085283119326233212.Spec : Prop :=
  ∀ n, P11085283119326233212.a n = (A316825 n : ℝ)

end A316825

/-! ## A316825.P13030163332147042177

`a(Δ[floor(ϕ*(n+1))])` with `a(0)=2, a(1)=1, a(2)=0`
-/

namespace A316825.P13030163332147042177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0] fun n a =>
  a (f1 (n + 1) - f1 n).toNat

end

end A316825.P13030163332147042177

namespace A316825

/-- `a(Δ[floor(ϕ*(n+1))])` -/
def P13030163332147042177.Spec : Prop :=
  ∀ n, (P13030163332147042177.a n : ℤ) = A316825 n

end A316825

/-! ## A316825.P11182272116547050373

`a(Δ[floor((n+1)/ϕ)])-1` with `a(0)=2`
-/

namespace A316825.P11182272116547050373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (f1 (n + 1) - f1 n).toNat - 1

end

end A316825.P11182272116547050373

namespace A316825

/-- `a(Δ[floor((n+1)/ϕ)])-1` -/
def P11182272116547050373.Spec : Prop :=
  ∀ n, P11182272116547050373.a n = A316825 n

end A316825

/-! ## A316825.P2265286052494110243

`1-Δ[n-a(a(n-1))]` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A316825

/-- `1-Δ[n-a(a(n-1))]` -/
def P2265286052494110243.Spec : Prop :=
  ∀ n, P2265286052494110243.a n = A316825 n

theorem P2265286052494110243.correct : P2265286052494110243.Spec := by
  intro n
  simp only [A316825]

end A316825

/-! ## A316825.P1879029318471137101

`A001221(a(Δ[floor((n+1)/ϕ)]))` with `a(0)=2`
-/

namespace A316825.P1879029318471137101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001221 (a (f1 (n + 1) - f1 n).toNat).toNat

end

end A316825.P1879029318471137101

namespace A316825

/-- `A001221(a(Δ[floor((n+1)/ϕ)]))` -/
def P1879029318471137101.Spec : Prop :=
  ∀ n, P1879029318471137101.a n = A316825 n

end A316825

/-! ## A316825.P1571929230154235438

`A001222(a(Δ[floor((n+1)/ϕ)]))` with `a(0)=2`
-/

namespace A316825.P1571929230154235438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001222 (a (f1 (n + 1) - f1 n).toNat).toNat

end

end A316825.P1571929230154235438

namespace A316825

/-- `A001222(a(Δ[floor((n+1)/ϕ)]))` -/
def P1571929230154235438.Spec : Prop :=
  ∀ n, P1571929230154235438.a n = A316825 n

end A316825

/-! ## A316825.P9394643006672052645

`A003849(n)+A000038(n)`
-/

namespace A316825.P9394643006672052645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n + A000038 n

end

end A316825.P9394643006672052645

namespace A316825

/-- `A003849(n)+A000038(n)` -/
def P9394643006672052645.Spec : Prop :=
  ∀ n, P9394643006672052645.a n = A316825 n

end A316825

/-! ## A316825.P3673661436391828037

`A316342(n)+A159075(n)`
-/

namespace A316825.P3673661436391828037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316342 n + A159075 n

end

end A316825.P3673661436391828037

namespace A316825

/-- `A316342(n)+A159075(n)` -/
def P3673661436391828037.Spec : Prop :=
  ∀ n, P3673661436391828037.a n = A316825 n

end A316825

/-! ## A316825.P11906391361141011824

`A003842(n)-A158388(n)`
-/

namespace A316825.P11906391361141011824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n - A158388 n

end

end A316825.P11906391361141011824

namespace A316825

/-- `A003842(n)-A158388(n)` -/
def P11906391361141011824.Spec : Prop :=
  ∀ n, P11906391361141011824.a n = A316825 n

end A316825

/-! ## A316825.P5136858199986229453

`A316342(n)-A063524(n)`
-/

namespace A316825.P5136858199986229453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316342 n - A063524 n

end

end A316825.P5136858199986229453

namespace A316825

/-- `A316342(n)-A063524(n)` -/
def P5136858199986229453.Spec : Prop :=
  ∀ n, P5136858199986229453.a n = A316825 n

end A316825

/-! ## A316825.P9903093118287505211

`A316342(n)/A373565(n)`
-/

namespace A316825.P9903093118287505211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316342 n : ℚ) / (A373565 n : ℚ)

end

end A316825.P9903093118287505211

namespace A316825

/-- `A316342(n)/A373565(n)` -/
def P9903093118287505211.Spec : Prop :=
  ∀ n, P9903093118287505211.a n = (A316825 n : ℚ)

end A316825

/-! ## A316825.P13248628876751968858

`and(A014675(n), A054977(n))`
-/

namespace A316825.P13248628876751968858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014675 n) (A054977 n)

end

end A316825.P13248628876751968858

namespace A316825

/-- `and(A014675(n), A054977(n))` -/
def P13248628876751968858.Spec : Prop :=
  ∀ n, P13248628876751968858.a n = A316825 n

end A316825

/-! ## A316825.P2087250982128141075

`and(A014675(n), A061351(n))`
-/

namespace A316825.P2087250982128141075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014675 n) (A061351 n)

end

end A316825.P2087250982128141075

namespace A316825

/-- `and(A014675(n), A061351(n))` -/
def P2087250982128141075.Spec : Prop :=
  ∀ n, P2087250982128141075.a n = A316825 n

end A316825

/-! ## A316825.P13798990181273874270

`and(A014675(n), A158388(n))`
-/

namespace A316825.P13798990181273874270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014675 n) (A158388 n)

end

end A316825.P13798990181273874270

namespace A316825

/-- `and(A014675(n), A158388(n))` -/
def P13798990181273874270.Spec : Prop :=
  ∀ n, P13798990181273874270.a n = A316825 n

end A316825

/-! ## A316825.P16073541390838598243

`and(A014675(n), A168092(n))`
-/

namespace A316825.P16073541390838598243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014675 n) (A168092 n)

end

end A316825.P16073541390838598243

namespace A316825

/-- `and(A014675(n), A168092(n))` -/
def P16073541390838598243.Spec : Prop :=
  ∀ n, P16073541390838598243.a n = A316825 n

end A316825

/-! ## A316825.P1902769939142178525

`and(A014675(n), A183228(n))`
-/

namespace A316825.P1902769939142178525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014675 n) (A183228 n)

end

end A316825.P1902769939142178525

namespace A316825

/-- `and(A014675(n), A183228(n))` -/
def P1902769939142178525.Spec : Prop :=
  ∀ n, P1902769939142178525.a n = A316825 n

end A316825

/-! ## A316825.P15896380027174320902

`A153881(n+1)+A003842(n)`
-/

namespace A316825.P15896380027174320902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) + A003842 n

end

end A316825.P15896380027174320902

namespace A316825

/-- `A153881(n+1)+A003842(n)` -/
def P15896380027174320902.Spec : Prop :=
  ∀ n, P15896380027174320902.a n = A316825 n

end A316825

/-! ## A316825.P2763736268288964218

`A316342(n)/A171624(n+1)`
-/

namespace A316825.P2763736268288964218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316342 n : ℚ) / (A171624 (n + 1) : ℚ)

end

end A316825.P2763736268288964218

namespace A316825

/-- `A316342(n)/A171624(n+1)` -/
def P2763736268288964218.Spec : Prop :=
  ∀ n, P2763736268288964218.a n = (A316825 n : ℚ)

end A316825

/-!
# A316826: Image of 3 under repeated application of the morphism 3 -> 3,2, 2 -> 1,0,2,0,1,2, 1 -> 1,0,1,2, 0 -> 0,2.

The programs for A316826, the canonical program `A316826.P16423883963804976449` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316826 has offset 0).

The definition of A316826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316826.P12333904330787421389

`a(A007413(n)-1)-1` with `a(0)=3`
-/

namespace A316826.P12333904330787421389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (A007413 n - 1).toNat - 1

end

end A316826.P12333904330787421389

namespace A316826

/-- `a(A007413(n)-1)-1` -/
def P12333904330787421389.Spec : Prop :=
  ∀ n, P12333904330787421389.a n = A316826 n

end A316826

/-! ## A316826.P16423883963804976449

`A029884(n-2)+a(n-1)` with `a(0)=3, a(1)=2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A316826

/-- `A029884(n-2)+a(n-1)` -/
def P16423883963804976449.Spec : Prop :=
  ∀ n, P16423883963804976449.a n = A316826 n

theorem P16423883963804976449.correct : P16423883963804976449.Spec := by
  intro n
  simp only [A316826]

end A316826

/-! ## A316826.P15882889330165499549

`A317189(n)+A000038(n)`
-/

namespace A316826.P15882889330165499549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317189 n + A000038 n

end

end A316826.P15882889330165499549

namespace A316826

/-- `A317189(n)+A000038(n)` -/
def P15882889330165499549.Spec : Prop :=
  ∀ n, P15882889330165499549.a n = A316826 n

end A316826

/-! ## A316826.P7309626643212915734

`A036577(a(A036577(n)))` with `a(0)=3, a(1)=2`
-/

namespace A316826.P7309626643212915734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  A036577 (a (A036577 n).toNat).toNat

end

end A316826.P7309626643212915734

namespace A316826

/-- `A036577(a(A036577(n)))` -/
def P7309626643212915734.Spec : Prop :=
  ∀ n, P7309626643212915734.a n = A316826 n

end A316826

/-! ## A316826.P8369000578024407276

`or(A000038(A000120(n)), A317189(n))`
-/

namespace A316826.P8369000578024407276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (A000120 n).toNat) (A317189 n)

end

end A316826.P8369000578024407276

namespace A316826

/-- `or(A000038(A000120(n)), A317189(n))` -/
def P8369000578024407276.Spec : Prop :=
  ∀ n, P8369000578024407276.a n = A316826 n

end A316826

/-! ## A316826.P2761282160234239708

`xor(A036577(A004277(n)), A268676(n))`
-/

namespace A316826.P2761282160234239708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036577 (A004277 n).toNat) (A268676 n)

end

end A316826.P2761282160234239708

namespace A316826

/-- `xor(A036577(A004277(n)), A268676(n))` -/
def P2761282160234239708.Spec : Prop :=
  ∀ n, P2761282160234239708.a n = A316826 n

end A316826

/-! ## A316826.P9870408931410475023

`xor(A007413(2*n+1), A036577(A004277(n)))`
-/

namespace A316826.P9870408931410475023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007413 (2 * n + 1)) (A036577 (A004277 n).toNat)

end

end A316826.P9870408931410475023

namespace A316826

/-- `xor(A007413(2*n+1), A036577(A004277(n)))` -/
def P9870408931410475023.Spec : Prop :=
  ∀ n, P9870408931410475023.a n = A316826 n

end A316826

/-! ## A316826.P3143370266816295520

`A014963(A317183(n+1))*A317189(n)`
-/

namespace A316826.P3143370266816295520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A317183 (n + 1)).toNat * A317189 n

end

end A316826.P3143370266816295520

namespace A316826

/-- `A014963(A317183(n+1))*A317189(n)` -/
def P3143370266816295520.Spec : Prop :=
  ∀ n, P3143370266816295520.a n = A316826 n

end A316826

/-! ## A316826.P11327853547871561792

`lcm(A014963(A317181(n+1)), A317189(n))`
-/

namespace A316826.P11327853547871561792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (A317181 (n + 1)).toNat) (A317189 n)

end

end A316826.P11327853547871561792

namespace A316826

/-- `lcm(A014963(A317181(n+1)), A317189(n))` -/
def P11327853547871561792.Spec : Prop :=
  ∀ n, (P11327853547871561792.a n : ℤ) = A316826 n

end A316826

/-!
# A316828: Image of the Thue-Morse sequence A010060 under the morphism {1 -> 1,2; 0 -> 0,2}.

The programs for A316828, the canonical program `A316828.P16128822760412873821` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316828 has offset 0).

The definition of A316828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316828.P9741826710522067331

`(∑[2-char[xor(n, 2*n)]]+2)%3`
-/

namespace A316828.P9741826710522067331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 2) 3

end

end A316828.P9741826710522067331

namespace A316828

/-- `(∑[2-char[xor(n, 2*n)]]+2)%3` -/
def P9741826710522067331.Spec : Prop :=
  ∀ n, P9741826710522067331.a n = A316828 n

end A316828

/-! ## A316828.P9043452943656740426

`a(A296207(n))` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A316828.P9043452943656740426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  a (A296207 n).toNat

end

end A316828.P9043452943656740426

namespace A316828

/-- `a(A296207(n))` -/
def P9043452943656740426.Spec : Prop :=
  ∀ n, (P9043452943656740426.a n : ℤ) = A316828 n

end A316828

/-! ## A316828.P16689313950942985792

`A360392(n+1)%3`
-/

namespace A316828.P16689313950942985792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360392 (n + 1)) 3

end

end A316828.P16689313950942985792

namespace A316828

/-- `A360392(n+1)%3` -/
def P16689313950942985792.Spec : Prop :=
  ∀ n, P16689313950942985792.a n = A316828 n

end A316828

/-! ## A316828.P16128822760412873821

`(A071044(n)-1)%3`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A316828

/-- `(A071044(n)-1)%3` -/
def P16128822760412873821.Spec : Prop :=
  ∀ n, P16128822760412873821.a n = A316828 n

theorem P16128822760412873821.correct : P16128822760412873821.Spec := by
  intro n
  simp only [A316828]

end A316828

/-! ## A316828.P2424662071116554096

`(A115384(n)+n)%3`
-/

namespace A316828.P2424662071116554096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115384 n + (n : ℤ)) 3

end

end A316828.P2424662071116554096

namespace A316828

/-- `(A115384(n)+n)%3` -/
def P2424662071116554096.Spec : Prop :=
  ∀ n, P2424662071116554096.a n = A316828 n

end A316828

/-! ## A316828.P4824653055905372314

`(∑[A001316(n)]-1)%3`
-/

namespace A316828.P4824653055905372314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - 1) 3

end

end A316828.P4824653055905372314

namespace A316828

/-- `(∑[A001316(n)]-1)%3` -/
def P4824653055905372314.Spec : Prop :=
  ∀ n, P4824653055905372314.a n = A316828 n

end A316828

/-! ## A316828.P8187748352843831107

`A254377(n+1)+and(1, n)`
-/

namespace A316828.P8187748352843831107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (n + 1) + (Nat.land 1 n : ℤ)

end

end A316828.P8187748352843831107

namespace A316828

/-- `A254377(n+1)+and(1, n)` -/
def P8187748352843831107.Spec : Prop :=
  ∀ n, P8187748352843831107.a n = A316828 n

end A316828

/-! ## A316828.P8736362861445927681

`A000032(a(and(n, n-2)))-1` with `a(0)=0, a(1)=2`
-/

namespace A316828.P8736362861445927681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A000032 (a (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat).toNat - 1

end

end A316828.P8736362861445927681

namespace A316828

/-- `A000032(a(and(n, n-2)))-1` -/
def P8736362861445927681.Spec : Prop :=
  ∀ n, P8736362861445927681.a n = A316828 n

end A316828

/-! ## A316828.P8886134365296926449

`A329903(A071044(n))`
-/

namespace A316828.P8886134365296926449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329903 (A071044 n).toNat

end

end A316828.P8886134365296926449

namespace A316828

/-- `A329903(A071044(n))` -/
def P8886134365296926449.Spec : Prop :=
  ∀ n, P8886134365296926449.a n = A316828 n

end A316828

/-! ## A316828.P647936663473896736

`A036581(A058359(n+1))`
-/

namespace A316828.P647936663473896736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 (A058359 (n + 1)).toNat

end

end A316828.P647936663473896736

namespace A316828

/-- `A036581(A058359(n+1))` -/
def P647936663473896736.Spec : Prop :=
  ∀ n, P647936663473896736.a n = A316828 n

end A316828

/-! ## A316828.P17225026169889995737

`A254379(n)+A010673(n)`
-/

namespace A316828.P17225026169889995737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 n + A010673 n

end

end A316828.P17225026169889995737

namespace A316828

/-- `A254379(n)+A010673(n)` -/
def P17225026169889995737.Spec : Prop :=
  ∀ n, P17225026169889995737.a n = A316828 n

end A316828

/-! ## A316828.P12522439281320702491

`A052938(n)-A159481(n)`
-/

namespace A316828.P12522439281320702491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n - A159481 n

end

end A316828.P12522439281320702491

namespace A316828

/-- `A052938(n)-A159481(n)` -/
def P12522439281320702491.Spec : Prop :=
  ∀ n, P12522439281320702491.a n = A316828 n

end A316828

/-! ## A316828.P15731389344208619280

`A010684(n)-A254651(n)`
-/

namespace A316828.P15731389344208619280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n - A254651 n

end

end A316828.P15731389344208619280

namespace A316828

/-- `A010684(n)-A254651(n)` -/
def P15731389344208619280.Spec : Prop :=
  ∀ n, P15731389344208619280.a n = A316828 n

end A316828

/-! ## A316828.P12695771535608735141

`A030451(n)-A245710(n)`
-/

namespace A316828.P12695771535608735141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 n - A245710 n

end

end A316828.P12695771535608735141

namespace A316828

/-- `A030451(n)-A245710(n)` -/
def P12695771535608735141.Spec : Prop :=
  ∀ n, P12695771535608735141.a n = A316828 n

end A316828

/-! ## A316828.P13817968125493371954

`A036581(n/A093178(n))`
-/

namespace A316828.P13817968125493371954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

end

end A316828.P13817968125493371954

namespace A316828

/-- `A036581(n/A093178(n))` -/
def P13817968125493371954.Spec : Prop :=
  ∀ n, P13817968125493371954.a n = A316828 n

end A316828

/-! ## A316828.P17472656858154504685

`A036581(1-A093178(n)+n)`
-/

namespace A316828.P17472656858154504685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 (1 - A093178 n + (n : ℤ)).toNat

end

end A316828.P17472656858154504685

namespace A316828

/-- `A036581(1-A093178(n)+n)` -/
def P17472656858154504685.Spec : Prop :=
  ∀ n, P17472656858154504685.a n = A316828 n

end A316828

/-! ## A316828.P582910282852275800

`A036581(1-(A093178(n)-n))`
-/

namespace A316828.P582910282852275800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 (1 - (A093178 n - (n : ℤ))).toNat

end

end A316828.P582910282852275800

namespace A316828

/-- `A036581(1-(A093178(n)-n))` -/
def P582910282852275800.Spec : Prop :=
  ∀ n, P582910282852275800.a n = A316828 n

end A316828

/-! ## A316828.P5576921144380411310

`A033164(n+1)%A010693(n)`
-/

namespace A316828.P5576921144380411310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033164 (n + 1)) (A010693 n)

end

end A316828.P5576921144380411310

namespace A316828

/-- `A033164(n+1)%A010693(n)` -/
def P5576921144380411310.Spec : Prop :=
  ∀ n, P5576921144380411310.a n = A316828 n

end A316828

/-! ## A316828.P1204750536831029052

`A056004(n+1)%A010693(n)`
-/

namespace A316828.P1204750536831029052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056004 (n + 1)) (A010693 n)

end

end A316828.P1204750536831029052

namespace A316828

/-- `A056004(n+1)%A010693(n)` -/
def P1204750536831029052.Spec : Prop :=
  ∀ n, P1204750536831029052.a n = A316828 n

end A316828

/-! ## A316828.P12619384457013216407

`A089118(n+1)%A010693(n)`
-/

namespace A316828.P12619384457013216407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089118 (n + 1)) (A010693 n)

end

end A316828.P12619384457013216407

namespace A316828

/-- `A089118(n+1)%A010693(n)` -/
def P12619384457013216407.Spec : Prop :=
  ∀ n, P12619384457013216407.a n = A316828 n

end A316828

/-!
# A316829: Image of 0 under repeated application of the morphism 0 -> 0,1,0, 1 -> 1,1,1.

The programs for A316829, the canonical program `A316829.P17960446126874706026` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316829 has offset 0).

The definition of A316829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316829.P17960446126874706026

`1-A088917(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A316829

/-- `1-A088917(n)` -/
def P17960446126874706026.Spec : Prop :=
  ∀ n, P17960446126874706026.a n = A316829 n

theorem P17960446126874706026.correct : P17960446126874706026.Spec := by
  intro n
  simp only [A316829]

end A316829

/-! ## A316829.P4220238857314597671

`A105220(n)-1`
-/

namespace A316829.P4220238857314597671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 n - 1

end

end A316829.P4220238857314597671

namespace A316829

/-- `A105220(n)-1` -/
def P4220238857314597671.Spec : Prop :=
  ∀ n, P4220238857314597671.a n = A316829 n

end A316829

/-! ## A316829.P1226499283103490078

`gcd(n%2, a(floor(n/3)))` with `a(0)=0`
-/

namespace A316829.P1226499283103490078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.gcd (n % 2) (a ⌊(n : ℚ) / 3⌋.toNat)

end

end A316829.P1226499283103490078

namespace A316829

/-- `gcd(n%2, a(floor(n/3)))` -/
def P1226499283103490078.Spec : Prop :=
  ∀ n, (P1226499283103490078.a n : ℤ) = A316829 n

end A316829

/-! ## A316829.P16997720998941447218

`a(floor(n/3))^a(n-1)` with `a(0)=0`
-/

namespace A316829.P16997720998941447218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat ^ a (n - 1)

end

end A316829.P16997720998941447218

namespace A316829

/-- `a(floor(n/3))^a(n-1)` -/
def P16997720998941447218.Spec : Prop :=
  ∀ n, (P16997720998941447218.a n : ℤ) = A316829 n

end A316829

/-! ## A316829.P7157610270019929949

`a(floor(n/(a(n-1)+2)))` with `a(0)=0, a(1)=1`
-/

namespace A316829.P7157610270019929949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℚ) / (a (n - 1) + 2 : ℚ)⌋.toNat

end

end A316829.P7157610270019929949

namespace A316829

/-- `a(floor(n/(a(n-1)+2)))` -/
def P7157610270019929949.Spec : Prop :=
  ∀ n, (P7157610270019929949.a n : ℤ) = A316829 n

end A316829

/-! ## A316829.P5926565025377274326

`a(gcd(1-a(n-1), floor(n/3)))` with `a(0)=0, a(1)=1`
-/

namespace A316829.P5926565025377274326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (Int.gcd (1 - (a (n - 1) : ℤ)) ⌊(n : ℚ) / 3⌋)

end

end A316829.P5926565025377274326

namespace A316829

/-- `a(gcd(1-a(n-1), floor(n/3)))` -/
def P5926565025377274326.Spec : Prop :=
  ∀ n, (P5926565025377274326.a n : ℤ) = A316829 n

end A316829

/-! ## A316829.P17001517433017124729

`log2(A105220(n))`
-/

namespace A316829.P17001517433017124729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A105220 n : ℝ)

end

end A316829.P17001517433017124729

namespace A316829

/-- `log2(A105220(n))` -/
def P17001517433017124729.Spec : Prop :=
  ∀ n, P17001517433017124729.a n = (A316829 n : ℝ)

end A316829

/-! ## A316829.P766584468594112097

`round(atan(A062756(n)))`
-/

namespace A316829.P766584468594112097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A062756 n : ℝ))

end

end A316829.P766584468594112097

namespace A316829

/-- `round(atan(A062756(n)))` -/
def P766584468594112097.Spec : Prop :=
  ∀ n, P766584468594112097.a n = A316829 n

end A316829

/-! ## A316829.P575739533669307733

`char[comp[A167878(n)]]`
-/

namespace A316829.P575739533669307733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A316829.P575739533669307733

namespace A316829

/-- `char[comp[A167878(n)]]` -/
def P575739533669307733.Spec : Prop :=
  ∀ n, (P575739533669307733.a n : ℤ) = A316829 n

end A316829

/-! ## A316829.P5827911388810491362

`a(A103627(n))` with `a(0)=0, a(1)=1`
-/

namespace A316829.P5827911388810491362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A103627 n).toNat

end

end A316829.P5827911388810491362

namespace A316829

/-- `a(A103627(n))` -/
def P5827911388810491362.Spec : Prop :=
  ∀ n, (P5827911388810491362.a n : ℤ) = A316829 n

end A316829

/-! ## A316829.P13765106144617971918

`log2(gcd(2, A120880(n)))`
-/

namespace A316829.P13765106144617971918
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A120880 n) : ℝ)

end

end A316829.P13765106144617971918

namespace A316829

/-- `log2(gcd(2, A120880(n)))` -/
def P13765106144617971918.Spec : Prop :=
  ∀ n, P13765106144617971918.a n = (A316829 n : ℝ)

end A316829

/-! ## A316829.P12292164206030950111

`char[A081606(n+1)]`
-/

namespace A316829.P12292164206030950111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A316829.P12292164206030950111

namespace A316829

/-- `char[A081606(n+1)]` -/
def P12292164206030950111.Spec : Prop :=
  ∀ n, (P12292164206030950111.a n : ℤ) = A316829 n

end A316829

/-! ## A316829.P18086403512794028492

`1-char[A300222(n)]`
-/

namespace A316829.P18086403512794028492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A316829.P18086403512794028492

namespace A316829

/-- `1-char[A300222(n)]` -/
def P18086403512794028492.Spec : Prop :=
  ∀ n, P18086403512794028492.a n = A316829 n

end A316829

/-! ## A316829.P2968050657175513040

`char[lt[1, A289815(n)]]`
-/

namespace A316829.P2968050657175513040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A316829.P2968050657175513040

namespace A316829

/-- `char[lt[1, A289815(n)]]` -/
def P2968050657175513040.Spec : Prop :=
  ∀ n, (P2968050657175513040.a n : ℤ) = A316829 n

end A316829

/-! ## A316829.P10675884536352812209

`and(1, A006047(n)+1)`
-/

namespace A316829.P10675884536352812209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006047 n + 1)

end

end A316829.P10675884536352812209

namespace A316829

/-- `and(1, A006047(n)+1)` -/
def P10675884536352812209.Spec : Prop :=
  ∀ n, P10675884536352812209.a n = A316829 n

end A316829

/-! ## A316829.P2277990882900316410

`and(1, A290091(n)+1)`
-/

namespace A316829.P2277990882900316410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A290091 n + 1)

end

end A316829.P2277990882900316410

namespace A316829

/-- `and(1, A290091(n)+1)` -/
def P2277990882900316410.Spec : Prop :=
  ∀ n, P2277990882900316410.a n = A316829 n

end A316829

/-! ## A316829.P11031851926789546386

`1-char[record[A004488(n)]]`
-/

namespace A316829.P11031851926789546386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A316829.P11031851926789546386

namespace A316829

/-- `1-char[record[A004488(n)]]` -/
def P11031851926789546386.Spec : Prop :=
  ∀ n, P11031851926789546386.a n = A316829 n

end A316829

/-! ## A316829.P16493675334457776040

`1-char[record[A353660(n)]]`
-/

namespace A316829.P16493675334457776040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353660 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A316829.P16493675334457776040

namespace A316829

/-- `1-char[record[A353660(n)]]` -/
def P16493675334457776040.Spec : Prop :=
  ∀ n, P16493675334457776040.a n = A316829 n

end A316829

/-! ## A316829.P8482267004145235599

`1-char[record[A357616(n)]]`
-/

namespace A316829.P8482267004145235599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A316829.P8482267004145235599

namespace A316829

/-- `1-char[record[A357616(n)]]` -/
def P8482267004145235599.Spec : Prop :=
  ∀ n, P8482267004145235599.a n = A316829 n

end A316829

/-!
# A316830: Replace successive blocks of length 3 in the Thue-Morse sequence A010060 with their decimal equivalents.

The programs for A316830, the canonical program `A316830.P8467791605311806215` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316830 has offset 1).

The definition of A316830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316830.P8467791605311806215

`A381848(3*n+1)+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A316830

/-- `A381848(3*n+1)+1` -/
def P8467791605311806215.Spec : Prop :=
  ∀ n, P8467791605311806215.a n = A316830 (n + 1)

theorem P8467791605311806215.correct : P8467791605311806215.Spec := by
  intro n
  simp only [A316830, Nat.add_sub_cancel]

end A316830

/-! ## A316830.P11511266499272804938

`A019300(3*n+2)%8`
-/

namespace A316830.P11511266499272804938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019300 (3 * n + 2)) 8

end

end A316830.P11511266499272804938

namespace A316830

/-- `A019300(3*n+2)%8` -/
def P11511266499272804938.Spec : Prop :=
  ∀ n, P11511266499272804938.a n = A316830 (n + 1)

end A316830

/-! ## A316830.P10591099685152292235

`and(7, A019300(A016789(n)))`
-/

namespace A316830.P10591099685152292235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A019300 (A016789 n).toNat)

end

end A316830.P10591099685152292235

namespace A316830

/-- `and(7, A019300(A016789(n)))` -/
def P10591099685152292235.Spec : Prop :=
  ∀ n, P10591099685152292235.a n = A316830 (n + 1)

end A316830

/-! ## A316830.P14277806686610265467

`and(A000420(A019303(2*(n+2))), A019300(3*n+2))`
-/

namespace A316830.P14277806686610265467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000420 (A019303 (2 * (n + 2))).toNat) (A019300 (3 * n + 2))

end

end A316830.P14277806686610265467

namespace A316830

/-- `and(A000420(A019303(2*(n+2))), A019300(3*n+2))` -/
def P14277806686610265467.Spec : Prop :=
  ∀ n, P14277806686610265467.a n = A316830 (n + 1)

end A316830

/-! ## A316830.P1688227247718604440

`and(A019300(3*n+2), A019326(A019304(2*(n+2))))`
-/

namespace A316830.P1688227247718604440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A019300 (3 * n + 2)) (A019326 (A019304 (2 * (n + 2))).toNat)

end

end A316830.P1688227247718604440

namespace A316830

/-- `and(A019300(3*n+2), A019326(A019304(2*(n+2))))` -/
def P1688227247718604440.Spec : Prop :=
  ∀ n, P1688227247718604440.a n = A316830 (n + 1)

end A316830

/-!
# A316831: Trajectory of 0 under repeated application of the morphism 0 -> 01, 1 -> 21, 2 -> 13, 3 -> 33.

The programs for A316831, the canonical program `A316831.P2741381390933968218` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316831 has offset 0).

The definition of A316831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316831.P2741381390933968218

`A046819(a(floor(n/2))+n%2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A316831

/-- `A046819(a(floor(n/2))+n%2)` -/
def P2741381390933968218.Spec : Prop :=
  ∀ n, P2741381390933968218.a n = A316831 n

theorem P2741381390933968218.correct : P2741381390933968218.Spec := by
  intro n
  simp only [A316831]

end A316831

/-! ## A316831.P7751280072598331898

`A032303(a(floor(n/2))+2-gcd(2, n))` with `a(0)=0, a(1)=1`
-/

namespace A316831.P7751280072598331898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A032303 (a ⌊(n : ℚ) / 2⌋.toNat + (2 - (Nat.gcd 2 n : ℤ))).toNat

end

end A316831.P7751280072598331898

namespace A316831

/-- `A032303(a(floor(n/2))+2-gcd(2, n))` -/
def P7751280072598331898.Spec : Prop :=
  ∀ n, P7751280072598331898.a n = A316831 n

end A316831

/-! ## A316831.P17071348785372261262

`A032303(a(floor(n/2))+(1-(-1)^n)/2)` with `a(0)=0, a(1)=1`
-/

namespace A316831.P17071348785372261262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A032303 (SequenceMachineLib.roundAway ((a ⌊(n : ℚ) / 2⌋.toNat : ℚ) + (1 - (-1) ^ n : ℚ) / 2)).toNat

end

end A316831.P17071348785372261262

namespace A316831

/-- `A032303(a(floor(n/2))+(1-(-1)^n)/2)` -/
def P17071348785372261262.Spec : Prop :=
  ∀ n, P17071348785372261262.a n = A316831 n

end A316831

/-! ## A316831.P2709186646221809804

`A046819(a(floor(n/2))+(1-(-1)^n)/2)` with `a(0)=0, a(1)=1`
-/

namespace A316831.P2709186646221809804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A046819 (SequenceMachineLib.roundAway ((a ⌊(n : ℚ) / 2⌋.toNat : ℚ) + (1 - (-1) ^ n : ℚ) / 2)).toNat

end

end A316831.P2709186646221809804

namespace A316831

/-- `A046819(a(floor(n/2))+(1-(-1)^n)/2)` -/
def P2709186646221809804.Spec : Prop :=
  ∀ n, P2709186646221809804.a n = A316831 n

end A316831

/-! ## A316831.P7966615277700428908

`A135278(a(floor(n/2))+(1-(-1)^n)/2)` with `a(0)=0, a(1)=1`
-/

namespace A316831.P7966615277700428908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A135278 (SequenceMachineLib.roundAway ((a ⌊(n : ℚ) / 2⌋.toNat : ℚ) + (1 - (-1) ^ n : ℚ) / 2)).toNat

end

end A316831.P7966615277700428908

namespace A316831

/-- `A135278(a(floor(n/2))+(1-(-1)^n)/2)` -/
def P7966615277700428908.Spec : Prop :=
  ∀ n, P7966615277700428908.a n = A316831 n

end A316831

/-! ## A316831.P4152129191544243054

`A275015(A361020(n))`
-/

namespace A316831.P4152129191544243054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275015 (A361020 n).toNat

end

end A316831.P4152129191544243054

namespace A316831

/-- `A275015(A361020(n))` -/
def P4152129191544243054.Spec : Prop :=
  ∀ n, P4152129191544243054.a n = A316831 n

end A316831

/-!
# A316833: Sums of four distinct odd squares.

The programs for A316833, there is no canonical definition to state claims against.
-/

/-! ## A316833.P16780485995775836499

`record[lcm(4, A001944(n+2))]`
-/

namespace A316833.P16780485995775836499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A001944 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316833.P16780485995775836499

/-!
# A316834: Numbers with a unique representation as a sum of four distinct odd squares.

The programs for A316834, there is no canonical definition to state claims against.
-/

/-! ## A316834.P15870979044318509728

`A017113(eq[1, A316491(n)])`
-/

namespace A316834.P15870979044318509728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316834.P15870979044318509728

/-! ## A316834.P14666494085331300888

`eq[A040134(n), A331918(n)]`
-/

namespace A316834.P14666494085331300888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040134 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316834.P14666494085331300888

/-! ## A316834.P7187425054983263356

`eq[A040137(n), A331918(n)]`
-/

namespace A316834.P7187425054983263356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316834.P7187425054983263356

/-! ## A316834.P3377207360695832837

`eq[A040139(n), A331918(n)]`
-/

namespace A316834.P3377207360695832837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040139 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316834.P3377207360695832837

/-! ## A316834.P4792446947082232183

`eq[A040143(n), A331918(n)]`
-/

namespace A316834.P4792446947082232183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040143 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316834.P4792446947082232183

/-!
# A316835: Sums of four distinct positive even squares.

The programs for A316835, there is no canonical definition to state claims against.
-/

/-! ## A316835.P8595634798998270830

`4*A004433(n+1)`
-/

namespace A316835.P8595634798998270830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004433 (n + 1)

end

end A316835.P8595634798998270830

/-! ## A316835.P2134545601735160503

`4*lt[0, A025443(n)]`
-/

namespace A316835.P2134545601735160503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A316835.P2134545601735160503

/-! ## A316835.P13172802549433749660

`4*(comp[A004441(n+1)-1]+1)`
-/

namespace A316835.P13172802549433749660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004441 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A316835.P13172802549433749660

/-! ## A316835.P13160320696941238025

`4*eq[1, (A000040(A025443(n)+1)-2)%2]`
-/

namespace A316835.P13160320696941238025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A025443 n + 1).toNat - 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316835.P13160320696941238025

/-! ## A316835.P14163115968985432969

`A008574(A004433(n+1))`
-/

namespace A316835.P14163115968985432969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A004433 (n + 1)).toNat

end

end A316835.P14163115968985432969

/-! ## A316835.P17945427267171432539

`A008574(lt[0, A025443(n)])`
-/

namespace A316835.P17945427267171432539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A316835.P17945427267171432539

/-! ## A316835.P2027829335046028110

`A008586(lt[0, A025443(n)])`
-/

namespace A316835.P2027829335046028110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A316835.P2027829335046028110

/-! ## A316835.P7861367064334382011

`A336627(A004433(n+1)+1)`
-/

namespace A316835.P7861367064334382011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336627 (A004433 (n + 1) + 1).toNat

end

end A316835.P7861367064334382011

/-! ## A316835.P10820162888116389001

`A019442(A004433(n+1)+2)`
-/

namespace A316835.P10820162888116389001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019442 (A004433 (n + 1) + 2).toNat

end

end A316835.P10820162888116389001

/-!
# A316836: Let L_k(n) denote the number of elements of rank k in the free distributive lattice on n generators. Sequence gives irregular triangle, read by rows, showing coefficients when L_k(n) is expressed as a linear combination of binomial(n,i) for 0 <= i <= k-1.

The programs for A316836, there is no canonical definition to state claims against.
-/

/-! ## A316836.P9913385113490439132

`A100699(A152036(n)+1)`
-/

namespace A316836.P9913385113490439132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100699 (A152036 n + 1).toNat

end

end A316836.P9913385113490439132

/-! ## A316836.P4370680372359644223

`3%A162192(A144207(n))`
-/

namespace A316836.P4370680372359644223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A162192 (A144207 n).toNat)

end

end A316836.P4370680372359644223

/-! ## A316836.P8826029015234753550

`A217843(A236433(n+1))%4`
-/

namespace A316836.P8826029015234753550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217843 (A236433 (n + 1)).toNat) 4

end

end A316836.P8826029015234753550

/-! ## A316836.P663671181684967240

`A086079(A131222(n+3))+A010054(n)`
-/

namespace A316836.P663671181684967240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086079 (A131222 (n + 3)).toNat + A010054 n

end

end A316836.P663671181684967240

/-! ## A316836.P15888449638925133035

`A265751(A144161(n)²)`
-/

namespace A316836.P15888449638925133035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265751 (A144161 n ^ 2).toNat

end

end A316836.P15888449638925133035

/-!
# A316837: Indices of 0's in A254990.

The programs for A316837, there is no canonical definition to state claims against.
-/

/-! ## A316837.P11525475999731247051

`eq[0, A254990(n)]`
-/

namespace A316837.P11525475999731247051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316837.P11525475999731247051

/-! ## A316837.P9584751211178949814

`record[1-A254990(n+1)+n]`
-/

namespace A316837.P9584751211178949814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A254990 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316837.P9584751211178949814

/-! ## A316837.P11212451766415601308

`lt[A254990(n), A088840(A088840(n+1))]`
-/

namespace A316837.P11212451766415601308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088840 (A088840 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316837.P11212451766415601308

/-! ## A316837.P5609343665402558842

`eq[1, A317954(n+1)]`
-/

namespace A316837.P5609343665402558842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316837.P5609343665402558842

/-! ## A316837.P861124370260444253

`record[n-A035988(n)*A254990(n)]`
-/

namespace A316837.P861124370260444253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A035988 n * A254990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316837.P861124370260444253

/-! ## A316837.P13244772475630605725

`record[n-A190252(n)*A254990(n)]`
-/

namespace A316837.P13244772475630605725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A190252 n * A254990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316837.P13244772475630605725

/-! ## A316837.P7267047722768418848

`lt[A317954(n+1)², A157532(n+1)]`
-/

namespace A316837.P7267047722768418848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316837.P7267047722768418848

/-! ## A316837.P11070967174224080852

`lt[A317954(n+1), A020639(A016957(n))]`
-/

namespace A316837.P11070967174224080852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016957 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316837.P11070967174224080852

/-! ## A316837.P3849387858899971806

`lt[A317954(n+1), sqrt(A157532(n+4))]`
-/

namespace A316837.P3849387858899971806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A157532 (n + 4) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A316837.P3849387858899971806

/-! ## A316837.P17266034975437512182

`record[n-A000041(n)*A254990(n)]`
-/

namespace A316837.P17266034975437512182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000041 n * A254990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316837.P17266034975437512182

/-! ## A316837.P17696290414719321000

`lt[A317954(n+1), A191258(A191260(n+1))]`
-/

namespace A316837.P17696290414719321000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191258 (A191260 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316837.P17696290414719321000

/-!
# A316838: Indices of 1's in A254990.

The programs for A316838, there is no canonical definition to state claims against.
-/

/-! ## A316838.P2092627099875576309

`A316837(A316837(n+1)+1)+1`
-/

namespace A316838.P2092627099875576309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316837 (A316837 (n + 1) + 1).toNat + 1

end

end A316838.P2092627099875576309

/-! ## A316838.P184787030705355032

`eq[1, A254990(n)]`
-/

namespace A316838.P184787030705355032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316838.P184787030705355032

/-! ## A316838.P12754927431122230066

`eq[2, A317954(n+1)]`
-/

namespace A316838.P12754927431122230066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316838.P12754927431122230066

/-! ## A316838.P12026506900163595803

`eq[7, Δ[A316839(n+1)]]`
-/

namespace A316838.P12026506900163595803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316838.P12026506900163595803

/-! ## A316838.P12387407617634781544

`eq[14, Δ[A316840(n+1)]]`
-/

namespace A316838.P12387407617634781544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316838.P12387407617634781544

/-!
# A316839: Indices of 2's in A254990.

The programs for A316839, there is no canonical definition to state claims against.
-/

/-! ## A316839.P9750107569826211803

`A316838(A316837(n+1)+1)+2`
-/

namespace A316839.P9750107569826211803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316838 (A316837 (n + 1) + 1).toNat + 2

end

end A316839.P9750107569826211803

/-! ## A316839.P6389762501103007188

`A316837(A316838(n+1))+3`
-/

namespace A316839.P6389762501103007188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316837 (A316838 (n + 1)).toNat + 3

end

end A316839.P6389762501103007188

/-! ## A316839.P13996937557904385354

`A316837(eq[2, A317954(n+1)])+3`
-/

namespace A316839.P13996937557904385354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 3

end

end A316839.P13996937557904385354

/-! ## A316839.P8949181703770311319

`eq[2, A254990(n)]`
-/

namespace A316839.P8949181703770311319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316839.P8949181703770311319

/-! ## A316839.P7909233923807612541

`eq[3, A317954(n+1)]`
-/

namespace A316839.P7909233923807612541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316839.P7909233923807612541

/-! ## A316839.P10346951285730939574

`lt[1, A317954(A317954(n+1)+n)]`
-/

namespace A316839.P10346951285730939574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (A317954 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A316839.P10346951285730939574

/-!
# A316840: Indices of 3's in A254990.

The programs for A316840, there is no canonical definition to state claims against.
-/

/-! ## A316840.P18295277635843651149

`A316838(A316838(n+1))+6`
-/

namespace A316840.P18295277635843651149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316838 (A316838 (n + 1)).toNat + 6

end

end A316840.P18295277635843651149

/-! ## A316840.P16863032262778309237

`A316837(A316839(n+1))+3`
-/

namespace A316840.P16863032262778309237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316837 (A316839 (n + 1)).toNat + 3

end

end A316840.P16863032262778309237

/-! ## A316840.P485898436322972690

`A316837(eq[3, A317954(n+1)])+3`
-/

namespace A316840.P485898436322972690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 3

end

end A316840.P485898436322972690

/-! ## A316840.P18096768463690955946

`lt[2, A254990(n)]`
-/

namespace A316840.P18096768463690955946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A316840.P18096768463690955946

/-! ## A316840.P2373731432930419547

`lt[3, A317954(n+1)]`
-/

namespace A316840.P2373731432930419547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A316840.P2373731432930419547

/-! ## A316840.P941642728326665560

`eq[A113923(n), A254990(n)]`
-/

namespace A316840.P941642728326665560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113923 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316840.P941642728326665560

/-! ## A316840.P8466391166330372033

`eq[A122553(n), A254990(n)]`
-/

namespace A316840.P8466391166330372033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316840.P8466391166330372033

/-! ## A316840.P7097878623508507563

`eq[A158799(n), A254990(n)]`
-/

namespace A316840.P7097878623508507563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316840.P7097878623508507563

/-! ## A316840.P1127279235328991918

`eq[A040002(n), A317954(n+1)]`
-/

namespace A316840.P1127279235328991918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316840.P1127279235328991918

/-! ## A316840.P18421455787379307239

`eq[A157532(n+1), A254990(n)]`
-/

namespace A316840.P18421455787379307239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316840.P18421455787379307239

/-! ## A316840.P6130278650596435997

`eq[A255176(n), A317954(n+1)]`
-/

namespace A316840.P6130278650596435997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316840.P6130278650596435997

/-! ## A316840.P16275733359441216195

`eq[A297217(n+1), A317954(n+1)]`
-/

namespace A316840.P16275733359441216195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316840.P16275733359441216195

/-! ## A316840.P4996725822444423508

`eq[A154040(n+4), A317954(n+1)]`
-/

namespace A316840.P4996725822444423508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154040 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316840.P4996725822444423508

/-! ## A316840.P9729973906920023224

`eq[A200811(A200811(n+1)), A254990(n)]`
-/

namespace A316840.P9729973906920023224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200811 (A200811 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316840.P9729973906920023224

/-! ## A316840.P16140344768010665081

`eq[A088899(A088899(n+1)), A317954(n+1)]`
-/

namespace A316840.P16140344768010665081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088899 (A088899 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316840.P16140344768010665081

/-! ## A316840.P6768742911254086852

`eq[1, A317954(A316837(n+2))]`
-/

namespace A316840.P6768742911254086852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (A316837 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316840.P6768742911254086852

/-!
# A316841: Three-column table read by rows giving integer sides of proper triangles (i,j,k) with i >= j >= k >= 1, j+k > i.

The programs for A316841, there is no canonical definition to state claims against.
-/

/-! ## A316841.P11193087091280800898

`A105446(A164875(n+1)+1)`
-/

namespace A316841.P11193087091280800898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105446 (A164875 (n + 1) + 1).toNat

end

end A316841.P11193087091280800898

/-! ## A316841.P10009965965234314355

`A087802(∑[A073711(n)]*A299755(n+1))`
-/

namespace A316841.P10009965965234314355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 ((∑ j ∈ Finset.range (n + 1), f1 j) * A299755 (n + 1)).toNat

end

end A316841.P10009965965234314355

/-! ## A316841.P3172869438408972675

`A237442(A365456(2*n+5)+A216652(n+1))`
-/

namespace A316841.P3172869438408972675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (A365456 (2 * n + 5) + A216652 (n + 1)).toNat

end

end A316841.P3172869438408972675

/-! ## A316841.P3164891133659747678

`A323436(A245707(n+1)+A131714(n))`
-/

namespace A316841.P3164891133659747678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 (A245707 (n + 1) + A131714 n).toNat

end

end A316841.P3164891133659747678

/-! ## A316841.P17780573740331477824

`A001221(A000213(n+3)-A131132(n))`
-/

namespace A316841.P17780573740331477824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000213 (n + 3) - A131132 n).toNat

end

end A316841.P17780573740331477824

/-!
# A316842: Three-column table read by rows giving primitive integer sides of proper triangles (i,j,k) with i >= j >= k >= 1, j+k > i, gcd(i,j,k) = 1.

The programs for A316842, there is no canonical definition to state claims against.
-/

/-! ## A316842.P7678270479335552101

`A000120(A327715(∑[A101776(n)]))`
-/

namespace A316842.P7678270479335552101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A327715 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A316842.P7678270479335552101

/-! ## A316842.P10872790815377285490

`A347627(n)-A326033(A108470(n+1))`
-/

namespace A316842.P10872790815377285490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347627 n - A326033 (A108470 (n + 1)).toNat

end

end A316842.P10872790815377285490

/-! ## A316842.P13024291135747284711

`A000164(2*n+1)+2*A025428(2*n+1)-A326033(A108470(n+1))`
-/

namespace A316842.P13024291135747284711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (2 * n + 1) + 2 * A025428 (2 * n + 1) - A326033 (A108470 (n + 1)).toNat

end

end A316842.P13024291135747284711

/-! ## A316842.P9471158645426802208

`A001221(A265639(n+1)-A289814(n))`
-/

namespace A316842.P9471158645426802208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A265639 (n + 1) - A289814 n).toNat

end

end A316842.P9471158645426802208

/-! ## A316842.P11503107678386845812

`A064547(A362640(n+1)+A000002(n+1))`
-/

namespace A316842.P11503107678386845812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A362640 (n + 1) + A000002 (n + 1)).toNat

end

end A316842.P11503107678386845812

/-!
# A316843: Column 1 of table A316841.

The programs for A316843, the canonical program `A316843.P14006667916182505306` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316843 has offset 1).

The definition of A316843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316843.P14006667916182505306

`∑[char[∑[floor((n/2)²)]]]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A316843

/-- `∑[char[∑[floor((n/2)²)]]]` -/
def P14006667916182505306.Spec : Prop :=
  ∀ n, (P14006667916182505306.a n : ℤ) = A316843 (n + 1)

theorem P14006667916182505306.correct : P14006667916182505306.Spec := by
  intro n
  simp only [A316843, Nat.add_sub_cancel]

end A316843

/-! ## A316843.P11507915769618908603

`comp[∑[a(n-2)+n]-1]-n` with `a(0)=1, a(1)=2`
-/

namespace A316843.P11507915769618908603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A316843.P11507915769618908603

namespace A316843

/-- `comp[∑[a(n-2)+n]-1]-n` -/
def P11507915769618908603.Spec : Prop :=
  ∀ n, P11507915769618908603.a n = A316843 (n + 1)

end A316843

/-! ## A316843.P13908362990418540329

`A316841(3*n+1)`
-/

namespace A316843.P13908362990418540329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316841 (3 * n + 1)

end

end A316843.P13908362990418540329

namespace A316843

/-- `A316841(3*n+1)` -/
def P13908362990418540329.Spec : Prop :=
  ∀ n, P13908362990418540329.a n = A316843 (n + 1)

end A316843

/-! ## A316843.P18304399383940867451

`∑[char[A002623(n)]]+1`
-/

namespace A316843.P18304399383940867451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A316843.P18304399383940867451

namespace A316843

/-- `∑[char[A002623(n)]]+1` -/
def P18304399383940867451.Spec : Prop :=
  ∀ n, (P18304399383940867451.a n : ℤ) = A316843 (n + 1)

end A316843

/-! ## A316843.P14741886233367313934

`∑[char[A173196(n+2)]]+1`
-/

namespace A316843.P14741886233367313934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A316843.P14741886233367313934

namespace A316843

/-- `∑[char[A173196(n+2)]]+1` -/
def P14741886233367313934.Spec : Prop :=
  ∀ n, (P14741886233367313934.a n : ℤ) = A316843 (n + 1)

end A316843

/-! ## A316843.P9485040450699579189

`∑[char[A144678(2*n)]]+1`
-/

namespace A316843.P9485040450699579189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144678 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A316843.P9485040450699579189

namespace A316843

/-- `∑[char[A144678(2*n)]]+1` -/
def P9485040450699579189.Spec : Prop :=
  ∀ n, (P9485040450699579189.a n : ℤ) = A316843 (n + 1)

end A316843

/-! ## A316843.P11371083923938304754

`∑[char[∑[A002620(n+2)]]]+1`
-/

namespace A316843.P11371083923938304754
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A316843.P11371083923938304754

namespace A316843

/-- `∑[char[∑[A002620(n+2)]]]+1` -/
def P11371083923938304754.Spec : Prop :=
  ∀ n, (P11371083923938304754.a n : ℤ) = A316843 (n + 1)

end A316843

/-! ## A316843.P3981556932741035790

`∑[char[∑[A002265(n²)+n+1]]]+1`
-/

namespace A316843.P3981556932741035790
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n ^ 2) + (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A316843.P3981556932741035790

namespace A316843

/-- `∑[char[∑[A002265(n²)+n+1]]]+1` -/
def P3981556932741035790.Spec : Prop :=
  ∀ n, (P3981556932741035790.a n : ℤ) = A316843 (n + 1)

end A316843

/-! ## A316843.P3043632172575191450

`A118759(A316841(n+1+n+n))`
-/

namespace A316843.P3043632172575191450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A316841 (n + 1 + (n + n))).toNat

end

end A316843.P3043632172575191450

namespace A316843

/-- `A118759(A316841(n+1+n+n))` -/
def P3043632172575191450.Spec : Prop :=
  ∀ n, P3043632172575191450.a n = A316843 (n + 1)

end A316843

/-! ## A316843.P10749629674298792716

`A316851(n+1)-(A316845(n+1)+A316844(n+1))`
-/

namespace A316843.P10749629674298792716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316851 (n + 1) - (A316845 (n + 1) + A316844 (n + 1))

end

end A316843.P10749629674298792716

namespace A316843

/-- `A316851(n+1)-(A316845(n+1)+A316844(n+1))` -/
def P10749629674298792716.Spec : Prop :=
  ∀ n, P10749629674298792716.a n = A316843 (n + 1)

end A316843

/-!
# A316844: Column 2 of table A316841.

The programs for A316844, the canonical program `A316844.P16115526743851967488` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316844 has offset 1).

The definition of A316844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316844.P5936198159549159221

`A316841(3*n+2)`
-/

namespace A316844.P5936198159549159221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316841 (3 * n + 2)

end

end A316844.P5936198159549159221

namespace A316844

/-- `A316841(3*n+2)` -/
def P5936198159549159221.Spec : Prop :=
  ∀ n, P5936198159549159221.a n = A316844 (n + 1)

end A316844

/-! ## A316844.P3067713530800195465

`A316841(A016789(n))%41`
-/

namespace A316844.P3067713530800195465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316841 (A016789 n).toNat) 41

end

end A316844.P3067713530800195465

namespace A316844

/-- `A316841(A016789(n))%41` -/
def P3067713530800195465.Spec : Prop :=
  ∀ n, P3067713530800195465.a n = A316844 (n + 1)

end A316844

/-! ## A316844.P16115526743851967488

`A056557(lt[A056559(n), A056558(n)])`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A316844

/-- `A056557(lt[A056559(n), A056558(n)])` -/
def P16115526743851967488.Spec : Prop :=
  ∀ n, P16115526743851967488.a n = A316844 (n + 1)

theorem P16115526743851967488.correct : P16115526743851967488.Spec := by
  intro n
  simp only [A316844, Nat.add_sub_cancel]

end A316844

/-! ## A316844.P9388260014651585228

`A056557(lt[A056559(n), A056560(n)])`
-/

namespace A316844.P9388260014651585228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316844.P9388260014651585228

namespace A316844

/-- `A056557(lt[A056559(n), A056560(n)])` -/
def P9388260014651585228.Spec : Prop :=
  ∀ n, P9388260014651585228.a n = A316844 (n + 1)

end A316844

/-! ## A316844.P6276402903387587872

`∑{d}[A316841(A016789(n)), A000010(#)]`
-/

namespace A316844.P6276402903387587872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316841 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A316844.P6276402903387587872

namespace A316844

/-- `∑{d}[A316841(A016789(n)), A000010(#)]` -/
def P6276402903387587872.Spec : Prop :=
  ∀ n, P6276402903387587872.a n = A316844 (n + 1)

end A316844

/-! ## A316844.P6417310343276523289

`A316841(A016789(n))+A002620(C(n, n²))`
-/

namespace A316844.P6417310343276523289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316841 (A016789 n).toNat + A002620 (Nat.choose n (n ^ 2))

end

end A316844.P6417310343276523289

namespace A316844

/-- `A316841(A016789(n))+A002620(C(n, n²))` -/
def P6417310343276523289.Spec : Prop :=
  ∀ n, P6417310343276523289.a n = A316844 (n + 1)

end A316844

/-! ## A316844.P12532948232782902935

`A316851(n+1)-(A316845(n+1)+A316843(n+1))`
-/

namespace A316844.P12532948232782902935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316851 (n + 1) - (A316845 (n + 1) + A316843 (n + 1))

end

end A316844.P12532948232782902935

namespace A316844

/-- `A316851(n+1)-(A316845(n+1)+A316843(n+1))` -/
def P12532948232782902935.Spec : Prop :=
  ∀ n, P12532948232782902935.a n = A316844 (n + 1)

end A316844

/-! ## A316844.P18243139834292063926

`A179635(A316849(n+1))`
-/

namespace A316844.P18243139834292063926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179635 (A316849 (n + 1)).toNat

end

end A316844.P18243139834292063926

namespace A316844

/-- `A179635(A316849(n+1))` -/
def P18243139834292063926.Spec : Prop :=
  ∀ n, P18243139834292063926.a n = A316844 (n + 1)

end A316844

/-!
# A316845: Column 3 of table A316841.

The programs for A316845, the canonical program `A316845.P7291579847746609250` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316845 has offset 1).

The definition of A316845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316845.P3378592240391507837

`A316841(3*(n+1))`
-/

namespace A316845.P3378592240391507837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316841 (3 * (n + 1))

end

end A316845.P3378592240391507837

namespace A316845

/-- `A316841(3*(n+1))` -/
def P3378592240391507837.Spec : Prop :=
  ∀ n, P3378592240391507837.a n = A316845 (n + 1)

end A316845

/-! ## A316845.P7291579847746609250

`A056558(lt[A056559(n), A056558(n)])`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A316845

/-- `A056558(lt[A056559(n), A056558(n)])` -/
def P7291579847746609250.Spec : Prop :=
  ∀ n, P7291579847746609250.a n = A316845 (n + 1)

theorem P7291579847746609250.correct : P7291579847746609250.Spec := by
  intro n
  simp only [A316845, Nat.add_sub_cancel]

end A316845

/-! ## A316845.P652715567461435447

`A316851(n+1)-(A316844(n+1)+A316843(n+1))`
-/

namespace A316845.P652715567461435447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316851 (n + 1) - (A316844 (n + 1) + A316843 (n + 1))

end

end A316845.P652715567461435447

namespace A316845

/-- `A316851(n+1)-(A316844(n+1)+A316843(n+1))` -/
def P652715567461435447.Spec : Prop :=
  ∀ n, P652715567461435447.a n = A316845 (n + 1)

end A316845

/-! ## A316845.P14807364645895351431

`A316849(n+1)%10`
-/

namespace A316845.P14807364645895351431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316849 (n + 1)) 10

end

end A316845.P14807364645895351431

namespace A316845

/-- `A316849(n+1)%10` -/
def P14807364645895351431.Spec : Prop :=
  ∀ n, P14807364645895351431.a n = A316845 (n + 1)

end A316845

/-! ## A316845.P13253493152753152753

`A010879(A316849(n+1))`
-/

namespace A316845.P13253493152753152753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A316849 (n + 1)).toNat

end

end A316845.P13253493152753152753

namespace A316845

/-- `A010879(A316849(n+1))` -/
def P13253493152753152753.Spec : Prop :=
  ∀ n, P13253493152753152753.a n = A316845 (n + 1)

end A316845

/-! ## A316845.P2654571449875184127

`A010889(A316849(n+1)-1)`
-/

namespace A316845.P2654571449875184127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010889 (A316849 (n + 1) - 1).toNat

end

end A316845.P2654571449875184127

namespace A316845

/-- `A010889(A316849(n+1)-1)` -/
def P2654571449875184127.Spec : Prop :=
  ∀ n, P2654571449875184127.a n = A316845 (n + 1)

end A316845

/-! ## A316845.P13677718078183929899

`A274206(A316849(n+1)+10)`
-/

namespace A316845.P13677718078183929899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (A316849 (n + 1) + 10).toNat

end

end A316845.P13677718078183929899

namespace A316845

/-- `A274206(A316849(n+1)+10)` -/
def P13677718078183929899.Spec : Prop :=
  ∀ n, P13677718078183929899.a n = A316845 (n + 1)

end A316845

/-!
# A316846: Column 1 of table A316842.

The programs for A316846, the canonical program `A316846.P7827768282836125072` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316846 has offset 1).

The definition of A316846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316846.P4620346501359799841

`A316842(3*n+1)`
-/

namespace A316846.P4620346501359799841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316842 (3 * n + 1)

end

end A316846.P4620346501359799841

namespace A316846

/-- `A316842(3*n+1)` -/
def P4620346501359799841.Spec : Prop :=
  ∀ n, P4620346501359799841.a n = A316846 (n + 1)

end A316846

/-! ## A316846.P7827768282836125072

`∑[char[A123324(n+1)]]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A316846

/-- `∑[char[A123324(n+1)]]+1` -/
def P7827768282836125072.Spec : Prop :=
  ∀ n, (P7827768282836125072.a n : ℤ) = A316846 (n + 1)

theorem P7827768282836125072.correct : P7827768282836125072.Spec := by
  intro n
  simp only [A316846, Nat.add_sub_cancel]

end A316846

/-! ## A316846.P17685488444731055861

`∑[char[∑[A123323(n+1)]]]+1`
-/

namespace A316846.P17685488444731055861
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A316846.P17685488444731055861

namespace A316846

/-- `∑[char[∑[A123323(n+1)]]]+1` -/
def P17685488444731055861.Spec : Prop :=
  ∀ n, (P17685488444731055861.a n : ℤ) = A316846 (n + 1)

end A316846

/-! ## A316846.P14042463112687162434

`or(A000007(n), A316842(A016777(n)))`
-/

namespace A316846.P14042463112687162434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A316842 (A016777 n).toNat)

end

end A316846.P14042463112687162434

namespace A316846

/-- `or(A000007(n), A316842(A016777(n)))` -/
def P14042463112687162434.Spec : Prop :=
  ∀ n, P14042463112687162434.a n = A316846 (n + 1)

end A316846

/-! ## A316846.P17742029399108479434

`A316842(A016777(n))+A000007(n+1)`
-/

namespace A316846.P17742029399108479434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316842 (A016777 n).toNat + A000007 (n + 1)

end

end A316846.P17742029399108479434

namespace A316846

/-- `A316842(A016777(n))+A000007(n+1)` -/
def P17742029399108479434.Spec : Prop :=
  ∀ n, P17742029399108479434.a n = A316846 (n + 1)

end A316846

/-! ## A316846.P3892962292707479894

`A316852(n+1)-(A316848(n+1)+A316847(n+1))`
-/

namespace A316846.P3892962292707479894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316852 (n + 1) - (A316848 (n + 1) + A316847 (n + 1))

end

end A316846.P3892962292707479894

namespace A316846

/-- `A316852(n+1)-(A316848(n+1)+A316847(n+1))` -/
def P3892962292707479894.Spec : Prop :=
  ∀ n, P3892962292707479894.a n = A316846 (n + 1)

end A316846

/-! ## A316846.P4761837322011295963

`A000030(A316850(n+1))`
-/

namespace A316846.P4761837322011295963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A316850 (n + 1)).toNat

end

end A316846.P4761837322011295963

namespace A316846

/-- `A000030(A316850(n+1))` -/
def P4761837322011295963.Spec : Prop :=
  ∀ n, P4761837322011295963.a n = A316846 (n + 1)

end A316846

/-!
# A316847: Column 2 of table A316842.

The programs for A316847, there is no canonical definition to state claims against.
-/

/-! ## A316847.P8818556141252386938

`A316842(3*n+2)`
-/

namespace A316847.P8818556141252386938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316842 (3 * n + 2)

end

end A316847.P8818556141252386938

/-! ## A316847.P10854950432733448929

`A316842(A016789(n))%70`
-/

namespace A316847.P10854950432733448929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316842 (A016789 n).toNat) 70

end

end A316847.P10854950432733448929

/-! ## A316847.P12391242540791847922

`abs(A000038(n)-A316842(A016789(n)))`
-/

namespace A316847.P12391242540791847922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000038 n - A316842 (A016789 n).toNat|

end

end A316847.P12391242540791847922

/-! ## A316847.P7892967745313162639

`A316842(A016789(n))+val(A000124(n), 3)`
-/

namespace A316847.P7892967745313162639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316842 (A016789 n).toNat + (SequenceMachineLib.valuation (A000124 n).toNat 3 : ℤ)

end

end A316847.P7892967745313162639

/-! ## A316847.P6528648148604397346

`A316842(A016789(n))/val(A001749(n+1), 4)`
-/

namespace A316847.P6528648148604397346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316842 (A016789 n).toNat : ℚ) / (SequenceMachineLib.valuation (A001749 (n + 1)).toNat 4 : ℚ)

end

end A316847.P6528648148604397346

/-! ## A316847.P15693190523552636606

`A316842(A016789(n))+val(n+1, A288374(n+1))`
-/

namespace A316847.P15693190523552636606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316842 (A016789 n).toNat + (SequenceMachineLib.valuation (n + 1) (A288374 (n + 1)).toNat : ℤ)

end

end A316847.P15693190523552636606

/-! ## A316847.P1549585493169657054

`A316852(n+1)-(A316848(n+1)+A316846(n+1))`
-/

namespace A316847.P1549585493169657054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316852 (n + 1) - (A316848 (n + 1) + A316846 (n + 1))

end

end A316847.P1549585493169657054

/-! ## A316847.P9420723544660906968

`A010685(4*4*n)*A316842(A016789(n))`
-/

namespace A316847.P9420723544660906968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (4 * (4 * n)) * A316842 (A016789 n).toNat

end

end A316847.P9420723544660906968

/-! ## A316847.P13471127681763167253

`A179635(A316850(n+1))`
-/

namespace A316847.P13471127681763167253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179635 (A316850 (n + 1)).toNat

end

end A316847.P13471127681763167253

/-!
# A316848: Column 3 of table A316842.

The programs for A316848, there is no canonical definition to state claims against.
-/

/-! ## A316848.P17887869292485393132

`A316842(3*(n+1))`
-/

namespace A316848.P17887869292485393132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316842 (3 * (n + 1))

end

end A316848.P17887869292485393132

/-! ## A316848.P1321542150163383971

`A316842(A008486(n+1))%75`
-/

namespace A316848.P1321542150163383971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316842 (A008486 (n + 1)).toNat) 75

end

end A316848.P1321542150163383971

/-! ## A316848.P4056484297776952677

`A316842(A008486(n+1))/A000203(((-1)^n)²)`
-/

namespace A316848.P4056484297776952677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316842 (A008486 (n + 1)).toNat : ℚ) / (A000203 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A316848.P4056484297776952677

/-! ## A316848.P3265274840877907586

`A316852(n+1)-(A316847(n+1)+A316846(n+1))`
-/

namespace A316848.P3265274840877907586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316852 (n + 1) - (A316847 (n + 1) + A316846 (n + 1))

end

end A316848.P3265274840877907586

/-! ## A316848.P2385597921728909529

`A316842(A008486(n+1))/A001222(A051698(n))`
-/

namespace A316848.P2385597921728909529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316842 (A008486 (n + 1)).toNat : ℚ) / (A001222 (A051698 n).toNat : ℚ)

end

end A316848.P2385597921728909529

/-! ## A316848.P15296859678224888916

`A316850(n+1)%10`
-/

namespace A316848.P15296859678224888916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316850 (n + 1)) 10

end

end A316848.P15296859678224888916

/-! ## A316848.P9144469641019672502

`A010879(A316850(n+1))`
-/

namespace A316848.P9144469641019672502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A316850 (n + 1)).toNat

end

end A316848.P9144469641019672502

/-!
# A316849: The table in A316841 with columns concatenated to form a single number.

The programs for A316849, there is no canonical definition to state claims against.
-/

/-! ## A316849.P15171911970838716398

`∩[A279777(n+1), A343760(n+1)]`
-/

namespace A316849.P15171911970838716398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316849.P15171911970838716398

/-! ## A316849.P4525940465890351172

`∩[A343450(n+1), A343760(n+1)]`
-/

namespace A316849.P4525940465890351172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316849.P4525940465890351172

/-!
# A316850: The table in A316842 with columns concatenated to form a single number.

The programs for A316850, there is no canonical definition to state claims against.
-/

/-! ## A316850.P18329267072325253376

`record[gcd(A262679(n), A316849(n+1))]`
-/

namespace A316850.P18329267072325253376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A262679 n) (A316849 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316850.P18329267072325253376

/-! ## A316850.P12562112530835038763

`A316849(eq[A093148(n), A123895(n)])`
-/

namespace A316850.P12562112530835038763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093148 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316849 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A316850.P12562112530835038763

/-! ## A316850.P2387624133142490640

`A316849(eq[A025792(n), A175597(n+1)]+1)`
-/

namespace A316850.P2387624133142490640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025792 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316849 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A316850.P2387624133142490640

/-!
# A316851: Consider integer triangles as listed in rows of table A316841. Sequence gives perimeters of these triangles in the same order.

The programs for A316851, the canonical program `A316851.P8837201044806511717` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316851 has offset 1).

The definition of A316851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316851.P8837201044806511717

`A070770(lt[A056559(n), A056558(n)])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A316851

/-- `A070770(lt[A056559(n), A056558(n)])` -/
def P8837201044806511717.Spec : Prop :=
  ∀ n, P8837201044806511717.a n = A316851 (n + 1)

theorem P8837201044806511717.correct : P8837201044806511717.Spec := by
  intro n
  simp only [A316851, Nat.add_sub_cancel]

end A316851

/-! ## A316851.P3593714301918741309

`A316843(n+1)+A316845(n+1)+A316844(n+1)`
-/

namespace A316851.P3593714301918741309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (n + 1) + (A316845 (n + 1) + A316844 (n + 1))

end

end A316851.P3593714301918741309

namespace A316851

/-- `A316843(n+1)+A316845(n+1)+A316844(n+1)` -/
def P3593714301918741309.Spec : Prop :=
  ∀ n, P3593714301918741309.a n = A316851 (n + 1)

end A316851

/-! ## A316851.P13248861724188108905

`A316841(3*n+1)+A316845(n+1)+A316844(n+1)`
-/

namespace A316851.P13248861724188108905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316841 (3 * n + 1) + (A316845 (n + 1) + A316844 (n + 1))

end

end A316851.P13248861724188108905

namespace A316851

/-- `A316841(3*n+1)+A316845(n+1)+A316844(n+1)` -/
def P13248861724188108905.Spec : Prop :=
  ∀ n, P13248861724188108905.a n = A316851 (n + 1)

end A316851

/-! ## A316851.P3374291452895068475

`A316841(3*n+1)+A316841(3*n+2)+A316841(3*(n+1))`
-/

namespace A316851.P3374291452895068475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316841 (3 * n + 1) + (A316841 (3 * n + 2) + A316841 (3 * (n + 1)))

end

end A316851.P3374291452895068475

namespace A316851

/-- `A316841(3*n+1)+A316841(3*n+2)+A316841(3*(n+1))` -/
def P3374291452895068475.Spec : Prop :=
  ∀ n, P3374291452895068475.a n = A316851 (n + 1)

end A316851

/-! ## A316851.P1847870868903373079

`∑{digits}[A316849(n+1), #]`
-/

namespace A316851.P1847870868903373079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316849 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A316851.P1847870868903373079

namespace A316851

/-- `∑{digits}[A316849(n+1), #]` -/
def P1847870868903373079.Spec : Prop :=
  ∀ n, (P1847870868903373079.a n : ℤ) = A316851 (n + 1)

end A316851

/-! ## A316851.P12833769474376493604

`A007953(A316849(n+1))`
-/

namespace A316851.P12833769474376493604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A316849 (n + 1)).toNat

end

end A316851.P12833769474376493604

namespace A316851

/-- `A007953(A316849(n+1))` -/
def P12833769474376493604.Spec : Prop :=
  ∀ n, P12833769474376493604.a n = A316851 (n + 1)

end A316851

/-!
# A316852: Consider primitive integer triangles as listed in rows of table A316842. Sequence gives perimeters of these triangles in the same order.

The programs for A316852, there is no canonical definition to state claims against.
-/

/-! ## A316852.P17303987660948307037

`A316846(n+1)+A316848(n+1)+A316847(n+1)`
-/

namespace A316852.P17303987660948307037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316846 (n + 1) + (A316848 (n + 1) + A316847 (n + 1))

end

end A316852.P17303987660948307037

/-! ## A316852.P11753870940889372923

`A316842(3*n+1)+A316842(3*n+2)+A316842(3*(n+1))`
-/

namespace A316852.P11753870940889372923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316842 (3 * n + 1) + (A316842 (3 * n + 2) + A316842 (3 * (n + 1)))

end

end A316852.P11753870940889372923

/-! ## A316852.P3040694448498225083

`∑{digits}[A316850(n+1), #]`
-/

namespace A316852.P3040694448498225083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316850 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A316852.P3040694448498225083

/-! ## A316852.P12123426883933611682

`A007953(A316850(n+1))`
-/

namespace A316852.P12123426883933611682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A316850 (n + 1)).toNat

end

end A316852.P12123426883933611682

/-! ## A316852.P16345071064994421668

`A004092(5*A316850(n+1))`
-/

namespace A316852.P16345071064994421668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * A316850 (n + 1)).toNat

end

end A316852.P16345071064994421668

/-!
# A316854: Number of integer partitions of n whose reciprocal sum is the reciprocal of an integer.

The programs for A316854, there is no canonical definition to state claims against.
-/

/-! ## A316854.P9550885246398094499

`A327924(A029494(n+1)+4)`
-/

namespace A316854.P9550885246398094499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327924 (A029494 (n + 1) + 4).toNat

end

end A316854.P9550885246398094499

/-! ## A316854.P17779563777932110688

`A294937(A051033(n))+A000188(n+1)`
-/

namespace A316854.P17779563777932110688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (A051033 n).toNat + A000188 (n + 1)

end

end A316854.P17779563777932110688

/-! ## A316854.P15577367965361347974

`A071974(A000031(n)/A326297(n+1))`
-/

namespace A316854.P15577367965361347974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (SequenceMachineLib.roundAway ((A000031 n : ℚ) / (A326297 (n + 1) : ℚ))).toNat

end

end A316854.P15577367965361347974

/-! ## A316854.P3758515392246180164

`A287372(A239909(n+1))+A000188(n+1)`
-/

namespace A316854.P3758515392246180164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287372 (A239909 (n + 1)).toNat + A000188 (n + 1)

end

end A316854.P3758515392246180164

/-!
# A316855: Heinz numbers of integer partitions whose reciprocal sum is 1.

The programs for A316855, there is no canonical definition to state claims against.
-/

/-! ## A316855.P18351424561669593185

`eq[2, A318573(2*(n+1))]+1`
-/

namespace A316855.P18351424561669593185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316855.P18351424561669593185

/-! ## A316855.P13426852831283864916

`eq[2, A318573(A004277(n))]`
-/

namespace A316855.P13426852831283864916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316855.P13426852831283864916

/-! ## A316855.P7526336498854793806

`eq[2, A318573(A028310(2*n))]`
-/

namespace A316855.P7526336498854793806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316855.P7526336498854793806

/-! ## A316855.P6137089371064470630

`A020725(eq[2, A318573(2*(n+1))])`
-/

namespace A316855.P6137089371064470630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316855.P6137089371064470630

/-!
# A316856: Heinz numbers of integer partitions whose reciprocal sum is an integer.

The programs for A316856, there is no canonical definition to state claims against.
-/

/-! ## A316856.P9925395704975001810

`∪[A316902(n+1), A324524(n+1)]`
-/

namespace A316856.P9925395704975001810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316856.P9925395704975001810

/-! ## A316856.P11373713829485639200

`record[(n+1)/(A318573(2*(n+1))-A318573(n+1))]`
-/

namespace A316856.P11373713829485639200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A318573 (2 * (n + 1)) - A318573 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316856.P11373713829485639200

/-! ## A316856.P11447272315700894368

`record[A025480(A316900(n+1))]`
-/

namespace A316856.P11447272315700894368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A316900 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316856.P11447272315700894368

/-! ## A316856.P5529303015429988997

`record[A003602(A316900(n+1)-1)]`
-/

namespace A316856.P5529303015429988997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A316900 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316856.P5529303015429988997

/-! ## A316856.P17740788074955022657

`record[A032742(A316900(A008621(n)))]`
-/

namespace A316856.P17740788074955022657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A316900 (A008621 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316856.P17740788074955022657

/-!
# A316857: Heinz numbers of integer partitions whose reciprocal sum is the reciprocal of an integer.

The programs for A316857, there is no canonical definition to state claims against.
-/

/-! ## A316857.P12534190462912708733

`eq[1, A318573(n+1)]+1`
-/

namespace A316857.P12534190462912708733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316857.P12534190462912708733

/-! ## A316857.P17070388972317295450

`eq[0, a(A318573(n))-1]` with `a(0)=2`
-/

namespace A316857.P17070388972317295450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (A318573 n).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316857.P17070388972317295450

/-! ## A316857.P17636119028012961462

`record[(n+2)/A318573(n+2)]`
-/

namespace A316857.P17636119028012961462
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A318573 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316857.P17636119028012961462

/-! ## A316857.P17193910387160809100

`eq[1, A318573(A028310(n))]`
-/

namespace A316857.P17193910387160809100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316857.P17193910387160809100

/-! ## A316857.P12185557159500948685

`A020725(eq[1, A318573(n+1)])`
-/

namespace A316857.P12185557159500948685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316857.P12185557159500948685

/-! ## A316857.P18344178292107379970

`eq[1, A000065(a(A318573(n)))]` with `a(0)=3`
-/

namespace A316857.P18344178292107379970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000065 (f2 (A318573 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316857.P18344178292107379970

/-! ## A316857.P14828033500594935169

`eq[1, A002620(a(A318573(n)))]` with `a(0)=3`
-/

namespace A316857.P14828033500594935169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A002620 (f2 (A318573 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316857.P14828033500594935169

/-! ## A316857.P2485328777442084195

`eq[1, A008724(a(A318573(n)))]` with `a(0)=7`
-/

namespace A316857.P2485328777442084195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  A008724 (f2 (A318573 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316857.P2485328777442084195

/-! ## A316857.P13455203813448305736

`eq[5, A000005(a(A318573(n))²)]` with `a(0)=6`
-/

namespace A316857.P13455203813448305736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A000005 (f2 (A318573 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316857.P13455203813448305736

/-! ## A316857.P1368938409336646586

`eq[1, A001222(a(A318573(n))!)]` with `a(0)=3`
-/

namespace A316857.P1368938409336646586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A001222 (Nat.factorial (f2 (A318573 n).toNat).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316857.P1368938409336646586

/-!
# A316858: Triangle read by rows constructed from A090368 as sum of least prime factors.

The programs for A316858, there is no canonical definition to state claims against.
-/

/-! ## A316858.P14592226283087304511

`A316859(∑[∑[A076710(n)]])`
-/

namespace A316858.P14592226283087304511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076710 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316859 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A316858.P14592226283087304511

/-! ## A316858.P16834454237051726852

`A076710(n)!*A316859(n+1)`
-/

namespace A316858.P16834454237051726852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A076710 n).toNat : ℤ) * A316859 (n + 1)

end

end A316858.P16834454237051726852

/-! ## A316858.P12970075161608105098

`A316859(n+1)%A046049(n+4)`
-/

namespace A316858.P12970075161608105098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316859 (n + 1)) (A046049 (n + 4))

end

end A316858.P12970075161608105098

/-! ## A316858.P8495047572173068094

`A316859(n+1)%A000143(A053375(n))`
-/

namespace A316858.P8495047572173068094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316859 (n + 1)) (A000143 (A053375 n).toNat)

end

end A316858.P8495047572173068094

/-!
# A316860: Integers k that do not divide A053818(k).

The programs for A316860, there is no canonical definition to state claims against.
-/

/-! ## A316860.P2270733846062471057

`eq[4, 4*A287170(n²*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A316860.P2270733846062471057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  4 * A287170 ((n ^ 2 : ℤ) * f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316860.P2270733846062471057

/-! ## A316860.P16323706256523485908

`A097273(A077168(n)+1)`
-/

namespace A316860.P16323706256523485908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097273 (A077168 n + 1).toNat

end

end A316860.P16323706256523485908

/-! ## A316860.P15216491772104595771

`A097273(A187829(n+2))`
-/

namespace A316860.P15216491772104595771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097273 (A187829 (n + 2)).toNat

end

end A316860.P15216491772104595771

/-!
# A316861: a(n) = Sum_{p in P} y(1)*y(2), where P is the set of partitions of n, and y(k) is the number of parts with multiplicity at least k in p.

The programs for A316861, there is no canonical definition to state claims against.
-/

/-! ## A316861.P8119905551601114212

`∑[A120452(n+1)]+A116646(n)-A000097(n)`
-/

namespace A316861.P8119905551601114212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A116646 n - A000097 n)

end

end A316861.P8119905551601114212

/-! ## A316861.P10616012549503610076

`∑[A162776(n)-A057353(n)]`
-/

namespace A316861.P10616012549503610076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162776 n - A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316861.P10616012549503610076

/-! ## A316861.P6630083088956554012

`A191291(A324943(n+1))-A339071(n+1)`
-/

namespace A316861.P6630083088956554012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191291 (A324943 (n + 1)).toNat - A339071 (n + 1)

end

end A316861.P6630083088956554012

/-! ## A316861.P13731455003935980563

`A072088(A072088(round(10^(n/5))))-(A241318(n)+1)`
-/

namespace A316861.P13731455003935980563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A072088 (SequenceMachineLib.roundAway ((10 : ℝ) ^ ((n : ℚ) / 5 : ℝ))).toNat).toNat - (A241318 n + 1)

end

end A316861.P13731455003935980563

/-! ## A316861.P10859163585468898234

`A008616(A096772(n+1)-1)%A075212(2*(n+1))`
-/

namespace A316861.P10859163585468898234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008616 (A096772 (n + 1) - 1).toNat) (A075212 (2 * (n + 1)))

end

end A316861.P10859163585468898234

/-!
# A316862: Expansion of 1/(Sum_{k>=0} (k!)^3 x^k).

The programs for A316862, there is no canonical definition to state claims against.
-/

/-! ## A316862.P14862417296934573498

`A306629(∑[n+3]+n+3)`
-/

namespace A316862.P14862417296934573498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306629 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A316862.P14862417296934573498

/-!
# A316863: Number of times 2 appears in the decimal expansion of n.

The programs for A316863, the canonical program `A316863.P15105122366995460425` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316863 has offset 0).

The definition of A316863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316863.P15105122366995460425

`∑{digits}[n, val(#+6, 8)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A316863

/-- `∑{digits}[n, val(#+6, 8)]` -/
def P15105122366995460425.Spec : Prop :=
  ∀ n, (P15105122366995460425.a n : ℤ) = A316863 n

theorem P15105122366995460425.correct : P15105122366995460425.Spec := by
  intro n
  simp only [A316863]

end A316863

/-! ## A316863.P13548240562922713370

`val(A359802(n), 5)`
-/

namespace A316863.P13548240562922713370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A359802 n).toNat 5

end

end A316863.P13548240562922713370

namespace A316863

/-- `val(A359802(n), 5)` -/
def P13548240562922713370.Spec : Prop :=
  ∀ n, (P13548240562922713370.a n : ℤ) = A316863 n

end A316863

/-! ## A316863.P4143887947294892957

`∑{digits}[n, A080300(#)]`
-/

namespace A316863.P4143887947294892957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A080300 x).sum

end

end A316863.P4143887947294892957

namespace A316863

/-- `∑{digits}[n, A080300(#)]` -/
def P4143887947294892957.Spec : Prop :=
  ∀ n, P4143887947294892957.a n = A316863 n

end A316863

/-! ## A316863.P1188919749862646126

`∑{digits}[n, A083927(#)]`
-/

namespace A316863.P1188919749862646126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A083927 x).sum

end

end A316863.P1188919749862646126

namespace A316863

/-- `∑{digits}[n, A083927(#)]` -/
def P1188919749862646126.Spec : Prop :=
  ∀ n, P1188919749862646126.a n = A316863 n

end A316863

/-! ## A316863.P17232722662248926414

`∑{digits}[n, A181502(#)]`
-/

namespace A316863.P17232722662248926414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A181502 x).sum

end

end A316863.P17232722662248926414

namespace A316863

/-- `∑{digits}[n, A181502(#)]` -/
def P17232722662248926414.Spec : Prop :=
  ∀ n, P17232722662248926414.a n = A316863 n

end A316863

/-! ## A316863.P9334792211995345604

`∑{digits}[n, A185012(#)]`
-/

namespace A316863.P9334792211995345604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A185012 x).sum

end

end A316863.P9334792211995345604

namespace A316863

/-- `∑{digits}[n, A185012(#)]` -/
def P9334792211995345604.Spec : Prop :=
  ∀ n, P9334792211995345604.a n = A316863 n

end A316863

/-! ## A316863.P9840522857590765514

`∑{digits}[n, A209640(#)]`
-/

namespace A316863.P9840522857590765514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A209640 x).sum

end

end A316863.P9840522857590765514

namespace A316863

/-- `∑{digits}[n, A209640(#)]` -/
def P9840522857590765514.Spec : Prop :=
  ∀ n, P9840522857590765514.a n = A316863 n

end A316863

/-! ## A316863.P6657167860199026155

`∑{digits}[n, A251765(#)]`
-/

namespace A316863.P6657167860199026155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A251765 x).sum

end

end A316863.P6657167860199026155

namespace A316863

/-- `∑{digits}[n, A251765(#)]` -/
def P6657167860199026155.Spec : Prop :=
  ∀ n, P6657167860199026155.a n = A316863 n

end A316863

/-! ## A316863.P8601668167435071172

`∑{digits}[n, A269248(#)]`
-/

namespace A316863.P8601668167435071172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A269248 x).sum

end

end A316863.P8601668167435071172

namespace A316863

/-- `∑{digits}[n, A269248(#)]` -/
def P8601668167435071172.Spec : Prop :=
  ∀ n, P8601668167435071172.a n = A316863 n

end A316863

/-! ## A316863.P16414185330184718424

`∑{digits}[n, A290081(#)]`
-/

namespace A316863.P16414185330184718424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A290081 x).sum

end

end A316863.P16414185330184718424

namespace A316863

/-- `∑{digits}[n, A290081(#)]` -/
def P16414185330184718424.Spec : Prop :=
  ∀ n, P16414185330184718424.a n = A316863 n

end A316863

/-! ## A316863.P17587354551373060520

`∑{digits}[n, A328794(#)]`
-/

namespace A316863.P17587354551373060520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A328794 x).sum

end

end A316863.P17587354551373060520

namespace A316863

/-- `∑{digits}[n, A328794(#)]` -/
def P17587354551373060520.Spec : Prop :=
  ∀ n, P17587354551373060520.a n = A316863 n

end A316863

/-! ## A316863.P15955389421158451283

`∑{digits}[n, A358759(#)]`
-/

namespace A316863.P15955389421158451283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A358759 x).sum

end

end A316863.P15955389421158451283

namespace A316863

/-- `∑{digits}[n, A358759(#)]` -/
def P15955389421158451283.Spec : Prop :=
  ∀ n, P15955389421158451283.a n = A316863 n

end A316863

/-! ## A316863.P399723650871063929

`∑{digits}[n, A185014(#²)]`
-/

namespace A316863.P399723650871063929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A185014 (x ^ 2)).sum

end

end A316863.P399723650871063929

namespace A316863

/-- `∑{digits}[n, A185014(#²)]` -/
def P399723650871063929.Spec : Prop :=
  ∀ n, P399723650871063929.a n = A316863 n

end A316863

/-! ## A316863.P13014219242185922665

`∑{digits}[n, A274950(#²)]`
-/

namespace A316863.P13014219242185922665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A274950 (x ^ 2)).sum

end

end A316863.P13014219242185922665

namespace A316863

/-- `∑{digits}[n, A274950(#²)]` -/
def P13014219242185922665.Spec : Prop :=
  ∀ n, P13014219242185922665.a n = A316863 n

end A316863

/-! ## A316863.P8074230843157920865

`∑{digits}[n, A008437(#+1)]`
-/

namespace A316863.P8074230843157920865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A008437 (x + 1)).sum

end

end A316863.P8074230843157920865

namespace A316863

/-- `∑{digits}[n, A008437(#+1)]` -/
def P8074230843157920865.Spec : Prop :=
  ∀ n, P8074230843157920865.a n = A316863 n

end A316863

/-! ## A316863.P5919155426398958527

`∑{digits}[n, A045840(#+1)]`
-/

namespace A316863.P5919155426398958527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A045840 (x + 1)).sum

end

end A316863.P5919155426398958527

namespace A316863

/-- `∑{digits}[n, A045840(#+1)]` -/
def P5919155426398958527.Spec : Prop :=
  ∀ n, P5919155426398958527.a n = A316863 n

end A316863

/-! ## A316863.P3984257631944936614

`∑{digits}[n, A083935(#+1)]`
-/

namespace A316863.P3984257631944936614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A083935 (x + 1)).sum

end

end A316863.P3984257631944936614

namespace A316863

/-- `∑{digits}[n, A083935(#+1)]` -/
def P3984257631944936614.Spec : Prop :=
  ∀ n, P3984257631944936614.a n = A316863 n

end A316863

/-! ## A316863.P14087240493880865683

`∑{digits}[n, A160753(#+1)]`
-/

namespace A316863.P14087240493880865683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A160753 (x + 1)).sum

end

end A316863.P14087240493880865683

namespace A316863

/-- `∑{digits}[n, A160753(#+1)]` -/
def P14087240493880865683.Spec : Prop :=
  ∀ n, P14087240493880865683.a n = A316863 n

end A316863

/-! ## A316863.P1026121025709316065

`∑{digits}[n, A185013(#+1)]`
-/

namespace A316863.P1026121025709316065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A185013 (x + 1)).sum

end

end A316863.P1026121025709316065

namespace A316863

/-- `∑{digits}[n, A185013(#+1)]` -/
def P1026121025709316065.Spec : Prop :=
  ∀ n, P1026121025709316065.a n = A316863 n

end A316863

/-! ## A316863.P3821316060921424955

`A075053(A001613(n))`
-/

namespace A316863.P3821316060921424955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A001613 n).toNat

end

end A316863.P3821316060921424955

namespace A316863

/-- `A075053(A001613(n))` -/
def P3821316060921424955.Spec : Prop :=
  ∀ n, P3821316060921424955.a n = A316863 n

end A316863

/-!
# A316864: Number of times 3 appears in decimal expansion of n.

The programs for A316864, the canonical program `A316864.P10157610930155290787` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316864 has offset 0).

The definition of A316864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316864.P10157610930155290787

`∑{digits}[n, val(#+4, 7)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A316864

/-- `∑{digits}[n, val(#+4, 7)]` -/
def P10157610930155290787.Spec : Prop :=
  ∀ n, (P10157610930155290787.a n : ℤ) = A316864 n

theorem P10157610930155290787.correct : P10157610930155290787.Spec := by
  intro n
  simp only [A316864]

end A316864

/-! ## A316864.P14249604253361779721

`val(∏{digits}[n, #+4], 7)`
-/

namespace A316864.P14249604253361779721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 4).prod 7

end

end A316864.P14249604253361779721

namespace A316864

/-- `val(∏{digits}[n, #+4], 7)` -/
def P14249604253361779721.Spec : Prop :=
  ∀ n, (P14249604253361779721.a n : ℤ) = A316864 n

end A316864

/-! ## A316864.P15085235677887434728

`∑{digits}[n, and(4, #!)/4]`
-/

namespace A316864.P15085235677887434728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (Nat.land 4 (Nat.factorial x) : ℚ) / 4).sum

end

end A316864.P15085235677887434728

namespace A316864

/-- `∑{digits}[n, and(4, #!)/4]` -/
def P15085235677887434728.Spec : Prop :=
  ∀ n, P15085235677887434728.a n = (A316864 n : ℚ)

end A316864

/-! ## A316864.P13821208789227105461

`val(A298372(n), 7)`
-/

namespace A316864.P13821208789227105461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A298372 n).toNat 7

end

end A316864.P13821208789227105461

namespace A316864

/-- `val(A298372(n), 7)` -/
def P13821208789227105461.Spec : Prop :=
  ∀ n, (P13821208789227105461.a n : ℤ) = A316864 n

end A316864

/-! ## A316864.P8340318004874093683

`val(A359802(n), 7)`
-/

namespace A316864.P8340318004874093683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A359802 n).toNat 7

end

end A316864.P8340318004874093683

namespace A316864

/-- `val(A359802(n), 7)` -/
def P8340318004874093683.Spec : Prop :=
  ∀ n, (P8340318004874093683.a n : ℤ) = A316864 n

end A316864

/-! ## A316864.P10729670832212561848

`∑{digits}[n, A008437(#)]`
-/

namespace A316864.P10729670832212561848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A008437 x).sum

end

end A316864.P10729670832212561848

namespace A316864

/-- `∑{digits}[n, A008437(#)]` -/
def P10729670832212561848.Spec : Prop :=
  ∀ n, P10729670832212561848.a n = A316864 n

end A316864

/-! ## A316864.P9462679983650279927

`∑{digits}[n, A025456(#)]`
-/

namespace A316864.P9462679983650279927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025456 x).sum

end

end A316864.P9462679983650279927

namespace A316864

/-- `∑{digits}[n, A025456(#)]` -/
def P9462679983650279927.Spec : Prop :=
  ∀ n, P9462679983650279927.a n = A316864 n

end A316864

/-! ## A316864.P6738436040627197266

`∑{digits}[n, A045840(#)]`
-/

namespace A316864.P6738436040627197266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A045840 x).sum

end

end A316864.P6738436040627197266

namespace A316864

/-- `∑{digits}[n, A045840(#)]` -/
def P6738436040627197266.Spec : Prop :=
  ∀ n, P6738436040627197266.a n = A316864 n

end A316864

/-! ## A316864.P16687872404313791629

`∑{digits}[n, A051344(#)]`
-/

namespace A316864.P16687872404313791629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A051344 x).sum

end

end A316864.P16687872404313791629

namespace A316864

/-- `∑{digits}[n, A051344(#)]` -/
def P16687872404313791629.Spec : Prop :=
  ∀ n, P16687872404313791629.a n = A316864 n

end A316864

/-! ## A316864.P14259999585049611306

`∑{digits}[n, A083935(#)]`
-/

namespace A316864.P14259999585049611306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A083935 x).sum

end

end A316864.P14259999585049611306

namespace A316864

/-- `∑{digits}[n, A083935(#)]` -/
def P14259999585049611306.Spec : Prop :=
  ∀ n, P14259999585049611306.a n = A316864 n

end A316864

/-! ## A316864.P1179406910343545695

`∑{digits}[n, A160753(#)]`
-/

namespace A316864.P1179406910343545695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A160753 x).sum

end

end A316864.P1179406910343545695

namespace A316864

/-- `∑{digits}[n, A160753(#)]` -/
def P1179406910343545695.Spec : Prop :=
  ∀ n, P1179406910343545695.a n = A316864 n

end A316864

/-! ## A316864.P17247722811221084875

`∑{digits}[n, A185013(#)]`
-/

namespace A316864.P17247722811221084875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A185013 x).sum

end

end A316864.P17247722811221084875

namespace A316864

/-- `∑{digits}[n, A185013(#)]` -/
def P17247722811221084875.Spec : Prop :=
  ∀ n, P17247722811221084875.a n = A316864 n

end A316864

/-! ## A316864.P7767198781000695210

`∑{digits}[n, A193243(#)]`
-/

namespace A316864.P7767198781000695210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A193243 x).sum

end

end A316864.P7767198781000695210

namespace A316864

/-- `∑{digits}[n, A193243(#)]` -/
def P7767198781000695210.Spec : Prop :=
  ∀ n, P7767198781000695210.a n = A316864 n

end A316864

/-! ## A316864.P6290268534630678002

`∑{digits}[n, A251764(#)]`
-/

namespace A316864.P6290268534630678002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A251764 x).sum

end

end A316864.P6290268534630678002

namespace A316864

/-- `∑{digits}[n, A251764(#)]` -/
def P6290268534630678002.Spec : Prop :=
  ∀ n, P6290268534630678002.a n = A316864 n

end A316864

/-! ## A316864.P10741076363886275937

`∑{digits}[n, A011702(#²)]`
-/

namespace A316864.P10741076363886275937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011702 (x ^ 2)).sum

end

end A316864.P10741076363886275937

namespace A316864

/-- `∑{digits}[n, A011702(#²)]` -/
def P10741076363886275937.Spec : Prop :=
  ∀ n, P10741076363886275937.a n = A316864 n

end A316864

/-! ## A316864.P1606946119158031689

`∑{digits}[n, A011713(#²)]`
-/

namespace A316864.P1606946119158031689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011713 (x ^ 2)).sum

end

end A316864.P1606946119158031689

namespace A316864

/-- `∑{digits}[n, A011713(#²)]` -/
def P1606946119158031689.Spec : Prop :=
  ∀ n, P1606946119158031689.a n = A316864 n

end A316864

/-! ## A316864.P7804262550793421214

`∑{digits}[n, A011717(#²)]`
-/

namespace A316864.P7804262550793421214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011717 (x ^ 2)).sum

end

end A316864.P7804262550793421214

namespace A316864

/-- `∑{digits}[n, A011717(#²)]` -/
def P7804262550793421214.Spec : Prop :=
  ∀ n, P7804262550793421214.a n = A316864 n

end A316864

/-! ## A316864.P14159375146675529031

`∑{digits}[n, A025468(#²)]`
-/

namespace A316864.P14159375146675529031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025468 (x ^ 2)).sum

end

end A316864.P14159375146675529031

namespace A316864

/-- `∑{digits}[n, A025468(#²)]` -/
def P14159375146675529031.Spec : Prop :=
  ∀ n, P14159375146675529031.a n = A316864 n

end A316864

/-! ## A316864.P16647793077007722527

`∑{digits}[n, A277158(#²)]`
-/

namespace A316864.P16647793077007722527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A277158 (x ^ 2)).sum

end

end A316864.P16647793077007722527

namespace A316864

/-- `∑{digits}[n, A277158(#²)]` -/
def P16647793077007722527.Spec : Prop :=
  ∀ n, P16647793077007722527.a n = A316864 n

end A316864

/-! ## A316864.P1256357951457281823

`A102683(A059626(n))`
-/

namespace A316864.P1256357951457281823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A059626 n).toNat

end

end A316864.P1256357951457281823

namespace A316864

/-- `A102683(A059626(n))` -/
def P1256357951457281823.Spec : Prop :=
  ∀ n, P1256357951457281823.a n = A316864 n

end A316864

/-!
# A316865: Number of times 4 appears in decimal expansion of n.

The programs for A316865, the canonical program `A316865.P16119977982805478621` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316865 has offset 0).

The definition of A316865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316865.P16119977982805478621

`∑{digits}[n, val(#+2, 6)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A316865

/-- `∑{digits}[n, val(#+2, 6)]` -/
def P16119977982805478621.Spec : Prop :=
  ∀ n, (P16119977982805478621.a n : ℤ) = A316865 n

theorem P16119977982805478621.correct : P16119977982805478621.Spec := by
  intro n
  simp only [A316865]

end A316865

/-! ## A316865.P16741705610093912282

`val(∏{digits}[n, #+3], 7)`
-/

namespace A316865.P16741705610093912282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 3).prod 7

end

end A316865.P16741705610093912282

namespace A316865

/-- `val(∏{digits}[n, #+3], 7)` -/
def P16741705610093912282.Spec : Prop :=
  ∀ n, (P16741705610093912282.a n : ℤ) = A316865 n

end A316865

/-! ## A316865.P8176773003892756799

`∑{digits}[n, round(#/7)]-∑{digits}[n, floor(#/5)]`
-/

namespace A316865.P8176773003892756799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.roundAway ((x : ℚ) / 7)).sum - ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 5⌋).sum

end

end A316865.P8176773003892756799

namespace A316865

/-- `∑{digits}[n, round(#/7)]-∑{digits}[n, floor(#/5)]` -/
def P8176773003892756799.Spec : Prop :=
  ∀ n, P8176773003892756799.a n = A316865 n

end A316865

/-! ## A316865.P4537545796402383283

`val(A359802(n), 11)`
-/

namespace A316865.P4537545796402383283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A359802 n).toNat 11

end

end A316865.P4537545796402383283

namespace A316865

/-- `val(A359802(n), 11)` -/
def P4537545796402383283.Spec : Prop :=
  ∀ n, (P4537545796402383283.a n : ℤ) = A316865 n

end A316865

/-! ## A316865.P10080139020181965500

`∑{digits}[n, A004198(#)]`
-/

namespace A316865.P10080139020181965500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A004198 x).sum

end

end A316865.P10080139020181965500

namespace A316865

/-- `∑{digits}[n, A004198(#)]` -/
def P10080139020181965500.Spec : Prop :=
  ∀ n, P10080139020181965500.a n = A316865 n

end A316865

/-! ## A316865.P17819177912134357683

`∑{digits}[n, A025457(#)]`
-/

namespace A316865.P17819177912134357683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025457 x).sum

end

end A316865.P17819177912134357683

namespace A316865

/-- `∑{digits}[n, A025457(#)]` -/
def P17819177912134357683.Spec : Prop :=
  ∀ n, P17819177912134357683.a n = A316865 n

end A316865

/-! ## A316865.P11260727557008100771

`∑{digits}[n, A050602(#)]`
-/

namespace A316865.P11260727557008100771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A050602 x).sum

end

end A316865.P11260727557008100771

namespace A316865

/-- `∑{digits}[n, A050602(#)]` -/
def P11260727557008100771.Spec : Prop :=
  ∀ n, P11260727557008100771.a n = A316865 n

end A316865

/-! ## A316865.P15667417217238963001

`∑{digits}[n, A065040(#)]`
-/

namespace A316865.P15667417217238963001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A065040 x).sum

end

end A316865.P15667417217238963001

namespace A316865

/-- `∑{digits}[n, A065040(#)]` -/
def P15667417217238963001.Spec : Prop :=
  ∀ n, P15667417217238963001.a n = A316865 n

end A316865

/-! ## A316865.P2635192043847619307

`∑{digits}[n, A102037(#)]`
-/

namespace A316865.P2635192043847619307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A102037 x).sum

end

end A316865.P2635192043847619307

namespace A316865

/-- `∑{digits}[n, A102037(#)]` -/
def P2635192043847619307.Spec : Prop :=
  ∀ n, P2635192043847619307.a n = A316865 n

end A316865

/-! ## A316865.P6290006368574106195

`∑{digits}[n, A185014(#)]`
-/

namespace A316865.P6290006368574106195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A185014 x).sum

end

end A316865.P6290006368574106195

namespace A316865

/-- `∑{digits}[n, A185014(#)]` -/
def P6290006368574106195.Spec : Prop :=
  ∀ n, P6290006368574106195.a n = A316865 n

end A316865

/-! ## A316865.P11193633358058931189

`∑{digits}[n, A196096(#)]`
-/

namespace A316865.P11193633358058931189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A196096 x).sum

end

end A316865.P11193633358058931189

namespace A316865

/-- `∑{digits}[n, A196096(#)]` -/
def P11193633358058931189.Spec : Prop :=
  ∀ n, P11193633358058931189.a n = A316865 n

end A316865

/-! ## A316865.P5629979954930546005

`∑{digits}[n, A219463(#)]`
-/

namespace A316865.P5629979954930546005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A219463 x).sum

end

end A316865.P5629979954930546005

namespace A316865

/-- `∑{digits}[n, A219463(#)]` -/
def P5629979954930546005.Spec : Prop :=
  ∀ n, P5629979954930546005.a n = A316865 n

end A316865

/-! ## A316865.P4190605868867265382

`∑{digits}[n, A221152(#)]`
-/

namespace A316865.P4190605868867265382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A221152 x).sum

end

end A316865.P4190605868867265382

namespace A316865

/-- `∑{digits}[n, A221152(#)]` -/
def P4190605868867265382.Spec : Prop :=
  ∀ n, P4190605868867265382.a n = A316865 n

end A316865

/-! ## A316865.P13180699552051888530

`∑{digits}[n, A251763(#)]`
-/

namespace A316865.P13180699552051888530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A251763 x).sum

end

end A316865.P13180699552051888530

namespace A316865

/-- `∑{digits}[n, A251763(#)]` -/
def P13180699552051888530.Spec : Prop :=
  ∀ n, P13180699552051888530.a n = A316865 n

end A316865

/-! ## A316865.P3928452940771313189

`∑{digits}[n, A257685(#)]`
-/

namespace A316865.P3928452940771313189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A257685 x).sum

end

end A316865.P3928452940771313189

namespace A316865

/-- `∑{digits}[n, A257685(#)]` -/
def P3928452940771313189.Spec : Prop :=
  ∀ n, P3928452940771313189.a n = A316865 n

end A316865

/-! ## A316865.P7833753429476884542

`∑{digits}[n, A261084(#)]`
-/

namespace A316865.P7833753429476884542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A261084 x).sum

end

end A316865.P7833753429476884542

namespace A316865

/-- `∑{digits}[n, A261084(#)]` -/
def P7833753429476884542.Spec : Prop :=
  ∀ n, P7833753429476884542.a n = A316865 n

end A316865

/-! ## A316865.P333143385630438679

`∑{digits}[n, A285118(#)]`
-/

namespace A316865.P333143385630438679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A285118 x).sum

end

end A316865.P333143385630438679

namespace A316865

/-- `∑{digits}[n, A285118(#)]` -/
def P333143385630438679.Spec : Prop :=
  ∀ n, P333143385630438679.a n = A316865 n

end A316865

/-! ## A316865.P18410542600396777485

`∑{digits}[n, A324351(#)]`
-/

namespace A316865.P18410542600396777485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A324351 x).sum

end

end A316865.P18410542600396777485

namespace A316865

/-- `∑{digits}[n, A324351(#)]` -/
def P18410542600396777485.Spec : Prop :=
  ∀ n, P18410542600396777485.a n = A316865 n

end A316865

/-! ## A316865.P17767616047381543049

`∑{digits}[n, A331902(#)]`
-/

namespace A316865.P17767616047381543049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A331902 x).sum

end

end A316865.P17767616047381543049

namespace A316865

/-- `∑{digits}[n, A331902(#)]` -/
def P17767616047381543049.Spec : Prop :=
  ∀ n, P17767616047381543049.a n = A316865 n

end A316865

/-! ## A316865.P10748975595729740010

`∑{digits}[n, A334348(#)]`
-/

namespace A316865.P10748975595729740010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A334348 x).sum

end

end A316865.P10748975595729740010

namespace A316865

/-- `∑{digits}[n, A334348(#)]` -/
def P10748975595729740010.Spec : Prop :=
  ∀ n, P10748975595729740010.a n = A316865 n

end A316865

/-!
# A316866: Number of times 5 appears in decimal expansion of n.

The programs for A316866, the canonical program `A316866.P4603436020807158476` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316866 has offset 0).

The definition of A316866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316866.P4603436020807158476

`∑{digits}[n, val(#+1, 6)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A316866

/-- `∑{digits}[n, val(#+1, 6)]` -/
def P4603436020807158476.Spec : Prop :=
  ∀ n, (P4603436020807158476.a n : ℤ) = A316866 n

theorem P4603436020807158476.correct : P4603436020807158476.Spec := by
  intro n
  simp only [A316866]

end A316866

/-! ## A316866.P11906276215397627542

`val(∏{digits}[n, #+2], 7)`
-/

namespace A316866.P11906276215397627542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 2).prod 7

end

end A316866.P11906276215397627542

namespace A316866

/-- `val(∏{digits}[n, #+2], 7)` -/
def P11906276215397627542.Spec : Prop :=
  ∀ n, (P11906276215397627542.a n : ℤ) = A316866 n

end A316866

/-! ## A316866.P2633987498464793910

`dr(val(∏{digits}[n, gcd(#, #!²)], 5))`
-/

namespace A316866.P2633987498464793910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod 5 : ℤ)

end

end A316866.P2633987498464793910

namespace A316866

/-- `dr(val(∏{digits}[n, gcd(#, #!²)], 5))` -/
def P2633987498464793910.Spec : Prop :=
  ∀ n, (P2633987498464793910.a n : ℤ) = A316866 n

end A316866

/-! ## A316866.P14484744901181257041

`∑{digits}[n, floor(#/5)]-∑{digits}[n, floor(#/6)]`
-/

namespace A316866.P14484744901181257041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 5⌋).sum - ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 6⌋).sum

end

end A316866.P14484744901181257041

namespace A316866

/-- `∑{digits}[n, floor(#/5)]-∑{digits}[n, floor(#/6)]` -/
def P14484744901181257041.Spec : Prop :=
  ∀ n, P14484744901181257041.a n = A316866 n

end A316866

/-! ## A316866.P8309245286095900962

`val(A051801(n), 5)`
-/

namespace A316866.P8309245286095900962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051801 n).toNat 5

end

end A316866.P8309245286095900962

namespace A316866

/-- `val(A051801(n), 5)` -/
def P8309245286095900962.Spec : Prop :=
  ∀ n, (P8309245286095900962.a n : ℤ) = A316866 n

end A316866

/-! ## A316866.P11937820996459163035

`∑{digits}[n, A011673(#)]`
-/

namespace A316866.P11937820996459163035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011673 x).sum

end

end A316866.P11937820996459163035

namespace A316866

/-- `∑{digits}[n, A011673(#)]` -/
def P11937820996459163035.Spec : Prop :=
  ∀ n, P11937820996459163035.a n = A316866 n

end A316866

/-! ## A316866.P10673207101705722921

`∑{digits}[n, A025436(#)]`
-/

namespace A316866.P10673207101705722921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025436 x).sum

end

end A316866.P10673207101705722921

namespace A316866

/-- `∑{digits}[n, A025436(#)]` -/
def P10673207101705722921.Spec : Prop :=
  ∀ n, P10673207101705722921.a n = A316866 n

end A316866

/-! ## A316866.P15966827850756748407

`∑{digits}[n, A025441(#)]`
-/

namespace A316866.P15966827850756748407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025441 x).sum

end

end A316866.P15966827850756748407

namespace A316866

/-- `∑{digits}[n, A025441(#)]` -/
def P15966827850756748407.Spec : Prop :=
  ∀ n, P15966827850756748407.a n = A316866 n

end A316866

/-! ## A316866.P7053479324942311898

`∑{digits}[n, A025458(#)]`
-/

namespace A316866.P7053479324942311898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025458 x).sum

end

end A316866.P7053479324942311898

namespace A316866

/-- `∑{digits}[n, A025458(#)]` -/
def P7053479324942311898.Spec : Prop :=
  ∀ n, P7053479324942311898.a n = A316866 n

end A316866

/-! ## A316866.P7228249724516239167

`A102683(A222248(n))`
-/

namespace A316866.P7228249724516239167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A222248 n).toNat

end

end A316866.P7228249724516239167

namespace A316866

/-- `A102683(A222248(n))` -/
def P7228249724516239167.Spec : Prop :=
  ∀ n, P7228249724516239167.a n = A316866 n

end A316866

/-! ## A316866.P1918943295180527406

`A268643(A222222(n))`
-/

namespace A316866.P1918943295180527406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A222222 n).toNat

end

end A316866.P1918943295180527406

namespace A316866

/-- `A268643(A222222(n))` -/
def P1918943295180527406.Spec : Prop :=
  ∀ n, P1918943295180527406.a n = A316866 n

end A316866

/-! ## A316866.P9838306008192062319

`A316863(A222229(n))`
-/

namespace A316866.P9838306008192062319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A222229 n).toNat

end

end A316866.P9838306008192062319

namespace A316866

/-- `A316863(A222229(n))` -/
def P9838306008192062319.Spec : Prop :=
  ∀ n, P9838306008192062319.a n = A316866 n

end A316866

/-! ## A316866.P15164370703020831465

`A316865(A235049(n))`
-/

namespace A316866.P15164370703020831465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A235049 n).toNat

end

end A316866.P15164370703020831465

namespace A316866

/-- `A316865(A235049(n))` -/
def P15164370703020831465.Spec : Prop :=
  ∀ n, P15164370703020831465.a n = A316866 n

end A316866

/-! ## A316866.P625001099912807676

`∑{digits}[n, A008615(A331919(#))]`
-/

namespace A316866.P625001099912807676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A008615 (A331919 x).toNat).sum

end

end A316866.P625001099912807676

namespace A316866

/-- `∑{digits}[n, A008615(A331919(#))]` -/
def P625001099912807676.Spec : Prop :=
  ∀ n, P625001099912807676.a n = A316866 n

end A316866

/-! ## A316866.P3522152783949300562

`A004155(n)-A004155(A004180(n))`
-/

namespace A316866.P3522152783949300562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n - A004155 (A004180 n).toNat

end

end A316866.P3522152783949300562

namespace A316866

/-- `A004155(n)-A004155(A004180(n))` -/
def P3522152783949300562.Spec : Prop :=
  ∀ n, P3522152783949300562.a n = A316866 n

end A316866

/-! ## A316866.P16159766456573687767

`A055641(A322131(n))-A055641(n)`
-/

namespace A316866.P16159766456573687767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A322131 n).toNat - A055641 n

end

end A316866.P16159766456573687767

namespace A316866

/-- `A055641(A322131(n))-A055641(n)` -/
def P16159766456573687767.Spec : Prop :=
  ∀ n, P16159766456573687767.a n = A316866 n

end A316866

/-!
# A316867: Number of times 6 appears in decimal expansion of n.

The programs for A316867, the canonical program `A316867.P1180997877908803735` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316867 has offset 0).

The definition of A316867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316867.P1180997877908803735

`∑{digits}[n, val(#+1, 7)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A316867

/-- `∑{digits}[n, val(#+1, 7)]` -/
def P1180997877908803735.Spec : Prop :=
  ∀ n, (P1180997877908803735.a n : ℤ) = A316867 n

theorem P1180997877908803735.correct : P1180997877908803735.Spec := by
  intro n
  simp only [A316867]

end A316867

/-! ## A316867.P12717863402886063766

`val(∏{digits}[n, #+1], 7)`
-/

namespace A316867.P12717863402886063766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).prod 7

end

end A316867.P12717863402886063766

namespace A316867

/-- `val(∏{digits}[n, #+1], 7)` -/
def P12717863402886063766.Spec : Prop :=
  ∀ n, (P12717863402886063766.a n : ℤ) = A316867 n

end A316867

/-! ## A316867.P15949936221540901519

`∑{digits}[n, floor(#/6)]-∑{digits}[n, floor(#/7)]`
-/

namespace A316867.P15949936221540901519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 6⌋).sum - ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 7⌋).sum

end

end A316867.P15949936221540901519

namespace A316867

/-- `∑{digits}[n, floor(#/6)]-∑{digits}[n, floor(#/7)]` -/
def P15949936221540901519.Spec : Prop :=
  ∀ n, P15949936221540901519.a n = A316867 n

end A316867

/-! ## A316867.P15248626034518303911

`val(A089898(n), 7)`
-/

namespace A316867.P15248626034518303911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A089898 n).toNat 7

end

end A316867.P15248626034518303911

namespace A316867

/-- `val(A089898(n), 7)` -/
def P15248626034518303911.Spec : Prop :=
  ∀ n, (P15248626034518303911.a n : ℤ) = A316867 n

end A316867

/-! ## A316867.P3613497675022708917

`val(A359802(n), 17)`
-/

namespace A316867.P3613497675022708917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A359802 n).toNat 17

end

end A316867.P3613497675022708917

namespace A316867

/-- `val(A359802(n), 17)` -/
def P3613497675022708917.Spec : Prop :=
  ∀ n, (P3613497675022708917.a n : ℤ) = A316867 n

end A316867

/-! ## A316867.P4919087616672605420

`∑{digits}[n, A011675(#)]`
-/

namespace A316867.P4919087616672605420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011675 x).sum

end

end A316867.P4919087616672605420

namespace A316867

/-- `∑{digits}[n, A011675(#)]` -/
def P4919087616672605420.Spec : Prop :=
  ∀ n, P4919087616672605420.a n = A316867 n

end A316867

/-! ## A316867.P5421979023898855960

`∑{digits}[n, A011686(#)]`
-/

namespace A316867.P5421979023898855960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011686 x).sum

end

end A316867.P5421979023898855960

namespace A316867

/-- `∑{digits}[n, A011686(#)]` -/
def P5421979023898855960.Spec : Prop :=
  ∀ n, P5421979023898855960.a n = A316867 n

end A316867

/-! ## A316867.P16517811925273886668

`∑{digits}[n, A025459(#)]`
-/

namespace A316867.P16517811925273886668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025459 x).sum

end

end A316867.P16517811925273886668

namespace A316867

/-- `∑{digits}[n, A025459(#)]` -/
def P16517811925273886668.Spec : Prop :=
  ∀ n, P16517811925273886668.a n = A316867 n

end A316867

/-! ## A316867.P8953580247489210860

`∑{digits}[n, A026799(#)]`
-/

namespace A316867.P8953580247489210860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A026799 x).sum

end

end A316867.P8953580247489210860

namespace A316867

/-- `∑{digits}[n, A026799(#)]` -/
def P8953580247489210860.Spec : Prop :=
  ∀ n, P8953580247489210860.a n = A316867 n

end A316867

/-! ## A316867.P4787251981970373418

`∑{digits}[n, A079071(#)]`
-/

namespace A316867.P4787251981970373418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A079071 x).sum

end

end A316867.P4787251981970373418

namespace A316867

/-- `∑{digits}[n, A079071(#)]` -/
def P4787251981970373418.Spec : Prop :=
  ∀ n, P4787251981970373418.a n = A316867 n

end A316867

/-! ## A316867.P5198698108721380079

`∑{digits}[n, A079692(#)]`
-/

namespace A316867.P5198698108721380079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A079692 x).sum

end

end A316867.P5198698108721380079

namespace A316867

/-- `∑{digits}[n, A079692(#)]` -/
def P5198698108721380079.Spec : Prop :=
  ∀ n, P5198698108721380079.a n = A316867 n

end A316867

/-! ## A316867.P7266027837639454863

`∑{digits}[n, A124760(#)]`
-/

namespace A316867.P7266027837639454863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A124760 x).sum

end

end A316867.P7266027837639454863

namespace A316867

/-- `∑{digits}[n, A124760(#)]` -/
def P7266027837639454863.Spec : Prop :=
  ∀ n, P7266027837639454863.a n = A316867 n

end A316867

/-! ## A316867.P178654086617493616

`∑{digits}[n, A275305(#)]`
-/

namespace A316867.P178654086617493616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A275305 x).sum

end

end A316867.P178654086617493616

namespace A316867

/-- `∑{digits}[n, A275305(#)]` -/
def P178654086617493616.Spec : Prop :=
  ∀ n, P178654086617493616.a n = A316867 n

end A316867

/-! ## A316867.P5653271568603345268

`∑{digits}[n, A070107(#+1)]`
-/

namespace A316867.P5653271568603345268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A070107 (x + 1)).sum

end

end A316867.P5653271568603345268

namespace A316867

/-- `∑{digits}[n, A070107(#+1)]` -/
def P5653271568603345268.Spec : Prop :=
  ∀ n, P5653271568603345268.a n = A316867 n

end A316867

/-! ## A316867.P14966897637259872400

`∑{digits}[n, A070108(#+1)]`
-/

namespace A316867.P14966897637259872400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A070108 (x + 1)).sum

end

end A316867.P14966897637259872400

namespace A316867

/-- `∑{digits}[n, A070108(#+1)]` -/
def P14966897637259872400.Spec : Prop :=
  ∀ n, P14966897637259872400.a n = A316867 n

end A316867

/-! ## A316867.P5794981643885697873

`A102683(A222251(n))`
-/

namespace A316867.P5794981643885697873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A222251 n).toNat

end

end A316867.P5794981643885697873

namespace A316867

/-- `A102683(A222251(n))` -/
def P5794981643885697873.Spec : Prop :=
  ∀ n, P5794981643885697873.a n = A316867 n

end A316867

/-! ## A316867.P2920694686665660626

`A102677(n)-A102679(n)`
-/

namespace A316867.P2920694686665660626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 n - A102679 n

end

end A316867.P2920694686665660626

namespace A316867

/-- `A102677(n)-A102679(n)` -/
def P2920694686665660626.Spec : Prop :=
  ∀ n, P2920694686665660626.a n = A316867 n

end A316867

/-! ## A316867.P6120983246568311778

`∑{digits}[n, A025480(A030272(#))]`
-/

namespace A316867.P6120983246568311778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025480 (A030272 x).toNat).sum

end

end A316867.P6120983246568311778

namespace A316867

/-- `∑{digits}[n, A025480(A030272(#))]` -/
def P6120983246568311778.Spec : Prop :=
  ∀ n, P6120983246568311778.a n = A316867 n

end A316867

/-! ## A316867.P8486315491792984081

`∑{digits}[n, A083889(A017305(#))]`
-/

namespace A316867.P8486315491792984081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A083889 (A017305 x).toNat).sum

end

end A316867.P8486315491792984081

namespace A316867

/-- `∑{digits}[n, A083889(A017305(#))]` -/
def P8486315491792984081.Spec : Prop :=
  ∀ n, P8486315491792984081.a n = A316867 n

end A316867

/-! ## A316867.P15773775729755174860

`A100910(A017341(n))`
-/

namespace A316867.P15773775729755174860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017341 n).toNat

end

end A316867.P15773775729755174860

namespace A316867

/-- `A100910(A017341(n))` -/
def P15773775729755174860.Spec : Prop :=
  ∀ n, P15773775729755174860.a n = A316867 n

end A316867

/-!
# A316868: Number of times 7 appears in decimal expansion of n.

The programs for A316868, the canonical program `A316868.P1737460264316989333` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316868 has offset 0).

The definition of A316868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316868.P1737460264316989333

`∑{digits}[n, val(#+1, 8)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A316868

/-- `∑{digits}[n, val(#+1, 8)]` -/
def P1737460264316989333.Spec : Prop :=
  ∀ n, (P1737460264316989333.a n : ℤ) = A316868 n

theorem P1737460264316989333.correct : P1737460264316989333.Spec := by
  intro n
  simp only [A316868]

end A316868

/-! ## A316868.P6671091074162887359

`∑{digits}[n, and(1, C(#, 7))]`
-/

namespace A316868.P6671091074162887359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 (Nat.choose x 7)).sum

end

end A316868.P6671091074162887359

namespace A316868

/-- `∑{digits}[n, and(1, C(#, 7))]` -/
def P6671091074162887359.Spec : Prop :=
  ∀ n, (P6671091074162887359.a n : ℤ) = A316868 n

end A316868

/-! ## A316868.P10273810942659687651

`val(∏{digits}[n, gcd(#, #!²)], 7)`
-/

namespace A316868.P10273810942659687651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod 7

end

end A316868.P10273810942659687651

namespace A316868

/-- `val(∏{digits}[n, gcd(#, #!²)], 7)` -/
def P10273810942659687651.Spec : Prop :=
  ∀ n, (P10273810942659687651.a n : ℤ) = A316868 n

end A316868

/-! ## A316868.P11272246049417386652

`∑{digits}[n, floor(#/7)]-∑{digits}[n, and(8, #)/8]`
-/

namespace A316868.P11272246049417386652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 7⌋).sum : ℤ) : ℚ) - ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => (Nat.land 8 x : ℚ) / 8).sum

end

end A316868.P11272246049417386652

namespace A316868

/-- `∑{digits}[n, floor(#/7)]-∑{digits}[n, and(8, #)/8]` -/
def P11272246049417386652.Spec : Prop :=
  ∀ n, P11272246049417386652.a n = (A316868 n : ℚ)

end A316868

/-! ## A316868.P5679324072910359143

`val(A051801(n), 7)`
-/

namespace A316868.P5679324072910359143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051801 n).toNat 7

end

end A316868.P5679324072910359143

namespace A316868

/-- `val(A051801(n), 7)` -/
def P5679324072910359143.Spec : Prop :=
  ∀ n, (P5679324072910359143.a n : ℤ) = A316868 n

end A316868

/-! ## A316868.P17558241526448212261

`∑{digits}[n, A014082(#)]`
-/

namespace A316868.P17558241526448212261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A014082 x).sum

end

end A316868.P17558241526448212261

namespace A316868

/-- `∑{digits}[n, A014082(#)]` -/
def P17558241526448212261.Spec : Prop :=
  ∀ n, P17558241526448212261.a n = A316868 n

end A316868

/-! ## A316868.P16664118025568240107

`∑{digits}[n, A026800(#)]`
-/

namespace A316868.P16664118025568240107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A026800 x).sum

end

end A316868.P16664118025568240107

namespace A316868

/-- `∑{digits}[n, A026800(#)]` -/
def P16664118025568240107.Spec : Prop :=
  ∀ n, P16664118025568240107.a n = A316868 n

end A316868

/-! ## A316868.P15141776476110631306

`∑{digits}[n, A086079(#)]`
-/

namespace A316868.P15141776476110631306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A086079 x).sum

end

end A316868.P15141776476110631306

namespace A316868

/-- `∑{digits}[n, A086079(#)]` -/
def P15141776476110631306.Spec : Prop :=
  ∀ n, P15141776476110631306.a n = A316868 n

end A316868

/-! ## A316868.P9654163820860580349

`∑{digits}[n, A185017(#)]`
-/

namespace A316868.P9654163820860580349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A185017 x).sum

end

end A316868.P9654163820860580349

namespace A316868

/-- `∑{digits}[n, A185017(#)]` -/
def P9654163820860580349.Spec : Prop :=
  ∀ n, P9654163820860580349.a n = A316868 n

end A316868

/-! ## A316868.P8512474605427777143

`∑{digits}[n, A198317(#)]`
-/

namespace A316868.P8512474605427777143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A198317 x).sum

end

end A316868.P8512474605427777143

namespace A316868

/-- `∑{digits}[n, A198317(#)]` -/
def P8512474605427777143.Spec : Prop :=
  ∀ n, P8512474605427777143.a n = A316868 n

end A316868

/-! ## A316868.P11917478910588176823

`∑{digits}[n, A292946(#)]`
-/

namespace A316868.P11917478910588176823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A292946 x).sum

end

end A316868.P11917478910588176823

namespace A316868

/-- `∑{digits}[n, A292946(#)]` -/
def P11917478910588176823.Spec : Prop :=
  ∀ n, P11917478910588176823.a n = A316868 n

end A316868

/-! ## A316868.P3698930835352009077

`∑{digits}[n, A293162(#)]`
-/

namespace A316868.P3698930835352009077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A293162 x).sum

end

end A316868.P3698930835352009077

namespace A316868

/-- `∑{digits}[n, A293162(#)]` -/
def P3698930835352009077.Spec : Prop :=
  ∀ n, P3698930835352009077.a n = A316868 n

end A316868

/-! ## A316868.P12848939922406454550

`A214411(A051801(n))`
-/

namespace A316868.P12848939922406454550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A051801 n).toNat

end

end A316868.P12848939922406454550

namespace A316868

/-- `A214411(A051801(n))` -/
def P12848939922406454550.Spec : Prop :=
  ∀ n, P12848939922406454550.a n = A316868 n

end A316868

/-! ## A316868.P8074694113905955285

`A102683(A222253(n))`
-/

namespace A316868.P8074694113905955285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A222253 n).toNat

end

end A316868.P8074694113905955285

namespace A316868

/-- `A102683(A222253(n))` -/
def P8074694113905955285.Spec : Prop :=
  ∀ n, P8074694113905955285.a n = A316868 n

end A316868

/-! ## A316868.P13884651921147225012

`A316864(A055120(n))`
-/

namespace A316868.P13884651921147225012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A055120 n).toNat

end

end A316868.P13884651921147225012

namespace A316868

/-- `A316864(A055120(n))` -/
def P13884651921147225012.Spec : Prop :=
  ∀ n, P13884651921147225012.a n = A316868 n

end A316868

/-! ## A316868.P13108046429592751136

`A316863(A061601(n))`
-/

namespace A316868.P13108046429592751136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A061601 n).toNat

end

end A316868.P13108046429592751136

namespace A316868

/-- `A316863(A061601(n))` -/
def P13108046429592751136.Spec : Prop :=
  ∀ n, P13108046429592751136.a n = A316868 n

end A316868

/-! ## A316868.P11286015774113693425

`A010371(n)-A006942(n)`
-/

namespace A316868.P11286015774113693425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A006942 n

end

end A316868.P11286015774113693425

namespace A316868

/-- `A010371(n)-A006942(n)` -/
def P11286015774113693425.Spec : Prop :=
  ∀ n, P11286015774113693425.a n = A316868 n

end A316868

/-! ## A316868.P7181122550925018668

`A102679(n)-A102681(n)`
-/

namespace A316868.P7181122550925018668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n - A102681 n

end

end A316868.P7181122550925018668

namespace A316868

/-- `A102679(n)-A102681(n)` -/
def P7181122550925018668.Spec : Prop :=
  ∀ n, P7181122550925018668.a n = A316868 n

end A316868

/-! ## A316868.P16818231209362546747

`val(A113581(n), 17)`
-/

namespace A316868.P16818231209362546747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A113581 n).toNat 17

end

end A316868.P16818231209362546747

namespace A316868

/-- `val(A113581(n), 17)` -/
def P16818231209362546747.Spec : Prop :=
  ∀ n, (P16818231209362546747.a n : ℤ) = A316868 n

end A316868

/-! ## A316868.P14909438894586496265

`A100910(A017353(n))`
-/

namespace A316868.P14909438894586496265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017353 n).toNat

end

end A316868.P14909438894586496265

namespace A316868

/-- `A100910(A017353(n))` -/
def P14909438894586496265.Spec : Prop :=
  ∀ n, P14909438894586496265.a n = A316868 n

end A316868

/-!
# A316869: Number of times 8 appears in decimal expansion of n.

The programs for A316869, the canonical program `A316869.P11480031806603956401` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316869 has offset 0).

The definition of A316869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316869.P11480031806603956401

`∑{digits}[n, val(#+1, 9)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A316869

/-- `∑{digits}[n, val(#+1, 9)]` -/
def P11480031806603956401.Spec : Prop :=
  ∀ n, (P11480031806603956401.a n : ℤ) = A316869 n

theorem P11480031806603956401.correct : P11480031806603956401.Spec := by
  intro n
  simp only [A316869]

end A316869

/-! ## A316869.P12512575770828193819

`∑{digits}[n, floor(#%9/8)]`
-/

namespace A316869.P12512575770828193819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊((x % 9 : ℕ) : ℚ) / 8⌋).sum

end

end A316869.P12512575770828193819

namespace A316869

/-- `∑{digits}[n, floor(#%9/8)]` -/
def P12512575770828193819.Spec : Prop :=
  ∀ n, P12512575770828193819.a n = A316869 n

end A316869

/-! ## A316869.P5658342058890670269

`∑{digits}[n, and(8, #)/8]-∑{digits}[n, C(#, 9)]`
-/

namespace A316869.P5658342058890670269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (Nat.land 8 x : ℚ) / 8).sum - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.choose x 9).sum : ℕ) : ℚ)

end

end A316869.P5658342058890670269

namespace A316869

/-- `∑{digits}[n, and(8, #)/8]-∑{digits}[n, C(#, 9)]` -/
def P5658342058890670269.Spec : Prop :=
  ∀ n, P5658342058890670269.a n = (A316869 n : ℚ)

end A316869

/-! ## A316869.P12284002214944610248

`∑{digits}[n, or(7, #)]%7-∑{digits}[n, C(#, 9)]`
-/

namespace A316869.P12284002214944610248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.lor 7 x).sum % 7 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.choose x 9).sum : ℕ) : ℤ)

end

end A316869.P12284002214944610248

namespace A316869

/-- `∑{digits}[n, or(7, #)]%7-∑{digits}[n, C(#, 9)]` -/
def P12284002214944610248.Spec : Prop :=
  ∀ n, P12284002214944610248.a n = A316869 n

end A316869

/-! ## A316869.P11950352220713146875

`∑{digits}[n, and(8, #)]%7-∑{digits}[n, C(#, 9)]`
-/

namespace A316869.P11950352220713146875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 8 x).sum % 7 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.choose x 9).sum : ℕ) : ℤ)

end

end A316869.P11950352220713146875

namespace A316869

/-- `∑{digits}[n, and(8, #)]%7-∑{digits}[n, C(#, 9)]` -/
def P11950352220713146875.Spec : Prop :=
  ∀ n, P11950352220713146875.a n = A316869 n

end A316869

/-! ## A316869.P5502434712814488164

`∑{digits}[n, and(8, #)/8]-∑{digits}[n, floor(#/9)]`
-/

namespace A316869.P5502434712814488164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (Nat.land 8 x : ℚ) / 8).sum - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 9⌋).sum : ℤ) : ℚ)

end

end A316869.P5502434712814488164

namespace A316869

/-- `∑{digits}[n, and(8, #)/8]-∑{digits}[n, floor(#/9)]` -/
def P5502434712814488164.Spec : Prop :=
  ∀ n, P5502434712814488164.a n = (A316869 n : ℚ)

end A316869

/-! ## A316869.P11922674938028024702

`∑{digits}[n, and(8, #)/8]-round(∑{digits}[n, 9^(#-9)])`
-/

namespace A316869.P11922674938028024702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (Nat.land 8 x : ℚ) / 8).sum - (SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => (9 : ℚ) ^ ((x : ℤ) - 9 : ℤ)).sum : ℚ)

end

end A316869.P11922674938028024702

namespace A316869

/-- `∑{digits}[n, and(8, #)/8]-round(∑{digits}[n, 9^(#-9)])` -/
def P11922674938028024702.Spec : Prop :=
  ∀ n, P11922674938028024702.a n = (A316869 n : ℚ)

end A316869

/-! ## A316869.P16988865152762456205

`∑{digits}[n, and(8, #)/8]+∑{digits}[n, -C(#, 9)]%10`
-/

namespace A316869.P16988865152762456205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (Nat.land 8 x : ℚ) / 8).sum + (Int.tmod ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => -(Nat.choose x 9 : ℤ)).sum 10 : ℚ)

end

end A316869.P16988865152762456205

namespace A316869

/-- `∑{digits}[n, and(8, #)/8]+∑{digits}[n, -C(#, 9)]%10` -/
def P16988865152762456205.Spec : Prop :=
  ∀ n, P16988865152762456205.a n = (A316869 n : ℚ)

end A316869

/-! ## A316869.P13039066736682406185

`∑{digits}[n, A011722(#)]`
-/

namespace A316869.P13039066736682406185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011722 x).sum

end

end A316869.P13039066736682406185

namespace A316869

/-- `∑{digits}[n, A011722(#)]` -/
def P13039066736682406185.Spec : Prop :=
  ∀ n, P13039066736682406185.a n = A316869 n

end A316869

/-! ## A316869.P1187897865791886635

`∑{digits}[n, A025432(#)]`
-/

namespace A316869.P1187897865791886635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025432 x).sum

end

end A316869.P1187897865791886635

namespace A316869

/-- `∑{digits}[n, A025432(#)]` -/
def P1187897865791886635.Spec : Prop :=
  ∀ n, P1187897865791886635.a n = A316869 n

end A316869

/-! ## A316869.P17325743422017608968

`∑{digits}[n, A025461(#)]`
-/

namespace A316869.P17325743422017608968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025461 x).sum

end

end A316869.P17325743422017608968

namespace A316869

/-- `∑{digits}[n, A025461(#)]` -/
def P17325743422017608968.Spec : Prop :=
  ∀ n, P17325743422017608968.a n = A316869 n

end A316869

/-! ## A316869.P16737584456654085730

`∑{digits}[n, A026829(#)]`
-/

namespace A316869.P16737584456654085730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A026829 x).sum

end

end A316869.P16737584456654085730

namespace A316869

/-- `∑{digits}[n, A026829(#)]` -/
def P16737584456654085730.Spec : Prop :=
  ∀ n, P16737584456654085730.a n = A316869 n

end A316869

/-! ## A316869.P5170632590705243477

`∑{digits}[n, A037217(#)]`
-/

namespace A316869.P5170632590705243477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A037217 x).sum

end

end A316869.P5170632590705243477

namespace A316869

/-- `∑{digits}[n, A037217(#)]` -/
def P5170632590705243477.Spec : Prop :=
  ∀ n, P5170632590705243477.a n = A316869 n

end A316869

/-! ## A316869.P17238557618652905136

`∑{digits}[n, A045698(#)]`
-/

namespace A316869.P17238557618652905136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A045698 x).sum

end

end A316869.P17238557618652905136

namespace A316869

/-- `∑{digits}[n, A045698(#)]` -/
def P17238557618652905136.Spec : Prop :=
  ∀ n, P17238557618652905136.a n = A316869 n

end A316869

/-! ## A316869.P7038176981992738520

`∑{digits}[n, A072931(#)]`
-/

namespace A316869.P7038176981992738520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A072931 x).sum

end

end A316869.P7038176981992738520

namespace A316869

/-- `∑{digits}[n, A072931(#)]` -/
def P7038176981992738520.Spec : Prop :=
  ∀ n, P7038176981992738520.a n = A316869 n

end A316869

/-! ## A316869.P16473513047527735382

`∑{digits}[n, A160086(#)]`
-/

namespace A316869.P16473513047527735382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A160086 x).sum

end

end A316869.P16473513047527735382

namespace A316869

/-- `∑{digits}[n, A160086(#)]` -/
def P16473513047527735382.Spec : Prop :=
  ∀ n, P16473513047527735382.a n = A316869 n

end A316869

/-! ## A316869.P14193736940889172894

`∑{digits}[n, A251759(#)]`
-/

namespace A316869.P14193736940889172894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A251759 x).sum

end

end A316869.P14193736940889172894

namespace A316869

/-- `∑{digits}[n, A251759(#)]` -/
def P14193736940889172894.Spec : Prop :=
  ∀ n, P14193736940889172894.a n = A316869 n

end A316869

/-! ## A316869.P3888112409668272588

`∑{digits}[n, A253638(#)]`
-/

namespace A316869.P3888112409668272588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A253638 x).sum

end

end A316869.P3888112409668272588

namespace A316869

/-- `∑{digits}[n, A253638(#)]` -/
def P3888112409668272588.Spec : Prop :=
  ∀ n, P3888112409668272588.a n = A316869 n

end A316869

/-! ## A316869.P11219166865394216768

`A102681(n)-A102683(n)`
-/

namespace A316869.P11219166865394216768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n - A102683 n

end

end A316869.P11219166865394216768

namespace A316869

/-- `A102681(n)-A102683(n)` -/
def P11219166865394216768.Spec : Prop :=
  ∀ n, P11219166865394216768.a n = A316869 n

end A316869

/-!
# A316870: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316870, there is no canonical definition to state claims against.
-/

/-! ## A316870.P15291504737185244555

`A316876(∑[4*n]+1)`
-/

namespace A316870.P15291504737185244555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316870.P15291504737185244555

/-! ## A316870.P3965984515033692953

`record[A003982(n)*A316876(n+1)]`
-/

namespace A316870.P3965984515033692953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316870.P3965984515033692953

/-! ## A316870.P4114714621372690836

`A319922(n)+A316876(A001844(n))`
-/

namespace A316870.P4114714621372690836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319922 n + A316876 (A001844 n).toNat

end

end A316870.P4114714621372690836

/-! ## A316870.P17100780683834390894

`gcd(A000038(n), A316876(A001844(n)))`
-/

namespace A316870.P17100780683834390894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A316876 (A001844 n).toNat)

end

end A316870.P17100780683834390894

/-! ## A316870.P18338020004004168679

`lcm(A000174(n), A316876(A001844(n)))`
-/

namespace A316870.P18338020004004168679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000174 n) (A316876 (A001844 n).toNat)

end

end A316870.P18338020004004168679

/-!
# A316871: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316871, there is no canonical definition to state claims against.
-/

/-! ## A316871.P2782728708165295344

`A316876(∑[n+2]+4)`
-/

namespace A316871.P2782728708165295344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316871.P2782728708165295344

/-! ## A316871.P9607936647857486826

`A316876(A167614(n+1))+A011731(n)`
-/

namespace A316871.P9607936647857486826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A167614 (n + 1)).toNat + A011731 n

end

end A316871.P9607936647857486826

/-! ## A316871.P8318457127358548980

`A316876(A167614(n+1))+A185238(n)`
-/

namespace A316871.P8318457127358548980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A167614 (n + 1)).toNat + A185238 n

end

end A316871.P8318457127358548980

/-! ## A316871.P783719361784990766

`A316876(A167614(n+1))+A185284(n)`
-/

namespace A316871.P783719361784990766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A167614 (n + 1)).toNat + A185284 n

end

end A316871.P783719361784990766

/-! ## A316871.P12450315451961901117

`A316876(A167614(n+1))%A199689(n)`
-/

namespace A316871.P12450315451961901117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316876 (A167614 (n + 1)).toNat) (A199689 n)

end

end A316871.P12450315451961901117

/-!
# A316872: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316872, there is no canonical definition to state claims against.
-/

/-! ## A316872.P2195443237424715919

`A316876(A374004(n+1))`
-/

namespace A316872.P2195443237424715919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A374004 (n + 1)).toNat

end

end A316872.P2195443237424715919

/-! ## A316872.P11574827498995000085

`A316876(A141214(n)+7)`
-/

namespace A316872.P11574827498995000085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A141214 n + 7).toNat

end

end A316872.P11574827498995000085

/-! ## A316872.P12434108391635718177

`A316876(A052905(n)+9)`
-/

namespace A316872.P12434108391635718177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A052905 n + 9).toNat

end

end A316872.P12434108391635718177

/-! ## A316872.P11507617265357742814

`A316876(A055999(n)+10)`
-/

namespace A316872.P11507617265357742814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A055999 n + 10).toNat

end

end A316872.P11507617265357742814

/-! ## A316872.P3503195907766395506

`A316876(A167614(n+2)+1)`
-/

namespace A316872.P3503195907766395506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A167614 (n + 2) + 1).toNat

end

end A316872.P3503195907766395506

/-!
# A316873: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316873, there is no canonical definition to state claims against.
-/

/-! ## A316873.P17186210920093297506

`A316876(A374005(n+1))`
-/

namespace A316873.P17186210920093297506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A374005 (n + 1)).toNat

end

end A316873.P17186210920093297506

/-! ## A316873.P16522712267759256562

`A316876(A167499(n+3))`
-/

namespace A316873.P16522712267759256562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A167499 (n + 3)).toNat

end

end A316873.P16522712267759256562

/-! ## A316873.P1606580107075560612

`A316876(A155212(n)+13)`
-/

namespace A316873.P1606580107075560612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A155212 n + 13).toNat

end

end A316873.P1606580107075560612

/-! ## A316873.P11682767683270353483

`A316876(Δ[A264443(n)])`
-/

namespace A316873.P11682767683270353483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (f1 (n + 1) - f1 n).toNat

end

end A316873.P11682767683270353483

/-! ## A316873.P14783516709658807293

`A316876(A046691(n+3))`
-/

namespace A316873.P14783516709658807293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A046691 (n + 3)).toNat

end

end A316873.P14783516709658807293

/-!
# A316874: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316874, there is no canonical definition to state claims against.
-/

/-! ## A316874.P16969416954099223868

`A316876(A374007(n+1))`
-/

namespace A316874.P16969416954099223868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A374007 (n + 1)).toNat

end

end A316874.P16969416954099223868

/-! ## A316874.P12166721533182014463

`A316876(A034856(n+4)+8)`
-/

namespace A316874.P12166721533182014463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A034856 (n + 4) + 8).toNat

end

end A316874.P12166721533182014463

/-! ## A316874.P13432886669873175053

`A316876(eq[7, A131818(n+1)])`
-/

namespace A316874.P13432886669873175053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316874.P13432886669873175053

/-! ## A316874.P7979509421698914164

`A316876(A000124(n+6)-(n+1))`
-/

namespace A316874.P7979509421698914164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A316874.P7979509421698914164

/-! ## A316874.P1411547183462465615

`A316876(A052905(n+3))`
-/

namespace A316874.P1411547183462465615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A052905 (n + 3)).toNat

end

end A316874.P1411547183462465615

/-!
# A316875: Number of n X 7 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316875, there is no canonical definition to state claims against.
-/

/-! ## A316875.P11908676610135750120

`A316876(A374008(n+1))`
-/

namespace A316875.P11908676610135750120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A374008 (n + 1)).toNat

end

end A316875.P11908676610135750120

/-! ## A316875.P3851600317220923853

`A316876(A000124(n+6)+6)`
-/

namespace A316875.P3851600317220923853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (A000124 (n + 6) + 6).toNat

end

end A316875.P3851600317220923853

/-! ## A316875.P13360058862403174916

`A316876(eq[8, A131818(n+1)])`
-/

namespace A316875.P13360058862403174916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316875.P13360058862403174916

/-! ## A316875.P4479625786348630736

`A316876(eq[4, A219347(n)])`
-/

namespace A316875.P4479625786348630736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316875.P4479625786348630736

/-! ## A316875.P9160290948530917607

`A316876(eq[6, A193592(n)])`
-/

namespace A316875.P9160290948530917607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316875.P9160290948530917607

/-!
# A316876: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316876, there is no canonical definition to state claims against.
-/

/-! ## A316876.P4369702290066190024

`A317604(n+1)-A010894(A003401(n+1))`
-/

namespace A316876.P4369702290066190024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (n + 1) - A010894 ((A003401 (n + 1)).toNat + 21)

end

end A316876.P4369702290066190024

/-! ## A316876.P10075636090221615439

`A317604(n+1)+A016389(A022166(n))`
-/

namespace A316876.P10075636090221615439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (n + 1) + A016389 (A022166 n).toNat

end

end A316876.P10075636090221615439

/-! ## A316876.P7164066377684104822

`A317604(n+1)+A016389(A027336(n))`
-/

namespace A316876.P7164066377684104822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (n + 1) + A016389 (A027336 n).toNat

end

end A316876.P7164066377684104822

/-! ## A316876.P1958089587393857115

`A317604(n+1)+A178798(A008459(n))`
-/

namespace A316876.P1958089587393857115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (n + 1) + A178798 (A008459 n).toNat

end

end A316876.P1958089587393857115

/-! ## A316876.P1358455943666198405

`A305593(n+1)+A184955(A029600(n))`
-/

namespace A316876.P1358455943666198405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (n + 1) + A184955 (A029600 n).toNat

end

end A316876.P1358455943666198405

/-!
# A316877: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316877, there is no canonical definition to state claims against.
-/

/-! ## A316877.P17548593985411473833

`A316883(∑[4*n]+1)`
-/

namespace A316877.P17548593985411473833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316877.P17548593985411473833

/-! ## A316877.P12319806993043107555

`record[A316883(Δ[A235355(n)])]`
-/

namespace A316877.P12319806993043107555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316877.P12319806993043107555

/-! ## A316877.P13062566786800928975

`and(-1, A316883(A001844(n)))`
-/

namespace A316877.P13062566786800928975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A316883 (A001844 n).toNat)

end

end A316877.P13062566786800928975

/-! ## A316877.P14608644735142240354

`record[A316883(A330613(n+1))]`
-/

namespace A316877.P14608644735142240354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316877.P14608644735142240354

/-! ## A316877.P8947527029184041766

`record[A316883(Δ[A079824(n+1)])]`
-/

namespace A316877.P8947527029184041766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316877.P8947527029184041766

/-!
# A316878: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316878, there is no canonical definition to state claims against.
-/

/-! ## A316878.P4561167591495090270

`A316883(∑[n+2]+4)`
-/

namespace A316878.P4561167591495090270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316878.P4561167591495090270

/-! ## A316878.P3569122083192118654

`A316883(A167614(n+1))+char[17]`
-/

namespace A316878.P3569122083192118654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316878.P3569122083192118654

/-! ## A316878.P3707499803604076582

`A316883(A046691(n)+7)+char[19]`
-/

namespace A316878.P3707499803604076582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316878.P3707499803604076582

/-! ## A316878.P16448435409245974204

`record[A316883(n+4)/A052179(n)]`
-/

namespace A316878.P16448435409245974204
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316883 (n + 4) : ℚ) / (A052179 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316878.P16448435409245974204

/-! ## A316878.P1417898813395954241

`A015600(n)*A316883(A167614(n+1))`
-/

namespace A316878.P1417898813395954241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 n * A316883 (A167614 (n + 1)).toNat

end

end A316878.P1417898813395954241

/-!
# A316879: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316879, there is no canonical definition to state claims against.
-/

/-! ## A316879.P6255628424015213552

`A316883(∑[n+3]+7)`
-/

namespace A316879.P6255628424015213552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316879.P6255628424015213552

/-! ## A316879.P2236699871833515436

`A316883(A055999(n)+10)+char[17]`
-/

namespace A316879.P2236699871833515436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316879.P2236699871833515436

/-! ## A316879.P15752603257545288165

`A007318(C(2, n))*A316883(A055999(n)+10)`
-/

namespace A316879.P15752603257545288165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A316883 (A055999 n + 10).toNat

end

end A316879.P15752603257545288165

/-! ## A316879.P10759070021778366412

`A014963(6*(n+1))*A316883(A055999(n)+10)`
-/

namespace A316879.P10759070021778366412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A316883 (A055999 n + 10).toNat

end

end A316879.P10759070021778366412

/-! ## A316879.P4251419136381530414

`A007318(C(2, n))*A316883(A167614(n+2)+1)`
-/

namespace A316879.P4251419136381530414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A316883 (A167614 (n + 2) + 1).toNat

end

end A316879.P4251419136381530414

/-!
# A316880: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316880, there is no canonical definition to state claims against.
-/

/-! ## A316880.P7296484554767848402

`A316883(A374005(n+1))`
-/

namespace A316880.P7296484554767848402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (A374005 (n + 1)).toNat

end

end A316880.P7296484554767848402

/-! ## A316880.P16659517202910104534

`A316883(A167499(n+3))`
-/

namespace A316880.P16659517202910104534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (A167499 (n + 3)).toNat

end

end A316880.P16659517202910104534

/-! ## A316880.P16823237200467160126

`A316883(A155212(n)+13)`
-/

namespace A316880.P16823237200467160126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (A155212 n + 13).toNat

end

end A316880.P16823237200467160126

/-! ## A316880.P348737558778894058

`A316883(A056000(n)+15)`
-/

namespace A316880.P348737558778894058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (A056000 n + 15).toNat

end

end A316880.P348737558778894058

/-! ## A316880.P6368187611828583669

`A316883(eq[7, A066657(n)])`
-/

namespace A316880.P6368187611828583669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316880.P6368187611828583669

/-!
# A316881: Number of n X 6 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316881, there is no canonical definition to state claims against.
-/

/-! ## A316881.P16629769713739701692

`A316883(A374007(n+1))`
-/

namespace A316881.P16629769713739701692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (A374007 (n + 1)).toNat

end

end A316881.P16629769713739701692

/-! ## A316881.P3812487862772806690

`A316883(A166136(n+4))`
-/

namespace A316881.P3812487862772806690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (A166136 (n + 4)).toNat

end

end A316881.P3812487862772806690

/-! ## A316881.P14272353822246662111

`A316883(A056115(n)+21)`
-/

namespace A316881.P14272353822246662111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (A056115 n + 21).toNat

end

end A316881.P14272353822246662111

/-! ## A316881.P1436347409946282226

`A316883(A167499(n+4)+1)`
-/

namespace A316881.P1436347409946282226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (A167499 (n + 4) + 1).toNat

end

end A316881.P1436347409946282226

/-! ## A316881.P12181047549248432091

`A316883(A077169(n+6)+1)`
-/

namespace A316881.P12181047549248432091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (A077169 (n + 6) + 1).toNat

end

end A316881.P12181047549248432091

/-!
# A316882: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316882, there is no canonical definition to state claims against.
-/

/-! ## A316882.P1344037239354186149

`A316883(A374008(n+1))`
-/

namespace A316882.P1344037239354186149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (A374008 (n + 1)).toNat

end

end A316882.P1344037239354186149

/-! ## A316882.P17633673503831159166

`A316883(A056119(n)+28)`
-/

namespace A316882.P17633673503831159166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (A056119 n + 28).toNat

end

end A316882.P17633673503831159166

/-! ## A316882.P6535774238155848401

`A316883(eq[11, A066657(n)])`
-/

namespace A316882.P6535774238155848401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316882.P6535774238155848401

/-! ## A316882.P3065658172144483692

`A316883(A167614(n+5)+4)`
-/

namespace A316882.P3065658172144483692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (A167614 (n + 5) + 4).toNat

end

end A316882.P3065658172144483692

/-! ## A316882.P1333616944851223593

`A316883(A027379(n+4)+10)`
-/

namespace A316882.P1333616944851223593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (A027379 (n + 4) + 10).toNat

end

end A316882.P1333616944851223593

/-!
# A316883: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316883, there is no canonical definition to state claims against.
-/

/-! ## A316883.P14850585809350221736

`A317153(n+1)+A081603(A022167(n))`
-/

namespace A316883.P14850585809350221736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (n + 1) + A081603 (A022167 n).toNat

end

end A316883.P14850585809350221736

/-! ## A316883.P11610082532820486556

`A317153(n+1)+A054911(A299905(n))`
-/

namespace A316883.P11610082532820486556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (n + 1) + A054911 (A299905 n).toNat

end

end A316883.P11610082532820486556

/-! ## A316883.P15496103940574222215

`A305911(n+1)+A157685(A260340(n))`
-/

namespace A316883.P15496103940574222215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (n + 1) + A157685 (A260340 n).toNat

end

end A316883.P15496103940574222215

/-! ## A316883.P14204295239229630721

`A317153(n+1)+A184159(A260340(n))`
-/

namespace A316883.P14204295239229630721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (n + 1) + A184159 (A260340 n).toNat

end

end A316883.P14204295239229630721

/-! ## A316883.P18220928503906288476

`A317611(n+1)-A173636(A174545(n))`
-/

namespace A316883.P18220928503906288476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (n + 1) - A173636 (A174545 n).toNat

end

end A316883.P18220928503906288476

/-!
# A316884: Squares visited by moving diagonally one square on a spirally numbered board and moving to the lowest available unvisited square at each step.

The programs for A316884, there is no canonical definition to state claims against.
-/

/-! ## A316884.P7168422644671285305

`A316967(n)+1`
-/

namespace A316884.P7168422644671285305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316967 n + 1

end

end A316884.P7168422644671285305

/-! ## A316884.P18397185739691243023

`xor(1, A316967(xor(1, xor(1, n))))`
-/

namespace A316884.P18397185739691243023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A316967 (Nat.xor 1 (Nat.xor 1 n)))

end

end A316884.P18397185739691243023

/-! ## A316884.P2007731873769704190

`A000027(or(1, A316967(n)))`
-/

namespace A316884.P2007731873769704190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lor 1 (A316967 n)).toNat

end

end A316884.P2007731873769704190

/-! ## A316884.P12671681767214110451

`A000265(or(1, A316967(n)))`
-/

namespace A316884.P12671681767214110451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lor 1 (A316967 n)).toNat

end

end A316884.P12671681767214110451

/-! ## A316884.P16894257617290093681

`A000027(xor(1, A316967(n)))`
-/

namespace A316884.P16894257617290093681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.xor 1 (A316967 n)).toNat

end

end A316884.P16894257617290093681

/-! ## A316884.P16798976307591679660

`or(A106400(n)², A316967(n))`
-/

namespace A316884.P16798976307591679660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106400 n ^ 2) (A316967 n)

end

end A316884.P16798976307591679660

/-! ## A316884.P3504227461072387536

`A004442(A316967(n))`
-/

namespace A316884.P3504227461072387536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A316967 n).toNat

end

end A316884.P3504227461072387536

/-! ## A316884.P6620677456349704647

`A028310(or(1, A316967(n)))`
-/

namespace A316884.P6620677456349704647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor 1 (A316967 n)).toNat

end

end A316884.P6620677456349704647

/-! ## A316884.P16520880913406065227

`A008611(3*A316967(n))`
-/

namespace A316884.P16520880913406065227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A316967 n).toNat

end

end A316884.P16520880913406065227

/-! ## A316884.P4642972556401280221

`2-(A104763(A000124(n))-A316967(n))`
-/

namespace A316884.P4642972556401280221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A104763 (A000124 n).toNat - A316967 n)

end

end A316884.P4642972556401280221

/-!
# A316886: Where records occur in A299773.

The programs for A316886, there is no canonical definition to state claims against.
-/

/-! ## A316886.P1136164021478138415

`record[C(A253248(n+1), n)]`
-/

namespace A316886.P1136164021478138415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A253248 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316886.P1136164021478138415

/-! ## A316886.P2888970292001979596

`eq[n, A253248(A028310(n))]`
-/

namespace A316886.P2888970292001979596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253248 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316886.P2888970292001979596

/-! ## A316886.P685451214175365299

`record[gcd(A015906(n), A253248(n+1))]`
-/

namespace A316886.P685451214175365299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015906 n) (A253248 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316886.P685451214175365299

/-! ## A316886.P6558085619889026941

`∪[A002093(n+1), A309943(n+1)]`
-/

namespace A316886.P6558085619889026941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316886.P6558085619889026941

/-! ## A316886.P3736339308236002054

`∪[A128699(n+1), A309943(n+1)]`
-/

namespace A316886.P3736339308236002054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316886.P3736339308236002054

/-! ## A316886.P6606450531634767970

`record[A000124(A253248(n+1))-A000124(n)]`
-/

namespace A316886.P6606450531634767970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A253248 (n + 1)).toNat - A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316886.P6606450531634767970

/-! ## A316886.P10429974583738383708

`record[A000217(A253248(n+1))-A000217(n)]`
-/

namespace A316886.P10429974583738383708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A253248 (n + 1)).toNat - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316886.P10429974583738383708

/-!
# A316887: Numbers k whose partition numbers have more than k nontrivial divisors.

The programs for A316887, there is no canonical definition to state claims against.
-/

/-! ## A316887.P6548754660673474339

`lt[n+1, A085543(n)]`
-/

namespace A316887.P6548754660673474339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A316887.P6548754660673474339

/-! ## A316887.P18242073947592047239

`lt[A085540(n), (n*A085543(n))²]`
-/

namespace A316887.P18242073947592047239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085540 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A085543 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316887.P18242073947592047239

/-! ## A316887.P10272885536997502357

`lt[A000041(n), A000094(A085543(n))]`
-/

namespace A316887.P10272885536997502357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (A085543 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316887.P10272885536997502357

/-! ## A316887.P10699152529837415458

`lt[A052810(n), A000094(A085543(n))]`
-/

namespace A316887.P10699152529837415458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (A085543 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316887.P10699152529837415458

/-! ## A316887.P15736647777371453076

`lt[A027337(n), A027336(A085543(n))]`
-/

namespace A316887.P15736647777371453076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (A085543 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316887.P15736647777371453076

/-! ## A316887.P17416135595393980725

`lt[A167934(n), A000094(A085543(n))]`
-/

namespace A316887.P17416135595393980725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167934 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (A085543 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316887.P17416135595393980725

/-! ## A316887.P7334990808618443341

`lt[A085540(n), A085537(A085543(n))]`
-/

namespace A316887.P7334990808618443341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085540 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 (A085543 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316887.P7334990808618443341

/-! ## A316887.P1002333845400699667

`lt[A000041(n), A000041(A085543(n)-1)]`
-/

namespace A316887.P1002333845400699667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A085543 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316887.P1002333845400699667

/-! ## A316887.P5867131434437386856

`lt[A027336(n), A027336(A085543(n)-1)]`
-/

namespace A316887.P5867131434437386856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (A085543 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316887.P5867131434437386856

/-! ## A316887.P5618866699812941432

`lt[A027337(n), A027337(A085543(n)-1)]`
-/

namespace A316887.P5618866699812941432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (A085543 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316887.P5618866699812941432

/-!
# A316888: Heinz numbers of aperiodic integer partitions into relatively prime parts whose reciprocal sum is 1.

The programs for A316888, there is no canonical definition to state claims against.
-/

/-! ## A316888.P13794108567548107787

`∩[A316855(n+1), A316901(n+1)]`
-/

namespace A316888.P13794108567548107787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316888.P13794108567548107787

/-! ## A316888.P1442018546635561834

`∩[A316889(n+1), A316901(n+1)]`
-/

namespace A316888.P1442018546635561834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316888.P1442018546635561834

/-!
# A316889: Heinz numbers of aperiodic integer partitions whose reciprocal sum is 1.

The programs for A316889, there is no canonical definition to state claims against.
-/

/-! ## A316889.P11261163782719026928

`A316855(comp[A061112(2*n+5)-A238479(n+1)])`
-/

namespace A316889.P11261163782719026928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061112 (2 * n + 5) - A238479 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316855 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A316889.P11261163782719026928

/-! ## A316889.P3429381077627935679

`A316855(comp[A065383(n)-A055226(n)]+1)`
-/

namespace A316889.P3429381077627935679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065383 n - A055226 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316855 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A316889.P3429381077627935679

/-! ## A316889.P18048411527230203775

`filter[A316902(n+1), A341625(#)]`
-/

namespace A316889.P18048411527230203775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A316889.P18048411527230203775

/-!
# A316891: Number of aperiodic integer partitions of n into relatively prime parts whose reciprocal sum is an integer.

The programs for A316891, there is no canonical definition to state claims against.
-/

/-! ## A316891.P14684965506622539138

`xor(A266174(A119587(n)), A340760(n))`
-/

namespace A316891.P14684965506622539138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A266174 (A119587 n).toNat) (A340760 n)

end

end A316891.P14684965506622539138

/-! ## A316891.P10612769307587724931

`A316895(n+1)-A179527(A281751(n))`
-/

namespace A316891.P10612769307587724931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316895 (n + 1) - A179527 (A281751 n).toNat

end

end A316891.P10612769307587724931

/-! ## A316891.P18123568432163230372

`A351725(or(A069770(n), A115114(n+1)))`
-/

namespace A316891.P18123568432163230372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351725 (Int.lor (A069770 n) (A115114 (n + 1))).toNat

end

end A316891.P18123568432163230372

/-! ## A316891.P11976247433248323949

`A284304(n)%A065516(A053209(n))`
-/

namespace A316891.P11976247433248323949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284304 n) (A065516 (A053209 n).toNat)

end

end A316891.P11976247433248323949

/-! ## A316891.P7674493182192790528

`A108731(xor(A000120(n), A079223(n)))`
-/

namespace A316891.P7674493182192790528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108731 (Int.xor (A000120 n) (A079223 n)).toNat

end

end A316891.P7674493182192790528

/-!
# A316892: Number of non-isomorphic strict multiset partitions of {1, 1, 2, 2, 3, 3, ..., n, n} with no equivalent vertices.

The programs for A316892, there is no canonical definition to state claims against.
-/

/-! ## A316892.P9970563742692891868

`A149812(n)-A000196(n)`
-/

namespace A316892.P9970563742692891868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149812 n - A000196 n

end

end A316892.P9970563742692891868

/-! ## A316892.P6381630162478023750

`A149812(n)-A056556(n)`
-/

namespace A316892.P6381630162478023750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149812 n - A056556 n

end

end A316892.P6381630162478023750

/-! ## A316892.P14648593690556319553

`A149812(n)-A060467(n)`
-/

namespace A316892.P14648593690556319553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149812 n - A060467 n

end

end A316892.P14648593690556319553

/-! ## A316892.P3497384162354449095

`A149812(n)-A064770(n)`
-/

namespace A316892.P3497384162354449095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149812 n - A064770 n

end

end A316892.P3497384162354449095

/-!
# A316893: Number of aperiodic integer partitions of n into relatively prime parts whose reciprocal sum is 1.

The programs for A316893, there is no canonical definition to state claims against.
-/

/-! ## A316893.P683206557878066372

`A316897(n+1)%A344653(n+1)`
-/

namespace A316893.P683206557878066372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316897 (n + 1)) (A344653 (n + 1))

end

end A316893.P683206557878066372

/-! ## A316893.P8482069143594023180

`A316897(n+1)+A033684(A171824(n))`
-/

namespace A316893.P8482069143594023180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316897 (n + 1) + A033684 (A171824 n).toNat

end

end A316893.P8482069143594023180

/-! ## A316893.P13143651259902059168

`and(A029724(n+1), A316897(n+1))`
-/

namespace A316893.P13143651259902059168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029724 (n + 1)) (A316897 (n + 1))

end

end A316893.P13143651259902059168

/-! ## A316893.P15892392094543968341

`and(A165580(n+1), A316897(n+1))`
-/

namespace A316893.P15892392094543968341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165580 (n + 1)) (A316897 (n + 1))

end

end A316893.P15892392094543968341

/-! ## A316893.P16241237678462500146

`and(A192614(n+1), A316897(n+1))`
-/

namespace A316893.P16241237678462500146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A192614 (n + 1)) (A316897 (n + 1))

end

end A316893.P16241237678462500146

/-!
# A316895: Number of aperiodic integer partitions of n whose reciprocal sum is an integer.

The programs for A316895, there is no canonical definition to state claims against.
-/

/-! ## A316895.P10229837175439661593

`A316891(n+1)+A316869(A323092(3*n+1))`
-/

namespace A316895.P10229837175439661593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316891 (n + 1) + A316869 (A323092 (3 * n + 1)).toNat

end

end A316895.P10229837175439661593

/-! ## A316895.P6028568031172199758

`A316891(n+1)+A179527(A281751(n))`
-/

namespace A316895.P6028568031172199758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316891 (n + 1) + A179527 (A281751 n).toNat

end

end A316895.P6028568031172199758

/-! ## A316895.P7060561893139603632

`lcm(A228826(A005043(n)), A316891(n+1))`
-/

namespace A316895.P7060561893139603632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A228826 (A005043 n).toNat) (A316891 (n + 1))

end

end A316895.P7060561893139603632

/-! ## A316895.P7291083858931404644

`A039999(A287110(n+1)+A065885(n+1))`
-/

namespace A316895.P7291083858931404644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A287110 (n + 1) + A065885 (n + 1)).toNat

end

end A316895.P7291083858931404644

/-!
# A316896: Number of aperiodic integer partitions of n whose reciprocal sum is 1.

The programs for A316896, there is no canonical definition to state claims against.
-/

/-! ## A316896.P5522152188841955525

`A051908(n+1)-A339225(n+1)%A056624(n+1)`
-/

namespace A316896.P5522152188841955525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051908 (n + 1) - Int.tmod (A339225 (n + 1)) (A056624 (n + 1))

end

end A316896.P5522152188841955525

/-! ## A316896.P13534872797129401232

`A051908(A331737(n+1)%A318587(n+1))`
-/

namespace A316896.P13534872797129401232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051908 (Int.tmod (A331737 (n + 1)) (A318587 (n + 1))).toNat

end

end A316896.P13534872797129401232

/-! ## A316896.P3061705610200199743

`A047999(A237711(2*n))*A051908(n+1)`
-/

namespace A316896.P3061705610200199743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A237711 (2 * n)).toNat * A051908 (n + 1)

end

end A316896.P3061705610200199743

/-! ## A316896.P17692263978080830558

`and(A051908(n+1), A336935(A239196(n+1)))`
-/

namespace A316896.P17692263978080830558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051908 (n + 1)) (A336935 (A239196 (n + 1)).toNat)

end

end A316896.P17692263978080830558

/-! ## A316896.P8584979597891687019

`and(A051908(n+1), A331086(A340480(3*(n+1))))`
-/

namespace A316896.P8584979597891687019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051908 (n + 1)) (A331086 (A340480 (3 * (n + 1))).toNat)

end

end A316896.P8584979597891687019

/-!
# A316897: Number of integer partitions of n into relatively prime parts whose reciprocal sum is 1.

The programs for A316897, there is no canonical definition to state claims against.
-/

/-! ## A316897.P70549298317849392

`or(A010054(A221528(n)), A316893(n+1))`
-/

namespace A316897.P70549298317849392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A221528 n).toNat) (A316893 (n + 1))

end

end A316897.P70549298317849392

/-!
# A316898: Number of integer partitions of n into relatively prime parts whose reciprocal sum is the reciprocal of an integer.

The programs for A316898, there is no canonical definition to state claims against.
-/

/-! ## A316898.P16031970082963969517

`A316893(n+1)+∑[A186746(A046537(n+1))]`
-/

namespace A316898.P16031970082963969517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186746 (A046537 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316893 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316898.P16031970082963969517

