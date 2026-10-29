import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
# A114900: Number of compositions of n such that no two adjacent parts are equal, allowing 0.

The programs for A114900, there is no canonical definition to state claims against.
-/

/-! ## A114900.P11390684949140565009

`∑[A376638(A367057(n))]`
-/

namespace A114900.P11390684949140565009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376638 (A367057 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114900.P11390684949140565009

/-! ## A114900.P12942191383480651966

`A106443(A032085(n+1))+A083337(n)`
-/

namespace A114900.P12942191383480651966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106443 (A032085 (n + 1)).toNat + A083337 n

end

end A114900.P12942191383480651966

/-! ## A114900.P6300155674246693293

`A165090(A143093(n))+A000598(n+3)`
-/

namespace A114900.P6300155674246693293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165090 (A143093 n).toNat + A000598 (n + 3)

end

end A114900.P6300155674246693293

/-!
# A114902: Number of compositions of {1,..,n} such that no two adjacent parts are of equal size (labeled Carlitz compositions).

The programs for A114902, there is no canonical definition to state claims against.
-/

/-! ## A114902.P3095965711460423605

`A000670(n)-A262046(n)`
-/

namespace A114902.P3095965711460423605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A262046 n

end

end A114902.P3095965711460423605

/-! ## A114902.P594193052577574643

`A122101(∑[n])-A262046(n)`
-/

namespace A114902.P594193052577574643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) - A262046 n

end

end A114902.P594193052577574643

/-! ## A114902.P584525571139265005

`A154921(∑[n])-A262046(n)`
-/

namespace A114902.P584525571139265005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j) - A262046 n

end

end A114902.P584525571139265005

/-! ## A114902.P2807182978078589965

`A052875(n)+1-A262046(n)`
-/

namespace A114902.P2807182978078589965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 n + (1 - A262046 n)

end

end A114902.P2807182978078589965

/-! ## A114902.P15577209920716521802

`A076726(n)/2-A262046(n)`
-/

namespace A114902.P15577209920716521802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076726 n : ℚ) / 2 - (A262046 n : ℚ)

end

end A114902.P15577209920716521802

/-! ## A114902.P6810131902568732088

`ceil(A007047(n)/4)-A262046(n)`
-/

namespace A114902.P6810131902568732088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007047 n : ℚ) / 4⌉ - A262046 n

end

end A114902.P6810131902568732088

/-! ## A114902.P7642145302904287151

`A226513(∑[n]+n)-A262046(n)`
-/

namespace A114902.P7642145302904287151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A262046 n

end

end A114902.P7642145302904287151

/-! ## A114902.P1000753928299231570

`or(1, A052856(n)-1)-A262046(n)`
-/

namespace A114902.P1000753928299231570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A052856 n - 1) - A262046 n

end

end A114902.P1000753928299231570

/-! ## A114902.P1339119053929441498

`A032011(n)+A262047(n)-A262046(n)`
-/

namespace A114902.P1339119053929441498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032011 n + (A262047 n - A262046 n)

end

end A114902.P1339119053929441498

/-! ## A114902.P18307631570602643800

`A261959(∑[n+2]-1)`
-/

namespace A114902.P18307631570602643800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A114902.P18307631570602643800

/-!
# A114903: Number of compositions of {1,..,n} such that no two adjacent parts are of equal size (labeled Carlitz compositions), allowing parts to be of size 0.

The programs for A114903, there is no canonical definition to state claims against.
-/

/-! ## A114903.P16009516750120189849

`2*A213172(A002387(n))`
-/

namespace A114903.P16009516750120189849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213172 (A002387 n).toNat

end

end A114903.P16009516750120189849

/-!
# A114904: Sorted numbers of digits of any base-10 narcissistic number.

The programs for A114904, there is no canonical definition to state claims against.
-/

/-! ## A114904.P15209808174539145721

`record[A046074(A162226(n+1))]`
-/

namespace A114904.P15209808174539145721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A162226 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114904.P15209808174539145721

/-! ## A114904.P11831822030569696525

`record[A046074(A002808(2*n+1)-n)]`
-/

namespace A114904.P11831822030569696525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A002808 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114904.P11831822030569696525

/-! ## A114904.P13122362245895943903

`lt[A285483(2*(n+3)), C(A255668(n), 2)²]`
-/

namespace A114904.P13122362245895943903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285483 (2 * (n + 3))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A255668 n).toNat 2 ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114904.P13122362245895943903

/-! ## A114904.P15183996372995187392

`∪[A126930(2*(n+2)), record[A046074(2*n+5)]]`
-/

namespace A114904.P15183996372995187392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * (n + 2))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114904.P15183996372995187392

/-! ## A114904.P11602312557553384008

`record[A046074(A004001(A001954(n)))]`
-/

namespace A114904.P11602312557553384008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A004001 (A001954 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114904.P11602312557553384008

/-!
# A114905: Triangle where a(1,1) = 0; a(n,m) = number of terms in row (n-1) which, when added to m, are primes.

The programs for A114905, there is no canonical definition to state claims against.
-/

/-! ## A114905.P2038194494413061217

`A001221(A003144(A049867(n)))`
-/

namespace A114905.P2038194494413061217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003144 (A049867 n).toNat).toNat

end

end A114905.P2038194494413061217

/-! ## A114905.P3661206017025739094

`A001221(A283068(n)+A005187(n))`
-/

namespace A114905.P3661206017025739094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A283068 n + A005187 n).toNat

end

end A114905.P3661206017025739094

/-! ## A114905.P11614421339632171884

`∑{p}[A003144(A049867(n)), A001222(#)]`
-/

namespace A114905.P11614421339632171884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (A049867 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A114905.P11614421339632171884

/-! ## A114905.P3746606501970868413

`A328195(A041251(n))`
-/

namespace A114905.P3746606501970868413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328195 (A041251 n).toNat

end

end A114905.P3746606501970868413

/-! ## A114905.P1521445103447114935

`A001221(or(A000129(n), A206740(n)))`
-/

namespace A114905.P1521445103447114935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A000129 n) (A206740 n)).toNat

end

end A114905.P1521445103447114935

/-!
# A114906: Triangle where a(1,1) = 1; a(n,m) = number of terms in row (n-1) which, when added to m, are primes.

The programs for A114906, there is no canonical definition to state claims against.
-/

/-! ## A114906.P39462756933559096

`A033761(A103699(2*n+1)*A232432(n))`
-/

namespace A114906.P39462756933559096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 (A103699 (2 * n + 1) * A232432 n).toNat

end

end A114906.P39462756933559096

/-! ## A114906.P9889564938005676866

`A271647(A077419(n))%4`
-/

namespace A114906.P9889564938005676866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271647 (A077419 n).toNat) 4

end

end A114906.P9889564938005676866

/-! ## A114906.P1149134062372563728

`C(A353929(A188951(n)), A133233(n))`
-/

namespace A114906.P1149134062372563728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A353929 (A188951 n).toNat).toNat (A133233 n).toNat

end

end A114906.P1149134062372563728

/-! ## A114906.P4176654238016655952

`A217869(A216823(n+1)+A065648(n))`
-/

namespace A114906.P4176654238016655952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217869 (A216823 (n + 1) + A065648 n).toNat

end

end A114906.P4176654238016655952

/-! ## A114906.P12920199364642317

`A036584(A036614(n))*A215401(n+1)`
-/

namespace A114906.P12920199364642317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 (A036614 n).toNat * A215401 (n + 1)

end

end A114906.P12920199364642317

/-!
# A114912: 2^a(n) divides A000009(n) but 2^(a(n)+1) does not.

The programs for A114912, there is no canonical definition to state claims against.
-/

/-! ## A114912.P10760962881134995567

`A007814(A000009(n))`
-/

namespace A114912.P10760962881134995567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000009 n).toNat

end

end A114912.P10760962881134995567

/-! ## A114912.P13018036914812433995

`val(A000009(n), 2)`
-/

namespace A114912.P13018036914812433995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000009 n).toNat 2

end

end A114912.P13018036914812433995

/-! ## A114912.P12061384892114576772

`val(abs(A081360(n)), 2)`
-/

namespace A114912.P12061384892114576772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A081360 n|.toNat 2

end

end A114912.P12061384892114576772

/-! ## A114912.P1976758131521099372

`val(∑[A087897(n)], 2)`
-/

namespace A114912.P1976758131521099372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A114912.P1976758131521099372

/-! ## A114912.P5371982484769292989

`val(A111133(n)+1, 2)`
-/

namespace A114912.P5371982484769292989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A111133 n + 1).toNat 2

end

end A114912.P5371982484769292989

/-! ## A114912.P12427394466712965262

`val(ceil(A333147(n)/2), 2)`
-/

namespace A114912.P12427394466712965262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ⌈(A333147 n : ℚ) / 2⌉.toNat 2

end

end A114912.P12427394466712965262

/-! ## A114912.P5278114966434421649

`val(A000041(n)-A047967(n), 2)`
-/

namespace A114912.P5278114966434421649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000041 n - A047967 n).toNat 2

end

end A114912.P5278114966434421649

/-! ## A114912.P1340876624270977094

`val(∑[A002865(n)]-A047967(n), 2)`
-/

namespace A114912.P1340876624270977094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j - A047967 n).toNat 2

end

end A114912.P1340876624270977094

/-! ## A114912.P18107466839820911397

`val(A295341(n)+A000726(n)-A047967(n), 2)`
-/

namespace A114912.P18107466839820911397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A295341 n + A000726 n - A047967 n).toNat 2

end

end A114912.P18107466839820911397

/-! ## A114912.P5049934719985516761

`val(A139582(n)/2-A047967(n), 2)`
-/

namespace A114912.P5049934719985516761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A139582 n : ℚ) / 2 - (A047967 n : ℚ))).toNat 2

end

end A114912.P5049934719985516761

/-! ## A114912.P11399389180457651954

`val(A035457(2*n), 2)`
-/

namespace A114912.P11399389180457651954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A035457 (2 * n)).toNat 2

end

end A114912.P11399389180457651954

/-! ## A114912.P7621972526963900027

`val(A172033(2*n), 2)`
-/

namespace A114912.P7621972526963900027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A172033 (2 * n)).toNat 2

end

end A114912.P7621972526963900027

/-! ## A114912.P3834802670550340045

`val(A304990(n), 4)`
-/

namespace A114912.P3834802670550340045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A304990 n).toNat 4

end

end A114912.P3834802670550340045

/-! ## A114912.P6402404509895313818

`A001222(and(-A000009(n), A000009(n)))`
-/

namespace A114912.P6402404509895313818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A000009 n) (A000009 n)).toNat

end

end A114912.P6402404509895313818

/-! ## A114912.P8824660410377915442

`A001222(-or(-A000009(n), A000009(n)))`
-/

namespace A114912.P8824660410377915442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (-Int.lor (-A000009 n) (A000009 n)).toNat

end

end A114912.P8824660410377915442

/-! ## A114912.P1361665474499586796

`A001222(gcd(2^n, A000009(n)))`
-/

namespace A114912.P1361665474499586796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (2 ^ n : ℤ) (A000009 n))

end

end A114912.P1361665474499586796

/-! ## A114912.P11007178574148009611

`A001222(gcd(A000009(n), A000079(n)))`
-/

namespace A114912.P11007178574148009611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000009 n) (A000079 n))

end

end A114912.P11007178574148009611

/-! ## A114912.P3120784209506834381

`A056239(and(-A000009(n), A000009(n)))`
-/

namespace A114912.P3120784209506834381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.land (-A000009 n) (A000009 n)).toNat

end

end A114912.P3120784209506834381

/-! ## A114912.P654618460060151

`val(A264405(∑[n]), 2)`
-/

namespace A114912.P654618460060151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A264405 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A114912.P654618460060151

/-! ## A114912.P16280306972258874370

`val(A284593(∑[n]), 2)`
-/

namespace A114912.P16280306972258874370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A284593 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A114912.P16280306972258874370

/-!
# A114913: Numbers k such that A114912(k) = 1. Numbers k such that A000009(k) == 2 (mod 4).

The programs for A114913, there is no canonical definition to state claims against.
-/

/-! ## A114913.P5802636204838512473

`∪[A111174(n+1), A114914(n+1)]`
-/

namespace A114913.P5802636204838512473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114913.P5802636204838512473

/-! ## A114913.P2223553004360237663

`eq[1, A114912(n)]`
-/

namespace A114913.P2223553004360237663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114912 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114913.P2223553004360237663

/-! ## A114913.P16090723410673217307

`eq[1, val(A000009(n), 2)]`
-/

namespace A114913.P16090723410673217307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000009 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114913.P16090723410673217307

/-! ## A114913.P9440542316756171613

`eq[2, gcd(8, A283168(n))]`
-/

namespace A114913.P9440542316756171613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A283168 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114913.P9440542316756171613

/-! ## A114913.P11677680564703797071

`eq[2, val(A032308(n), 2)]`
-/

namespace A114913.P11677680564703797071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A032308 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114913.P11677680564703797071

/-! ## A114913.P3443116924896866773

`eq[4, and(4, A000009(n+1)²)]+1`
-/

namespace A114913.P3443116924896866773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 (A000009 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114913.P3443116924896866773

/-!
# A114914: Terms in A114913 that are not in A111174.

The programs for A114914, there is no canonical definition to state claims against.
-/

/-! ## A114914.P10538564473302927518

`∩[A114913(n+1), A202137(n+1)]`
-/

namespace A114914.P10538564473302927518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114914.P10538564473302927518

/-! ## A114914.P14203883080580854913

`∩[A114913(n+1), A153384(n+1)]`
-/

namespace A114914.P14203883080580854913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114914.P14203883080580854913

/-! ## A114914.P5206192371895265953

`eq[3, A008480(A008606(n)+1)]`
-/

namespace A114914.P5206192371895265953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A008606 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114914.P5206192371895265953

/-! ## A114914.P12906105940350869842

`eq[3, A056924(A017533(2*n))]`
-/

namespace A114914.P12906105940350869842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A017533 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114914.P12906105940350869842

/-!
# A114915: Bitwise XOR of Pi base 2 (A004601) and e base 2 (A004593).

The programs for A114915, there is no canonical definition to state claims against.
-/

/-! ## A114915.P4427929551049235818

`char[comp[A068441(n+1)]]`
-/

namespace A114915.P4427929551049235818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068441 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A114915.P4427929551049235818

/-! ## A114915.P410587336128915250

`1-char[A068441(xor(1, n)+1)]`
-/

namespace A114915.P410587336128915250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068441 (Nat.xor 1 n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A114915.P410587336128915250

/-! ## A114915.P15004737813090603089

`1-char[A068441(abs(1-n)+1)]`
-/

namespace A114915.P15004737813090603089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068441 (|1 - (n : ℤ)| + 1).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A114915.P15004737813090603089

/-! ## A114915.P908910766147392155

`A000007(n*char[A068441(n+1)])`
-/

namespace A114915.P908910766147392155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068441 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A114915.P908910766147392155

/-! ## A114915.P16228851409650536623

`xor(A020985(n)², char[A068441(n+1)])`
-/

namespace A114915.P16228851409650536623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068441 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020985 n ^ 2) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A114915.P16228851409650536623

/-! ## A114915.P16571238177501989736

`A000038(n)^atan(char[A068441(n+1)])`
-/

namespace A114915.P16571238177501989736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068441 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℝ) ^ (Real.arctan ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ))

end

end A114915.P16571238177501989736

/-! ## A114915.P13540435103942006096

`cos(char[A068441(n+1)])^A005231(n+1)`
-/

namespace A114915.P13540435103942006096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068441 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ) ^ (A005231 (n + 1) : ℤ)

end

end A114915.P13540435103942006096

/-! ## A114915.P16708222519969582391

`xor(A008683(n+1)²!, char[A068441(n+1)])`
-/

namespace A114915.P16708222519969582391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.factorial (A008683 (n + 1) ^ 2).toNat) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A114915.P16708222519969582391

/-! ## A114915.P2863611917642367104

`A008683(8*n+4)^(n*char[A068441(n+1)])`
-/

namespace A114915.P2863611917642367104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068441 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * n + 4) ^ (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A114915.P2863611917642367104

/-! ## A114915.P8964851776118394829

`(A008683(4*(n+1))!-char[A068441(n+1)])²`
-/

namespace A114915.P8964851776118394829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068441 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (A008683 (4 * (n + 1))).toNat : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A114915.P8964851776118394829

/-! ## A114915.P6150741439254485861

`xor(A004593(n+3), A004601(n+3))`
-/

namespace A114915.P6150741439254485861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004593 (n + 3)) (A004601 (n + 3))

end

end A114915.P6150741439254485861

/-! ## A114915.P14222547732066682382

`A000035(char[A068441(n+1)]+or(1, n))`
-/

namespace A114915.P14222547732066682382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068441 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + Nat.lor 1 n)

end

end A114915.P14222547732066682382

/-! ## A114915.P7598227380680708251

`xor(char[A068441(n+1)], A057979(2*n))`
-/

namespace A114915.P7598227380680708251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068441 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A057979 (2 * n))

end

end A114915.P7598227380680708251

/-! ## A114915.P3761744072612333203

`A000035(char[A068441(n+1)]+2*n+1)`
-/

namespace A114915.P3761744072612333203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068441 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (2 * n + 1))

end

end A114915.P3761744072612333203

/-! ## A114915.P2621900769426971546

`xor(A014963(10*(n+10)), char[A068441(n+1)])`
-/

namespace A114915.P2621900769426971546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068441 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (10 * (n + 10))) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A114915.P2621900769426971546

/-!
# A114917: Number of partitions of {1,..,n} in which no part of a given size occurs just once.

The programs for A114917, there is no canonical definition to state claims against.
-/

/-! ## A114917.P15526393714866418912

`A000110(n)-A271426(n)`
-/

namespace A114917.P15526393714866418912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A271426 n

end

end A114917.P15526393714866418912

/-! ## A114917.P17222799776687814945

`Δ[A005001(n)]-A271426(n)`
-/

namespace A114917.P17222799776687814945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271426 n

end

end A114917.P17222799776687814945

/-! ## A114917.P8203802590042583993

`A000110(n)-A271424(A000124(n))`
-/

namespace A114917.P8203802590042583993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A271424 (A000124 n).toNat

end

end A114917.P8203802590042583993

/-! ## A114917.P17821402574345806913

`A095149(A000096(n))-A271426(n)`
-/

namespace A114917.P17821402574345806913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (A000096 n).toNat - A271426 n

end

end A114917.P17821402574345806913

/-! ## A114917.P16435567248631264196

`A133611(A133263(n))-A271426(n)`
-/

namespace A114917.P16435567248631264196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A133263 n).toNat - A271426 n

end

end A114917.P16435567248631264196

/-!
# A114918: Number of partitions of {1,..,n} into parts of sizes that are multiples of 2 and 3.

The programs for A114918, there is no canonical definition to state claims against.
-/

/-! ## A114918.P15662195208106815395

`A036541(A162548(n))+A008618(n)`
-/

namespace A114918.P15662195208106815395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036541 (A162548 n).toNat + A008618 n

end

end A114918.P15662195208106815395

/-!
# A114920: Triangle where a(0,0) = 1; a(n,m) = number of terms in row (n-1) which, when added to m, are primes.

The programs for A114920, there is no canonical definition to state claims against.
-/

/-! ## A114920.P4370944964310769800

`A037871(A140504(n)+A027746(3*n+2))`
-/

namespace A114920.P4370944964310769800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037871 (A140504 n + A027746 (3 * n + 2)).toNat

end

end A114920.P4370944964310769800

/-! ## A114920.P2840758943352369932

`A037870(A220247(2*(n+2))-A037893(2*n+5))`
-/

namespace A114920.P2840758943352369932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037870 (A220247 (2 * (n + 2)) - A037893 (2 * n + 5)).toNat

end

end A114920.P2840758943352369932

/-!
# A114921: Number of unimodal compositions of n+2 where the maximal part appears exactly twice.

The programs for A114921, there is no canonical definition to state claims against.
-/

/-! ## A114921.P16070013379003259287

`A006330(n)-A001523(n)%A001523(n+1)`
-/

namespace A114921.P16070013379003259287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006330 n - Int.tmod (A001523 n) (A001523 (n + 1))

end

end A114921.P16070013379003259287

/-! ## A114921.P12917544452460438150

`2*A006330(n)-A000712(n)`
-/

namespace A114921.P12917544452460438150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006330 n - A000712 n

end

end A114921.P12917544452460438150

/-! ## A114921.P13640583997272800049

`A000712(n)%(2*A001523(n))`
-/

namespace A114921.P13640583997272800049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000712 n) (2 * A001523 n)

end

end A114921.P13640583997272800049

/-! ## A114921.P13962069846651452070

`2*A006330(n)-∑[A000990(n)]`
-/

namespace A114921.P13962069846651452070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006330 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114921.P13962069846651452070

/-! ## A114921.P17668423183996926699

`A006330(n)-A001523(n)%A000712(n)`
-/

namespace A114921.P17668423183996926699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006330 n - Int.tmod (A001523 n) (A000712 n)

end

end A114921.P17668423183996926699

/-! ## A114921.P8854495818279485390

`2*A342528(n)-A380108(n)`
-/

namespace A114921.P8854495818279485390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342528 n - A380108 n

end

end A114921.P8854495818279485390

/-! ## A114921.P2138447625426669251

`A247255(∑[n+1]+2)`
-/

namespace A114921.P2138447625426669251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247255 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A114921.P2138447625426669251

/-!
# A114924: Primes p such that pi(p) is obtained by dropping one of the digits of p in decimal expansion.

The programs for A114924, there is no canonical definition to state claims against.
-/

/-! ## A114924.P1370173047183389767

`A362066(A387051(n))`
-/

namespace A114924.P1370173047183389767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362066 (A387051 n).toNat

end

end A114924.P1370173047183389767

/-! ## A114924.P15989579014977768457

`A362066(A044922(n+1))`
-/

namespace A114924.P15989579014977768457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362066 (A044922 (n + 1)).toNat

end

end A114924.P15989579014977768457

/-! ## A114924.P13186429116128117913

`A362066(A044923(n+1))`
-/

namespace A114924.P13186429116128117913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362066 (A044923 (n + 1)).toNat

end

end A114924.P13186429116128117913

/-! ## A114924.P18418413241137100224

`A362066(A071669(n+1))`
-/

namespace A114924.P18418413241137100224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362066 (A071669 (n + 1)).toNat

end

end A114924.P18418413241137100224

/-! ## A114924.P7531203584597207341

`A362066(A071670(n+1))`
-/

namespace A114924.P7531203584597207341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362066 (A071670 (n + 1)).toNat

end

end A114924.P7531203584597207341

/-!
# A114929: Array read by antidiagonals: consider a semi-infinite chessboard with squares labeled (i,j), i >= 0, j >= 0; T(i,j) = number of king-paths of length max{i,j} from (0,0) to (i,j).

The programs for A114929, there is no canonical definition to state claims against.
-/

/-! ## A114929.P14609544156371771336

`A106489(A128282(n)+1)`
-/

namespace A114929.P14609544156371771336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106489 (A128282 n + 1).toNat

end

end A114929.P14609544156371771336

/-! ## A114929.P14246242041898063291

`A106489(A344646(n)+2)`
-/

namespace A114929.P14246242041898063291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106489 (A344646 n + 2).toNat

end

end A114929.P14246242041898063291

/-! ## A114929.P10495294127475261482

`A106489(2-(A057427(n)-A128282(n)))`
-/

namespace A114929.P10495294127475261482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106489 (2 - (A057427 n - A128282 n)).toNat

end

end A114929.P10495294127475261482

/-! ## A114929.P16694658089503743512

`A227277(A155162(A155162(n)))`
-/

namespace A114929.P16694658089503743512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227277 (A155162 (A155162 n).toNat).toNat

end

end A114929.P16694658089503743512

/-! ## A114929.P14714952140714032156

`dr(A003056(A121653(A271710(n))))`
-/

namespace A114929.P14714952140714032156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A003056 (A121653 (A271710 n).toNat).toNat)

end

end A114929.P14714952140714032156

/-!
# A114931: Numbers n such that phi(n)=4*reversal(n).

The programs for A114931, there is no canonical definition to state claims against.
-/

/-! ## A114931.P5798515232715221144

`∑[10*A237593(A046945(n))]`
-/

namespace A114931.P5798515232715221144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A237593 (A046945 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114931.P5798515232715221144

/-! ## A114931.P17001880694313484636

`10*A233544(A056347(n+1))`
-/

namespace A114931.P17001880694313484636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A233544 (A056347 (n + 1)).toNat

end

end A114931.P17001880694313484636

/-!
# A114932: Number of connected (3,n)-hypergraphs (without empty edges and without multiple edges).

The programs for A114932, there is no canonical definition to state claims against.
-/

/-! ## A114932.P15291640178171826144

`A114935(n)-A001047(n)`
-/

namespace A114932.P15291640178171826144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114935 n - A001047 n

end

end A114932.P15291640178171826144

/-! ## A114932.P4439887252119584611

`A114935(n)-Δ[A134063(n)]`
-/

namespace A114932.P4439887252119584611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114935 n - (f1 (n + 1) - f1 n)

end

end A114932.P4439887252119584611

/-! ## A114932.P662062902019695483

`A114935(n)-A056182(n)/2`
-/

namespace A114932.P662062902019695483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114935 n : ℚ) - (A056182 n : ℚ) / 2

end

end A114932.P662062902019695483

/-! ## A114932.P3845744025334604728

`A000244(n)+A114935(n)-A027649(n)`
-/

namespace A114932.P3845744025334604728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + (A114935 n - A027649 n)

end

end A114932.P3845744025334604728

/-! ## A114932.P2115697254974036411

`A114935(n)-(A025192(n+1)-A007689(n))`
-/

namespace A114932.P2115697254974036411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114935 n - (A025192 (n + 1) - A007689 n)

end

end A114932.P2115697254974036411

/-! ## A114932.P12914853045136061313

`A002783(n)+A114935(n)-A168583(n+3)`
-/

namespace A114932.P12914853045136061313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002783 n + (A114935 n - A168583 (n + 3))

end

end A114932.P12914853045136061313

/-!
# A114933: Number of connected (4,n)-hypergraphs (without empty edges and without multiple edges).

The programs for A114933, there is no canonical definition to state claims against.
-/

/-! ## A114933.P16734252976578788979

`A213714(C(n², n+1)/2)`
-/

namespace A114933.P16734252976578788979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (SequenceMachineLib.roundAway ((Nat.choose (n ^ 2) (n + 1) : ℚ) / 2)).toNat

end

end A114933.P16734252976578788979

/-!
# A114934: Number of connected (5,n)-hypergraphs (without empty edges and without multiple edges).

The programs for A114934, there is no canonical definition to state claims against.
-/

/-! ## A114934.P16295660296153174661

`A326678(A041825(n))`
-/

namespace A114934.P16295660296153174661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 (A041825 n).toNat

end

end A114934.P16295660296153174661

/-!
# A114935: Number of connected (3,n)-hypergraphs (without empty edges).

The programs for A114935, there is no canonical definition to state claims against.
-/

/-! ## A114935.P3186427276514938273

`A114932(n)+A001047(n)`
-/

namespace A114935.P3186427276514938273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114932 n + A001047 n

end

end A114935.P3186427276514938273

/-! ## A114935.P2063438512439360333

`A114932(n)+Δ[A134063(n)]`
-/

namespace A114935.P2063438512439360333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114932 n + (f1 (n + 1) - f1 n)

end

end A114935.P2063438512439360333

/-! ## A114935.P1499390392239518918

`A114932(n)+A056182(n)/2`
-/

namespace A114935.P1499390392239518918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114932 n : ℚ) + (A056182 n : ℚ) / 2

end

end A114935.P1499390392239518918

/-! ## A114935.P5855886471433730626

`A114932(n)+A210448(n)/3`
-/

namespace A114935.P5855886471433730626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114932 n : ℚ) + (A210448 n : ℚ) / 3

end

end A114935.P5855886471433730626

/-! ## A114935.P11548237592410986633

`A114932(n)+A145563(n)/4`
-/

namespace A114935.P11548237592410986633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114932 n : ℚ) + (A145563 n : ℚ) / 4

end

end A114935.P11548237592410986633

/-! ## A114935.P4477413139837195608

`A114932(n)+record[Δ[A098293(n)]]`
-/

namespace A114935.P4477413139837195608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098293 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114932 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114935.P4477413139837195608

/-! ## A114935.P9882566557611934256

`A114932(n)+Δ[A000392(n+1)]`
-/

namespace A114935.P9882566557611934256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114932 n + (f1 (n + 1) - f1 n)

end

end A114935.P9882566557611934256

/-! ## A114935.P9348511919182687424

`A056182(n)-(A001047(n)-A114932(n))`
-/

namespace A114935.P9348511919182687424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056182 n - (A001047 n - A114932 n)

end

end A114935.P9348511919182687424

/-!
# A114936: Number of connected (4,n)-hypergraphs (without empty edges).

The programs for A114936, there is no canonical definition to state claims against.
-/

/-! ## A114936.P13797942395106886986

`n*A302478(A346765(n))`
-/

namespace A114936.P13797942395106886986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A302478 (A346765 n).toNat

end

end A114936.P13797942395106886986

/-!
# A114937: Number of connected (5,n)-hypergraphs (without empty edges).

The programs for A114937, there is no canonical definition to state claims against.
-/

/-! ## A114937.P17040426240646086896

`∑{d}[A249121(A007764(n+1))+1, #]`
-/

namespace A114937.P17040426240646086896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249121 (A007764 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A114937.P17040426240646086896

/-!
# A114938: Number of permutations of the multiset {1,1,2,2,...,n,n} with no two consecutive terms equal.

The programs for A114938, the canonical program `A114938.P18013196565338313030` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114938 has offset 0).

The definition of A114938 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114938.P18013196565338313030

`n*(2*n-1)*a(n-1)+(n-1)*n*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114938

/-- `n*(2*n-1)*a(n-1)+(n-1)*n*a(n-2)` -/
def P18013196565338313030.Spec : Prop :=
  ∀ n, P18013196565338313030.a n = A114938 n

theorem P18013196565338313030.correct : P18013196565338313030.Spec := by
  intro n
  simp only [A114938]

end A114938

/-! ## A114938.P8936702345133932775

`n!*A278990(n)`
-/

namespace A114938.P8936702345133932775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A278990 n

end

end A114938.P8936702345133932775

namespace A114938

/-- `n!*A278990(n)` -/
def P8936702345133932775.Spec : Prop :=
  ∀ n, P8936702345133932775.a n = A114938 n

end A114938

/-! ## A114938.P13469733705479239792

`(-1)^n*n!*A000806(n)`
-/

namespace A114938.P13469733705479239792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (Nat.factorial n : ℤ) * A000806 n

end

end A114938.P13469733705479239792

namespace A114938

/-- `(-1)^n*n!*A000806(n)` -/
def P13469733705479239792.Spec : Prop :=
  ∀ n, P13469733705479239792.a n = A114938 n

end A114938

/-! ## A114938.P12900491835462275552

`A007060(n)/2^n`
-/

namespace A114938.P12900491835462275552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007060 n : ℚ) / (2 ^ n : ℚ)

end

end A114938.P12900491835462275552

namespace A114938

/-- `A007060(n)/2^n` -/
def P12900491835462275552.Spec : Prop :=
  ∀ n, P12900491835462275552.a n = (A114938 n : ℚ)

end A114938

/-! ## A114938.P8025915995746070152

`∑{#}[n, C(n, #)*(-1)^(n-#)*(n+#)!/2^#]`
-/

namespace A114938.P8025915995746070152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.factorial (n + k) : ℚ) / (2 ^ k : ℚ)

end

end A114938.P8025915995746070152

namespace A114938

/-- `∑{#}[n, C(n, #)*(-1)^(n-#)*(n+#)!/2^#]` -/
def P8025915995746070152.Spec : Prop :=
  ∀ n, P8025915995746070152.a n = (A114938 n : ℚ)

end A114938

/-!
# A114939: Number of essentially different seating arrangements for n couples around a circular table with 2n seats avoiding spouses being neighbors and avoiding clusters of 3 persons with equal gender.

The programs for A114939, there is no canonical definition to state claims against.
-/

/-! ## A114939.P3707462535541118399

`A258338(n+1)/(4*(n+1))`
-/

namespace A114939.P3707462535541118399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258338 (n + 1) : ℚ) / (4 * (n + 1) : ℚ)

end

end A114939.P3707462535541118399

/-! ## A114939.P9835093196901131499

`round(A258338(n+1)/A008574(n+1))`
-/

namespace A114939.P9835093196901131499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A258338 (n + 1) : ℚ) / (A008574 (n + 1) : ℚ))

end

end A114939.P9835093196901131499

/-!
# A114944: a(n) = prime(n) + semiprime(n) + 3almostprime(n) + 4almostprime(n).

The programs for A114944, the canonical program `A114944.P5745295539132009725` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114944 has offset 1).

The definition of A114944 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, A114382, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114944.P5745295539132009725

`A014613(n+1)+A114382(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A114944

/-- `A014613(n+1)+A114382(n+1)` -/
def P5745295539132009725.Spec : Prop :=
  ∀ n, P5745295539132009725.a n = A114944 (n + 1)

theorem P5745295539132009725.correct : P5745295539132009725.Spec := by
  intro n
  simp only [A114944, Nat.add_sub_cancel]

end A114944

/-! ## A114944.P14464663959526897030

`A000040(n+1)+A001358(n+1)+A014612(n+1)+A014613(n+1)`
-/

namespace A114944.P14464663959526897030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A001358 (n + 1) + A014612 (n + 1) + A014613 (n + 1)

end

end A114944.P14464663959526897030

namespace A114944

/-- `A000040(n+1)+A001358(n+1)+A014612(n+1)+A014613(n+1)` -/
def P14464663959526897030.Spec : Prop :=
  ∀ n, P14464663959526897030.a n = A114944 (n + 1)

theorem P14464663959526897030.correct : P14464663959526897030.Spec := by
  intro n
  simp only [A114944, Nat.add_sub_cancel, A114944.P14464663959526897030.a, A114944.P5745295539132009725.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A014613, A014613.P1114013819310587080.f1, A014613.P1114013819310587080.f2, A014613.P1114013819310587080.a, A114382, A114382.P1208901813651073029.a, A030514, A030514.P11974636125371552077.a, A088707, A088707.P7291141647877559993.a, A307342, A307342.P15063499458322460120.f1, A307342.P15063499458322460120.f2, A307342.P15063499458322460120.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A072000, A072000.P3706059858088101648.a, A318472, A318472.P17460137329707848954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A114944

/-! ## A114944.P17523524258544179112

`A114966(n+1)-A014614(n+1)`
-/

namespace A114944.P17523524258544179112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114966 (n + 1) - A014614 (n + 1)

end

end A114944.P17523524258544179112

namespace A114944

/-- `A114966(n+1)-A014614(n+1)` -/
def P17523524258544179112.Spec : Prop :=
  ∀ n, P17523524258544179112.a n = A114944 (n + 1)

theorem P17523524258544179112.correct : P17523524258544179112.Spec := by
  intro n
  simp only [A114944, Nat.add_sub_cancel, A114944.P17523524258544179112.a, A114944.P5745295539132009725.a, A014613, A014613.P1114013819310587080.f1, A014613.P1114013819310587080.f2, A014613.P1114013819310587080.a, A014614, A014614.P8846493082158940166.f1, A014614.P8846493082158940166.f2, A014614.P8846493082158940166.a, A114382, A114382.P1208901813651073029.a, A114966, A114966.P15379347381698072828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001358, A001358.P632087320844056370.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A030514, A030514.P11974636125371552077.a, A307342, A307342.P15063499458322460120.f1, A307342.P15063499458322460120.f2, A307342.P15063499458322460120.a, A088707, A088707.P7291141647877559993.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A318474, A318474.P8998040803889606684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114944

/-! ## A114944.P2539593856838162530

`A114966(n+1)-record[A117358(A046310(n+1))]`
-/

namespace A114944.P2539593856838162530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A046310 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114966 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114944.P2539593856838162530

namespace A114944

/-- `A114966(n+1)-record[A117358(A046310(n+1))]` -/
def P2539593856838162530.Spec : Prop :=
  ∀ n, P2539593856838162530.a n = A114944 (n + 1)

end A114944

/-! ## A114944.P12281488286417492212

`A114966(n+1)-record[A025480(A046306(n+1))]`
-/

namespace A114944.P12281488286417492212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A046306 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114966 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114944.P12281488286417492212

namespace A114944

/-- `A114966(n+1)-record[A025480(A046306(n+1))]` -/
def P12281488286417492212.Spec : Prop :=
  ∀ n, P12281488286417492212.a n = A114944 (n + 1)

end A114944

/-! ## A114944.P8270769962151045613

`A114966(n+1)-record[A174571(A046308(n+1))]`
-/

namespace A114944.P8270769962151045613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A046308 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114966 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114944.P8270769962151045613

namespace A114944

/-- `A114966(n+1)-record[A174571(A046308(n+1))]` -/
def P8270769962151045613.Spec : Prop :=
  ∀ n, P8270769962151045613.a n = A114944 (n + 1)

end A114944

/-!
# A114945: Number of monic irreducible polynomials over GF(3) of degree <= n.

The programs for A114945, the canonical program `A114945.P3634804401186302161` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114945 has offset 1).

The definition of A114945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114945.P10092844301807650739

`∑[A027376(n+1)]`
-/

namespace A114945.P10092844301807650739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114945.P10092844301807650739

namespace A114945

/-- `∑[A027376(n+1)]` -/
def P10092844301807650739.Spec : Prop :=
  ∀ n, P10092844301807650739.a n = A114945 (n + 1)

end A114945

/-! ## A114945.P3634804401186302161

`∑[A185171(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A114945

/-- `∑[A185171(n+1)]+1` -/
def P3634804401186302161.Spec : Prop :=
  ∀ n, P3634804401186302161.a n = A114945 (n + 1)

theorem P3634804401186302161.correct : P3634804401186302161.Spec := by
  intro n
  simp only [A114945, Nat.add_sub_cancel]

end A114945

/-! ## A114945.P17808479544270615289

`A027376(n%(n+1)+1)-ceil(-a(n-1))` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A114945.P17808479544270615289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A027376 (n % (n + 1) + 1) - (-a (n - 1))

end

end A114945.P17808479544270615289

namespace A114945

/-- `A027376(n%(n+1)+1)-ceil(-a(n-1))` -/
def P17808479544270615289.Spec : Prop :=
  ∀ n, P17808479544270615289.a n = A114945 (n + 1)

end A114945

/-! ## A114945.P10203162414300484328

`∑[A185171(A233583(n+2))]`
-/

namespace A114945.P10203162414300484328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185171 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114945.P10203162414300484328

namespace A114945

/-- `∑[A185171(A233583(n+2))]` -/
def P10203162414300484328.Spec : Prop :=
  ∀ n, P10203162414300484328.a n = A114945 (n + 1)

end A114945

/-! ## A114945.P763852651864804128

`∑[A133267(n+1)+A006575(n+1)]`
-/

namespace A114945.P763852651864804128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133267 (n + 1) + A006575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114945.P763852651864804128

namespace A114945

/-- `∑[A133267(n+1)+A006575(n+1)]` -/
def P763852651864804128.Spec : Prop :=
  ∀ n, P763852651864804128.a n = A114945 (n + 1)

end A114945

/-! ## A114945.P136828653636699829

`a(n-1)+A027376(n+1)-A123108(2*n)+n` with `a(0)=3`
-/

namespace A114945.P136828653636699829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A027376 (n + 1) - A123108 (2 * n) + (n : ℤ))

end

end A114945.P136828653636699829

namespace A114945

/-- `a(n-1)+A027376(n+1)-A123108(2*n)+n` -/
def P136828653636699829.Spec : Prop :=
  ∀ n, P136828653636699829.a n = A114945 (n + 1)

end A114945

/-! ## A114945.P14809895467034606767

`∑[A054718(n+1)/(n+1)]`
-/

namespace A114945.P14809895467034606767
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054718 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114945.P14809895467034606767

namespace A114945

/-- `∑[A054718(n+1)/(n+1)]` -/
def P14809895467034606767.Spec : Prop :=
  ∀ n, P14809895467034606767.a n = (A114945 (n + 1) : ℚ)

end A114945

/-! ## A114945.P33911812175173696

`A143328(∑[n+3]+1)`
-/

namespace A114945.P33911812175173696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143328 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A114945.P33911812175173696

namespace A114945

/-- `A143328(∑[n+3]+1)` -/
def P33911812175173696.Spec : Prop :=
  ∀ n, P33911812175173696.a n = A114945 (n + 1)

end A114945

/-!
# A114946: Number of monic irreducible polynomials over GF(4) of degree <= n.

The programs for A114946, the canonical program `A114946.P16847115987649621118` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114946 has offset 1).

The definition of A114946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114946.P17807762885489859668

`∑[A027377(n+1)]`
-/

namespace A114946.P17807762885489859668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114946.P17807762885489859668

namespace A114946

/-- `∑[A027377(n+1)]` -/
def P17807762885489859668.Spec : Prop :=
  ∀ n, P17807762885489859668.a n = A114946 (n + 1)

end A114946

/-! ## A114946.P16847115987649621118

`∑[A185172(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A114946

/-- `∑[A185172(n+1)]+1` -/
def P16847115987649621118.Spec : Prop :=
  ∀ n, P16847115987649621118.a n = A114946 (n + 1)

theorem P16847115987649621118.correct : P16847115987649621118.Spec := by
  intro n
  simp only [A114946, Nat.add_sub_cancel]

end A114946

/-! ## A114946.P2339167436958265174

`∑[2*A131764(n+1)]`
-/

namespace A114946.P2339167436958265174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114946.P2339167436958265174

namespace A114946

/-- `∑[2*A131764(n+1)]` -/
def P2339167436958265174.Spec : Prop :=
  ∀ n, P2339167436958265174.a n = A114946 (n + 1)

end A114946

/-! ## A114946.P5046965988895145017

`∑[record[A027377(abs(1-n))]]`
-/

namespace A114946.P5046965988895145017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114946.P5046965988895145017

namespace A114946

/-- `∑[record[A027377(abs(1-n))]]` -/
def P5046965988895145017.Spec : Prop :=
  ∀ n, P5046965988895145017.a n = A114946 (n + 1)

end A114946

/-! ## A114946.P2133161188127522123

`Δ[∑[∑[A027377(n)]]-n]`
-/

namespace A114946.P2133161188127522123
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114946.P2133161188127522123

namespace A114946

/-- `Δ[∑[∑[A027377(n)]]-n]` -/
def P2133161188127522123.Spec : Prop :=
  ∀ n, P2133161188127522123.a n = A114946 (n + 1)

end A114946

/-! ## A114946.P9826820753584726027

`∑[A054719(n+1)/(n+1)]`
-/

namespace A114946.P9826820753584726027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054719 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114946.P9826820753584726027

namespace A114946

/-- `∑[A054719(n+1)/(n+1)]` -/
def P9826820753584726027.Spec : Prop :=
  ∀ n, P9826820753584726027.a n = (A114946 (n + 1) : ℚ)

end A114946

/-!
# A114947: Number of monic irreducible polynomials over GF(5) of degree <= n.

The programs for A114947, there is no canonical definition to state claims against.
-/

/-! ## A114947.P9839240149298727656

`∑[A001692(n+1)]`
-/

namespace A114947.P9839240149298727656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114947.P9839240149298727656

/-! ## A114947.P1401209127259717882

`∑[record[A001692(A008611(n))]]`
-/

namespace A114947.P1401209127259717882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114947.P1401209127259717882

/-! ## A114947.P11697714488896080757

`∑[record[A001692(A008612(n))]]`
-/

namespace A114947.P11697714488896080757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 (A008612 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114947.P11697714488896080757

/-! ## A114947.P9791095229755142901

`∑[record[A001692(A008616(n))]]`
-/

namespace A114947.P9791095229755142901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 (A008616 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114947.P9791095229755142901

/-! ## A114947.P1273927262217144285

`∑[record[A001692(A008624(n))]]`
-/

namespace A114947.P1273927262217144285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 (A008624 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114947.P1273927262217144285

/-! ## A114947.P2960565743527277062

`∑[record[A001692(A027656(n))]]`
-/

namespace A114947.P2960565743527277062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 (A027656 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114947.P2960565743527277062

/-! ## A114947.P17141335627935105426

`∑[record[A001692(A057979(n))]]`
-/

namespace A114947.P17141335627935105426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 (A057979 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114947.P17141335627935105426

/-! ## A114947.P12411197906437157888

`∑[record[A001692(A123108(n))]]`
-/

namespace A114947.P12411197906437157888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 (A123108 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114947.P12411197906437157888

/-! ## A114947.P10655228387891380018

`∑[record[A001692(A303779(n))]]`
-/

namespace A114947.P10655228387891380018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 (A303779 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114947.P10655228387891380018

/-! ## A114947.P17243605101765011442

`∑[record[A001692(A328399(n))]]`
-/

namespace A114947.P17243605101765011442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114947.P17243605101765011442

/-! ## A114947.P11360350423058208819

`∑[A054720(n+1)/(n+1)]`
-/

namespace A114947.P11360350423058208819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054720 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114947.P11360350423058208819

/-!
# A114948: a(n) = n^2 + 10.

The programs for A114948, the canonical program `A114948.P8057033753902309042` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114948 has offset 0).

The definition of A114948 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+10` (program `A114948.P8057033753902309042`, by `A114948.P8057033753902309042.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114948.P8057033753902309042

`n²+10`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114948

/-- `n²+10` -/
def P8057033753902309042.Spec : Prop :=
  ∀ n, (P8057033753902309042.a n : ℤ) = A114948 n

theorem P8057033753902309042.correct : P8057033753902309042.Spec := by
  intro n
  simp only [A114948]

end A114948

/-!
# A114949: a(n) = n^2 + 6.

The programs for A114949, the canonical program `A114949.P2861877640951518410` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114949 has offset 0).

The definition of A114949 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+6` (program `A114949.P2861877640951518410`, by `A114949.P2861877640951518410.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114949.P2861877640951518410

`n²+6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114949

/-- `n²+6` -/
def P2861877640951518410.Spec : Prop :=
  ∀ n, (P2861877640951518410.a n : ℤ) = A114949 n

theorem P2861877640951518410.correct : P2861877640951518410.Spec := by
  intro n
  simp only [A114949]

end A114949

/-!
# A114950: a(n) = a(n-1)^4 + a(n-2)^2, with a(0) = a(1) = 1.

The programs for A114950, the canonical program `A114950.P17388716174508533604` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114950 has offset 0).

The definition of A114950 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)^4+a(n-2)²` (program `A114950.P17388716174508533604`, by `A114950.P17388716174508533604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114950.P17388716174508533604

`a(n-1)^4+a(n-2)²` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114950

/-- `a(n-1)^4+a(n-2)²` -/
def P17388716174508533604.Spec : Prop :=
  ∀ n, (P17388716174508533604.a n : ℤ) = A114950 n

theorem P17388716174508533604.correct : P17388716174508533604.Spec := by
  intro n
  simp only [A114950]

end A114950

/-! ## A114950.P2585416741267572047

`a(n-1)²²+a(n-2)²` with `a(0)=1, a(1)=1`
-/

namespace A114950.P2585416741267572047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) ^ 2) ^ 2 + a (n - 2) ^ 2

end

end A114950.P2585416741267572047

namespace A114950

/-- `a(n-1)²²+a(n-2)²` -/
def P2585416741267572047.Spec : Prop :=
  ∀ n, (P2585416741267572047.a n : ℤ) = A114950 n

theorem P2585416741267572047.correct : P2585416741267572047.Spec := by
  intro n
  simp only [A114950, Nat.add_sub_cancel, A114950.P2585416741267572047.a, A114950.P17388716174508533604.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A114950

/-! ## A114950.P920815667058267952

`a(n-1)^4+floor(a(n-2))*a(n-2)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A114950.P920815667058267952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) ^ 4 + a (n - 2) * a (n - 2)

end

end A114950.P920815667058267952

namespace A114950

/-- `a(n-1)^4+floor(a(n-2))*a(n-2)` -/
def P920815667058267952.Spec : Prop :=
  ∀ n, (P920815667058267952.a n : ℤ) = A114950 n

theorem P920815667058267952.correct : P920815667058267952.Spec := by
  intro n
  simp only [A114950, Nat.add_sub_cancel, A114950.P920815667058267952.a, A114950.P17388716174508533604.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A114950

/-!
# A114951: Numbers k such that the sum of the k-th triangular number and the k-th prime is prime.

The programs for A114951, there is no canonical definition to state claims against.
-/

/-! ## A114951.P8438576198232650160

`eq[1, A001222(∑[n+1]+A000040(n+1))]+1`
-/

namespace A114951.P8438576198232650160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) + A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114951.P8438576198232650160

/-! ## A114951.P12394891500560494688

`lt[A000005(∑[n+1]+A000040(n+1)), 3]+1`
-/

namespace A114951.P12394891500560494688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + A000040 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A114951.P12394891500560494688

/-! ## A114951.P10706715138397001939

`eq[1, A001221(A008578(n+1)+A000217(n))]`
-/

namespace A114951.P10706715138397001939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008578 (n + 1) + A000217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114951.P10706715138397001939

/-! ## A114951.P2904216091642823243

`eq[1, A001222(A008578(n+1)+A000217(n))]`
-/

namespace A114951.P2904216091642823243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1) + A000217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114951.P2904216091642823243

/-! ## A114951.P3731086239497375488

`eq[1, A010051(A008578(n+1)+A000217(n))]`
-/

namespace A114951.P3731086239497375488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A008578 (n + 1) + A000217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114951.P3731086239497375488

/-! ## A114951.P9945150475752917366

`eq[2, A000005(A008578(n+1)+A000217(n))]`
-/

namespace A114951.P9945150475752917366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1) + A000217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114951.P9945150475752917366

/-! ## A114951.P8343405523410248622

`eq[2, A071364(A008578(n+1)+A000217(n))]`
-/

namespace A114951.P8343405523410248622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A008578 (n + 1) + A000217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114951.P8343405523410248622

/-!
# A114952: Expansion of -x^2*(x^9-x^8+2*x^7-x^6+x^5-2*x^4+x^2+1) / ((x^6-x^4+x^2+1) * (x^6+x^4+x^2-1)).

The programs for A114952, the canonical program `A114952.P12935563073847673637` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114952 has offset 0).

The definition of A114952 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^2+x^4-2x^6+x^7-x^8+2x^9-x^10+x^11)/(1-3x^4-x^8-x^12))` (program `A114952.P12935563073847673637`, by `A114952.P12935563073847673637.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114952.P12935563073847673637

`ogf((x^2+x^4-2x^6+x^7-x^8+2x^9-x^10+x^11)/(1-3x^4-x^8-x^12))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114952

/-- `ogf((x^2+x^4-2x^6+x^7-x^8+2x^9-x^10+x^11)/(1-3x^4-x^8-x^12))` -/
def P12935563073847673637.Spec : Prop :=
  ∀ n, P12935563073847673637.a n = A114952 n

theorem P12935563073847673637.correct : P12935563073847673637.Spec := by
  intro n
  simp only [A114952]

end A114952

/-! ## A114952.P12066526075189278652

`A108339(A001935(n))`
-/

namespace A114952.P12066526075189278652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108339 (A001935 n).toNat

end

end A114952.P12066526075189278652

namespace A114952

/-- `A108339(A001935(n))` -/
def P12066526075189278652.Spec : Prop :=
  ∀ n, P12066526075189278652.a n = A114952 n

end A114952

/-! ## A114952.P9115519197586268916

`A004396(Δ[A204553(2^n)])`
-/

namespace A114952.P9115519197586268916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (n + 1) - f1 n).toNat

end

end A114952.P9115519197586268916

namespace A114952

/-- `A004396(Δ[A204553(2^n)])` -/
def P9115519197586268916.Spec : Prop :=
  ∀ n, P9115519197586268916.a n = A114952 n

end A114952

/-! ## A114952.P8602134264813359578

`A025877(2*A320054(n)+1)`
-/

namespace A114952.P8602134264813359578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 (2 * A320054 n + 1).toNat

end

end A114952.P8602134264813359578

namespace A114952

/-- `A025877(2*A320054(n)+1)` -/
def P8602134264813359578.Spec : Prop :=
  ∀ n, P8602134264813359578.a n = A114952 n

end A114952

/-! ## A114952.P181279570010800942

`A123256(n+2)%∑[A296529(n)]`
-/

namespace A114952.P181279570010800942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123256 (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114952.P181279570010800942

namespace A114952

/-- `A123256(n+2)%∑[A296529(n)]` -/
def P181279570010800942.Spec : Prop :=
  ∀ n, P181279570010800942.a n = A114952 n

end A114952

/-!
# A114953: A cubic quartic recurrence.

The programs for A114953, the canonical program `A114953.P3066555351284513951` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114953 has offset 0).

The definition of A114953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114953.P3066555351284513951

`a(n-1)^3+a(n-2)^4` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114953

/-- `a(n-1)^3+a(n-2)^4` -/
def P3066555351284513951.Spec : Prop :=
  ∀ n, (P3066555351284513951.a n : ℤ) = A114953 n

theorem P3066555351284513951.correct : P3066555351284513951.Spec := by
  intro n
  simp only [A114953]

end A114953

/-! ## A114953.P973523405115486701

`a(n-2)²²+a(n-1)²*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A114953.P973523405115486701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 2) ^ 2) ^ 2 + a (n - 1) ^ 2 * a (n - 1)

end

end A114953.P973523405115486701

namespace A114953

/-- `a(n-2)²²+a(n-1)²*a(n-1)` -/
def P973523405115486701.Spec : Prop :=
  ∀ n, (P973523405115486701.a n : ℤ) = A114953 n

end A114953

/-!
# A114954: A 3/2-power Fibonacci sequence.

The programs for A114954, the canonical program `A114954.P1430275455119206584` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114954 has offset 0).

The definition of A114954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114954.P1430275455119206584

`ceil(a(n-1)^(3/2)+a(n-2)^(3/2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114954

/-- `ceil(a(n-1)^(3/2)+a(n-2)^(3/2))` -/
def P1430275455119206584.Spec : Prop :=
  ∀ n, P1430275455119206584.a n = A114954 n

theorem P1430275455119206584.correct : P1430275455119206584.Spec := by
  intro n
  simp only [A114954]

end A114954

/-! ## A114954.P6070154764753819756

`A185549(a(n-1))+A185549(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A114954.P6070154764753819756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A185549 (a (n - 1)).toNat + A185549 (a (n - 2)).toNat

end

end A114954.P6070154764753819756

namespace A114954

/-- `A185549(a(n-1))+A185549(a(n-2))` -/
def P6070154764753819756.Spec : Prop :=
  ∀ n, P6070154764753819756.a n = A114954 n

end A114954

/-! ## A114954.P252279912387417335

`∑{d}[A008934(n), A026819(#)]`
-/

namespace A114954.P252279912387417335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A026819 d

end

end A114954.P252279912387417335

namespace A114954

/-- `∑{d}[A008934(n), A026819(#)]` -/
def P252279912387417335.Spec : Prop :=
  ∀ n, P252279912387417335.a n = A114954 n

end A114954

/-!
# A114955: A 2/3-power Fibonacci sequence.

The programs for A114955, the canonical program `A114955.P7349157253424680284` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114955 has offset 0).

The definition of A114955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114955.P7349157253424680284

`a(n-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=7, a(9)=8`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114955

/-- `a(n-1)` -/
def P7349157253424680284.Spec : Prop :=
  ∀ n, (P7349157253424680284.a n : ℤ) = A114955 n

theorem P7349157253424680284.correct : P7349157253424680284.Spec := by
  intro n
  simp only [A114955]

end A114955

/-!
# A114956: a(n) = ceiling(a(n-1)^(3/4) + a(n-2)^(3/4)), with a(0) = a(1) = 1.

The programs for A114956, the canonical program `A114956.P7741216116730887333` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114956 has offset 0).

The definition of A114956 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(a(n-1)^(3/4)+a(n-2)^(3/4))` (program `A114956.P7741216116730887333`, by `A114956.P7741216116730887333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114956.P7741216116730887333

`ceil(a(n-1)^(3/4)+a(n-2)^(3/4))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114956

/-- `ceil(a(n-1)^(3/4)+a(n-2)^(3/4))` -/
def P7741216116730887333.Spec : Prop :=
  ∀ n, P7741216116730887333.a n = A114956 n

theorem P7741216116730887333.correct : P7741216116730887333.Spec := by
  intro n
  simp only [A114956]

end A114956

/-!
# A114957: a(n) = ceiling(a(n-1)^(4/3) + a(n-2)^(4/3)), with a(0) = a(1) = 1.

The programs for A114957, there is no canonical definition to state claims against.
-/

/-! ## A114957.P17102525637077206436

`ceil(a(n-1)^(4/3)+a(n-2)^(4/3))` with `a(0)=1, a(1)=1`
-/

namespace A114957.P17102525637077206436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(a (n - 1) : ℝ) ^ ((4 : ℚ) / 3 : ℝ) + (a (n - 2) : ℝ) ^ ((4 : ℚ) / 3 : ℝ)⌉

end

end A114957.P17102525637077206436

/-!
# A114958: a(n) = 6*2^(n+1) - 5*(n+1) - 4.

The programs for A114958, the canonical program `A114958.P4345820901304095841` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114958 has offset 0).

The definition of A114958 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*2^(n+1)-5*(n+1)-4` (program `A114958.P4345820901304095841`, by `A114958.P4345820901304095841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114958.P14242686036708208955

`ogf((3-2x+4x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A114958.P14242686036708208955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 4] [1, -4, 5, -2] n

end

end A114958.P14242686036708208955

namespace A114958

/-- `ogf((3-2x+4x^2)/(1-4x+5x^2-2x^3))` -/
def P14242686036708208955.Spec : Prop :=
  ∀ n, P14242686036708208955.a n = A114958 n

end A114958

/-! ## A114958.P4345820901304095841

`6*2^(n+1)-5*(n+1)-4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114958

/-- `6*2^(n+1)-5*(n+1)-4` -/
def P4345820901304095841.Spec : Prop :=
  ∀ n, P4345820901304095841.a n = A114958 n

theorem P4345820901304095841.correct : P4345820901304095841.Spec := by
  intro n
  simp only [A114958]

end A114958

/-! ## A114958.P4000115530358620953

`∑[ogf((3-2x+4x^2)/(1-3x+2x^2))]`
-/

namespace A114958.P4000115530358620953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 4] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114958.P4000115530358620953

namespace A114958

/-- `∑[ogf((3-2x+4x^2)/(1-3x+2x^2))]` -/
def P4000115530358620953.Spec : Prop :=
  ∀ n, P4000115530358620953.a n = A114958 n

end A114958

/-! ## A114958.P502089656050178542

`∑[2*a(n-1)+5]` with `a(0)=3, a(1)=7`
-/

namespace A114958.P502089656050178542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7] fun n f1 =>
  2 * f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114958.P502089656050178542

namespace A114958

/-- `∑[2*a(n-1)+5]` -/
def P502089656050178542.Spec : Prop :=
  ∀ n, (P502089656050178542.a n : ℤ) = A114958 n

end A114958

/-! ## A114958.P3942407809401201292

`∑[∑[2*a(n-1)]]-2*n` with `a(0)=3`
-/

namespace A114958.P3942407809401201292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n : ℤ)

end

end A114958.P3942407809401201292

namespace A114958

/-- `∑[∑[2*a(n-1)]]-2*n` -/
def P3942407809401201292.Spec : Prop :=
  ∀ n, P3942407809401201292.a n = A114958 n

end A114958

/-! ## A114958.P15910437755756010059

`∑[a(n-1)+a(n-1)+5]` with `a(0)=3, a(1)=7`
-/

namespace A114958.P15910437755756010059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114958.P15910437755756010059

namespace A114958

/-- `∑[a(n-1)+a(n-1)+5]` -/
def P15910437755756010059.Spec : Prop :=
  ∀ n, (P15910437755756010059.a n : ℤ) = A114958 n

end A114958

/-! ## A114958.P5939335164724209364

`∑[∑[A132477(n)]+2]`
-/

namespace A114958.P5939335164724209364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132477 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114958.P5939335164724209364

namespace A114958

/-- `∑[∑[A132477(n)]+2]` -/
def P5939335164724209364.Spec : Prop :=
  ∀ n, P5939335164724209364.a n = A114958 n

end A114958

/-! ## A114958.P5027163805845305220

`∑[2*A068156(n)+1]`
-/

namespace A114958.P5027163805845305220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068156 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114958.P5027163805845305220

namespace A114958

/-- `∑[2*A068156(n)+1]` -/
def P5027163805845305220.Spec : Prop :=
  ∀ n, P5027163805845305220.a n = A114958 n

end A114958

/-! ## A114958.P6536668342757414241

`∑[A147758(n+3)-2]`
-/

namespace A114958.P6536668342757414241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147758 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114958.P6536668342757414241

namespace A114958

/-- `∑[A147758(n+3)-2]` -/
def P6536668342757414241.Spec : Prop :=
  ∀ n, P6536668342757414241.a n = A114958 n

end A114958

/-! ## A114958.P13293917440303561778

`(A321257(n+2)-n)/2`
-/

namespace A114958.P13293917440303561778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321257 (n + 2) - (n : ℤ) : ℚ) / 2

end

end A114958.P13293917440303561778

namespace A114958

/-- `(A321257(n+2)-n)/2` -/
def P13293917440303561778.Spec : Prop :=
  ∀ n, P13293917440303561778.a n = (A114958 n : ℚ)

end A114958

/-!
# A114959: Number of cyclic whist (or bridge) tournaments with n tables of 4 players.

The programs for A114959, there is no canonical definition to state claims against.
-/

/-! ## A114959.P1681123757368817354

`A078881(A010845(n)+5*n)`
-/

namespace A114959.P1681123757368817354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 (A010845 n + (5 * n : ℤ)).toNat

end

end A114959.P1681123757368817354

/-!
# A114960: Expansion of (-1+3*x-5*x^2+4*x^3) / ((1-2*x)*(2*x^2-1)*(x-1)^2).

The programs for A114960, the canonical program `A114960.P7793121220377782825` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114960 has offset 1).

The definition of A114960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+5x^2-4x^3)/(1-4x+3x^2+6x^3-10x^4+4x^5))` (program `A114960.P7793121220377782825`, by `A114960.P7793121220377782825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114960.P4098720354083229893

`2^(n+1)-(n+1)-1-((-1)^(n+1)-1)*2^(1/2*(n+1))*sqrt(2)/4`
-/

namespace A114960.P4098720354083229893
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - (n + 1 : ℤ) - 1 : ℝ) - ((-1) ^ (n + 1) - 1 : ℝ) * (2 : ℝ) ^ ((1 : ℚ) / 2 * (n + 1 : ℚ) : ℝ) * Real.sqrt (2 : ℝ) / 4

end

end A114960.P4098720354083229893

namespace A114960

/-- `2^(n+1)-(n+1)-1-((-1)^(n+1)-1)*2^(1/2*(n+1))*sqrt(2)/4` -/
def P4098720354083229893.Spec : Prop :=
  ∀ n, P4098720354083229893.a n = (A114960 (n + 1) : ℝ)

end A114960

/-! ## A114960.P7793121220377782825

`ogf((1-3x+5x^2-4x^3)/(1-4x+3x^2+6x^3-10x^4+4x^5))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114960

/-- `ogf((1-3x+5x^2-4x^3)/(1-4x+3x^2+6x^3-10x^4+4x^5))` -/
def P7793121220377782825.Spec : Prop :=
  ∀ n, P7793121220377782825.a n = A114960 (n + 1)

theorem P7793121220377782825.correct : P7793121220377782825.Spec := by
  intro n
  simp only [A114960, Nat.add_sub_cancel]

end A114960

/-! ## A114960.P11786474282357399122

`∑[Δ[A051437(n)]-1]`
-/

namespace A114960.P11786474282357399122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051437 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114960.P11786474282357399122

namespace A114960

/-- `∑[Δ[A051437(n)]-1]` -/
def P11786474282357399122.Spec : Prop :=
  ∀ n, P11786474282357399122.a n = A114960 (n + 1)

end A114960

/-! ## A114960.P2361590920783960798

`A083058(A051437(n+1))`
-/

namespace A114960.P2361590920783960798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083058 (A051437 (n + 1)).toNat

end

end A114960.P2361590920783960798

namespace A114960

/-- `A083058(A051437(n+1))` -/
def P2361590920783960798.Spec : Prop :=
  ∀ n, P2361590920783960798.a n = A114960 (n + 1)

end A114960

/-!
# A114961: Numbers n such that PrimePi(prime(n + 1)^2) - PrimePi(prime(n)^2) < c*n with c=9/5.

The programs for A114961, there is no canonical definition to state claims against.
-/

/-! ## A114961.P11258243336036462970

`lt[A050216(n), A265227(n+1)]`
-/

namespace A114961.P11258243336036462970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114961.P11258243336036462970

/-! ## A114961.P9897893643308327017

`lt[A197911(A050216(n)), A072154(n)]`
-/

namespace A114961.P9897893643308327017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 (A050216 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114961.P9897893643308327017

/-! ## A114961.P10645123645873734264

`lt[A004396(A050216(n)), A047263(n+1)]`
-/

namespace A114961.P10645123645873734264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A050216 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114961.P10645123645873734264

/-! ## A114961.P13637719692593384040

`lt[A008574(A050216(n)), A072154(3*n)]`
-/

namespace A114961.P13637719692593384040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A050216 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114961.P13637719692593384040

/-!
# A114962: a(n) = n^2 + 14.

The programs for A114962, the canonical program `A114962.P10271032811468501680` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114962 has offset 0).

The definition of A114962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+14` (program `A114962.P10271032811468501680`, by `A114962.P10271032811468501680.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114962.P10271032811468501680

`n²+14`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114962

/-- `n²+14` -/
def P10271032811468501680.Spec : Prop :=
  ∀ n, (P10271032811468501680.a n : ℤ) = A114962 n

theorem P10271032811468501680.correct : P10271032811468501680.Spec := by
  intro n
  simp only [A114962]

end A114962

/-!
# A114963: a(n) = n^2 + 22.

The programs for A114963, the canonical program `A114963.P10226331204991653737` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114963 has offset 0).

The definition of A114963 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+22` (program `A114963.P10226331204991653737`, by `A114963.P10226331204991653737.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114963.P10226331204991653737

`n²+22`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114963

/-- `n²+22` -/
def P10226331204991653737.Spec : Prop :=
  ∀ n, (P10226331204991653737.a n : ℤ) = A114963 n

theorem P10226331204991653737.correct : P10226331204991653737.Spec := by
  intro n
  simp only [A114963]

end A114963

/-!
# A114964: a(n) = n^2 + 30.

The programs for A114964, the canonical program `A114964.P7235840719688910436` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114964 has offset 0).

The definition of A114964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+30` (program `A114964.P7235840719688910436`, by `A114964.P7235840719688910436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114964.P7235840719688910436

`n²+30`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114964

/-- `n²+30` -/
def P7235840719688910436.Spec : Prop :=
  ∀ n, (P7235840719688910436.a n : ℤ) = A114964 n

theorem P7235840719688910436.correct : P7235840719688910436.Spec := by
  intro n
  simp only [A114964]

end A114964

/-!
# A114965: a(n) = n^2 + 34.

The programs for A114965, the canonical program `A114965.P3034032948446586031` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114965 has offset 0).

The definition of A114965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+34` (program `A114965.P3034032948446586031`, by `A114965.P3034032948446586031.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114965.P3034032948446586031

`n²+34`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114965

/-- `n²+34` -/
def P3034032948446586031.Spec : Prop :=
  ∀ n, (P3034032948446586031.a n : ℤ) = A114965 n

theorem P3034032948446586031.correct : P3034032948446586031.Spec := by
  intro n
  simp only [A114965]

end A114965

/-!
# A114966: Prime(n) + Semiprime(n) + 3AlmostPrime(n) + 4AlmostPrime(n) + 5AlmostPrime(n).

The programs for A114966, the canonical program `A114966.P15379347381698072828` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114966 has offset 1).

The definition of A114966 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014614, A114944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114966.P15379347381698072828

`A114944(n+1)+A014614(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A114966

/-- `A114944(n+1)+A014614(n+1)` -/
def P15379347381698072828.Spec : Prop :=
  ∀ n, P15379347381698072828.a n = A114966 (n + 1)

theorem P15379347381698072828.correct : P15379347381698072828.Spec := by
  intro n
  simp only [A114966, Nat.add_sub_cancel]

end A114966

/-! ## A114966.P14972290566838294530

`A000040(n+1)+A001358(n+1)+A014612(n+1)+A014613(n+1)+A014614(n+1)`
-/

namespace A114966.P14972290566838294530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A001358 (n + 1) + A014612 (n + 1) + A014613 (n + 1) + A014614 (n + 1)

end

end A114966.P14972290566838294530

namespace A114966

/-- `A000040(n+1)+A001358(n+1)+A014612(n+1)+A014613(n+1)+A014614(n+1)` -/
def P14972290566838294530.Spec : Prop :=
  ∀ n, P14972290566838294530.a n = A114966 (n + 1)

theorem P14972290566838294530.correct : P14972290566838294530.Spec := by
  intro n
  simp only [A114966, Nat.add_sub_cancel, A114966.P14972290566838294530.a, A114966.P15379347381698072828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A014613, A014613.P1114013819310587080.f1, A014613.P1114013819310587080.f2, A014613.P1114013819310587080.a, A014614, A014614.P8846493082158940166.f1, A014614.P8846493082158940166.f2, A014614.P8846493082158940166.a, A114944, A114944.P5745295539132009725.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A030514, A030514.P11974636125371552077.a, A088707, A088707.P7291141647877559993.a, A114382, A114382.P1208901813651073029.a, A307342, A307342.P15063499458322460120.f1, A307342.P15063499458322460120.f2, A307342.P15063499458322460120.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A072000, A072000.P3706059858088101648.a, A318472, A318472.P17460137329707848954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A114966

/-! ## A114966.P5608003202519593476

`A114944(n+1)+record[A117358(A046310(n+1))]`
-/

namespace A114966.P5608003202519593476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A046310 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114944 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114966.P5608003202519593476

namespace A114966

/-- `A114944(n+1)+record[A117358(A046310(n+1))]` -/
def P5608003202519593476.Spec : Prop :=
  ∀ n, P5608003202519593476.a n = A114966 (n + 1)

end A114966

/-! ## A114966.P5994934707214791863

`A114944(n+1)+record[A025480(A046306(n+1))]`
-/

namespace A114966.P5994934707214791863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A046306 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114944 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114966.P5994934707214791863

namespace A114966

/-- `A114944(n+1)+record[A025480(A046306(n+1))]` -/
def P5994934707214791863.Spec : Prop :=
  ∀ n, P5994934707214791863.a n = A114966 (n + 1)

end A114966

/-! ## A114966.P1727860198460042833

`A114944(n+1)+record[A174571(A046308(n+1))]`
-/

namespace A114966.P1727860198460042833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A046308 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114944 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114966.P1727860198460042833

namespace A114966

/-- `A114944(n+1)+record[A174571(A046308(n+1))]` -/
def P1727860198460042833.Spec : Prop :=
  ∀ n, P1727860198460042833.a n = A114966 (n + 1)

end A114966

/-!
# A114967: 

The programs for A114967, there is no canonical definition to state claims against.
-/

/-! ## A114967.P8093551540711028597

`(eq[3, ∑{e}[n+3, #]]+3)^(eq[3, ∑{e}[n+3, #]]+3)`
-/

namespace A114967.P8093551540711028597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f6 n), Nat.factorization (f6 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3) ^ (SequenceMachineLib.nth (fun j => f4 j = f5 j) n + 3)

end

end A114967.P8093551540711028597

/-! ## A114967.P1043696956475941934

`A000312(eq[3, ∑{e}[n+3, #]]+3)`
-/

namespace A114967.P1043696956475941934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3)

end

end A114967.P1043696956475941934

/-! ## A114967.P7885401091266313338

`A014612(n+1)^A014612(n+1)`
-/

namespace A114967.P7885401091266313338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014612 (n + 1) : ℚ) ^ (A014612 (n + 1) : ℤ)

end

end A114967.P7885401091266313338

/-! ## A114967.P8924157209913935664

`A000312(eq[n, n-a(A001222(n))])` with `a(0)=1, a(1)=3`
-/

namespace A114967.P8924157209913935664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114967.P8924157209913935664

/-!
# A114971: Numbers n such that 3^n + n^3 is a semiprime.

The programs for A114971, there is no canonical definition to state claims against.
-/

/-! ## A114971.P2416581076267343244

`A319510(A165431(n))+A310838(n)`
-/

namespace A114971.P2416581076267343244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319510 (A165431 n).toNat + A310838 n

end

end A114971.P2416581076267343244

/-! ## A114971.P17895058183599044355

`A312283(n)-A175861(A291036(n))`
-/

namespace A114971.P17895058183599044355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312283 n - A175861 (A291036 n).toNat

end

end A114971.P17895058183599044355

/-! ## A114971.P6866034311853381817

`A312283(n)-A175861(∏[A124229(n+1)])`
-/

namespace A114971.P6866034311853381817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312283 n - A175861 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114971.P6866034311853381817

/-! ## A114971.P4844608197982896633

`A310807(n)+A121373(A232023(2*n+1))`
-/

namespace A114971.P4844608197982896633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310807 n + A121373 (A232023 (2 * n + 1)).toNat

end

end A114971.P4844608197982896633

/-!
# A114977: Numbers k such that (j^k + k^j) == 0 (mod k+j), j=2 case.

The programs for A114977, there is no canonical definition to state claims against.
-/

/-! ## A114977.P3866479319279898166

`A242875(n+1)-A167666(A196856(3*n+1))`
-/

namespace A114977.P3866479319279898166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242875 (n + 1) - A167666 (A196856 (3 * n + 1)).toNat

end

end A114977.P3866479319279898166

/-!
# A114982: Expansion of x(3-x^2)/(1-3x).

The programs for A114982, the canonical program `A114982.P9283774497647536922` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114982 has offset 0).

The definition of A114982 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3x-x^3)/(1-3x))` (program `A114982.P9283774497647536922`, by `A114982.P9283774497647536922.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114982.P9283774497647536922

`ogf((3x-x^3)/(1-3x))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114982

/-- `ogf((3x-x^3)/(1-3x))` -/
def P9283774497647536922.Spec : Prop :=
  ∀ n, P9283774497647536922.a n = A114982 n

theorem P9283774497647536922.correct : P9283774497647536922.Spec := by
  intro n
  simp only [A114982]

end A114982

/-! ## A114982.P844880911047988608

`3*a(n-1)` with `a(0)=0, a(1)=3, a(2)=9, a(3)=26`
-/

namespace A114982.P844880911047988608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 9, 26] fun n a =>
  3 * a (n - 1)

end

end A114982.P844880911047988608

namespace A114982

/-- `3*a(n-1)` -/
def P844880911047988608.Spec : Prop :=
  ∀ n, (P844880911047988608.a n : ℤ) = A114982 n

end A114982

/-! ## A114982.P10794889516516816192

`A023759(∑[A133263(n)])`
-/

namespace A114982.P10794889516516816192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114982.P10794889516516816192

namespace A114982

/-- `A023759(∑[A133263(n)])` -/
def P10794889516516816192.Spec : Prop :=
  ∀ n, P10794889516516816192.a n = A114982 n

end A114982

/-! ## A114982.P11706935800398086707

`A023759(A008778(n)-n²)`
-/

namespace A114982.P11706935800398086707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023759 (A008778 n - (n ^ 2 : ℤ)).toNat

end

end A114982.P11706935800398086707

namespace A114982

/-- `A023759(A008778(n)-n²)` -/
def P11706935800398086707.Spec : Prop :=
  ∀ n, P11706935800398086707.a n = A114982 n

end A114982

/-! ## A114982.P17165939693957415502

`A023759(A000292(n)+2*n+1)`
-/

namespace A114982.P17165939693957415502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023759 (A000292 n + (2 * n + 1 : ℤ)).toNat

end

end A114982.P17165939693957415502

namespace A114982

/-- `A023759(A000292(n)+2*n+1)` -/
def P17165939693957415502.Spec : Prop :=
  ∀ n, P17165939693957415502.a n = A114982 n

end A114982

/-!
# A114984: Coefficients of cubic equations in the form w^2=4*x^3-g2*x-g3 Weierstrass elliptic form whose solutions approximate zeta zeros.

The programs for A114984, the canonical program `A114984.P4027615164263968392` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114984 has offset 0).

The definition of A114984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114984.P15958181562600921537

`ogf((200-x+43x^2)/(1-x-x^2+x^3))`
-/

namespace A114984.P15958181562600921537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [200, -1, 43] [1, -1, -1, 1] n

end

end A114984.P15958181562600921537

namespace A114984

/-- `ogf((200-x+43x^2)/(1-x-x^2+x^3))` -/
def P15958181562600921537.Spec : Prop :=
  ∀ n, P15958181562600921537.a n = A114984 n

end A114984

/-! ## A114984.P4027615164263968392

`139+61*(-1)^n+121*n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114984

/-- `139+61*(-1)^n+121*n` -/
def P4027615164263968392.Spec : Prop :=
  ∀ n, P4027615164263968392.a n = A114984 n

theorem P4027615164263968392.correct : P4027615164263968392.Spec := by
  intro n
  simp only [A114984]

end A114984

/-!
# A114985: Numbers whose sum of distinct prime factors is semiprime.

The programs for A114985, there is no canonical definition to state claims against.
-/

/-! ## A114985.P16433660271865304410

`lt[1, A105700(A008472(n+1))]+1`
-/

namespace A114985.P16433660271865304410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A008472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A114985.P16433660271865304410

/-! ## A114985.P869854394177642408

`eq[2, A001222(A008472(n+2))]+2`
-/

namespace A114985.P869854394177642408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008472 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A114985.P869854394177642408

/-! ## A114985.P1276000400812134592

`eq[2, A105700(A008472(abs(1-n)+1))]`
-/

namespace A114985.P1276000400812134592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A008472 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114985.P1276000400812134592

/-! ## A114985.P15162576392789243811

`eq[2, A105700(A008472(gcd(n, 2*n)+1))]+1`
-/

namespace A114985.P15162576392789243811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A008472 (Nat.gcd n (2 * n) + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114985.P15162576392789243811

/-! ## A114985.P1909189191093543620

`eq[2, A317791(A008472(A233583(n+1)))]`
-/

namespace A114985.P1909189191093543620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317791 (A008472 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114985.P1909189191093543620

/-!
# A114986: Characteristic function of (A000201 prefixed with 0).

The programs for A114986, the canonical program `A114986.P6596508872872694334` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114986 has offset 0).

The definition of A114986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114986.P10284900294006650573

`Δ[ceil(n/ϕ)]`
-/

namespace A114986.P10284900294006650573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114986.P10284900294006650573

namespace A114986

/-- `Δ[ceil(n/ϕ)]` -/
def P10284900294006650573.Spec : Prop :=
  ∀ n, P10284900294006650573.a n = A114986 n

end A114986

/-! ## A114986.P4400112296065528801

`3%Δ[ceil(ϕ*n)]`
-/

namespace A114986.P4400112296065528801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n)

end

end A114986.P4400112296065528801

namespace A114986

/-- `3%Δ[ceil(ϕ*n)]` -/
def P4400112296065528801.Spec : Prop :=
  ∀ n, P4400112296065528801.a n = A114986 n

end A114986

/-! ## A114986.P15849683941940655194

`val(Δ[ceil(ϕ*n)], 2)`
-/

namespace A114986.P15849683941940655194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A114986.P15849683941940655194

namespace A114986

/-- `val(Δ[ceil(ϕ*n)], 2)` -/
def P15849683941940655194.Spec : Prop :=
  ∀ n, (P15849683941940655194.a n : ℤ) = A114986 n

end A114986

/-! ## A114986.P13949436733585249210

`C(Δ[ceil(ϕ*n)], 2)`
-/

namespace A114986.P13949436733585249210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A114986.P13949436733585249210

namespace A114986

/-- `C(Δ[ceil(ϕ*n)], 2)` -/
def P13949436733585249210.Spec : Prop :=
  ∀ n, (P13949436733585249210.a n : ℤ) = A114986 n

end A114986

/-! ## A114986.P15902556985111867435

`and(1, char[floor(ϕ*n)])`
-/

namespace A114986.P15902556985111867435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A114986.P15902556985111867435

namespace A114986

/-- `and(1, char[floor(ϕ*n)])` -/
def P15902556985111867435.Spec : Prop :=
  ∀ n, (P15902556985111867435.a n : ℤ) = A114986 n

end A114986

/-! ## A114986.P14386738171911164417

`Δ[ceil(ϕ*n)]!-1`
-/

namespace A114986.P14386738171911164417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) - 1

end

end A114986.P14386738171911164417

namespace A114986

/-- `Δ[ceil(ϕ*n)]!-1` -/
def P14386738171911164417.Spec : Prop :=
  ∀ n, P14386738171911164417.a n = A114986 n

end A114986

/-! ## A114986.P9513590969529518134

`xor(1, Δ[floor(n/ϕ²)])`
-/

namespace A114986.P9513590969529518134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A114986.P9513590969529518134

namespace A114986

/-- `xor(1, Δ[floor(n/ϕ²)])` -/
def P9513590969529518134.Spec : Prop :=
  ∀ n, P9513590969529518134.a n = A114986 n

end A114986

/-! ## A114986.P13086772760046416346

`1-dr(Δ[floor(n/ϕ²)])`
-/

namespace A114986.P13086772760046416346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n) : ℤ)

end

end A114986.P13086772760046416346

namespace A114986

/-- `1-dr(Δ[floor(n/ϕ²)])` -/
def P13086772760046416346.Spec : Prop :=
  ∀ n, P13086772760046416346.a n = A114986 n

end A114986

/-! ## A114986.P15419046527732437359

`Δ[floor(n/ϕ)]+C(2, n+2)`
-/

namespace A114986.P15419046527732437359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A114986.P15419046527732437359

namespace A114986

/-- `Δ[floor(n/ϕ)]+C(2, n+2)` -/
def P15419046527732437359.Spec : Prop :=
  ∀ n, P15419046527732437359.a n = A114986 n

end A114986

/-! ## A114986.P2801539437066277557

`Δ[n-floor(a(n-1)/ϕ)]²` with `a(0)=0`
-/

namespace A114986.P2801539437066277557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - ⌊(f1 (n - 1) : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A114986.P2801539437066277557

namespace A114986

/-- `Δ[n-floor(a(n-1)/ϕ)]²` -/
def P2801539437066277557.Spec : Prop :=
  ∀ n, P2801539437066277557.a n = A114986 n

end A114986

/-! ## A114986.P6596508872872694334

`Δ[n+1-a(a(n-1))]²` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A114986

/-- `Δ[n+1-a(a(n-1))]²` -/
def P6596508872872694334.Spec : Prop :=
  ∀ n, P6596508872872694334.a n = A114986 n

theorem P6596508872872694334.correct : P6596508872872694334.Spec := by
  intro n
  simp only [A114986]

end A114986

/-! ## A114986.P8310174931662744450

`char[A066096(n)]`
-/

namespace A114986.P8310174931662744450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A114986.P8310174931662744450

namespace A114986

/-- `char[A066096(n)]` -/
def P8310174931662744450.Spec : Prop :=
  ∀ n, (P8310174931662744450.a n : ℤ) = A114986 n

end A114986

/-! ## A114986.P16469051042877706057

`log2(Δ[A004956(n)])`
-/

namespace A114986.P16469051042877706057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A114986.P16469051042877706057

namespace A114986

/-- `log2(Δ[A004956(n)])` -/
def P16469051042877706057.Spec : Prop :=
  ∀ n, P16469051042877706057.a n = (A114986 n : ℝ)

end A114986

/-! ## A114986.P11805265079210267876

`Δ[A004957(n)]-2`
-/

namespace A114986.P11805265079210267876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A114986.P11805265079210267876

namespace A114986

/-- `Δ[A004957(n)]-2` -/
def P11805265079210267876.Spec : Prop :=
  ∀ n, P11805265079210267876.a n = A114986 n

end A114986

/-! ## A114986.P18250404956244005782

`char[A120613(n+1)]`
-/

namespace A114986.P18250404956244005782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A114986.P18250404956244005782

namespace A114986

/-- `char[A120613(n+1)]` -/
def P18250404956244005782.Spec : Prop :=
  ∀ n, (P18250404956244005782.a n : ℤ) = A114986 n

end A114986

/-! ## A114986.P6873988093546081942

`char[A026351(n)-1]`
-/

namespace A114986.P6873988093546081942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A114986.P6873988093546081942

namespace A114986

/-- `char[A026351(n)-1]` -/
def P6873988093546081942.Spec : Prop :=
  ∀ n, (P6873988093546081942.a n : ℤ) = A114986 n

end A114986

/-! ## A114986.P17876414348290513608

`log2(A001468(n))^n`
-/

namespace A114986.P17876414348290513608
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001468 n : ℝ) ^ n

end

end A114986.P17876414348290513608

namespace A114986

/-- `log2(A001468(n))^n` -/
def P17876414348290513608.Spec : Prop :=
  ∀ n, P17876414348290513608.a n = (A114986 n : ℝ)

end A114986

/-!
# A114987: Numbers with a 3-almost prime number of prime divisors (counted with multiplicity).

The programs for A114987, there is no canonical definition to state claims against.
-/

/-! ## A114987.P12558768664961398061

`∪[A046310(n+1), A069273(n+1)]`
-/

namespace A114987.P12558768664961398061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114987.P12558768664961398061

/-! ## A114987.P5018674195239759805

`∪[4*A046314(n+1), A046310(n+1)]`
-/

namespace A114987.P5018674195239759805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A046314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114987.P5018674195239759805

/-! ## A114987.P17359453343170517347

`∪[8*A046312(n+1), A046310(n+1)]`
-/

namespace A114987.P17359453343170517347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A046312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114987.P17359453343170517347

/-!
# A114988: Numbers whose sum of distinct prime factors is 3-almost prime.

The programs for A114988, the canonical program `A114988.P3062223938420162422` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114988 has offset 1).

The definition of A114988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114988.P3062223938420162422

`eq[3, A001222(A008472(n+2))]+2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114988

/-- `eq[3, A001222(A008472(n+2))]+2` -/
def P3062223938420162422.Spec : Prop :=
  ∀ n, (P3062223938420162422.a n : ℤ) = A114988 (n + 1)

theorem P3062223938420162422.correct : P3062223938420162422.Spec := by
  intro n
  simp only [A114988, Nat.add_sub_cancel]

end A114988

/-!
# A114989: Numbers whose sum of squares of distinct prime factors is prime.

The programs for A114989, there is no canonical definition to state claims against.
-/

/-! ## A114989.P4875768055592793855

`eq[1, A001222(A005063(n+5))]+5`
-/

namespace A114989.P4875768055592793855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005063 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 5

end

end A114989.P4875768055592793855

/-! ## A114989.P9130183813533727348

`eq[A020639(A005063(n+2)), A005063(n+2)]+2`
-/

namespace A114989.P9130183813533727348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005063 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A114989.P9130183813533727348

/-! ## A114989.P6055204903788816919

`eq[2, A171565(A005063(n+1))]+1`
-/

namespace A114989.P6055204903788816919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171565 (A005063 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114989.P6055204903788816919

/-! ## A114989.P5780757955605444205

`eq[2, A171565(A005063(A028310(n)))]`
-/

namespace A114989.P5780757955605444205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171565 (A005063 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114989.P5780757955605444205

/-! ## A114989.P5485220820510467288

`eq[A003415(A005063(n+1)), A340372(n+1)]+1`
-/

namespace A114989.P5485220820510467288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A005063 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A114989.P5485220820510467288

/-!
# A114990: a(n) = a(n-2) + A000265(a(n-1)), a(0)=0, a(1)=1.

The programs for A114990, the canonical program `A114990.P7973052791540898501` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114990 has offset 0).

The definition of A114990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+A000265(a(n-1))` (program `A114990.P7973052791540898501`, by `A114990.P7973052791540898501.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114990.P7973052791540898501

`a(n-2)+A000265(a(n-1))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114990

/-- `a(n-2)+A000265(a(n-1))` -/
def P7973052791540898501.Spec : Prop :=
  ∀ n, P7973052791540898501.a n = A114990 n

theorem P7973052791540898501.correct : P7973052791540898501.Spec := by
  intro n
  simp only [A114990]

end A114990

/-! ## A114990.P1518771800576618897

`a(n-2)+a(n-1)/2^val(a(n-1), 2)` with `a(0)=0, a(1)=1`
-/

namespace A114990.P1518771800576618897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) / (2 ^ SequenceMachineLib.valuation (SequenceMachineLib.roundAway (a (n - 1))).toNat 2 : ℚ)

end

end A114990.P1518771800576618897

namespace A114990

/-- `a(n-2)+a(n-1)/2^val(a(n-1), 2)` -/
def P1518771800576618897.Spec : Prop :=
  ∀ n, P1518771800576618897.a n = (A114990 n : ℚ)

end A114990

/-! ## A114990.P8961562853194763693

`a(n-2)-2*a(n-1)/xor(-a(n-1), a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A114990.P8961562853194763693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - 2 * (a (n - 1) / (Int.xor (SequenceMachineLib.roundAway (-a (n - 1))) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ))

end

end A114990.P8961562853194763693

namespace A114990

/-- `a(n-2)-2*a(n-1)/xor(-a(n-1), a(n-1))` -/
def P8961562853194763693.Spec : Prop :=
  ∀ n, P8961562853194763693.a n = (A114990 n : ℚ)

end A114990

/-! ## A114990.P8785985258080129991

`a(n-2)+a(n-1)/a(n-1)%xor(-a(n-1), a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A114990.P8785985258080129991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) / (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) (Int.xor (SequenceMachineLib.roundAway (-a (n - 1))) (SequenceMachineLib.roundAway (a (n - 1)))) : ℚ)

end

end A114990.P8785985258080129991

namespace A114990

/-- `a(n-2)+a(n-1)/a(n-1)%xor(-a(n-1), a(n-1))` -/
def P8785985258080129991.Spec : Prop :=
  ∀ n, P8785985258080129991.a n = (A114990 n : ℚ)

end A114990

/-! ## A114990.P9934863768176446483

`A030101(A030101(a(n-1)))+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A114990.P9934863768176446483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A030101 (A030101 (a (n - 1)).toNat).toNat + a (n - 2)

end

end A114990.P9934863768176446483

namespace A114990

/-- `A030101(A030101(a(n-1)))+a(n-2)` -/
def P9934863768176446483.Spec : Prop :=
  ∀ n, P9934863768176446483.a n = A114990 n

end A114990

/-!
# A114991: Primes of the form 2^a * 3^b * 5^c + 1 for positive a, b, c.

The programs for A114991, there is no canonical definition to state claims against.
-/

/-! ## A114991.P7980263542015050988

`∩[A002200(n+1), A143207(n+1)+1]`
-/

namespace A114991.P7980263542015050988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143207 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114991.P7980263542015050988

/-! ## A114991.P10108628862101988274

`∩[A061599(n+1), A385934(n+1)]`
-/

namespace A114991.P10108628862101988274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114991.P10108628862101988274

/-! ## A114991.P587715894422731296

`p?[A143207(n+1)+1]`
-/

namespace A114991.P587715894422731296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143207 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114991.P587715894422731296

/-! ## A114991.P1239040228133739384

`p?[3*A080193(n+1)+1]`
-/

namespace A114991.P1239040228133739384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A080193 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114991.P1239040228133739384

/-! ## A114991.P5546371563636121633

`p?[3*A325198(n+1)+1]`
-/

namespace A114991.P5546371563636121633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A325198 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114991.P5546371563636121633

/-! ## A114991.P9717909282123770243

`p?[15*A051037(n+1)+1]`
-/

namespace A114991.P9717909282123770243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A051037 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114991.P9717909282123770243

/-! ## A114991.P11821262679719292981

`p?[xor(1, A143207(-xor(n, -1)))]`
-/

namespace A114991.P11821262679719292981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A143207 (-Int.xor (n : ℤ) (-1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114991.P11821262679719292981

/-! ## A114991.P15659443750150519695

`p?[or(1, A143207(A008619(2*n)))]`
-/

namespace A114991.P15659443750150519695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A143207 (A008619 (2 * n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114991.P15659443750150519695

/-! ## A114991.P4781969867928226626

`p?[xor(1, A143207(A028242(2*n)))]`
-/

namespace A114991.P4781969867928226626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A143207 (A028242 (2 * n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114991.P4781969867928226626

/-! ## A114991.P3978294273759462153

`∩[A002200(n+1), A132230(n+1)]`
-/

namespace A114991.P3978294273759462153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114991.P3978294273759462153

/-!
# A114992: Primes of the form 2^a * 5^b * 7^c + 1 for positive a, b, c.

The programs for A114992, there is no canonical definition to state claims against.
-/

/-! ## A114992.P7679661765293059278

`∩[A061638(n+1), A140856(n+1)]`
-/

namespace A114992.P7679661765293059278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114992.P7679661765293059278

/-! ## A114992.P4367347002228831515

`∩[A140856(n+1), A174144(n+1)]`
-/

namespace A114992.P4367347002228831515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114992.P4367347002228831515

/-! ## A114992.P10921713728900080268

`∩[A061638(n+1), A140732(n+1)]`
-/

namespace A114992.P10921713728900080268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114992.P10921713728900080268

/-! ## A114992.P1107796523615625

`∩[A061638(n+1), A132232(n+1)]`
-/

namespace A114992.P1107796523615625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114992.P1107796523615625

/-! ## A114992.P1119382698609535713

`∩[A061638(n+1), A128467(n)]`
-/

namespace A114992.P1119382698609535713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114992.P1119382698609535713

/-!
# A114993: 

The programs for A114993, there is no canonical definition to state claims against.
-/

/-! ## A114993.P510309149668315804

`A014613(n+1)^A014613(n+1)`
-/

namespace A114993.P510309149668315804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014613 (n + 1) : ℚ) ^ (A014613 (n + 1) : ℤ)

end

end A114993.P510309149668315804

/-!
# A114994: Numbers whose binary representation has monotonically decreasing sizes of groups of zeros (including zero-length groups between adjacent ones).

The programs for A114994, there is no canonical definition to state claims against.
-/

/-! ## A114994.P17045964661803284036

`eq[A006257(n), A331856(n)]`
-/

namespace A114994.P17045964661803284036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114994.P17045964661803284036

/-! ## A114994.P12018314945885012794

`eq[0, A124760(n)]`
-/

namespace A114994.P12018314945885012794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114994.P12018314945885012794

/-! ## A114994.P1265475229668715349

`lt[A124765(n), 2]`
-/

namespace A114994.P1265475229668715349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114994.P1265475229668715349

/-! ## A114994.P18302717876416423081

`eq[A124765(n), A267084(n+1)]`
-/

namespace A114994.P18302717876416423081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114994.P18302717876416423081

/-! ## A114994.P7289674985829504270

`eq[A057427(n), A124765(n)]`
-/

namespace A114994.P7289674985829504270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114994.P7289674985829504270

/-! ## A114994.P9734852818830427405

`eq[1, A124765(2*n+1)]`
-/

namespace A114994.P9734852818830427405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114994.P9734852818830427405

/-! ## A114994.P12529718141255023034

`eq[A246591(2*n), A331856(n)]`
-/

namespace A114994.P12529718141255023034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246591 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114994.P12529718141255023034

/-! ## A114994.P14726929212807976427

`A233249(A129129(n))`
-/

namespace A114994.P14726929212807976427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (A129129 n).toNat

end

end A114994.P14726929212807976427

/-! ## A114994.P10108697191359729975

`eq[A233312(n), A330940(n)]`
-/

namespace A114994.P10108697191359729975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233312 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330940 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114994.P10108697191359729975

/-! ## A114994.P5736963626564621797

`∩[A004743(n+1), A334273(n+1)]`
-/

namespace A114994.P5736963626564621797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114994.P5736963626564621797

/-!
# A114996: a(n) = smallest palindrome > a(n-1) (for n > 0) such that the sum of its prime digits is equal to palindrome with index n, or -1 if none exists.

The programs for A114996, there is no canonical definition to state claims against.
-/

/-! ## A114996.P11975168070313122491

`Δ[Δ[A081753(A186758(n))]]`
-/

namespace A114996.P11975168070313122491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A186758 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114996.P11975168070313122491

/-! ## A114996.P8701163842072234434

`A132841(A089847(n))-A176820(n+1)`
-/

namespace A114996.P8701163842072234434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132841 (A089847 n).toNat - A176820 (n + 1)

end

end A114996.P8701163842072234434

/-!
# A114997: Number of ordered trees with n edges and no unary or binary nodes.

The programs for A114997, there is no canonical definition to state claims against.
-/

/-! ## A114997.P3560809309716336504

`A000196(2*A006505(n+1))`
-/

namespace A114997.P3560809309716336504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A006505 (n + 1)).toNat

end

end A114997.P3560809309716336504

/-! ## A114997.P13566902041121442637

`A342804(n+1)-A066283(A073576(n))`
-/

namespace A114997.P13566902041121442637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342804 (n + 1) - A066283 (A073576 n).toNat

end

end A114997.P13566902041121442637

/-! ## A114997.P8373531574806301797

`A350894(A167614(n+1)%A268576(n+1))`
-/

namespace A114997.P8373531574806301797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350894 (Int.tmod (A167614 (n + 1)) (A268576 (n + 1))).toNat

end

end A114997.P8373531574806301797

/-! ## A114997.P4812676756304527897

`A373893(A153986(n))`
-/

namespace A114997.P4812676756304527897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373893 (A153986 n).toNat

end

end A114997.P4812676756304527897

/-! ## A114997.P18058374125242433558

`Δ[A259361(A324062(n))]`
-/

namespace A114997.P18058374125242433558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A324062 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114997.P18058374125242433558

/-!
# A114998: a(n) = numerator of Sum_{i=1..n} +-1/n, where the sign is -1 iff n is prime.

The programs for A114998, there is no canonical definition to state claims against.
-/

/-! ## A114998.P15666386204028004637

`A006530(or(1, A119248(n+1)²))`
-/

namespace A114998.P15666386204028004637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A119248 (n + 1) ^ 2)).toNat

end

end A114998.P15666386204028004637

/-! ## A114998.P17153945247374992142

`A020639(or(1, A119248(n+1)²))`
-/

namespace A114998.P17153945247374992142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A119248 (n + 1) ^ 2)).toNat

end

end A114998.P17153945247374992142

/-! ## A114998.P5541249888177047816

`A119248(n+1)+A000007(A001297(n))`
-/

namespace A114998.P5541249888177047816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119248 (n + 1) + A000007 (A001297 n).toNat

end

end A114998.P5541249888177047816

/-! ## A114998.P12367551964432427847

`A119248(n+1)+A010054(A119243(n))`
-/

namespace A114998.P12367551964432427847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119248 (n + 1) + A010054 (A119243 n).toNat

end

end A114998.P12367551964432427847

/-!
# A114999: Array read by antidiagonals: T(m,n) = Sum_{i=1..m, j=1..n, gcd(i,j)=1} (m+1-i)*(n+1-j), m>=1, n>=1.

The programs for A114999, there is no canonical definition to state claims against.
-/

/-! ## A114999.P14916844817001162281

`(A115010(n+1)-A159919(n+1))/2`
-/

namespace A114999.P14916844817001162281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115010 (n + 1) - A159919 (n + 1) : ℚ) / 2

end

end A114999.P14916844817001162281

/-! ## A114999.P6408005609345690919

`A001281(A115010(n+1)-A159919(n+1))`
-/

namespace A114999.P6408005609345690919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A115010 (n + 1) - A159919 (n + 1)).toNat

end

end A114999.P6408005609345690919

/-! ## A114999.P847163579381116333

`A004525(A115010(n+1)-A159919(n+1))`
-/

namespace A114999.P847163579381116333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A115010 (n + 1) - A159919 (n + 1)).toNat

end

end A114999.P847163579381116333

/-! ## A114999.P13001130296452388656

`A004526(A115010(n+1)-A159919(n+1))`
-/

namespace A114999.P13001130296452388656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A115010 (n + 1) - A159919 (n + 1)).toNat

end

end A114999.P13001130296452388656

/-! ## A114999.P9442231221736972664

`A006370(A115010(n+1)-A159919(n+1))`
-/

namespace A114999.P9442231221736972664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A115010 (n + 1) - A159919 (n + 1)).toNat

end

end A114999.P9442231221736972664

/-! ## A114999.P17660598340354985993

`A014682(A115010(n+1)-A159919(n+1))`
-/

namespace A114999.P17660598340354985993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A115010 (n + 1) - A159919 (n + 1)).toNat

end

end A114999.P17660598340354985993

/-! ## A114999.P8003255236291669977

`A025480(A115010(n+1)-A159919(n+1))`
-/

namespace A114999.P8003255236291669977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A115010 (n + 1) - A159919 (n + 1)).toNat

end

end A114999.P8003255236291669977

/-! ## A114999.P14413227043620101697

`A110654(A115010(n+1)-A159919(n+1))`
-/

namespace A114999.P14413227043620101697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A115010 (n + 1) - A159919 (n + 1)).toNat

end

end A114999.P14413227043620101697

/-! ## A114999.P10169243044852895252

`A123108(A115010(n+1)-A159919(n+1))`
-/

namespace A114999.P10169243044852895252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A115010 (n + 1) - A159919 (n + 1)).toNat

end

end A114999.P10169243044852895252

/-! ## A114999.P10213017300057321373

`A185452(A115010(n+1)-A159919(n+1))`
-/

namespace A114999.P10213017300057321373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185452 (A115010 (n + 1) - A159919 (n + 1)).toNat

end

end A114999.P10213017300057321373

