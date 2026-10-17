import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B010.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A170733: 

The programs for A170733, there is no canonical definition to state claims against.
-/

/-! ## A170733.P14722575854210662076

`13*a(n-1)` with `a(0)=1, a(1)=14`
-/

namespace A170733.P14722575854210662076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n a =>
  13 * a (n - 1)

end

end A170733.P14722575854210662076

/-! ## A170733.P12355759317788505496

`floor(14*13^(n-1))`
-/

namespace A170733.P12355759317788505496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊14 * (13 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A170733.P12355759317788505496

/-! ## A170733.P18117443909584457889

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=14, a(2)=13`
-/

namespace A170733.P18117443909584457889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 14, 13] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A170733.P18117443909584457889

/-! ## A170733.P17063388174589761476

`∏{digits}[8*10^n-7, A006950(#)]`
-/

namespace A170733.P17063388174589761476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * 10 ^ n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006950 x).prod

end

end A170733.P17063388174589761476

/-! ## A170733.P3146460863060484435

`∏{digits}[8*10^n-7, A316721(#)]`
-/

namespace A170733.P3146460863060484435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * 10 ^ n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316721 x).prod

end

end A170733.P3146460863060484435

/-! ## A170733.P10733531327143551095

`xor(1, 13*a(A023443(n))+1)` with `a(0)=1, a(1)=14`
-/

namespace A170733.P10733531327143551095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n a =>
  Nat.xor 1 (13 * a (A023443 n).toNat + 1)

end

end A170733.P10733531327143551095

/-! ## A170733.P4764854557248294491

`∏{digits}[A059482(n), A089633(#)]`
-/

namespace A170733.P4764854557248294491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A089633 x).prod

end

end A170733.P4764854557248294491

/-! ## A170733.P3237115411672689010

`∏{digits}[A059482(n), A176175(#)]`
-/

namespace A170733.P3237115411672689010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A176175 x).prod

end

end A170733.P3237115411672689010

/-!
# A170735: 

The programs for A170735, there is no canonical definition to state claims against.
-/

/-! ## A170735.P13362534857891012770

`15*a(n-1)` with `a(0)=1, a(1)=16`
-/

namespace A170735.P13362534857891012770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n a =>
  15 * a (n - 1)

end

end A170735.P13362534857891012770

/-! ## A170735.P4061185974829942405

`floor(16*15^(n-1))`
-/

namespace A170735.P4061185974829942405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊16 * (15 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A170735.P4061185974829942405

/-! ## A170735.P11189599860569199300

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=16, a(2)=15`
-/

namespace A170735.P11189599860569199300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 16, 15] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A170735.P11189599860569199300

/-! ## A170735.P1740780776077199563

`lcm(15^(n-1), a(n-1))` with `a(0)=1, a(1)=16`
-/

namespace A170735.P1740780776077199563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((15 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A170735.P1740780776077199563

/-! ## A170735.P14091251103463165993

`15*abs(a(A023443(n)))` with `a(0)=1, a(1)=16`
-/

namespace A170735.P14091251103463165993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n a =>
  15 * a (A023443 n).toNat

end

end A170735.P14091251103463165993

/-! ## A170735.P8118866992534450699

`15*ceil(a(log2(A011782(n))))` with `a(0)=1, a(1)=16`

`ceil` is left out, it is the identity on integers.
-/

namespace A170735.P8118866992534450699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n a =>
  15 * a (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A170735.P8118866992534450699

/-! ## A170735.P6779886435825888934

`∏{digits}[∑[ceil(10^n/2)], A189728(#)]`
-/

namespace A170735.P6779886435825888934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A189728 x).prod

end

end A170735.P6779886435825888934

/-! ## A170735.P11684903531910162561

`round(lcm(4, 5^n)/5)*A003946(n)`
-/

namespace A170735.P11684903531910162561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 4 (5 ^ n) : ℚ) / 5) * A003946 n

end

end A170735.P11684903531910162561

/-! ## A170735.P16374063691252855259

`A003946(n)*A005054(n)`
-/

namespace A170735.P16374063691252855259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n * A005054 n

end

end A170735.P16374063691252855259

/-!
# A170737: 

The programs for A170737, there is no canonical definition to state claims against.
-/

/-! ## A170737.P13759727557483401918

`17*a(n-1)` with `a(0)=1, a(1)=18`
-/

namespace A170737.P13759727557483401918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n a =>
  17 * a (n - 1)

end

end A170737.P13759727557483401918

/-! ## A170737.P245215216590909760

`floor(18*17^(n-1))`
-/

namespace A170737.P245215216590909760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊18 * (17 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A170737.P245215216590909760

/-! ## A170737.P17580888243803500253

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=18, a(2)=17`
-/

namespace A170737.P17580888243803500253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 18, 17] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A170737.P17580888243803500253

/-! ## A170737.P14180745156163831239

`17*abs(a(A023443(n)))` with `a(0)=1, a(1)=18`
-/

namespace A170737.P14180745156163831239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n a =>
  17 * a (A023443 n).toNat

end

end A170737.P14180745156163831239

/-! ## A170737.P73587880713020567

`∏{digits}[∑[floor(10^n/2)]+1, A270339(#)]`
-/

namespace A170737.P73587880713020567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A270339 x).prod

end

end A170737.P73587880713020567

/-! ## A170737.P7196902986039859616

`∏{digits}[A002277(n)+1, A246143(#)]`
-/

namespace A170737.P7196902986039859616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A246143 x).prod

end

end A170737.P7196902986039859616

/-! ## A170737.P8165308387052390922

`∏{digits}[A002282(n)+1, A329165(#)]`
-/

namespace A170737.P8165308387052390922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A329165 x).prod

end

end A170737.P8165308387052390922

/-!
# A170739: 

The programs for A170739, there is no canonical definition to state claims against.
-/

/-! ## A170739.P15354889892889745578

`19*a(n-1)` with `a(0)=1, a(1)=20`
-/

namespace A170739.P15354889892889745578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n a =>
  19 * a (n - 1)

end

end A170739.P15354889892889745578

/-! ## A170739.P11870711746124910667

`floor(20*19^(n-1))`
-/

namespace A170739.P11870711746124910667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊20 * (19 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A170739.P11870711746124910667

/-! ## A170739.P11850557960191105329

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=20, a(2)=19`
-/

namespace A170739.P11850557960191105329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 20, 19] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A170739.P11850557960191105329

/-! ## A170739.P4890878864891313488

`record[gcd(A073214(n), A097805(n+2))]`
-/

namespace A170739.P4890878864891313488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073214 n) (A097805 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170739.P4890878864891313488

/-! ## A170739.P6698168606469313374

`round(A358985(2*n+1)/9)`
-/

namespace A170739.P6698168606469313374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A358985 (2 * n + 1) : ℚ) / 9)

end

end A170739.P6698168606469313374

/-!
# A170741: 

The programs for A170741, there is no canonical definition to state claims against.
-/

/-! ## A170741.P15526046310597203803

`21*a(n-1)` with `a(0)=1, a(1)=22`
-/

namespace A170741.P15526046310597203803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 22] fun n a =>
  21 * a (n - 1)

end

end A170741.P15526046310597203803

/-! ## A170741.P8060415866352112694

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=22, a(2)=21`
-/

namespace A170741.P8060415866352112694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 22, 21] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A170741.P8060415866352112694

/-! ## A170741.P11507822926486457260

`∏{digits}[A059482(n), A176540(#)]`
-/

namespace A170741.P11507822926486457260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A176540 x).prod

end

end A170741.P11507822926486457260

/-! ## A170741.P3492691297165614598

`∏{digits}[A093137(n), A322925(#)]`
-/

namespace A170741.P3492691297165614598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A322925 x).prod

end

end A170741.P3492691297165614598

/-! ## A170741.P17018457652251930324

`∏{digits}[A059482(n), A007931(A004396(#))]`
-/

namespace A170741.P17018457652251930324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007931 (A004396 x).toNat).prod

end

end A170741.P17018457652251930324

/-! ## A170741.P13645970022260537747

`A218724(n+1)-A218724(A028310(n)-1)`
-/

namespace A170741.P13645970022260537747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218724 (n + 1) - A218724 (A028310 n - 1).toNat

end

end A170741.P13645970022260537747

/-! ## A170741.P17468465674009064614

`∏{digits}[A093137(n)², A007931(#)]`
-/

namespace A170741.P17468465674009064614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007931 x).prod

end

end A170741.P17468465674009064614

/-!
# A170743: 

The programs for A170743, there is no canonical definition to state claims against.
-/

/-! ## A170743.P4439595928467920280

`23*a(n-1)` with `a(0)=1, a(1)=24`
-/

namespace A170743.P4439595928467920280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 24] fun n a =>
  23 * a (n - 1)

end

end A170743.P4439595928467920280

/-! ## A170743.P10966285889143239765

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=24, a(2)=23`
-/

namespace A170743.P10966285889143239765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 24, 23] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A170743.P10966285889143239765

/-! ## A170743.P11874667487641022318

`floor(23^n+23^n/23)`
-/

namespace A170743.P11874667487641022318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(23 ^ n : ℚ) + (23 ^ n : ℚ) / 23⌋

end

end A170743.P11874667487641022318

/-! ## A170743.P10633616336451892039

`Δ[or(1, lcm(23, a(n-1))+1)]` with `a(0)=0`
-/

namespace A170743.P10633616336451892039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lor 1 (Nat.lcm 23 (f1 (n - 1)) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A170743.P10633616336451892039

/-! ## A170743.P11705469217325086377

`record[gcd(A073215(n), A116598(n))]`
-/

namespace A170743.P11705469217325086377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073215 n) (A116598 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170743.P11705469217325086377

/-!
# A170745: 

The programs for A170745, there is no canonical definition to state claims against.
-/

/-! ## A170745.P4665912551140049802

`25*a(n-1)` with `a(0)=1, a(1)=26`
-/

namespace A170745.P4665912551140049802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 26] fun n a =>
  25 * a (n - 1)

end

end A170745.P4665912551140049802

/-! ## A170745.P10338275931649976863

`floor(26*25^(n-1))`
-/

namespace A170745.P10338275931649976863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊26 * (25 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A170745.P10338275931649976863

/-! ## A170745.P1031343475875423443

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=26, a(2)=25`
-/

namespace A170745.P1031343475875423443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 26, 25] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A170745.P1031343475875423443

/-! ## A170745.P2160367150176811436

`a(n-1)/(1/5)²` with `a(0)=1, a(1)=26`
-/

namespace A170745.P2160367150176811436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 26] fun n a =>
  a (n - 1) / ((1 : ℚ) / 5) ^ 2

end

end A170745.P2160367150176811436

/-! ## A170745.P15745093577851897466

`-Δ[-lcm(25, 2-a(n-1))]` with `a(0)=2, a(1)=1`
-/

namespace A170745.P15745093577851897466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  -(Int.lcm 25 (2 - f1 (n - 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A170745.P15745093577851897466

/-! ## A170745.P18242458769932169842

`and(25*a(A023443(n))+1, -2)` with `a(0)=1`
-/

namespace A170745.P18242458769932169842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (25 * a (A023443 n).toNat + 1) (-2)

end

end A170745.P18242458769932169842

/-! ## A170745.P13399103380047259346

`((1/5)²*A057427(n)+1)*25^n`
-/

namespace A170745.P13399103380047259346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((1 : ℚ) / 5) ^ 2 * (A057427 n : ℚ) + 1) * (25 ^ n : ℚ)

end

end A170745.P13399103380047259346

/-! ## A170745.P9884345883987888609

`A009970(n)-A106710(round(sqrt(n²+1)))`
-/

namespace A170745.P9884345883987888609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009970 n - A106710 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A170745.P9884345883987888609

/-!
# A170747: 

The programs for A170747, there is no canonical definition to state claims against.
-/

/-! ## A170747.P1356220492805111782

`27*a(n-1)` with `a(0)=1, a(1)=28`
-/

namespace A170747.P1356220492805111782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 28] fun n a =>
  27 * a (n - 1)

end

end A170747.P1356220492805111782

/-! ## A170747.P17650415821776498622

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=28, a(2)=27`
-/

namespace A170747.P17650415821776498622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 28, 27] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A170747.P17650415821776498622

/-! ## A170747.P12105021135692015836

`lcm(floor(27^(n-1)), a(n-1))` with `a(0)=1, a(1)=28`
-/

namespace A170747.P12105021135692015836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 28] fun n a =>
  Int.lcm ⌊(27 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (a (n - 1) : ℤ)

end

end A170747.P12105021135692015836

/-! ## A170747.P6675251177755555254

`abs(Δ[A287479(2*n)^3])`
-/

namespace A170747.P6675251177755555254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287479 (2 * n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A170747.P6675251177755555254

/-! ## A170747.P15261934457917928075

`Δ[floor(3^(n-1))]²*A082541(n)`
-/

namespace A170747.P15261934457917928075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A082541 n

end

end A170747.P15261934457917928075

/-! ## A170747.P12532615823317655653

`Δ[Δ[floor(3^(n-1))]]*A270472(n)`
-/

namespace A170747.P12532615823317655653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A270472 n

end

end A170747.P12532615823317655653

/-! ## A170747.P18080980915776472510

`∏{digits}[A059482(n), A288928(#)]`
-/

namespace A170747.P18080980915776472510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A288928 x).prod

end

end A170747.P18080980915776472510

/-! ## A170747.P1786858865848304321

`lcm(A082541(n), A326339(3*n))`
-/

namespace A170747.P1786858865848304321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A082541 n) (A326339 (3 * n))

end

end A170747.P1786858865848304321

/-! ## A170747.P1729624451618575457

`abs(Δ[A103312(A004271(3*n))])`
-/

namespace A170747.P1729624451618575457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 (A004271 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A170747.P1729624451618575457

/-!
# A170749: 

The programs for A170749, there is no canonical definition to state claims against.
-/

/-! ## A170749.P17957126285044022310

`29*a(n-1)` with `a(0)=1, a(1)=30`
-/

namespace A170749.P17957126285044022310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 30] fun n a =>
  29 * a (n - 1)

end

end A170749.P17957126285044022310

/-! ## A170749.P4227640631594236863

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=30, a(2)=29`
-/

namespace A170749.P4227640631594236863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 30, 29] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A170749.P4227640631594236863

/-! ## A170749.P5472779074613195690

`floor(29^n+29^n/29)`
-/

namespace A170749.P5472779074613195690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(29 ^ n : ℚ) + (29 ^ n : ℚ) / 29⌋

end

end A170749.P5472779074613195690

/-! ## A170749.P13226213273058970188

`∏{digits}[A086579(n), A105225(#)]`
-/

namespace A170749.P13226213273058970188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A105225 x).prod

end

end A170749.P13226213273058970188

/-!
# A170751: 

The programs for A170751, there is no canonical definition to state claims against.
-/

/-! ## A170751.P17661523715681650920

`31*a(n-1)` with `a(0)=1, a(1)=32`
-/

namespace A170751.P17661523715681650920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 32] fun n a =>
  31 * a (n - 1)

end

end A170751.P17661523715681650920

/-! ## A170751.P14274950249632073336

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=32, a(2)=31`
-/

namespace A170751.P14274950249632073336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 32, 31] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A170751.P14274950249632073336

/-! ## A170751.P6070541197836186025

`∏{digits}[A059482(n), A093680(#)]`
-/

namespace A170751.P6070541197836186025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A093680 x).prod

end

end A170751.P6070541197836186025

/-! ## A170751.P13074730022633506802

`round(A009975(n)+A009975(n)/31)`
-/

namespace A170751.P13074730022633506802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A009975 n : ℚ) + (A009975 n : ℚ) / 31)

end

end A170751.P13074730022633506802

/-!
# A170753: 

The programs for A170753, there is no canonical definition to state claims against.
-/

/-! ## A170753.P12186815976384541571

`33*a(n-1)` with `a(0)=1, a(1)=34`
-/

namespace A170753.P12186815976384541571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 34] fun n a =>
  33 * a (n - 1)

end

end A170753.P12186815976384541571

/-! ## A170753.P13407251942337195753

`floor(34*33^(n-1))`
-/

namespace A170753.P13407251942337195753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊34 * (33 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A170753.P13407251942337195753

/-! ## A170753.P1943904843524665936

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=34, a(2)=33`
-/

namespace A170753.P1943904843524665936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 34, 33] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A170753.P1943904843524665936

/-! ## A170753.P2948050367043140920

`∏{digits}[A059482(n), A043074(#)]`
-/

namespace A170753.P2948050367043140920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A043074 x).prod

end

end A170753.P2948050367043140920

/-!
# A170755: 

The programs for A170755, there is no canonical definition to state claims against.
-/

/-! ## A170755.P17338561071223993479

`35*a(n-1)` with `a(0)=1, a(1)=36`
-/

namespace A170755.P17338561071223993479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 36] fun n a =>
  35 * a (n - 1)

end

end A170755.P17338561071223993479

/-! ## A170755.P13491690439724029744

`floor(36*35^n/35)`
-/

namespace A170755.P13491690439724029744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊36 * ((35 ^ n : ℚ) / 35)⌋

end

end A170755.P13491690439724029744

/-! ## A170755.P11647465075429975144

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=36, a(2)=35`
-/

namespace A170755.P11647465075429975144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 36, 35] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A170755.P11647465075429975144

/-! ## A170755.P8313393584445567096

`A009979(n)+floor(35^n/35)`
-/

namespace A170755.P8313393584445567096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009979 n + ⌊(35 ^ n : ℚ) / 35⌋

end

end A170755.P8313393584445567096

/-! ## A170755.P4394808427397205936

`floor(6*5^(n-1))*A055272(n)`
-/

namespace A170755.P4394808427397205936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A055272 n

end

end A170755.P4394808427397205936

/-! ## A170755.P14602602385988087422

`ceil(4*7^(n-1))*A189274(n+1)`
-/

namespace A170755.P14602602385988087422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A189274 (n + 1)

end

end A170755.P14602602385988087422

/-! ## A170755.P9845277907711736942

`∑[A055270(n)]*A003948(n)`
-/

namespace A170755.P9845277907711736942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A003948 n

end

end A170755.P9845277907711736942

/-! ## A170755.P10786184479710501853

`A189274(n+1)*A270471(n)`
-/

namespace A170755.P10786184479710501853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189274 (n + 1) * A270471 n

end

end A170755.P10786184479710501853

/-! ## A170755.P4564610819877527137

`A285400(n)/3^n*A003948(n)`
-/

namespace A170755.P4564610819877527137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285400 n : ℚ) / (3 ^ n : ℚ) * (A003948 n : ℚ)

end

end A170755.P4564610819877527137

/-!
# A170757: 

The programs for A170757, there is no canonical definition to state claims against.
-/

/-! ## A170757.P14341064403245829377

`37*a(n-1)` with `a(0)=1, a(1)=38`
-/

namespace A170757.P14341064403245829377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 38] fun n a =>
  37 * a (n - 1)

end

end A170757.P14341064403245829377

/-! ## A170757.P811411406728304147

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=38, a(2)=37`
-/

namespace A170757.P811411406728304147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 38, 37] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A170757.P811411406728304147

/-!
# A170761: 

The programs for A170761, there is no canonical definition to state claims against.
-/

/-! ## A170761.P18177863728443360254

`41*a(n-1)` with `a(0)=1, a(1)=42`
-/

namespace A170761.P18177863728443360254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 42] fun n a =>
  41 * a (n - 1)

end

end A170761.P18177863728443360254

/-! ## A170761.P13483611677815917130

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=42, a(2)=41`
-/

namespace A170761.P13483611677815917130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 42, 41] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A170761.P13483611677815917130

/-! ## A170761.P2354448704107269261

`∏{digits}[A093137(n), A043069(#)]`
-/

namespace A170761.P2354448704107269261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A043069 x).prod

end

end A170761.P2354448704107269261

/-! ## A170761.P5660827041958692055

`A218744(n+1)-A218744(A028310(n)-1)`
-/

namespace A170761.P5660827041958692055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218744 (n + 1) - A218744 (A028310 n - 1).toNat

end

end A170761.P5660827041958692055

/-!
# A170763: 

The programs for A170763, there is no canonical definition to state claims against.
-/

/-! ## A170763.P16745893021451596252

`43*a(n-1)` with `a(0)=1, a(1)=44`
-/

namespace A170763.P16745893021451596252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 44] fun n a =>
  43 * a (n - 1)

end

end A170763.P16745893021451596252

/-! ## A170763.P6823989452160282947

`floor(44*43^(n-1))`
-/

namespace A170763.P6823989452160282947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊44 * (43 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A170763.P6823989452160282947

/-! ## A170763.P5490840119276364662

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=44, a(2)=43`
-/

namespace A170763.P5490840119276364662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 44, 43] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A170763.P5490840119276364662

/-! ## A170763.P2653329121307017165

`record[Δ[A132418(n)]*A132419(n)]`
-/

namespace A170763.P2653329121307017165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132418 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A132419 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170763.P2653329121307017165

/-!
# A170765: 

The programs for A170765, there is no canonical definition to state claims against.
-/

/-! ## A170765.P12633324616991614774

`45*a(n-1)` with `a(0)=1, a(1)=46`
-/

namespace A170765.P12633324616991614774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 46] fun n a =>
  45 * a (n - 1)

end

end A170765.P12633324616991614774

/-! ## A170765.P16669109077261372322

`floor(46*45^(n-1))`
-/

namespace A170765.P16669109077261372322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊46 * (45 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A170765.P16669109077261372322

/-! ## A170765.P17998927737818099112

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=46, a(2)=45`
-/

namespace A170765.P17998927737818099112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 46, 45] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A170765.P17998927737818099112

/-!
# A170769: 

The programs for A170769, there is no canonical definition to state claims against.
-/

/-! ## A170769.P14166230200705417890

`49*a(n-1)` with `a(0)=1, a(1)=50`
-/

namespace A170769.P14166230200705417890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 50] fun n a =>
  49 * a (n - 1)

end

end A170769.P14166230200705417890

/-! ## A170769.P9813995338033722854

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=50, a(2)=49`
-/

namespace A170769.P9813995338033722854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 50, 49] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A170769.P9813995338033722854

/-! ## A170769.P16882364631941935945

`floor(2*(5*7^(n-1))²)`
-/

namespace A170769.P16882364631941935945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (5 * (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2⌋

end

end A170769.P16882364631941935945

/-! ## A170769.P16440863237987728782

`∏{digits}[A093137(n), A043070(#)]`
-/

namespace A170769.P16440863237987728782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A043070 x).prod

end

end A170769.P16440863237987728782

/-! ## A170769.P9826862184894769843

`(ceil(sin(n)²)+1)*A196661(n)*A196661(n)`
-/

namespace A170769.P9826862184894769843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sin (n : ℝ) ^ 2⌉ + 1) * A196661 n * A196661 n

end

end A170769.P9826862184894769843

/-! ## A170769.P10104472142324675024

`(char[A002260(n+1)]+1)*A196661(n)*A196661(n)`
-/

namespace A170769.P10104472142324675024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) * A196661 n * A196661 n

end

end A170769.P10104472142324675024

/-! ## A170769.P3153708020653901678

`(char[A003990(n+1)]+1)*A196661(n)*A196661(n)`
-/

namespace A170769.P3153708020653901678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) * A196661 n * A196661 n

end

end A170769.P3153708020653901678

/-!
# A170770: Expansion of ( phi(q) * phi(q^63) + phi(-q) * phi(-q^63) + 4 * q^16 * psi(q^2) * psi(q^126) ) / 2 in powers of q^2 where phi(), psi() are Ramanujan theta functions.

The programs for A170770, there is no canonical definition to state claims against.
-/

/-! ## A170770.P12630193036852499653

`A010875(A002652(n)*A033578(n))`
-/

namespace A170770.P12630193036852499653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A002652 n * A033578 n).toNat

end

end A170770.P12630193036852499653

/-! ## A170770.P12572978376665172833

`A123721(or(1, A097703(2*n+1)))`
-/

namespace A170770.P12572978376665172833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123721 (Int.lor 1 (A097703 (2 * n + 1))).toNat

end

end A170770.P12572978376665172833

/-! ## A170770.P11660527502669814466

`and(A084795(A102625(n)), A286631(n))`
-/

namespace A170770.P11660527502669814466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084795 (A102625 n).toNat) (A286631 n)

end

end A170770.P11660527502669814466

/-! ## A170770.P14455020172462086318

`and(A008441(2*n), A057531(A339658(3*n+2)))`
-/

namespace A170770.P14455020172462086318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008441 (2 * n)) (A057531 (A339658 (3 * n + 2)).toNat)

end

end A170770.P14455020172462086318

/-! ## A170770.P9284324940139912481

`and(A000267(n), A035203(A103929(n)))`
-/

namespace A170770.P9284324940139912481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000267 n) (A035203 (A103929 n).toNat)

end

end A170770.P9284324940139912481

/-!
# A170771: Expansion of 2 * ( phi(q) * phi(q^7) * phi(q^9) * phi(q^63) + phi(-q) * phi(-q^7) * phi(-q^9) * phi(-q^63) + 4 * q^4 * f(-q^6)^2 * f(-q^42)^2 ) in powers of q^2 where phi(), psi(), and f() are Ramanujan theta functions.

The programs for A170771, there is no canonical definition to state claims against.
-/

/-! ## A170771.P4595268446667122530

`and(A056959(n+1), A313776(A000079(n)))`
-/

namespace A170771.P4595268446667122530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056959 (n + 1)) (A313776 (A000079 n).toNat)

end

end A170771.P4595268446667122530

/-! ## A170771.P6288122383243749928

`A170772(and(n, A128027(n+1)))`
-/

namespace A170771.P6288122383243749928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170772 (Int.land (n : ℤ) (A128027 (n + 1))).toNat

end

end A170771.P6288122383243749928

/-! ## A170771.P16117881729159892775

`A170772(n)/A007862(A026596(n))`
-/

namespace A170771.P16117881729159892775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170772 n : ℚ) / (A007862 (A026596 n).toNat : ℚ)

end

end A170771.P16117881729159892775

/-! ## A170771.P1080531304835756626

`gcd(A170772(A046826(n)), A170772(n))`
-/

namespace A170771.P1080531304835756626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170772 (A046826 n).toNat) (A170772 n)

end

end A170771.P1080531304835756626

/-! ## A170771.P17623139734614420489

`A170772(n)/A168508(A008457(2*n+1))`
-/

namespace A170771.P17623139734614420489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170772 n : ℚ) / (A168508 (A008457 (2 * n + 1)).toNat : ℚ)

end

end A170771.P17623139734614420489

/-!
# A170772: Expansion of ( phi(q) * phi(q^63) + phi(-q) * phi(-q^63) + 4 * q^16 * psi(q^2) * psi(q^126) ) ^ 2 in powers of q^2 where phi(), psi() are Ramanujan theta functions.

The programs for A170772, there is no canonical definition to state claims against.
-/

/-! ## A170772.P8077811633995135894

`4*A170773(n)`
-/

namespace A170772.P8077811633995135894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A170773 n

end

end A170772.P8077811633995135894

/-! ## A170772.P7474953770306906235

`A008586(A170773(n))`
-/

namespace A170772.P7474953770306906235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A170773 n).toNat

end

end A170772.P7474953770306906235

/-! ## A170772.P5960525496716587530

`A129760(A016813(A170773(n))+1)`
-/

namespace A170772.P5960525496716587530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A016813 (A170773 n).toNat + 1).toNat

end

end A170772.P5960525496716587530

/-! ## A170772.P14810568016613516247

`A005843(A005408(A170773(n))-1)`
-/

namespace A170772.P14810568016613516247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005408 (A170773 n).toNat - 1).toNat

end

end A170772.P14810568016613516247

/-! ## A170772.P5116782955019447682

`A022998(A170773(n)+A170773(n))`
-/

namespace A170772.P5116782955019447682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A170773 n + A170773 n).toNat

end

end A170772.P5116782955019447682

/-! ## A170772.P6007188258322223959

`A016825(A170773(n)+n)-A016825(n)`
-/

namespace A170772.P6007188258322223959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A170773 n + (n : ℤ)).toNat - A016825 n

end

end A170772.P6007188258322223959

/-! ## A170772.P6355531044987680886

`A016825(A170773(n))-A020639(A016825(n))`
-/

namespace A170772.P6355531044987680886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A170773 n).toNat - A020639 (A016825 n).toNat

end

end A170772.P6355531044987680886

/-! ## A170772.P15267792446689841996

`A005843(A005843(A170773(n)%A038552(n+1)))`
-/

namespace A170772.P15267792446689841996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005843 (Int.tmod (A170773 n) (A038552 (n + 1))).toNat).toNat

end

end A170772.P15267792446689841996

/-! ## A170772.P2816695596925143025

`A027709(A170773(n)²)`
-/

namespace A170772.P2816695596925143025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A170773 n ^ 2).toNat

end

end A170772.P2816695596925143025

/-!
# A170773: Expansion of ( phi(q) * phi(q^7) * phi(q^9) * phi(q^63) + phi(-q) * phi(-q^7) * phi(-q^9) * phi(-q^63) + 4 * q^4 * f(-q^6)^2 * f(-q^42)^2 + 16 * q^20 * psi(q^2) * psi(q^14) * psi(q^18) * psi(q^126) ) / 2 in powers of q^2 where phi(), psi(), and f() are Ramanujan theta functions.

The programs for A170773, there is no canonical definition to state claims against.
-/

/-! ## A170773.P4134574396184539309

`A170772(n)/4`
-/

namespace A170773.P4134574396184539309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170772 n : ℚ) / 4

end

end A170773.P4134574396184539309

/-! ## A170773.P7119091314345950500

`A002265(A170772(n))`
-/

namespace A170773.P7119091314345950500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A170772 n).toNat

end

end A170773.P7119091314345950500

/-! ## A170773.P12987811330312698214

`A025480(A170772(n)+1)`
-/

namespace A170773.P12987811330312698214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A170772 n + 1).toNat

end

end A170773.P12987811330312698214

/-! ## A170773.P592481413627659329

`A025480(or(1, A170772(n)))`
-/

namespace A170773.P592481413627659329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.lor 1 (A170772 n)).toNat

end

end A170773.P592481413627659329

/-! ## A170773.P13594270342461440707

`4^A008683(A240233(n+1))*A170772(n)`
-/

namespace A170773.P13594270342461440707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A008683 (A240233 (n + 1)).toNat : ℤ) * (A170772 n : ℚ)

end

end A170773.P13594270342461440707

/-! ## A170773.P8013367168216938865

`4^A008683(A244572(n+2))*A170772(n)`
-/

namespace A170773.P8013367168216938865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A008683 (A244572 (n + 2)).toNat : ℤ) * (A170772 n : ℚ)

end

end A170773.P8013367168216938865

/-!
# A170774: a(n) = n^8*(n^2+1)/2.

The programs for A170774, the canonical program `A170774.P5304621275993890492` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170774 has offset 0).

The definition of A170774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170774.P5304621275993890492

`n^8*(n²+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170774

/-- `n^8*(n²+1)/2` -/
def P5304621275993890492.Spec : Prop :=
  ∀ n, P5304621275993890492.a n = (A170774 n : ℚ)

end A170774

/-! ## A170774.P11079645906710229717

`A170784(n)/A028310(n)`
-/

namespace A170774.P11079645906710229717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170784 n : ℚ) / (A028310 n : ℚ)

end

end A170774.P11079645906710229717

namespace A170774

/-- `A170784(n)/A028310(n)` -/
def P11079645906710229717.Spec : Prop :=
  ∀ n, P11079645906710229717.a n = (A170774 n : ℚ)

end A170774

/-! ## A170774.P7250562661913542392

`gcd(A170782(n), A170784(n))`
-/

namespace A170774.P7250562661913542392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170782 n) (A170784 n)

end

end A170774.P7250562661913542392

namespace A170774

/-- `gcd(A170782(n), A170784(n))` -/
def P7250562661913542392.Spec : Prop :=
  ∀ n, (P7250562661913542392.a n : ℤ) = A170774 n

end A170774

/-! ## A170774.P12395060590148288508

`A168635(n)+A168660(n)-A001015(n)`
-/

namespace A170774.P12395060590148288508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168635 n + (A168660 n - A001015 n)

end

end A170774.P12395060590148288508

namespace A170774

/-- `A168635(n)+A168660(n)-A001015(n)` -/
def P12395060590148288508.Spec : Prop :=
  ∀ n, P12395060590148288508.a n = A170774 n

end A170774

/-! ## A170774.P15950299072006253208

`A168067(n)+A168660(n)-A168029(n)`
-/

namespace A170774.P15950299072006253208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168067 n + (A168660 n - A168029 n)

end

end A170774.P15950299072006253208

namespace A170774

/-- `A168067(n)+A168660(n)-A168029(n)` -/
def P15950299072006253208.Spec : Prop :=
  ∀ n, P15950299072006253208.a n = A170774 n

end A170774

/-! ## A170774.P10408161240089650194

`A168067(n)+A170793(n)-A168119(n)`
-/

namespace A170774.P10408161240089650194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168067 n + (A170793 n - A168119 n)

end

end A170774.P10408161240089650194

namespace A170774

/-- `A168067(n)+A170793(n)-A168119(n)` -/
def P10408161240089650194.Spec : Prop :=
  ∀ n, P10408161240089650194.a n = A170774 n

end A170774

/-! ## A170774.P12796421275368227324

`A019583(n²+1)`
-/

namespace A170774.P12796421275368227324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019583 (n ^ 2 + 1)

end

end A170774.P12796421275368227324

namespace A170774

/-- `A019583(n²+1)` -/
def P12796421275368227324.Spec : Prop :=
  ∀ n, P12796421275368227324.a n = A170774 n

end A170774

/-! ## A170774.P17586159211852924673

`A101362(n²)/2`
-/

namespace A170774.P17586159211852924673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101362 (n ^ 2) : ℚ) / 2

end

end A170774.P17586159211852924673

namespace A170774

/-- `A101362(n²)/2` -/
def P17586159211852924673.Spec : Prop :=
  ∀ n, P17586159211852924673.a n = (A170774 n : ℚ)

end A170774

/-!
# A170775: a(n) = n^8*(n^3 + 1)/2.

The programs for A170775, the canonical program `A170775.P5480049567760088442` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170775 has offset 0).

The definition of A170775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170775.P5480049567760088442

`n^8*(n^3+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170775

/-- `n^8*(n^3+1)/2` -/
def P5480049567760088442.Spec : Prop :=
  ∀ n, P5480049567760088442.a n = (A170775 n : ℚ)

end A170775

/-! ## A170775.P1661658917165185917

`lcm(n, n²*A168555(n))`
-/

namespace A170775.P1661658917165185917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n ^ 2 : ℤ) * A168555 n)

end

end A170775.P1661658917165185917

namespace A170775

/-- `lcm(n, n²*A168555(n))` -/
def P1661658917165185917.Spec : Prop :=
  ∀ n, (P1661658917165185917.a n : ℤ) = A170775 n

end A170775

/-! ## A170775.P6299371069643376242

`gcd(A170781(n), A170785(n))`
-/

namespace A170775.P6299371069643376242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170781 n) (A170785 n)

end

end A170775.P6299371069643376242

namespace A170775

/-- `gcd(A170781(n), A170785(n))` -/
def P6299371069643376242.Spec : Prop :=
  ∀ n, (P6299371069643376242.a n : ℤ) = A170775 n

end A170775

/-! ## A170775.P5653395451816263755

`lcm(A027441(n), A168675(n))`
-/

namespace A170775.P5653395451816263755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027441 n) (A168675 n)

end

end A170775.P5653395451816263755

namespace A170775

/-- `lcm(A027441(n), A168675(n))` -/
def P5653395451816263755.Spec : Prop :=
  ∀ n, (P5653395451816263755.a n : ℤ) = A170775 n

end A170775

/-! ## A170775.P17938130533451456434

`A170795(n)/A028310(n)²`
-/

namespace A170775.P17938130533451456434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170795 n : ℚ) / (A028310 n ^ 2 : ℚ)

end

end A170775.P17938130533451456434

namespace A170775

/-- `A170795(n)/A028310(n)²` -/
def P17938130533451456434.Spec : Prop :=
  ∀ n, P17938130533451456434.a n = (A170775 n : ℚ)

end A170775

/-! ## A170775.P13789838816469895470

`(A008455(n)+A001016(n))/2`
-/

namespace A170775.P13789838816469895470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008455 n + A001016 n : ℚ) / 2

end

end A170775.P13789838816469895470

namespace A170775

/-- `(A008455(n)+A001016(n))/2` -/
def P13789838816469895470.Spec : Prop :=
  ∀ n, P13789838816469895470.a n = (A170775 n : ℚ)

end A170775

/-! ## A170775.P15800047908676669196

`(A008455(n)+A000583(n)²)/2`
-/

namespace A170775.P15800047908676669196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008455 n + A000583 n ^ 2 : ℚ) / 2

end

end A170775.P15800047908676669196

namespace A170775

/-- `(A008455(n)+A000583(n)²)/2` -/
def P15800047908676669196.Spec : Prop :=
  ∀ n, P15800047908676669196.a n = (A170775 n : ℚ)

end A170775

/-! ## A170775.P12536950857122990575

`n*A168660(n)/A020985(n)²`
-/

namespace A170775.P12536950857122990575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A168660 n : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A170775.P12536950857122990575

namespace A170775

/-- `n*A168660(n)/A020985(n)²` -/
def P12536950857122990575.Spec : Prop :=
  ∀ n, P12536950857122990575.a n = (A170775 n : ℚ)

end A170775

/-! ## A170775.P9608257862071595937

`n²²*A168555(n)/A253909(n)`
-/

namespace A170775.P9608257862071595937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2 : ℤ) * A168555 n : ℚ) / (A253909 n : ℚ)

end

end A170775.P9608257862071595937

namespace A170775

/-- `n²²*A168555(n)/A253909(n)` -/
def P9608257862071595937.Spec : Prop :=
  ∀ n, P9608257862071595937.a n = (A170775 n : ℚ)

end A170775

/-! ## A170775.P2396024809525731475

`A168635(n)+A168661(n)-A001015(n)`
-/

namespace A170775.P2396024809525731475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168635 n + (A168661 n - A001015 n)

end

end A170775.P2396024809525731475

namespace A170775

/-- `A168635(n)+A168661(n)-A001015(n)` -/
def P2396024809525731475.Spec : Prop :=
  ∀ n, P2396024809525731475.a n = A170775 n

end A170775

/-! ## A170775.P11135689487020659103

`A168067(n)+A168661(n)-A168029(n)`
-/

namespace A170775.P11135689487020659103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168067 n + (A168661 n - A168029 n)

end

end A170775.P11135689487020659103

namespace A170775

/-- `A168067(n)+A168661(n)-A168029(n)` -/
def P11135689487020659103.Spec : Prop :=
  ∀ n, P11135689487020659103.a n = A170775 n

end A170775

/-! ## A170775.P10308899944628404791

`lcm(A168371(n), A170783(n))/A028310(n)`
-/

namespace A170775.P10308899944628404791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A168371 n) (A170783 n) : ℚ) / (A028310 n : ℚ)

end

end A170775.P10308899944628404791

namespace A170775

/-- `lcm(A168371(n), A170783(n))/A028310(n)` -/
def P10308899944628404791.Spec : Prop :=
  ∀ n, P10308899944628404791.a n = (A170775 n : ℚ)

end A170775

/-! ## A170775.P4881043921427295695

`A170795(n)/A065033(2*n)²`
-/

namespace A170775.P4881043921427295695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170795 n : ℚ) / (A065033 (2 * n) ^ 2 : ℚ)

end

end A170775.P4881043921427295695

namespace A170775

/-- `A170795(n)/A065033(2*n)²` -/
def P4881043921427295695.Spec : Prop :=
  ∀ n, P4881043921427295695.a n = (A170775 n : ℚ)

end A170775

/-! ## A170775.P4862890511425250292

`A170795(n)/A007318(A000124(n))²`
-/

namespace A170775.P4862890511425250292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170795 n : ℚ) / (A007318 (A000124 n).toNat ^ 2 : ℚ)

end

end A170775.P4862890511425250292

namespace A170775

/-- `A170795(n)/A007318(A000124(n))²` -/
def P4862890511425250292.Spec : Prop :=
  ∀ n, P4862890511425250292.a n = (A170775 n : ℚ)

end A170775

/-! ## A170775.P821919351941940739

`A170795(n)/A028310(n*A028310(n))`
-/

namespace A170775.P821919351941940739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170795 n : ℚ) / (A028310 ((n : ℤ) * A028310 n).toNat : ℚ)

end

end A170775.P821919351941940739

namespace A170775

/-- `A170795(n)/A028310(n*A028310(n))` -/
def P821919351941940739.Spec : Prop :=
  ∀ n, P821919351941940739.a n = (A170775 n : ℚ)

end A170775

/-!
# A170776: a(n) = n^8*(n^4 + 1)/2.

The programs for A170776, the canonical program `A170776.P14603059250925239162` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170776 has offset 0).

The definition of A170776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170776.P14603059250925239162

`n^8*(n^4+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170776

/-- `n^8*(n^4+1)/2` -/
def P14603059250925239162.Spec : Prop :=
  ∀ n, P14603059250925239162.a n = (A170776 n : ℚ)

end A170776

/-! ## A170776.P5452767477637987437

`A170786(n)/A028310(n)`
-/

namespace A170776.P5452767477637987437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170786 n : ℚ) / (A028310 n : ℚ)

end

end A170776.P5452767477637987437

namespace A170776

/-- `A170786(n)/A028310(n)` -/
def P5452767477637987437.Spec : Prop :=
  ∀ n, P5452767477637987437.a n = (A170776 n : ℚ)

end A170776

/-! ## A170776.P1165475688045539170

`-A001489(n)*A168661(n)`
-/

namespace A170776.P1165475688045539170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A168661 n)

end

end A170776.P1165475688045539170

namespace A170776

/-- `-A001489(n)*A168661(n)` -/
def P1165475688045539170.Spec : Prop :=
  ∀ n, P1165475688045539170.a n = A170776 n

end A170776

/-! ## A170776.P2478431168689534453

`A170796(n)/A028310(n)²`
-/

namespace A170776.P2478431168689534453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170796 n : ℚ) / (A028310 n ^ 2 : ℚ)

end

end A170776.P2478431168689534453

namespace A170776

/-- `A170796(n)/A028310(n)²` -/
def P2478431168689534453.Spec : Prop :=
  ∀ n, P2478431168689534453.a n = (A170776 n : ℚ)

end A170776

/-! ## A170776.P16009385917078059043

`(A001016(n)+A001014(n)²)/2`
-/

namespace A170776.P16009385917078059043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001016 n + A001014 n ^ 2 : ℚ) / 2

end

end A170776.P16009385917078059043

namespace A170776

/-- `(A001016(n)+A001014(n)²)/2` -/
def P16009385917078059043.Spec : Prop :=
  ∀ n, P16009385917078059043.a n = (A170776 n : ℚ)

end A170776

/-! ## A170776.P16394257128779303271

`A000583(n)²*A002523(n)/2`
-/

namespace A170776.P16394257128779303271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n ^ 2 * A002523 n : ℚ) / 2

end

end A170776.P16394257128779303271

namespace A170776

/-- `A000583(n)²*A002523(n)/2` -/
def P16394257128779303271.Spec : Prop :=
  ∀ n, P16394257128779303271.a n = (A170776 n : ℚ)

end A170776

/-! ## A170776.P13490515790314543057

`A168564(n)/(1/A028310(n))²`
-/

namespace A170776.P13490515790314543057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168564 n : ℚ) / (1 / (A028310 n : ℚ)) ^ 2

end

end A170776.P13490515790314543057

namespace A170776

/-- `A168564(n)/(1/A028310(n))²` -/
def P13490515790314543057.Spec : Prop :=
  ∀ n, P13490515790314543057.a n = (A170776 n : ℚ)

end A170776

/-! ## A170776.P3971163160208273382

`A168635(n)+A168662(n)-A001015(n)`
-/

namespace A170776.P3971163160208273382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168635 n + (A168662 n - A001015 n)

end

end A170776.P3971163160208273382

namespace A170776

/-- `A168635(n)+A168662(n)-A001015(n)` -/
def P3971163160208273382.Spec : Prop :=
  ∀ n, P3971163160208273382.a n = A170776 n

end A170776

/-! ## A170776.P3772378122587192115

`A002604(n)*A168122(n)-A168122(n)`
-/

namespace A170776.P3772378122587192115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 n * A168122 n - A168122 n

end

end A170776.P3772378122587192115

namespace A170776

/-- `A002604(n)*A168122(n)-A168122(n)` -/
def P3772378122587192115.Spec : Prop :=
  ∀ n, P3772378122587192115.a n = A170776 n

end A170776

/-! ## A170776.P768528157293746078

`ceil(A170796(n)/A233583(n+1)²)`
-/

namespace A170776.P768528157293746078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A170796 n : ℚ) / (A233583 (n + 1) ^ 2 : ℚ)⌉

end

end A170776.P768528157293746078

namespace A170776

/-- `ceil(A170796(n)/A233583(n+1)²)` -/
def P768528157293746078.Spec : Prop :=
  ∀ n, P768528157293746078.a n = A170776 n

end A170776

/-! ## A170776.P15289319576189501057

`A170786(n)/A007318(A000124(n))`
-/

namespace A170776.P15289319576189501057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170786 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A170776.P15289319576189501057

namespace A170776

/-- `A170786(n)/A007318(A000124(n))` -/
def P15289319576189501057.Spec : Prop :=
  ∀ n, P15289319576189501057.a n = (A170776 n : ℚ)

end A170776

/-! ## A170776.P8748830700047530047

`A170796(n)/A007318(A000124(n))²`
-/

namespace A170776.P8748830700047530047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170796 n : ℚ) / (A007318 (A000124 n).toNat ^ 2 : ℚ)

end

end A170776.P8748830700047530047

namespace A170776

/-- `A170796(n)/A007318(A000124(n))²` -/
def P8748830700047530047.Spec : Prop :=
  ∀ n, P8748830700047530047.a n = (A170776 n : ℚ)

end A170776

/-! ## A170776.P5080340644693117782

`A168527(n)+A085744(n²)`
-/

namespace A170776.P5080340644693117782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168527 n + A085744 (n ^ 2)

end

end A170776.P5080340644693117782

namespace A170776

/-- `A168527(n)+A085744(n²)` -/
def P5080340644693117782.Spec : Prop :=
  ∀ n, P5080340644693117782.a n = A170776 n

end A170776

/-! ## A170776.P8117538735386001900

`A168364(n²)/A253909(n)`
-/

namespace A170776.P8117538735386001900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168364 (n ^ 2) : ℚ) / (A253909 n : ℚ)

end

end A170776.P8117538735386001900

namespace A170776

/-- `A168364(n²)/A253909(n)` -/
def P8117538735386001900.Spec : Prop :=
  ∀ n, P8117538735386001900.a n = (A170776 n : ℚ)

end A170776

/-! ## A170776.P12896860033632191153

`A168364(n²)/A028310(n²)`
-/

namespace A170776.P12896860033632191153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168364 (n ^ 2) : ℚ) / (A028310 (n ^ 2) : ℚ)

end

end A170776.P12896860033632191153

namespace A170776

/-- `A168364(n²)/A028310(n²)` -/
def P12896860033632191153.Spec : Prop :=
  ∀ n, P12896860033632191153.a n = (A170776 n : ℚ)

end A170776

/-! ## A170776.P6009759710087993527

`A168192(n²)`
-/

namespace A170776.P6009759710087993527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168192 (n ^ 2)

end

end A170776.P6009759710087993527

namespace A170776

/-- `A168192(n²)` -/
def P6009759710087993527.Spec : Prop :=
  ∀ n, P6009759710087993527.a n = A170776 n

end A170776

/-! ## A170776.P14203375711782785101

`record[A168192(A073254(n))]`
-/

namespace A170776.P14203375711782785101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168192 (A073254 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170776.P14203375711782785101

namespace A170776

/-- `record[A168192(A073254(n))]` -/
def P14203375711782785101.Spec : Prop :=
  ∀ n, P14203375711782785101.a n = A170776 n

end A170776

/-! ## A170776.P9090503305429102857

`lcm(n, A168192(A000290(n)))`
-/

namespace A170776.P9090503305429102857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A168192 (A000290 n).toNat)

end

end A170776.P9090503305429102857

namespace A170776

/-- `lcm(n, A168192(A000290(n)))` -/
def P9090503305429102857.Spec : Prop :=
  ∀ n, (P9090503305429102857.a n : ℤ) = A170776 n

end A170776

/-! ## A170776.P10585375023403361262

`record[A168192(n*A010052(n))]`
-/

namespace A170776.P10585375023403361262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168192 ((n : ℤ) * A010052 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170776.P10585375023403361262

namespace A170776

/-- `record[A168192(n*A010052(n))]` -/
def P10585375023403361262.Spec : Prop :=
  ∀ n, P10585375023403361262.a n = A170776 n

end A170776

/-! ## A170776.P14216588084573540469

`A163274(n²)-A000584(n²)`
-/

namespace A170776.P14216588084573540469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163274 (n ^ 2) - A000584 (n ^ 2)

end

end A170776.P14216588084573540469

namespace A170776

/-- `A163274(n²)-A000584(n²)` -/
def P14216588084573540469.Spec : Prop :=
  ∀ n, P14216588084573540469.a n = A170776 n

end A170776

/-!
# A170777: a(n) = n^8*(n^5 + 1)/2.

The programs for A170777, the canonical program `A170777.P16041752736546056545` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170777 has offset 0).

The definition of A170777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170777.P16041752736546056545

`n^8*(n^5+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170777

/-- `n^8*(n^5+1)/2` -/
def P16041752736546056545.Spec : Prop :=
  ∀ n, P16041752736546056545.a n = (A170777 n : ℚ)

end A170777

/-! ## A170777.P11785098984177608501

`lcm(A071236(n), A168675(n))`
-/

namespace A170777.P11785098984177608501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071236 n) (A168675 n)

end

end A170777.P11785098984177608501

namespace A170777

/-- `lcm(A071236(n), A168675(n))` -/
def P11785098984177608501.Spec : Prop :=
  ∀ n, (P11785098984177608501.a n : ℤ) = A170777 n

end A170777

/-! ## A170777.P943494085467508974

`-A001489(n)*A168662(n)`
-/

namespace A170777.P943494085467508974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A168662 n)

end

end A170777.P943494085467508974

namespace A170777

/-- `-A001489(n)*A168662(n)` -/
def P943494085467508974.Spec : Prop :=
  ∀ n, P943494085467508974.a n = A170777 n

end A170777

/-! ## A170777.P2183359344199501203

`2*A170787(n)/A004277(n)`
-/

namespace A170777.P2183359344199501203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A170787 n : ℚ) / (A004277 n : ℚ)

end

end A170777.P2183359344199501203

namespace A170777

/-- `2*A170787(n)/A004277(n)` -/
def P2183359344199501203.Spec : Prop :=
  ∀ n, P2183359344199501203.a n = (A170777 n : ℚ)

end A170777

/-! ## A170777.P15226818220985868232

`lcm(n*A168635(n), A168627(n))`
-/

namespace A170777.P15226818220985868232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) * A168635 n) (A168627 n)

end

end A170777.P15226818220985868232

namespace A170777

/-- `lcm(n*A168635(n), A168627(n))` -/
def P15226818220985868232.Spec : Prop :=
  ∀ n, (P15226818220985868232.a n : ℤ) = A170777 n

end A170777

/-! ## A170777.P968110746425492941

`(A010801(n)+A000583(n)²)/2`
-/

namespace A170777.P968110746425492941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010801 n + A000583 n ^ 2 : ℚ) / 2

end

end A170777.P968110746425492941

namespace A170777

/-- `(A010801(n)+A000583(n)²)/2` -/
def P968110746425492941.Spec : Prop :=
  ∀ n, P968110746425492941.a n = (A170777 n : ℚ)

end A170777

/-! ## A170777.P2357335498908265852

`A168196(n)/(1/A253909(n))²`
-/

namespace A170777.P2357335498908265852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168196 n : ℚ) / (1 / (A253909 n : ℚ)) ^ 2

end

end A170777.P2357335498908265852

namespace A170777

/-- `A168196(n)/(1/A253909(n))²` -/
def P2357335498908265852.Spec : Prop :=
  ∀ n, P2357335498908265852.a n = (A170777 n : ℚ)

end A170777

/-! ## A170777.P7656479931761450170

`abs(n*A001489(n)*A168627(n))`
-/

namespace A170777.P7656479931761450170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A001489 n * A168627 n)|

end

end A170777.P7656479931761450170

namespace A170777

/-- `abs(n*A001489(n)*A168627(n))` -/
def P7656479931761450170.Spec : Prop :=
  ∀ n, P7656479931761450170.a n = A170777 n

end A170777

/-! ## A170777.P9150595042027796181

`n²²*A168627(n)/A253909(n)`
-/

namespace A170777.P9150595042027796181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2 : ℤ) * A168627 n : ℚ) / (A253909 n : ℚ)

end

end A170777.P9150595042027796181

namespace A170777

/-- `n²²*A168627(n)/A253909(n)` -/
def P9150595042027796181.Spec : Prop :=
  ∀ n, P9150595042027796181.a n = (A170777 n : ℚ)

end A170777

/-! ## A170777.P3430706651240832821

`A170787(n)/A110654(A004277(n))`
-/

namespace A170777.P3430706651240832821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170787 n : ℚ) / (A110654 (A004277 n).toNat : ℚ)

end

end A170777.P3430706651240832821

namespace A170777

/-- `A170787(n)/A110654(A004277(n))` -/
def P3430706651240832821.Spec : Prop :=
  ∀ n, P3430706651240832821.a n = (A170777 n : ℚ)

end A170777

/-! ## A170777.P16115166514517402650

`ceil(A170787(n)/A233583(n+1))`
-/

namespace A170777.P16115166514517402650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A170787 n : ℚ) / (A233583 (n + 1) : ℚ)⌉

end

end A170777.P16115166514517402650

namespace A170777

/-- `ceil(A170787(n)/A233583(n+1))` -/
def P16115166514517402650.Spec : Prop :=
  ∀ n, P16115166514517402650.a n = A170777 n

end A170777

/-! ## A170777.P4247938535878554740

`round(n*log2(A000079(n))*A168627(n))`
-/

namespace A170777.P4247938535878554740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (Real.logb 2 (A000079 n : ℝ) * (A168627 n : ℝ)))

end

end A170777.P4247938535878554740

namespace A170777

/-- `round(n*log2(A000079(n))*A168627(n))` -/
def P4247938535878554740.Spec : Prop :=
  ∀ n, P4247938535878554740.a n = A170777 n

end A170777

/-! ## A170777.P1813360762174462515

`A170787(n)/A137735(n²)`
-/

namespace A170777.P1813360762174462515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170787 n : ℚ) / (A137735 (n ^ 2) : ℚ)

end

end A170777.P1813360762174462515

namespace A170777

/-- `A170787(n)/A137735(n²)` -/
def P1813360762174462515.Spec : Prop :=
  ∀ n, P1813360762174462515.a n = (A170777 n : ℚ)

end A170777

/-!
# A170778: a(n) = n^8*(n^6 + 1)/2.

The programs for A170778, the canonical program `A170778.P14052014020029292462` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170778 has offset 0).

The definition of A170778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170778.P14052014020029292462

`n^8*(n^6+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170778

/-- `n^8*(n^6+1)/2` -/
def P14052014020029292462.Spec : Prop :=
  ∀ n, P14052014020029292462.a n = (A170778 n : ℚ)

end A170778

/-! ## A170778.P12352329946108169836

`(A000583(n)²+(n^7)²)/2`
-/

namespace A170778.P12352329946108169836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n ^ 2 + ((n ^ 7) ^ 2 : ℤ) : ℚ) / 2

end

end A170778.P12352329946108169836

namespace A170778

/-- `(A000583(n)²+(n^7)²)/2` -/
def P12352329946108169836.Spec : Prop :=
  ∀ n, P12352329946108169836.a n = (A170778 n : ℚ)

end A170778

/-! ## A170778.P2520863223700716056

`lcm(A060886(n), A170774(n))`
-/

namespace A170778.P2520863223700716056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060886 n) (A170774 n)

end

end A170778.P2520863223700716056

namespace A170778

/-- `lcm(A060886(n), A170774(n))` -/
def P2520863223700716056.Spec : Prop :=
  ∀ n, (P2520863223700716056.a n : ℤ) = A170778 n

end A170778

/-! ## A170778.P15079984950092756657

`-A001489(n)*A168663(n)`
-/

namespace A170778.P15079984950092756657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A168663 n)

end

end A170778.P15079984950092756657

namespace A170778

/-- `-A001489(n)*A168663(n)` -/
def P15079984950092756657.Spec : Prop :=
  ∀ n, P15079984950092756657.a n = A170778 n

end A170778

/-! ## A170778.P16844488719284284626

`(A001016(n)+A001015(n)²)/2`
-/

namespace A170778.P16844488719284284626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001016 n + A001015 n ^ 2 : ℚ) / 2

end

end A170778.P16844488719284284626

namespace A170778

/-- `(A001016(n)+A001015(n)²)/2` -/
def P16844488719284284626.Spec : Prop :=
  ∀ n, P16844488719284284626.a n = (A170778 n : ℚ)

end A170778

/-! ## A170778.P16129355790919077078

`n²*A168663(n)/A028310(n)`
-/

namespace A170778.P16129355790919077078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A168663 n : ℚ) / (A028310 n : ℚ)

end

end A170778.P16129355790919077078

namespace A170778

/-- `n²*A168663(n)/A028310(n)` -/
def P16129355790919077078.Spec : Prop :=
  ∀ n, P16129355790919077078.a n = (A170778 n : ℚ)

end A170778

/-! ## A170778.P2742941010150043351

`(n+1)*A170777(n)-A170786(n)`
-/

namespace A170778.P2742941010150043351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A170777 n - A170786 n

end

end A170778.P2742941010150043351

namespace A170778

/-- `(n+1)*A170777(n)-A170786(n)` -/
def P2742941010150043351.Spec : Prop :=
  ∀ n, P2742941010150043351.a n = A170778 n

end A170778

/-! ## A170778.P15533357505671607970

`A002604(n)*A168124(n)-A168124(n)`
-/

namespace A170778.P15533357505671607970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 n * A168124 n - A168124 n

end

end A170778.P15533357505671607970

namespace A170778

/-- `A002604(n)*A168124(n)-A168124(n)` -/
def P15533357505671607970.Spec : Prop :=
  ∀ n, P15533357505671607970.a n = A170778 n

end A170778

/-! ## A170778.P6906129912492131692

`A168371(n²)/A253909(n)`
-/

namespace A170778.P6906129912492131692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168371 (n ^ 2) : ℚ) / (A253909 n : ℚ)

end

end A170778.P6906129912492131692

namespace A170778

/-- `A168371(n²)/A253909(n)` -/
def P6906129912492131692.Spec : Prop :=
  ∀ n, P6906129912492131692.a n = (A170778 n : ℚ)

end A170778

/-! ## A170778.P6434054501386830035

`A168371(n²)/A028310(n²)`
-/

namespace A170778.P6434054501386830035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168371 (n ^ 2) : ℚ) / (A028310 (n ^ 2) : ℚ)

end

end A170778.P6434054501386830035

namespace A170778

/-- `A168371(n²)/A028310(n²)` -/
def P6434054501386830035.Spec : Prop :=
  ∀ n, P6434054501386830035.a n = (A170778 n : ℚ)

end A170778

/-! ## A170778.P15806210587788961974

`A168555(n²)/A253909(n)²`
-/

namespace A170778.P15806210587788961974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168555 (n ^ 2) : ℚ) / (A253909 n ^ 2 : ℚ)

end

end A170778.P15806210587788961974

namespace A170778

/-- `A168555(n²)/A253909(n)²` -/
def P15806210587788961974.Spec : Prop :=
  ∀ n, P15806210587788961974.a n = (A170778 n : ℚ)

end A170778

/-! ## A170778.P4358537095846508737

`A168194(n²)`
-/

namespace A170778.P4358537095846508737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168194 (n ^ 2)

end

end A170778.P4358537095846508737

namespace A170778

/-- `A168194(n²)` -/
def P4358537095846508737.Spec : Prop :=
  ∀ n, P4358537095846508737.a n = A170778 n

end A170778

/-! ## A170778.P16608115836305127926

`lcm(n, A168194(A000290(n)))`
-/

namespace A170778.P16608115836305127926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A168194 (A000290 n).toNat)

end

end A170778.P16608115836305127926

namespace A170778

/-- `lcm(n, A168194(A000290(n)))` -/
def P16608115836305127926.Spec : Prop :=
  ∀ n, (P16608115836305127926.a n : ℤ) = A170778 n

end A170778

/-! ## A170778.P3784580333614227008

`record[A168194(n*A010052(n))]`
-/

namespace A170778.P3784580333614227008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168194 ((n : ℤ) * A010052 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170778.P3784580333614227008

namespace A170778

/-- `record[A168194(n*A010052(n))]` -/
def P3784580333614227008.Spec : Prop :=
  ∀ n, P3784580333614227008.a n = A170778 n

end A170778

/-! ## A170778.P2869044371146309834

`A168194(A000290(n))%A283027(n+2)`
-/

namespace A170778.P2869044371146309834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168194 (A000290 n).toNat) (A283027 (n + 2))

end

end A170778.P2869044371146309834

namespace A170778

/-- `A168194(A000290(n))%A283027(n+2)` -/
def P2869044371146309834.Spec : Prop :=
  ∀ n, P2869044371146309834.a n = A170778 n

end A170778

/-!
# A170779: a(n) = n^8*(n^7 + 1)/2.

The programs for A170779, the canonical program `A170779.P12749133391038113910` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170779 has offset 0).

The definition of A170779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170779.P12749133391038113910

`n^8*(n^7+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170779

/-- `n^8*(n^7+1)/2` -/
def P12749133391038113910.Spec : Prop :=
  ∀ n, P12749133391038113910.a n = (A170779 n : ℚ)

end A170779

/-! ## A170779.P11490448099013844957

`(A010803(n)+A001016(n))/2`
-/

namespace A170779.P11490448099013844957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010803 n + A001016 n : ℚ) / 2

end

end A170779.P11490448099013844957

namespace A170779

/-- `(A010803(n)+A001016(n))/2` -/
def P11490448099013844957.Spec : Prop :=
  ∀ n, P11490448099013844957.a n = (A170779 n : ℚ)

end A170779

/-! ## A170779.P12197142567112202815

`lcm(A168067(n), A168675(n))`
-/

namespace A170779.P12197142567112202815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168067 n) (A168675 n)

end

end A170779.P12197142567112202815

namespace A170779

/-- `lcm(A168067(n), A168675(n))` -/
def P12197142567112202815.Spec : Prop :=
  ∀ n, (P12197142567112202815.a n : ℤ) = A170779 n

end A170779

/-! ## A170779.P6276816215380568495

`A170799(n)/A028310(n)²`
-/

namespace A170779.P6276816215380568495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170799 n : ℚ) / (A028310 n ^ 2 : ℚ)

end

end A170779.P6276816215380568495

namespace A170779

/-- `A170799(n)/A028310(n)²` -/
def P6276816215380568495.Spec : Prop :=
  ∀ n, P6276816215380568495.a n = (A170779 n : ℚ)

end A170779

/-! ## A170779.P18402478118850654051

`A168635(n)+A168665(n)-A001015(n)`
-/

namespace A170779.P18402478118850654051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168635 n + (A168665 n - A001015 n)

end

end A170779.P18402478118850654051

namespace A170779

/-- `A168635(n)+A168665(n)-A001015(n)` -/
def P18402478118850654051.Spec : Prop :=
  ∀ n, P18402478118850654051.a n = A170779 n

end A170779

/-!
# A170780: a(n) = n^8*(n^8 + 1)/2.

The programs for A170780, the canonical program `A170780.P8349045961445520045` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170780 has offset 0).

The definition of A170780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170780.P8349045961445520045

`n^8*(n^8+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170780

/-- `n^8*(n^8+1)/2` -/
def P8349045961445520045.Spec : Prop :=
  ∀ n, P8349045961445520045.a n = (A170780 n : ℚ)

end A170780

/-! ## A170780.P10663966870561094792

`(A010804(n)+A001016(n))/2`
-/

namespace A170780.P10663966870561094792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010804 n + A001016 n : ℚ) / 2

end

end A170780.P10663966870561094792

namespace A170780

/-- `(A010804(n)+A001016(n))/2` -/
def P10663966870561094792.Spec : Prop :=
  ∀ n, P10663966870561094792.a n = (A170780 n : ℚ)

end A170780

/-! ## A170780.P4315347097548912859

`C(n^8+1, 2)`
-/

namespace A170780.P4315347097548912859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 8 + 1) 2

end

end A170780.P4315347097548912859

namespace A170780

/-- `C(n^8+1, 2)` -/
def P4315347097548912859.Spec : Prop :=
  ∀ n, (P4315347097548912859.a n : ℤ) = A170780 n

end A170780

/-! ## A170780.P17157189673938824945

`2*A283027(n)-n²²`
-/

namespace A170780.P17157189673938824945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283027 n - ((n ^ 2) ^ 2 : ℤ)

end

end A170780.P17157189673938824945

namespace A170780

/-- `2*A283027(n)-n²²` -/
def P17157189673938824945.Spec : Prop :=
  ∀ n, P17157189673938824945.a n = A170780 n

end A170780

/-! ## A170780.P5490146490554884999

`A168635(n)+A168666(n)-A001015(n)`
-/

namespace A170780.P5490146490554884999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168635 n + (A168666 n - A001015 n)

end

end A170780.P5490146490554884999

namespace A170780

/-- `A168635(n)+A168666(n)-A001015(n)` -/
def P5490146490554884999.Spec : Prop :=
  ∀ n, P5490146490554884999.a n = A170780 n

end A170780

/-! ## A170780.P2839758977311133190

`A071231(n²)`
-/

namespace A170780.P2839758977311133190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071231 (n ^ 2)

end

end A170780.P2839758977311133190

namespace A170780

/-- `A071231(n²)` -/
def P2839758977311133190.Spec : Prop :=
  ∀ n, P2839758977311133190.a n = A170780 n

end A170780

/-!
# A170781: a(n) = n^8*(n^9 + 1)/2.

The programs for A170781, the canonical program `A170781.P17836108774742719012` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170781 has offset 0).

The definition of A170781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170781.P17836108774742719012

`n^8*(n^9+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170781

/-- `n^8*(n^9+1)/2` -/
def P17836108774742719012.Spec : Prop :=
  ∀ n, P17836108774742719012.a n = (A170781 n : ℚ)

end A170781

/-! ## A170781.P14586446098954570587

`lcm(A168118(n), A168675(n))`
-/

namespace A170781.P14586446098954570587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168118 n) (A168675 n)

end

end A170781.P14586446098954570587

namespace A170781

/-- `lcm(A168118(n), A168675(n))` -/
def P14586446098954570587.Spec : Prop :=
  ∀ n, (P14586446098954570587.a n : ℤ) = A170781 n

end A170781

/-! ## A170781.P8113951206123122171

`lcm(A168153(n), A170775(n))`
-/

namespace A170781.P8113951206123122171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168153 n) (A170775 n)

end

end A170781.P8113951206123122171

namespace A170781

/-- `lcm(A168153(n), A170775(n))` -/
def P8113951206123122171.Spec : Prop :=
  ∀ n, (P8113951206123122171.a n : ℤ) = A170781 n

end A170781

/-! ## A170781.P1429156624779827992

`lcm(n, A000583(n)*A168345(n))`
-/

namespace A170781.P1429156624779827992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000583 n * A168345 n)

end

end A170781.P1429156624779827992

namespace A170781

/-- `lcm(n, A000583(n)*A168345(n))` -/
def P1429156624779827992.Spec : Prop :=
  ∀ n, (P1429156624779827992.a n : ℤ) = A170781 n

end A170781

/-! ## A170781.P6064018443103183273

`A000584(n)*A168345(n)/A028310(n)`
-/

namespace A170781.P6064018443103183273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000584 n * A168345 n : ℚ) / (A028310 n : ℚ)

end

end A170781.P6064018443103183273

namespace A170781

/-- `A000584(n)*A168345(n)/A028310(n)` -/
def P6064018443103183273.Spec : Prop :=
  ∀ n, P6064018443103183273.a n = (A170781 n : ℚ)

end A170781

/-! ## A170781.P3112248688337165756

`ceil(A170791(n)/A233583(n+1))`
-/

namespace A170781.P3112248688337165756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A170791 n : ℚ) / (A233583 (n + 1) : ℚ)⌉

end

end A170781.P3112248688337165756

namespace A170781

/-- `ceil(A170791(n)/A233583(n+1))` -/
def P3112248688337165756.Spec : Prop :=
  ∀ n, P3112248688337165756.a n = A170781 n

end A170781

/-! ## A170781.P6668424901282714335

`A170791(n)/A007318(A000124(n))`
-/

namespace A170781.P6668424901282714335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170791 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A170781.P6668424901282714335

namespace A170781

/-- `A170791(n)/A007318(A000124(n))` -/
def P6668424901282714335.Spec : Prop :=
  ∀ n, P6668424901282714335.a n = (A170781 n : ℚ)

end A170781

/-!
# A170782: a(n) = n^8*(n^10 + 1)/2.

The programs for A170782, the canonical program `A170782.P15943823634429961489` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170782 has offset 0).

The definition of A170782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170782.P15943823634429961489

`n^8*(n^10+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170782

/-- `n^8*(n^10+1)/2` -/
def P15943823634429961489.Spec : Prop :=
  ∀ n, P15943823634429961489.a n = (A170782 n : ℚ)

end A170782

/-! ## A170782.P5006033698561219292

`A170792(n)/A028310(n)`
-/

namespace A170782.P5006033698561219292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170792 n : ℚ) / (A028310 n : ℚ)

end

end A170782.P5006033698561219292

namespace A170782

/-- `A170792(n)/A028310(n)` -/
def P5006033698561219292.Spec : Prop :=
  ∀ n, P5006033698561219292.a n = (A170782 n : ℚ)

end A170782

/-! ## A170782.P2364616679783010250

`lcm(A168119(n), A170774(n))`
-/

namespace A170782.P2364616679783010250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168119 n) (A170774 n)

end

end A170782.P2364616679783010250

namespace A170782

/-- `lcm(A168119(n), A170774(n))` -/
def P2364616679783010250.Spec : Prop :=
  ∀ n, (P2364616679783010250.a n : ℤ) = A170782 n

end A170782

/-! ## A170782.P7714585929472426766

`lcm(n, A000583(n)*A168346(n))`
-/

namespace A170782.P7714585929472426766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000583 n * A168346 n)

end

end A170782.P7714585929472426766

namespace A170782

/-- `lcm(n, A000583(n)*A168346(n))` -/
def P7714585929472426766.Spec : Prop :=
  ∀ n, (P7714585929472426766.a n : ℤ) = A170782 n

end A170782

/-! ## A170782.P14561000814392220688

`(A001016(n)+A001017(n)²)/2`
-/

namespace A170782.P14561000814392220688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001016 n + A001017 n ^ 2 : ℚ) / 2

end

end A170782.P14561000814392220688

namespace A170782

/-- `(A001016(n)+A001017(n)²)/2` -/
def P14561000814392220688.Spec : Prop :=
  ∀ n, P14561000814392220688.a n = (A170782 n : ℚ)

end A170782

/-! ## A170782.P17266889980931742221

`A000584(n)*A168346(n)/round(sqrt(n²+1))`
-/

namespace A170782.P17266889980931742221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000584 n * A168346 n : ℚ) / (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) : ℚ)

end

end A170782.P17266889980931742221

namespace A170782

/-- `A000584(n)*A168346(n)/round(sqrt(n²+1))` -/
def P17266889980931742221.Spec : Prop :=
  ∀ n, P17266889980931742221.a n = (A170782 n : ℚ)

end A170782

/-! ## A170782.P18256121281793395603

`A001014(n)*A168346(n)/A028310(n)²`
-/

namespace A170782.P18256121281793395603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001014 n * A168346 n : ℚ) / (A028310 n ^ 2 : ℚ)

end

end A170782.P18256121281793395603

namespace A170782

/-- `A001014(n)*A168346(n)/A028310(n)²` -/
def P18256121281793395603.Spec : Prop :=
  ∀ n, P18256121281793395603.a n = (A170782 n : ℚ)

end A170782

/-! ## A170782.P7634570114652773985

`A170792(n)/A004736(C(n, 2)+1)`
-/

namespace A170782.P7634570114652773985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170792 n : ℚ) / (A004736 (Nat.choose n 2 + 1) : ℚ)

end

end A170782.P7634570114652773985

namespace A170782

/-- `A170792(n)/A004736(C(n, 2)+1)` -/
def P7634570114652773985.Spec : Prop :=
  ∀ n, P7634570114652773985.a n = (A170782 n : ℚ)

end A170782

/-! ## A170782.P5275341065073325378

`A170792(n)/A007318(A000124(n))`
-/

namespace A170782.P5275341065073325378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170792 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A170782.P5275341065073325378

namespace A170782

/-- `A170792(n)/A007318(A000124(n))` -/
def P5275341065073325378.Spec : Prop :=
  ∀ n, P5275341065073325378.a n = (A170782 n : ℚ)

end A170782

/-! ## A170782.P9585803578036353660

`A168196(n²)`
-/

namespace A170782.P9585803578036353660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168196 (n ^ 2)

end

end A170782.P9585803578036353660

namespace A170782

/-- `A168196(n²)` -/
def P9585803578036353660.Spec : Prop :=
  ∀ n, P9585803578036353660.a n = A170782 n

end A170782

/-! ## A170782.P12298180090786448267

`A168627(n²)/A253909(n²)`
-/

namespace A170782.P12298180090786448267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168627 (n ^ 2) : ℚ) / (A253909 (n ^ 2) : ℚ)

end

end A170782.P12298180090786448267

namespace A170782

/-- `A168627(n²)/A253909(n²)` -/
def P12298180090786448267.Spec : Prop :=
  ∀ n, P12298180090786448267.a n = (A170782 n : ℚ)

end A170782

/-! ## A170782.P16799769222225607832

`record[n*A168180(n*A010052(n))]`
-/

namespace A170782.P16799769222225607832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168180 ((n : ℤ) * A010052 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170782.P16799769222225607832

namespace A170782

/-- `record[n*A168180(n*A010052(n))]` -/
def P16799769222225607832.Spec : Prop :=
  ∀ n, P16799769222225607832.a n = A170782 n

end A170782

/-! ## A170782.P6232892679551479582

`record[A037213(n)²²*A168123(n)]`
-/

namespace A170782.P6232892679551479582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037213 n ^ 2) ^ 2 * A168123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170782.P6232892679551479582

namespace A170782

/-- `record[A037213(n)²²*A168123(n)]` -/
def P6232892679551479582.Spec : Prop :=
  ∀ n, P6232892679551479582.a n = A170782 n

end A170782

/-!
# A170783: a(n) = n^9*(n + 1)/2.

The programs for A170783, the canonical program `A170783.P8492644877979306214` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170783 has offset 0).

The definition of A170783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170783.P8492644877979306214

`n^9*(n+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170783

/-- `n^9*(n+1)/2` -/
def P8492644877979306214.Spec : Prop :=
  ∀ n, P8492644877979306214.a n = (A170783 n : ℚ)

end A170783

/-! ## A170783.P15875122204041736121

`lcm(n+1, n^9)/2`
-/

namespace A170783.P15875122204041736121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n ^ 9) : ℚ) / 2

end

end A170783.P15875122204041736121

namespace A170783

/-- `lcm(n+1, n^9)/2` -/
def P15875122204041736121.Spec : Prop :=
  ∀ n, P15875122204041736121.a n = (A170783 n : ℚ)

end A170783

/-! ## A170783.P2295677228352242519

`lcm(n, n²²²*∑[n])`
-/

namespace A170783.P2295677228352242519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (((n ^ 2) ^ 2) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A170783.P2295677228352242519

namespace A170783

/-- `lcm(n, n²²²*∑[n])` -/
def P2295677228352242519.Spec : Prop :=
  ∀ n, (P2295677228352242519.a n : ℤ) = A170783 n

end A170783

/-! ## A170783.P11764022088953663063

`(n+1)*A001017(n)/2`
-/

namespace A170783.P11764022088953663063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A001017 n : ℚ) / 2

end

end A170783.P11764022088953663063

namespace A170783

/-- `(n+1)*A001017(n)/2` -/
def P11764022088953663063.Spec : Prop :=
  ∀ n, P11764022088953663063.a n = (A170783 n : ℚ)

end A170783

/-! ## A170783.P13857254656865971961

`n²*A163277(n)/(n+1)`
-/

namespace A170783.P13857254656865971961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A163277 n : ℚ) / (n + 1 : ℚ)

end

end A170783.P13857254656865971961

namespace A170783

/-- `n²*A163277(n)/(n+1)` -/
def P13857254656865971961.Spec : Prop :=
  ∀ n, P13857254656865971961.a n = (A170783 n : ℚ)

end A170783

/-! ## A170783.P1303645766838133039

`A170793(n)/A028310(n)`
-/

namespace A170783.P1303645766838133039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170793 n : ℚ) / (A028310 n : ℚ)

end

end A170783.P1303645766838133039

namespace A170783

/-- `A170793(n)/A028310(n)` -/
def P1303645766838133039.Spec : Prop :=
  ∀ n, P1303645766838133039.a n = (A170783 n : ℚ)

end A170783

/-! ## A170783.P7849652389627077370

`gcd(A170785(n), A170793(n))`
-/

namespace A170783.P7849652389627077370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170785 n) (A170793 n)

end

end A170783.P7849652389627077370

namespace A170783

/-- `gcd(A170785(n), A170793(n))` -/
def P7849652389627077370.Spec : Prop :=
  ∀ n, (P7849652389627077370.a n : ℤ) = A170783 n

end A170783

/-! ## A170783.P18074985347823265239

`gcd(A170787(n), A170795(n))`
-/

namespace A170783.P18074985347823265239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170787 n) (A170795 n)

end

end A170783.P18074985347823265239

namespace A170783

/-- `gcd(A170787(n), A170795(n))` -/
def P18074985347823265239.Spec : Prop :=
  ∀ n, (P18074985347823265239.a n : ℤ) = A170783 n

end A170783

/-! ## A170783.P4007768201962919010

`gcd(A170789(n), A170797(n))`
-/

namespace A170783.P4007768201962919010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170789 n) (A170797 n)

end

end A170783.P4007768201962919010

namespace A170783

/-- `gcd(A170789(n), A170797(n))` -/
def P4007768201962919010.Spec : Prop :=
  ∀ n, (P4007768201962919010.a n : ℤ) = A170783 n

end A170783

/-! ## A170783.P15410540246262125416

`gcd(A170791(n), A170799(n))`
-/

namespace A170783.P15410540246262125416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170791 n) (A170799 n)

end

end A170783.P15410540246262125416

namespace A170783

/-- `gcd(A170791(n), A170799(n))` -/
def P15410540246262125416.Spec : Prop :=
  ∀ n, (P15410540246262125416.a n : ℤ) = A170783 n

end A170783

/-! ## A170783.P15046514951258584688

`(A008454(n)+A001017(n))/2`
-/

namespace A170783.P15046514951258584688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008454 n + A001017 n : ℚ) / 2

end

end A170783.P15046514951258584688

namespace A170783

/-- `(A008454(n)+A001017(n))/2` -/
def P15046514951258584688.Spec : Prop :=
  ∀ n, P15046514951258584688.a n = (A170783 n : ℚ)

end A170783

/-! ## A170783.P13035348299015561884

`A001017(n)+A240933(n)/2`
-/

namespace A170783.P13035348299015561884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001017 n : ℚ) + (A240933 n : ℚ) / 2

end

end A170783.P13035348299015561884

namespace A170783

/-- `A001017(n)+A240933(n)/2` -/
def P13035348299015561884.Spec : Prop :=
  ∀ n, P13035348299015561884.a n = (A170783 n : ℚ)

end A170783

/-! ## A170783.P10655147932657114408

`(A196291(n)+A196290(n))/2`
-/

namespace A170783.P10655147932657114408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196291 n + A196290 n : ℚ) / 2

end

end A170783.P10655147932657114408

namespace A170783

/-- `(A196291(n)+A196290(n))/2` -/
def P10655147932657114408.Spec : Prop :=
  ∀ n, P10655147932657114408.a n = (A170783 n : ℚ)

end A170783

/-! ## A170783.P14407885957169818138

`A001016(n)*A002378(n)/2`
-/

namespace A170783.P14407885957169818138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001016 n * A002378 n : ℚ) / 2

end

end A170783.P14407885957169818138

namespace A170783

/-- `A001016(n)*A002378(n)/2` -/
def P14407885957169818138.Spec : Prop :=
  ∀ n, P14407885957169818138.a n = (A170783 n : ℚ)

end A170783

/-! ## A170783.P12864045662951115757

`n*A170775(n)/A002061(n)`
-/

namespace A170783.P12864045662951115757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A170775 n : ℚ) / (A002061 n : ℚ)

end

end A170783.P12864045662951115757

namespace A170783

/-- `n*A170775(n)/A002061(n)` -/
def P12864045662951115757.Spec : Prop :=
  ∀ n, P12864045662951115757.a n = (A170783 n : ℚ)

end A170783

/-! ## A170783.P5446378070308600156

`n*A170793(n)/A253909(n)`
-/

namespace A170783.P5446378070308600156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A170793 n : ℚ) / (A253909 n : ℚ)

end

end A170783.P5446378070308600156

namespace A170783

/-- `n*A170793(n)/A253909(n)` -/
def P5446378070308600156.Spec : Prop :=
  ∀ n, P5446378070308600156.a n = (A170783 n : ℚ)

end A170783

/-! ## A170783.P13635811806790012127

`(A001017(n)+A000584(n)²)/2`
-/

namespace A170783.P13635811806790012127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001017 n + A000584 n ^ 2 : ℚ) / 2

end

end A170783.P13635811806790012127

namespace A170783

/-- `(A001017(n)+A000584(n)²)/2` -/
def P13635811806790012127.Spec : Prop :=
  ∀ n, P13635811806790012127.a n = (A170783 n : ℚ)

end A170783

/-! ## A170783.P13146011008995866992

`A000584(n)²-A240933(n)/2`
-/

namespace A170783.P13146011008995866992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000584 n ^ 2 : ℚ) - (A240933 n : ℚ) / 2

end

end A170783.P13146011008995866992

namespace A170783

/-- `A000584(n)²-A240933(n)/2` -/
def P13146011008995866992.Spec : Prop :=
  ∀ n, P13146011008995866992.a n = (A170783 n : ℚ)

end A170783

/-! ## A170783.P5236616838199766657

`A000583(n)²*A002378(n)/2`
-/

namespace A170783.P5236616838199766657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n ^ 2 * A002378 n : ℚ) / 2

end

end A170783.P5236616838199766657

namespace A170783

/-- `A000583(n)²*A002378(n)/2` -/
def P5236616838199766657.Spec : Prop :=
  ∀ n, P5236616838199766657.a n = (A170783 n : ℚ)

end A170783

/-! ## A170783.P7874976717932824514

`n²*A168660(n)/A002061(n)`
-/

namespace A170783.P7874976717932824514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A168660 n : ℚ) / (A002061 n : ℚ)

end

end A170783.P7874976717932824514

namespace A170783

/-- `n²*A168660(n)/A002061(n)` -/
def P7874976717932824514.Spec : Prop :=
  ∀ n, P7874976717932824514.a n = (A170783 n : ℚ)

end A170783

/-!
# A170784: a(n) = n^9*(n^2 + 1)/2.

The programs for A170784, the canonical program `A170784.P17116779387370264934` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170784 has offset 0).

The definition of A170784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170784.P17116779387370264934

`n^9*(n²+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170784

/-- `n^9*(n²+1)/2` -/
def P17116779387370264934.Spec : Prop :=
  ∀ n, P17116779387370264934.a n = (A170784 n : ℚ)

end A170784

/-! ## A170784.P6015713707249731853

`lcm(n, n*A170774(n))`
-/

namespace A170784.P6015713707249731853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * A170774 n)

end

end A170784.P6015713707249731853

namespace A170784

/-- `lcm(n, n*A170774(n))` -/
def P6015713707249731853.Spec : Prop :=
  ∀ n, (P6015713707249731853.a n : ℤ) = A170784 n

end A170784

/-! ## A170784.P8072006223494948862

`A170794(n)/A028310(n)`
-/

namespace A170784.P8072006223494948862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170794 n : ℚ) / (A028310 n : ℚ)

end

end A170784.P8072006223494948862

namespace A170784

/-- `A170794(n)/A028310(n)` -/
def P8072006223494948862.Spec : Prop :=
  ∀ n, P8072006223494948862.a n = (A170784 n : ℚ)

end A170784

/-! ## A170784.P4339251656225647079

`gcd(A170788(n), A170794(n))`
-/

namespace A170784.P4339251656225647079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170788 n) (A170794 n)

end

end A170784.P4339251656225647079

namespace A170784

/-- `gcd(A170788(n), A170794(n))` -/
def P4339251656225647079.Spec : Prop :=
  ∀ n, (P4339251656225647079.a n : ℤ) = A170784 n

end A170784

/-! ## A170784.P864812690165033854

`gcd(A170792(n), A170798(n))`
-/

namespace A170784.P864812690165033854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170792 n) (A170798 n)

end

end A170784.P864812690165033854

namespace A170784

/-- `gcd(A170792(n), A170798(n))` -/
def P864812690165033854.Spec : Prop :=
  ∀ n, (P864812690165033854.a n : ℤ) = A170784 n

end A170784

/-! ## A170784.P4013819215556372598

`A000583(n)²*A034262(n)/2`
-/

namespace A170784.P4013819215556372598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n ^ 2 * A034262 n : ℚ) / 2

end

end A170784.P4013819215556372598

namespace A170784

/-- `A000583(n)²*A034262(n)/2` -/
def P4013819215556372598.Spec : Prop :=
  ∀ n, P4013819215556372598.a n = (A170784 n : ℚ)

end A170784

/-! ## A170784.P3884121709619245158

`A000578(n)²*A155977(n)/2`
-/

namespace A170784.P3884121709619245158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 n ^ 2 * A155977 n : ℚ) / 2

end

end A170784.P3884121709619245158

namespace A170784

/-- `A000578(n)²*A155977(n)/2` -/
def P3884121709619245158.Spec : Prop :=
  ∀ n, P3884121709619245158.a n = (A170784 n : ℚ)

end A170784

/-! ## A170784.P10063400530345174850

`A001016(n)*A027445(n)/(2*(n+1))`
-/

namespace A170784.P10063400530345174850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001016 n * A027445 n : ℚ) / (2 * (n + 1) : ℚ)

end

end A170784.P10063400530345174850

namespace A170784

/-- `A001016(n)*A027445(n)/(2*(n+1))` -/
def P10063400530345174850.Spec : Prop :=
  ∀ n, P10063400530345174850.a n = (A170784 n : ℚ)

end A170784

/-! ## A170784.P10614909533497562661

`A168636(n)+A168661(n)-A001015(n)`
-/

namespace A170784.P10614909533497562661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168636 n + (A168661 n - A001015 n)

end

end A170784.P10614909533497562661

namespace A170784

/-- `A168636(n)+A168661(n)-A001015(n)` -/
def P10614909533497562661.Spec : Prop :=
  ∀ n, P10614909533497562661.a n = A170784 n

end A170784

/-! ## A170784.P5891243576343186858

`A000584(n)*A163274(n)-A000584(n)²`
-/

namespace A170784.P5891243576343186858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A163274 n - A000584 n ^ 2

end

end A170784.P5891243576343186858

namespace A170784

/-- `A000584(n)*A163274(n)-A000584(n)²` -/
def P5891243576343186858.Spec : Prop :=
  ∀ n, P5891243576343186858.a n = A170784 n

end A170784

/-! ## A170784.P14082612623484781005

`A170794(n)/A007318(A000124(n))`
-/

namespace A170784.P14082612623484781005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170794 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A170784.P14082612623484781005

namespace A170784

/-- `A170794(n)/A007318(A000124(n))` -/
def P14082612623484781005.Spec : Prop :=
  ∀ n, P14082612623484781005.a n = (A170784 n : ℚ)

end A170784

/-!
# A170785: a(n) = n^9*(n^3 + 1)/2.

The programs for A170785, the canonical program `A170785.P2967342314005931995` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170785 has offset 0).

The definition of A170785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170785.P2967342314005931995

`n^9*(n^3+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170785

/-- `n^9*(n^3+1)/2` -/
def P2967342314005931995.Spec : Prop :=
  ∀ n, P2967342314005931995.a n = (A170785 n : ℚ)

end A170785

/-! ## A170785.P7530003934110430838

`A170795(n)/A028310(n)`
-/

namespace A170785.P7530003934110430838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170795 n : ℚ) / (A028310 n : ℚ)

end

end A170785.P7530003934110430838

namespace A170785

/-- `A170795(n)/A028310(n)` -/
def P7530003934110430838.Spec : Prop :=
  ∀ n, P7530003934110430838.a n = (A170785 n : ℚ)

end A170785

/-! ## A170785.P16259846973342880668

`gcd(A170791(n), A170795(n))`
-/

namespace A170785.P16259846973342880668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170791 n) (A170795 n)

end

end A170785.P16259846973342880668

namespace A170785

/-- `gcd(A170791(n), A170795(n))` -/
def P16259846973342880668.Spec : Prop :=
  ∀ n, (P16259846973342880668.a n : ℤ) = A170785 n

end A170785

/-! ## A170785.P2782878241002039139

`lcm(A027441(n), A170783(n))`
-/

namespace A170785.P2782878241002039139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027441 n) (A170783 n)

end

end A170785.P2782878241002039139

namespace A170785

/-- `lcm(A027441(n), A170783(n))` -/
def P2782878241002039139.Spec : Prop :=
  ∀ n, (P2782878241002039139.a n : ℤ) = A170785 n

end A170785

/-! ## A170785.P10343893993724212308

`(A001017(n)+A001014(n)²)/2`
-/

namespace A170785.P10343893993724212308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001017 n + A001014 n ^ 2 : ℚ) / 2

end

end A170785.P10343893993724212308

namespace A170785

/-- `(A001017(n)+A001014(n)²)/2` -/
def P10343893993724212308.Spec : Prop :=
  ∀ n, P10343893993724212308.a n = (A170785 n : ℚ)

end A170785

/-! ## A170785.P9614135678494928976

`gcd(n*A170775(n), A170775(n)²)`
-/

namespace A170785.P9614135678494928976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A170775 n) (A170775 n ^ 2)

end

end A170785.P9614135678494928976

namespace A170785

/-- `gcd(n*A170775(n), A170775(n)²)` -/
def P9614135678494928976.Spec : Prop :=
  ∀ n, (P9614135678494928976.a n : ℤ) = A170785 n

end A170785

/-! ## A170785.P17088797949916187346

`n*(A008455(n)+A000583(n)²)/2`
-/

namespace A170785.P17088797949916187346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (A008455 n + A000583 n ^ 2) : ℚ) / 2

end

end A170785.P17088797949916187346

namespace A170785

/-- `n*(A008455(n)+A000583(n)²)/2` -/
def P17088797949916187346.Spec : Prop :=
  ∀ n, P17088797949916187346.a n = (A170785 n : ℚ)

end A170785

/-! ## A170785.P17398822634274238200

`(n+1)*n²²*A168194(n)-n²²*A168194(n)`
-/

namespace A170785.P17398822634274238200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((n ^ 2) ^ 2 : ℤ) * A168194 n) - ((n ^ 2) ^ 2 : ℤ) * A168194 n

end

end A170785.P17398822634274238200

namespace A170785

/-- `(n+1)*n²²*A168194(n)-n²²*A168194(n)` -/
def P17398822634274238200.Spec : Prop :=
  ∀ n, P17398822634274238200.a n = A170785 n

end A170785

/-! ## A170785.P17641343995219666642

`lcm(A168371(n), A170783(A028310(n)))`
-/

namespace A170785.P17641343995219666642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168371 n) (A170783 (A028310 n).toNat)

end

end A170785.P17641343995219666642

namespace A170785

/-- `lcm(A168371(n), A170783(A028310(n)))` -/
def P17641343995219666642.Spec : Prop :=
  ∀ n, (P17641343995219666642.a n : ℤ) = A170785 n

end A170785

/-! ## A170785.P3295633146874111169

`A168636(n)+A168662(n)-A001015(n)`
-/

namespace A170785.P3295633146874111169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168636 n + (A168662 n - A001015 n)

end

end A170785.P3295633146874111169

namespace A170785

/-- `A168636(n)+A168662(n)-A001015(n)` -/
def P3295633146874111169.Spec : Prop :=
  ∀ n, P3295633146874111169.a n = A170785 n

end A170785

/-! ## A170785.P2334333328717613294

`A071232(n)-A024004(n)*A071232(n)`
-/

namespace A170785.P2334333328717613294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071232 n - A024004 n * A071232 n

end

end A170785.P2334333328717613294

namespace A170785

/-- `A071232(n)-A024004(n)*A071232(n)` -/
def P2334333328717613294.Spec : Prop :=
  ∀ n, P2334333328717613294.a n = A170785 n

end A170785

/-! ## A170785.P16532484668464211610

`A002522(n)*A168660(n)-A168660(n)`
-/

namespace A170785.P16532484668464211610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A168660 n - A168660 n

end

end A170785.P16532484668464211610

namespace A170785

/-- `A002522(n)*A168660(n)-A168660(n)` -/
def P16532484668464211610.Spec : Prop :=
  ∀ n, P16532484668464211610.a n = A170785 n

end A170785

/-! ## A170785.P4444256360678901718

`A001014(n)²-A001014(n)*A085744(n)`
-/

namespace A170785.P4444256360678901718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n ^ 2 - A001014 n * A085744 n

end

end A170785.P4444256360678901718

namespace A170785

/-- `A001014(n)²-A001014(n)*A085744(n)` -/
def P4444256360678901718.Spec : Prop :=
  ∀ n, P4444256360678901718.a n = A170785 n

end A170785

/-! ## A170785.P4721420848418346628

`A170795(n)/A065033(2*n)`
-/

namespace A170785.P4721420848418346628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170795 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A170785.P4721420848418346628

namespace A170785

/-- `A170795(n)/A065033(2*n)` -/
def P4721420848418346628.Spec : Prop :=
  ∀ n, P4721420848418346628.a n = (A170785 n : ℚ)

end A170785

/-! ## A170785.P4355671773728120354

`A170795(n)/(A005843(n)-A065033(A005843(n)))`
-/

namespace A170785.P4355671773728120354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170795 n : ℚ) / (A005843 n - A065033 (A005843 n).toNat : ℚ)

end

end A170785.P4355671773728120354

namespace A170785

/-- `A170795(n)/(A005843(n)-A065033(A005843(n)))` -/
def P4355671773728120354.Spec : Prop :=
  ∀ n, P4355671773728120354.a n = (A170785 n : ℚ)

end A170785

/-! ## A170785.P6503789043572111122

`A170795(n)/A007318(A000124(n))`
-/

namespace A170785.P6503789043572111122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170795 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A170785.P6503789043572111122

namespace A170785

/-- `A170795(n)/A007318(A000124(n))` -/
def P6503789043572111122.Spec : Prop :=
  ∀ n, P6503789043572111122.a n = (A170785 n : ℚ)

end A170785

/-! ## A170785.P14884575479237402185

`A168555(n)+A085744(n²)`
-/

namespace A170785.P14884575479237402185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168555 n + A085744 (n ^ 2)

end

end A170785.P14884575479237402185

namespace A170785

/-- `A168555(n)+A085744(n²)` -/
def P14884575479237402185.Spec : Prop :=
  ∀ n, P14884575479237402185.a n = A170785 n

end A170785

/-!
# A170786: a(n) = n^9*(n^4 + 1)/2.

The programs for A170786, the canonical program `A170786.P9761420453751425539` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170786 has offset 0).

The definition of A170786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170786.P9761420453751425539

`n^9*(n^4+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170786

/-- `n^9*(n^4+1)/2` -/
def P9761420453751425539.Spec : Prop :=
  ∀ n, P9761420453751425539.a n = (A170786 n : ℚ)

end A170786

/-! ## A170786.P4691546191901217608

`A170796(n)/A028310(n)`
-/

namespace A170786.P4691546191901217608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170796 n : ℚ) / (A028310 n : ℚ)

end

end A170786.P4691546191901217608

namespace A170786

/-- `A170796(n)/A028310(n)` -/
def P4691546191901217608.Spec : Prop :=
  ∀ n, P4691546191901217608.a n = (A170786 n : ℚ)

end A170786

/-! ## A170786.P4789597033042792463

`-A001489(n)*A170776(n)`
-/

namespace A170786.P4789597033042792463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A170776 n)

end

end A170786.P4789597033042792463

namespace A170786

/-- `-A001489(n)*A170776(n)` -/
def P4789597033042792463.Spec : Prop :=
  ∀ n, P4789597033042792463.a n = A170786 n

end A170786

/-! ## A170786.P2178121589595085960

`A001017(n)*A002523(n)/2`
-/

namespace A170786.P2178121589595085960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001017 n * A002523 n : ℚ) / 2

end

end A170786.P2178121589595085960

namespace A170786

/-- `A001017(n)*A002523(n)/2` -/
def P2178121589595085960.Spec : Prop :=
  ∀ n, P2178121589595085960.a n = (A170786 n : ℚ)

end A170786

/-! ## A170786.P9691210163534908483

`n²*A170776(n)/A028310(n)`
-/

namespace A170786.P9691210163534908483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A170776 n : ℚ) / (A028310 n : ℚ)

end

end A170786.P9691210163534908483

namespace A170786

/-- `n²*A170776(n)/A028310(n)` -/
def P9691210163534908483.Spec : Prop :=
  ∀ n, P9691210163534908483.a n = (A170786 n : ℚ)

end A170786

/-! ## A170786.P2633321189807691902

`n²²*A168661(n)/A253909(n)`
-/

namespace A170786.P2633321189807691902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2 : ℤ) * A168661 n : ℚ) / (A253909 n : ℚ)

end

end A170786.P2633321189807691902

namespace A170786

/-- `n²²*A168661(n)/A253909(n)` -/
def P2633321189807691902.Spec : Prop :=
  ∀ n, P2633321189807691902.a n = (A170786 n : ℚ)

end A170786

/-! ## A170786.P16551110699985290857

`A170777(n)+A170784(n)-A170775(n)`
-/

namespace A170786.P16551110699985290857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170777 n + (A170784 n - A170775 n)

end

end A170786.P16551110699985290857

namespace A170786

/-- `A170777(n)+A170784(n)-A170775(n)` -/
def P16551110699985290857.Spec : Prop :=
  ∀ n, P16551110699985290857.a n = A170786 n

end A170786

/-! ## A170786.P945072811046773313

`A170777(n)+A170785(n)-A170776(n)`
-/

namespace A170786.P945072811046773313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170777 n + (A170785 n - A170776 n)

end

end A170786.P945072811046773313

namespace A170786

/-- `A170777(n)+A170785(n)-A170776(n)` -/
def P945072811046773313.Spec : Prop :=
  ∀ n, P945072811046773313.a n = A170786 n

end A170786

/-! ## A170786.P15771097022987653841

`ceil(A170796(n)/A233583(n+1))`
-/

namespace A170786.P15771097022987653841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A170796 n : ℚ) / (A233583 (n + 1) : ℚ)⌉

end

end A170786.P15771097022987653841

namespace A170786

/-- `ceil(A170796(n)/A233583(n+1))` -/
def P15771097022987653841.Spec : Prop :=
  ∀ n, P15771097022987653841.a n = A170786 n

end A170786

/-! ## A170786.P11729277202870800316

`A170796(n)/A007318(A000124(n))`
-/

namespace A170786.P11729277202870800316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170796 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A170786.P11729277202870800316

namespace A170786

/-- `A170796(n)/A007318(A000124(n))` -/
def P11729277202870800316.Spec : Prop :=
  ∀ n, P11729277202870800316.a n = (A170786 n : ℚ)

end A170786

/-! ## A170786.P10171732524664982873

`A168364(n²)/A028310(n)`
-/

namespace A170786.P10171732524664982873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168364 (n ^ 2) : ℚ) / (A028310 n : ℚ)

end

end A170786.P10171732524664982873

namespace A170786

/-- `A168364(n²)/A028310(n)` -/
def P10171732524664982873.Spec : Prop :=
  ∀ n, P10171732524664982873.a n = (A170786 n : ℚ)

end A170786

/-! ## A170786.P16245449228766434315

`A168364(n²)/(A000007(n)+n)`
-/

namespace A170786.P16245449228766434315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168364 (n ^ 2) : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A170786.P16245449228766434315

namespace A170786

/-- `A168364(n²)/(A000007(n)+n)` -/
def P16245449228766434315.Spec : Prop :=
  ∀ n, P16245449228766434315.a n = (A170786 n : ℚ)

end A170786

/-! ## A170786.P12730713067330088674

`n*A168364(n²)/A253909(n)`
-/

namespace A170786.P12730713067330088674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A168364 (n ^ 2) : ℚ) / (A253909 n : ℚ)

end

end A170786.P12730713067330088674

namespace A170786

/-- `n*A168364(n²)/A253909(n)` -/
def P12730713067330088674.Spec : Prop :=
  ∀ n, P12730713067330088674.a n = (A170786 n : ℚ)

end A170786

/-! ## A170786.P3428820775216535900

`lcm(n, n*A168192(n²))`
-/

namespace A170786.P3428820775216535900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * A168192 (n ^ 2))

end

end A170786.P3428820775216535900

namespace A170786

/-- `lcm(n, n*A168192(n²))` -/
def P3428820775216535900.Spec : Prop :=
  ∀ n, (P3428820775216535900.a n : ℤ) = A170786 n

end A170786

/-! ## A170786.P11036831143600242944

`record[A037213(n)*A168192(n)]`
-/

namespace A170786.P11036831143600242944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n * A168192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170786.P11036831143600242944

namespace A170786

/-- `record[A037213(n)*A168192(n)]` -/
def P11036831143600242944.Spec : Prop :=
  ∀ n, P11036831143600242944.a n = A170786 n

end A170786

/-!
# A170787: a(n) = n^9*(n^5 + 1)/2.

The programs for A170787, the canonical program `A170787.P10943228705916209859` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170787 has offset 0).

The definition of A170787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170787.P10943228705916209859

`n^9*(n^5+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170787

/-- `n^9*(n^5+1)/2` -/
def P10943228705916209859.Spec : Prop :=
  ∀ n, P10943228705916209859.a n = (A170787 n : ℚ)

end A170787

/-! ## A170787.P12809615270617046262

`lcm(A071236(n), A170783(n))`
-/

namespace A170787.P12809615270617046262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071236 n) (A170783 n)

end

end A170787.P12809615270617046262

namespace A170787

/-- `lcm(A071236(n), A170783(n))` -/
def P12809615270617046262.Spec : Prop :=
  ∀ n, (P12809615270617046262.a n : ℤ) = A170787 n

end A170787

/-! ## A170787.P11729947530583541733

`n²*A170777(n)/A028310(n)`
-/

namespace A170787.P11729947530583541733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A170777 n : ℚ) / (A028310 n : ℚ)

end

end A170787.P11729947530583541733

namespace A170787

/-- `n²*A170777(n)/A028310(n)` -/
def P11729947530583541733.Spec : Prop :=
  ∀ n, P11729947530583541733.a n = (A170787 n : ℚ)

end A170787

/-! ## A170787.P17522799529368285442

`A000583(n)*A071236(n)/gcd(n, n+1)`
-/

namespace A170787.P17522799529368285442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n * A071236 n : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A170787.P17522799529368285442

namespace A170787

/-- `A000583(n)*A071236(n)/gcd(n, n+1)` -/
def P17522799529368285442.Spec : Prop :=
  ∀ n, P17522799529368285442.a n = (A170787 n : ℚ)

end A170787

/-! ## A170787.P12520062995934836789

`lcm(A170777(n), A170783(A028310(n)))`
-/

namespace A170787.P12520062995934836789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A170777 n) (A170783 (A028310 n).toNat)

end

end A170787.P12520062995934836789

namespace A170787

/-- `lcm(A170777(n), A170783(A028310(n)))` -/
def P12520062995934836789.Spec : Prop :=
  ∀ n, (P12520062995934836789.a n : ℤ) = A170787 n

end A170787

/-! ## A170787.P13340376019527073559

`gcd(A000583(n)*A071236(n), A071236(n)²)`
-/

namespace A170787.P13340376019527073559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000583 n * A071236 n) (A071236 n ^ 2)

end

end A170787.P13340376019527073559

namespace A170787

/-- `gcd(A000583(n)*A071236(n), A071236(n)²)` -/
def P13340376019527073559.Spec : Prop :=
  ∀ n, (P13340376019527073559.a n : ℤ) = A170787 n

end A170787

/-!
# A170788: a(n) = n^9*(n^6 + 1)/2.

The programs for A170788, the canonical program `A170788.P5086844618097051795` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170788 has offset 0).

The definition of A170788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170788.P5086844618097051795

`n^9*(n^6+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170788

/-- `n^9*(n^6+1)/2` -/
def P5086844618097051795.Spec : Prop :=
  ∀ n, P5086844618097051795.a n = (A170788 n : ℚ)

end A170788

/-! ## A170788.P17609626424269529455

`lcm(n, n*A170778(n))`
-/

namespace A170788.P17609626424269529455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * A170778 n)

end

end A170788.P17609626424269529455

namespace A170788

/-- `lcm(n, n*A170778(n))` -/
def P17609626424269529455.Spec : Prop :=
  ∀ n, (P17609626424269529455.a n : ℤ) = A170788 n

end A170788

/-! ## A170788.P1213099697329380398

`lcm(A060886(n), A170784(n))`
-/

namespace A170788.P1213099697329380398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060886 n) (A170784 n)

end

end A170788.P1213099697329380398

namespace A170788

/-- `lcm(A060886(n), A170784(n))` -/
def P1213099697329380398.Spec : Prop :=
  ∀ n, (P1213099697329380398.a n : ℤ) = A170788 n

end A170788

/-! ## A170788.P7620050420543704385

`A168663(n)/(1/A028310(n))²`
-/

namespace A170788.P7620050420543704385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168663 n : ℚ) / (1 / (A028310 n : ℚ)) ^ 2

end

end A170788.P7620050420543704385

namespace A170788

/-- `A168663(n)/(1/A028310(n))²` -/
def P7620050420543704385.Spec : Prop :=
  ∀ n, P7620050420543704385.a n = (A170788 n : ℚ)

end A170788

/-! ## A170788.P7559566955314927920

`A168412(n)/(1/A253909(n))²`
-/

namespace A170788.P7559566955314927920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168412 n : ℚ) / (1 / (A253909 n : ℚ)) ^ 2

end

end A170788.P7559566955314927920

namespace A170788

/-- `A168412(n)/(1/A253909(n))²` -/
def P7559566955314927920.Spec : Prop :=
  ∀ n, P7559566955314927920.a n = (A170788 n : ℚ)

end A170788

/-! ## A170788.P11573116772501027695

`A168636(n)+A168665(n)-A001015(n)`
-/

namespace A170788.P11573116772501027695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168636 n + (A168665 n - A001015 n)

end

end A170788.P11573116772501027695

namespace A170788

/-- `A168636(n)+A168665(n)-A001015(n)` -/
def P11573116772501027695.Spec : Prop :=
  ∀ n, P11573116772501027695.a n = A170788 n

end A170788

/-! ## A170788.P14676648212107670296

`A168116(n)-A024005(n)*A168067(n)`
-/

namespace A170788.P14676648212107670296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168116 n - A024005 n * A168067 n

end

end A170788.P14676648212107670296

namespace A170788

/-- `A168116(n)-A024005(n)*A168067(n)` -/
def P14676648212107670296.Spec : Prop :=
  ∀ n, P14676648212107670296.a n = A170788 n

end A170788

/-! ## A170788.P14048270928562934934

`A168371(n²)/A028310(n)`
-/

namespace A170788.P14048270928562934934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168371 (n ^ 2) : ℚ) / (A028310 n : ℚ)

end

end A170788.P14048270928562934934

namespace A170788

/-- `A168371(n²)/A028310(n)` -/
def P14048270928562934934.Spec : Prop :=
  ∀ n, P14048270928562934934.a n = (A170788 n : ℚ)

end A170788

/-!
# A170789: a(n) = n^9*(n^7 + 1)/2.

The programs for A170789, the canonical program `A170789.P9092045468562175500` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170789 has offset 0).

The definition of A170789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170789.P9092045468562175500

`n^9*(n^7+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170789

/-- `n^9*(n^7+1)/2` -/
def P9092045468562175500.Spec : Prop :=
  ∀ n, P9092045468562175500.a n = (A170789 n : ℚ)

end A170789

/-! ## A170789.P3683413618625414215

`lcm(A168067(n), A170783(n))`
-/

namespace A170789.P3683413618625414215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168067 n) (A170783 n)

end

end A170789.P3683413618625414215

namespace A170789

/-- `lcm(A168067(n), A170783(n))` -/
def P3683413618625414215.Spec : Prop :=
  ∀ n, (P3683413618625414215.a n : ℤ) = A170789 n

end A170789

/-! ## A170789.P16405407278523805662

`(A001017(n)+A001016(n)²)/2`
-/

namespace A170789.P16405407278523805662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001017 n + A001016 n ^ 2 : ℚ) / 2

end

end A170789.P16405407278523805662

namespace A170789

/-- `(A001017(n)+A001016(n)²)/2` -/
def P16405407278523805662.Spec : Prop :=
  ∀ n, P16405407278523805662.a n = (A170789 n : ℚ)

end A170789

/-! ## A170789.P4043186744452263238

`n²*A170779(n)/A028310(n)`
-/

namespace A170789.P4043186744452263238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A170779 n : ℚ) / (A028310 n : ℚ)

end

end A170789.P4043186744452263238

namespace A170789

/-- `n²*A170779(n)/A028310(n)` -/
def P4043186744452263238.Spec : Prop :=
  ∀ n, P4043186744452263238.a n = (A170789 n : ℚ)

end A170789

/-! ## A170789.P15424161798359378973

`lcm(A170779(n), A170783(A028310(n)))`
-/

namespace A170789.P15424161798359378973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A170779 n) (A170783 (A028310 n).toNat)

end

end A170789.P15424161798359378973

namespace A170789

/-- `lcm(A170779(n), A170783(A028310(n)))` -/
def P15424161798359378973.Spec : Prop :=
  ∀ n, (P15424161798359378973.a n : ℤ) = A170789 n

end A170789

/-! ## A170789.P7357972860618306589

`A170780(n)+A170783(n)-A170774(n)`
-/

namespace A170789.P7357972860618306589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170780 n + (A170783 n - A170774 n)

end

end A170789.P7357972860618306589

namespace A170789

/-- `A170780(n)+A170783(n)-A170774(n)` -/
def P7357972860618306589.Spec : Prop :=
  ∀ n, P7357972860618306589.a n = A170789 n

end A170789

/-! ## A170789.P16809655514048448182

`A170786(n)+A170798(n)-A170795(n)`
-/

namespace A170789.P16809655514048448182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170786 n + (A170798 n - A170795 n)

end

end A170789.P16809655514048448182

namespace A170789

/-- `A170786(n)+A170798(n)-A170795(n)` -/
def P16809655514048448182.Spec : Prop :=
  ∀ n, P16809655514048448182.a n = A170789 n

end A170789

/-! ## A170789.P11516890767193985912

`round(A170799(n)/A233583(n+1))`
-/

namespace A170789.P11516890767193985912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A170799 n : ℚ) / (A233583 (n + 1) : ℚ))

end

end A170789.P11516890767193985912

namespace A170789

/-- `round(A170799(n)/A233583(n+1))` -/
def P11516890767193985912.Spec : Prop :=
  ∀ n, P11516890767193985912.a n = A170789 n

end A170789

/-!
# A170790: a(n) = n^9*(n^8 + 1)/2.

The programs for A170790, the canonical program `A170790.P15258713302724235905` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170790 has offset 0).

The definition of A170790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170790.P15258713302724235905

`n^9*(n^8+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170790

/-- `n^9*(n^8+1)/2` -/
def P15258713302724235905.Spec : Prop :=
  ∀ n, P15258713302724235905.a n = (A170790 n : ℚ)

end A170790

/-! ## A170790.P8098376037975608491

`(A010805(n)+A001017(n))/2`
-/

namespace A170790.P8098376037975608491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010805 n + A001017 n : ℚ) / 2

end

end A170790.P8098376037975608491

namespace A170790

/-- `(A010805(n)+A001017(n))/2` -/
def P8098376037975608491.Spec : Prop :=
  ∀ n, P8098376037975608491.a n = (A170790 n : ℚ)

end A170790

/-! ## A170790.P1775796505242959981

`floor(A168632(n)/A028310(n)*A000583(n))`
-/

namespace A170790.P1775796505242959981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168632 n : ℚ) / (A028310 n : ℚ) * (A000583 n : ℚ)⌋

end

end A170790.P1775796505242959981

namespace A170790

/-- `floor(A168632(n)/A028310(n)*A000583(n))` -/
def P1775796505242959981.Spec : Prop :=
  ∀ n, P1775796505242959981.a n = A170790 n

end A170790

/-! ## A170790.P14944839982155294043

`floor((A010801(n)+A000584(n))/2*A000583(n))`
-/

namespace A170790.P14944839982155294043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010801 n + A000584 n : ℚ) / 2 * (A000583 n : ℚ)⌋

end

end A170790.P14944839982155294043

namespace A170790

/-- `floor((A010801(n)+A000584(n))/2*A000583(n))` -/
def P14944839982155294043.Spec : Prop :=
  ∀ n, P14944839982155294043.a n = A170790 n

end A170790

/-! ## A170790.P5900920985532603545

`floor(A168632(n)/(A000007(n)+n)*A000583(n))`
-/

namespace A170790.P5900920985532603545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168632 n : ℚ) / (A000007 n + (n : ℤ) : ℚ) * (A000583 n : ℚ)⌋

end

end A170790.P5900920985532603545

namespace A170790

/-- `floor(A168632(n)/(A000007(n)+n)*A000583(n))` -/
def P5900920985532603545.Spec : Prop :=
  ∀ n, P5900920985532603545.a n = A170790 n

end A170790

/-! ## A170790.P10453293738105556332

`floor(A168179(n²)/A028310(n)*A000583(n))`
-/

namespace A170790.P10453293738105556332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168179 (n ^ 2) : ℚ) / (A028310 n : ℚ) * (A000583 n : ℚ)⌋

end

end A170790.P10453293738105556332

namespace A170790

/-- `floor(A168179(n²)/A028310(n)*A000583(n))` -/
def P10453293738105556332.Spec : Prop :=
  ∀ n, P10453293738105556332.a n = A170790 n

end A170790

/-!
# A170791: a(n) = n^9*(n^9 + 1)/2.

The programs for A170791, the canonical program `A170791.P13263660565823592677` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170791 has offset 0).

The definition of A170791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170791.P13263660565823592677

`(n^18+n^9)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170791

/-- `(n^18+n^9)/2` -/
def P13263660565823592677.Spec : Prop :=
  ∀ n, P13263660565823592677.a n = (A170791 n : ℚ)

end A170791

/-! ## A170791.P6988810630567430149

`C(n^9+1, 2)`
-/

namespace A170791.P6988810630567430149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 9 + 1) 2

end

end A170791.P6988810630567430149

namespace A170791

/-- `C(n^9+1, 2)` -/
def P6988810630567430149.Spec : Prop :=
  ∀ n, (P6988810630567430149.a n : ℤ) = A170791 n

end A170791

/-! ## A170791.P4802081420619733384

`n*A170781(n)`
-/

namespace A170791.P4802081420619733384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A170781 n

end

end A170791.P4802081420619733384

namespace A170791

/-- `n*A170781(n)` -/
def P4802081420619733384.Spec : Prop :=
  ∀ n, P4802081420619733384.a n = A170791 n

end A170791

/-! ## A170791.P4437623108654207451

`floor(A326618(n)/2)`
-/

namespace A170791.P4437623108654207451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326618 n : ℚ) / 2⌋

end

end A170791.P4437623108654207451

namespace A170791

/-- `floor(A326618(n)/2)` -/
def P4437623108654207451.Spec : Prop :=
  ∀ n, P4437623108654207451.a n = A170791 n

end A170791

/-! ## A170791.P17435704904617641516

`n²*A168666(n)`
-/

namespace A170791.P17435704904617641516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168666 n

end

end A170791.P17435704904617641516

namespace A170791

/-- `n²*A168666(n)` -/
def P17435704904617641516.Spec : Prop :=
  ∀ n, P17435704904617641516.a n = A170791 n

end A170791

/-! ## A170791.P16591718620296318759

`n^3*A168633(n)`
-/

namespace A170791.P16591718620296318759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168633 n

end

end A170791.P16591718620296318759

namespace A170791

/-- `n^3*A168633(n)` -/
def P16591718620296318759.Spec : Prop :=
  ∀ n, P16591718620296318759.a n = A170791 n

end A170791

/-! ## A170791.P13680648474976813887

`n²²*A168471(n)`
-/

namespace A170791.P13680648474976813887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A168471 n

end

end A170791.P13680648474976813887

namespace A170791

/-- `n²²*A168471(n)` -/
def P13680648474976813887.Spec : Prop :=
  ∀ n, P13680648474976813887.a n = A170791 n

end A170791

/-! ## A170791.P15753521433551860128

`n²²²*A168118(n)`
-/

namespace A170791.P15753521433551860128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2) ^ 2 : ℤ) * A168118 n

end

end A170791.P15753521433551860128

namespace A170791

/-- `n²²²*A168118(n)` -/
def P15753521433551860128.Spec : Prop :=
  ∀ n, P15753521433551860128.a n = A170791 n

end A170791

/-! ## A170791.P1533756005359626769

`A000584(n)*A168345(n)`
-/

namespace A170791.P1533756005359626769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A168345 n

end

end A170791.P1533756005359626769

namespace A170791

/-- `A000584(n)*A168345(n)` -/
def P1533756005359626769.Spec : Prop :=
  ∀ n, P1533756005359626769.a n = A170791 n

end A170791

/-! ## A170791.P322306686265024320

`A001015(n)*A168153(n)`
-/

namespace A170791.P322306686265024320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n * A168153 n

end

end A170791.P322306686265024320

namespace A170791

/-- `A001015(n)*A168153(n)` -/
def P322306686265024320.Spec : Prop :=
  ∀ n, P322306686265024320.a n = A170791 n

end A170791

/-! ## A170791.P2871918896635257350

`lcm(A168118(n), A170783(n))`
-/

namespace A170791.P2871918896635257350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168118 n) (A170783 n)

end

end A170791.P2871918896635257350

namespace A170791

/-- `lcm(A168118(n), A170783(n))` -/
def P2871918896635257350.Spec : Prop :=
  ∀ n, (P2871918896635257350.a n : ℤ) = A170791 n

end A170791

/-! ## A170791.P14124661889755339005

`n*A000583(n)*A168345(n)`
-/

namespace A170791.P14124661889755339005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000583 n * A168345 n)

end

end A170791.P14124661889755339005

namespace A170791

/-- `n*A000583(n)*A168345(n)` -/
def P14124661889755339005.Spec : Prop :=
  ∀ n, P14124661889755339005.a n = A170791 n

end A170791

/-! ## A170791.P641528953706294502

`n*lcm(A168153(n), A170775(n))`
-/

namespace A170791.P641528953706294502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.lcm (A168153 n) (A170775 n)

end

end A170791.P641528953706294502

namespace A170791

/-- `n*lcm(A168153(n), A170775(n))` -/
def P641528953706294502.Spec : Prop :=
  ∀ n, (P641528953706294502.a n : ℤ) = A170791 n

end A170791

/-!
# A170792: a(n) = n^9*(n^10 + 1)/2.

The programs for A170792, the canonical program `A170792.P6507461748369407180` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170792 has offset 0).

The definition of A170792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170792.P6507461748369407180

`n^9*(n^10+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170792

/-- `n^9*(n^10+1)/2` -/
def P6507461748369407180.Spec : Prop :=
  ∀ n, P6507461748369407180.a n = (A170792 n : ℚ)

end A170792

/-! ## A170792.P4934814712707474262

`lcm(A168119(n), A170784(n))`
-/

namespace A170792.P4934814712707474262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168119 n) (A170784 n)

end

end A170792.P4934814712707474262

namespace A170792

/-- `lcm(A168119(n), A170784(n))` -/
def P4934814712707474262.Spec : Prop :=
  ∀ n, (P4934814712707474262.a n : ℤ) = A170792 n

end A170792

/-! ## A170792.P13449883636721343659

`lcm(n, A000584(n)*A168346(n))`
-/

namespace A170792.P13449883636721343659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000584 n * A168346 n)

end

end A170792.P13449883636721343659

namespace A170792

/-- `lcm(n, A000584(n)*A168346(n))` -/
def P13449883636721343659.Spec : Prop :=
  ∀ n, (P13449883636721343659.a n : ℤ) = A170792 n

end A170792

/-! ## A170792.P2305350072876390324

`A001014(n)*A168346(n)/A028310(n)`
-/

namespace A170792.P2305350072876390324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001014 n * A168346 n : ℚ) / (A028310 n : ℚ)

end

end A170792.P2305350072876390324

namespace A170792

/-- `A001014(n)*A168346(n)/A028310(n)` -/
def P2305350072876390324.Spec : Prop :=
  ∀ n, P2305350072876390324.a n = (A170792 n : ℚ)

end A170792

/-! ## A170792.P3952244238078347928

`round(A170802(n)/A233583(n+1))`
-/

namespace A170792.P3952244238078347928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A170802 n : ℚ) / (A233583 (n + 1) : ℚ))

end

end A170792.P3952244238078347928

namespace A170792

/-- `round(A170802(n)/A233583(n+1))` -/
def P3952244238078347928.Spec : Prop :=
  ∀ n, P3952244238078347928.a n = A170792 n

end A170792

/-!
# A170793: a(n) = n^10*(n + 1)/2.

The programs for A170793, the canonical program `A170793.P5653854047353680011` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170793 has offset 0).

The definition of A170793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170793.P5653854047353680011

`n^10*(n+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170793

/-- `n^10*(n+1)/2` -/
def P5653854047353680011.Spec : Prop :=
  ∀ n, P5653854047353680011.a n = (A170793 n : ℚ)

end A170793

/-! ## A170793.P16170560509231806002

`lcm(n+1, n^10)/2`
-/

namespace A170793.P16170560509231806002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n ^ 10) : ℚ) / 2

end

end A170793.P16170560509231806002

namespace A170793

/-- `lcm(n+1, n^10)/2` -/
def P16170560509231806002.Spec : Prop :=
  ∀ n, P16170560509231806002.a n = (A170793 n : ℚ)

end A170793

/-! ## A170793.P3318379263795742800

`round(sqrt(C((n+1)*(n*n²²)², 2)/2))`
-/

namespace A170793.P3318379263795742800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((Nat.choose ((n + 1) * (n * (n ^ 2) ^ 2) ^ 2) 2 : ℚ) / 2 : ℝ))

end

end A170793.P3318379263795742800

namespace A170793

/-- `round(sqrt(C((n+1)*(n*n²²)², 2)/2))` -/
def P3318379263795742800.Spec : Prop :=
  ∀ n, P3318379263795742800.a n = A170793 n

end A170793

/-! ## A170793.P5252796122290580426

`(n+1)*A008454(n)/2`
-/

namespace A170793.P5252796122290580426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A008454 n : ℚ) / 2

end

end A170793.P5252796122290580426

namespace A170793

/-- `(n+1)*A008454(n)/2` -/
def P5252796122290580426.Spec : Prop :=
  ∀ n, P5252796122290580426.a n = (A170793 n : ℚ)

end A170793

/-! ## A170793.P10911363540248499060

`gcd(A170795(n), A170797(n))`
-/

namespace A170793.P10911363540248499060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170795 n) (A170797 n)

end

end A170793.P10911363540248499060

namespace A170793

/-- `gcd(A170795(n), A170797(n))` -/
def P10911363540248499060.Spec : Prop :=
  ∀ n, (P10911363540248499060.a n : ℤ) = A170793 n

end A170793

/-! ## A170793.P10407180095780205437

`gcd(A170799(n), A170801(n))`
-/

namespace A170793.P10407180095780205437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170799 n) (A170801 n)

end

end A170793.P10407180095780205437

namespace A170793

/-- `gcd(A170799(n), A170801(n))` -/
def P10407180095780205437.Spec : Prop :=
  ∀ n, (P10407180095780205437.a n : ℤ) = A170793 n

end A170793

/-! ## A170793.P16671606978692581904

`A001017(n)*A002378(n)/2`
-/

namespace A170793.P16671606978692581904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001017 n * A002378 n : ℚ) / 2

end

end A170793.P16671606978692581904

namespace A170793

/-- `A001017(n)*A002378(n)/2` -/
def P16671606978692581904.Spec : Prop :=
  ∀ n, P16671606978692581904.a n = (A170793 n : ℚ)

end A170793

/-! ## A170793.P15648398713594772422

`(A008455(n)+A000584(n)²)/2`
-/

namespace A170793.P15648398713594772422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008455 n + A000584 n ^ 2 : ℚ) / 2

end

end A170793.P15648398713594772422

namespace A170793

/-- `(A008455(n)+A000584(n)²)/2` -/
def P15648398713594772422.Spec : Prop :=
  ∀ n, P15648398713594772422.a n = (A170793 n : ℚ)

end A170793

/-! ## A170793.P6095808038985181725

`A000583(n)²*A011379(n)/2`
-/

namespace A170793.P6095808038985181725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n ^ 2 * A011379 n : ℚ) / 2

end

end A170793.P6095808038985181725

namespace A170793

/-- `A000583(n)²*A011379(n)/2` -/
def P6095808038985181725.Spec : Prop :=
  ∀ n, P6095808038985181725.a n = (A170793 n : ℚ)

end A170793

/-! ## A170793.P7111371628879746379

`n²*A170775(n)/A002061(n)`
-/

namespace A170793.P7111371628879746379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A170775 n : ℚ) / (A002061 n : ℚ)

end

end A170793.P7111371628879746379

namespace A170793

/-- `n²*A170775(n)/A002061(n)` -/
def P7111371628879746379.Spec : Prop :=
  ∀ n, P7111371628879746379.a n = (A170793 n : ℚ)

end A170793

/-! ## A170793.P6960477851940420170

`n²*A170783(n)/A028310(n)`
-/

namespace A170793.P6960477851940420170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A170783 n : ℚ) / (A028310 n : ℚ)

end

end A170793.P6960477851940420170

namespace A170793

/-- `n²*A170783(n)/A028310(n)` -/
def P6960477851940420170.Spec : Prop :=
  ∀ n, P6960477851940420170.a n = (A170793 n : ℚ)

end A170793

/-! ## A170793.P15949249270250708623

`(n+1)*A168660(n)-A168635(n)`
-/

namespace A170793.P15949249270250708623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A168660 n - A168635 n

end

end A170793.P15949249270250708623

namespace A170793

/-- `(n+1)*A168660(n)-A168635(n)` -/
def P15949249270250708623.Spec : Prop :=
  ∀ n, P15949249270250708623.a n = A170793 n

end A170793

/-! ## A170793.P10161186439366689553

`n²²*A168675(n)/A253909(n)`
-/

namespace A170793.P10161186439366689553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2 : ℤ) * A168675 n : ℚ) / (A253909 n : ℚ)

end

end A170793.P10161186439366689553

namespace A170793

/-- `n²²*A168675(n)/A253909(n)` -/
def P10161186439366689553.Spec : Prop :=
  ∀ n, P10161186439366689553.a n = (A170793 n : ℚ)

end A170793

/-! ## A170793.P4305692624773968598

`A168660(n)+A168661(n)-A001015(n)`
-/

namespace A170793.P4305692624773968598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168660 n + (A168661 n - A001015 n)

end

end A170793.P4305692624773968598

namespace A170793

/-- `A168660(n)+A168661(n)-A001015(n)` -/
def P4305692624773968598.Spec : Prop :=
  ∀ n, P4305692624773968598.a n = A170793 n

end A170793

/-! ## A170793.P6686634726375389253

`A000583(A000290(n))*A011379(n)/2`
-/

namespace A170793.P6686634726375389253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 (A000290 n).toNat * A011379 n : ℚ) / 2

end

end A170793.P6686634726375389253

namespace A170793

/-- `A000583(A000290(n))*A011379(n)/2` -/
def P6686634726375389253.Spec : Prop :=
  ∀ n, P6686634726375389253.a n = (A170793 n : ℚ)

end A170793

/-!
# A170794: a(n) = n^10*(n^2 + 1)/2.

The programs for A170794, the canonical program `A170794.P18188135599718808990` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170794 has offset 0).

The definition of A170794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170794.P18188135599718808990

`n^10*(n²+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170794

/-- `n^10*(n²+1)/2` -/
def P18188135599718808990.Spec : Prop :=
  ∀ n, P18188135599718808990.a n = (A170794 n : ℚ)

end A170794

/-! ## A170794.P17653701662462511018

`gcd(A170798(n), A170802(n))`
-/

namespace A170794.P17653701662462511018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170798 n) (A170802 n)

end

end A170794.P17653701662462511018

namespace A170794

/-- `gcd(A170798(n), A170802(n))` -/
def P17653701662462511018.Spec : Prop :=
  ∀ n, (P17653701662462511018.a n : ℤ) = A170794 n

end A170794

/-! ## A170794.P1082588449723167997

`-A001489(n)*A170784(n)`
-/

namespace A170794.P1082588449723167997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A170784 n)

end

end A170794.P1082588449723167997

namespace A170794

/-- `-A001489(n)*A170784(n)` -/
def P1082588449723167997.Spec : Prop :=
  ∀ n, P1082588449723167997.a n = A170794 n

end A170794

/-! ## A170794.P14679452019136799659

`A001015(n)*A155977(n)/2`
-/

namespace A170794.P14679452019136799659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001015 n * A155977 n : ℚ) / 2

end

end A170794.P14679452019136799659

namespace A170794

/-- `A001015(n)*A155977(n)/2` -/
def P14679452019136799659.Spec : Prop :=
  ∀ n, P14679452019136799659.a n = (A170794 n : ℚ)

end A170794

/-! ## A170794.P8477258108140089880

`A000584(n)²*A002522(n)/2`
-/

namespace A170794.P8477258108140089880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000584 n ^ 2 * A002522 n : ℚ) / 2

end

end A170794.P8477258108140089880

namespace A170794

/-- `A000584(n)²*A002522(n)/2` -/
def P8477258108140089880.Spec : Prop :=
  ∀ n, P8477258108140089880.a n = (A170794 n : ℚ)

end A170794

/-! ## A170794.P1403373201246964409

`A000583(n)²*A071253(n)/2`
-/

namespace A170794.P1403373201246964409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n ^ 2 * A071253 n : ℚ) / 2

end

end A170794.P1403373201246964409

namespace A170794

/-- `A000583(n)²*A071253(n)/2` -/
def P1403373201246964409.Spec : Prop :=
  ∀ n, P1403373201246964409.a n = (A170794 n : ℚ)

end A170794

/-! ## A170794.P7141079159770495232

`(n+1)*A170785(n)-A170786(n)`
-/

namespace A170794.P7141079159770495232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A170785 n - A170786 n

end

end A170794.P7141079159770495232

namespace A170794

/-- `(n+1)*A170785(n)-A170786(n)` -/
def P7141079159770495232.Spec : Prop :=
  ∀ n, P7141079159770495232.a n = A170794 n

end A170794

/-! ## A170794.P10808395678750682510

`n^10+A170776(n)-A170774(n)`
-/

namespace A170794.P10808395678750682510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 10 : ℤ) + (A170776 n - A170774 n)

end

end A170794.P10808395678750682510

namespace A170794

/-- `n^10+A170776(n)-A170774(n)` -/
def P10808395678750682510.Spec : Prop :=
  ∀ n, P10808395678750682510.a n = A170794 n

end A170794

/-! ## A170794.P17281422805835998576

`A168660(n)+A168662(n)-A001015(n)`
-/

namespace A170794.P17281422805835998576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168660 n + (A168662 n - A001015 n)

end

end A170794.P17281422805835998576

namespace A170794

/-- `A168660(n)+A168662(n)-A001015(n)` -/
def P17281422805835998576.Spec : Prop :=
  ∀ n, P17281422805835998576.a n = A170794 n

end A170794

/-! ## A170794.P16643802465932061973

`gcd(A170780(n)+A170793(n)-A170775(n), (n^10+n^20)/2)`
-/

namespace A170794.P16643802465932061973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170780 n + (A170793 n - A170775 n)) (SequenceMachineLib.roundAway ((n ^ 10 + n ^ 20 : ℚ) / 2))

end

end A170794.P16643802465932061973

namespace A170794

/-- `gcd(A170780(n)+A170793(n)-A170775(n), (n^10+n^20)/2)` -/
def P16643802465932061973.Spec : Prop :=
  ∀ n, (P16643802465932061973.a n : ℤ) = A170794 n

end A170794

/-! ## A170794.P14926539154324780267

`A168351(n²)`
-/

namespace A170794.P14926539154324780267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168351 (n ^ 2)

end

end A170794.P14926539154324780267

namespace A170794

/-- `A168351(n²)` -/
def P14926539154324780267.Spec : Prop :=
  ∀ n, P14926539154324780267.a n = A170794 n

end A170794

/-! ## A170794.P11142461128363262126

`lcm(n, A168351(A000290(n)))`
-/

namespace A170794.P11142461128363262126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A168351 (A000290 n).toNat)

end

end A170794.P11142461128363262126

namespace A170794

/-- `lcm(n, A168351(A000290(n)))` -/
def P11142461128363262126.Spec : Prop :=
  ∀ n, (P11142461128363262126.a n : ℤ) = A170794 n

end A170794

/-! ## A170794.P8464680352520734895

`A168564(n)+A085744(n²)`
-/

namespace A170794.P8464680352520734895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168564 n + A085744 (n ^ 2)

end

end A170794.P8464680352520734895

namespace A170794

/-- `A168564(n)+A085744(n²)` -/
def P8464680352520734895.Spec : Prop :=
  ∀ n, P8464680352520734895.a n = A170794 n

end A170794

/-! ## A170794.P12920188976624548250

`record[A168351(n*A010052(n))]`
-/

namespace A170794.P12920188976624548250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168351 ((n : ℤ) * A010052 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170794.P12920188976624548250

namespace A170794

/-- `record[A168351(n*A010052(n))]` -/
def P12920188976624548250.Spec : Prop :=
  ∀ n, P12920188976624548250.a n = A170794 n

end A170794

/-! ## A170794.P3631225751227764538

`or(A168351(A000290(n)), A178333(n))`
-/

namespace A170794.P3631225751227764538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A168351 (A000290 n).toNat) (A178333 n)

end

end A170794.P3631225751227764538

namespace A170794

/-- `or(A168351(A000290(n)), A178333(n))` -/
def P3631225751227764538.Spec : Prop :=
  ∀ n, P3631225751227764538.a n = A170794 n

end A170794

/-! ## A170794.P9062394830257215325

`A163275(n²)/A002522(n)`
-/

namespace A170794.P9062394830257215325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163275 (n ^ 2) : ℚ) / (A002522 n : ℚ)

end

end A170794.P9062394830257215325

namespace A170794

/-- `A163275(n²)/A002522(n)` -/
def P9062394830257215325.Spec : Prop :=
  ∀ n, P9062394830257215325.a n = (A170794 n : ℚ)

end A170794

/-!
# A170795: a(n) = n^10*(n^3 + 1)/2.

The programs for A170795, the canonical program `A170795.P417841984687060692` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170795 has offset 0).

The definition of A170795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170795.P417841984687060692

`n^10*(n^3+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170795

/-- `n^10*(n^3+1)/2` -/
def P417841984687060692.Spec : Prop :=
  ∀ n, P417841984687060692.a n = (A170795 n : ℚ)

end A170795

/-! ## A170795.P260840543829592610

`lcm(n, n*A170785(n))`
-/

namespace A170795.P260840543829592610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * A170785 n)

end

end A170795.P260840543829592610

namespace A170795

/-- `lcm(n, n*A170785(n))` -/
def P260840543829592610.Spec : Prop :=
  ∀ n, (P260840543829592610.a n : ℤ) = A170795 n

end A170795

/-! ## A170795.P11708084490076811462

`lcm(A027441(n), A170793(n))`
-/

namespace A170795.P11708084490076811462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027441 n) (A170793 n)

end

end A170795.P11708084490076811462

namespace A170795

/-- `lcm(A027441(n), A170793(n))` -/
def P11708084490076811462.Spec : Prop :=
  ∀ n, (P11708084490076811462.a n : ℤ) = A170795 n

end A170795

/-! ## A170795.P16412723923745561833

`A168555(n)*A244730(n)/2`
-/

namespace A170795.P16412723923745561833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168555 n * A244730 n : ℚ) / 2

end

end A170795.P16412723923745561833

namespace A170795

/-- `A168555(n)*A244730(n)/2` -/
def P16412723923745561833.Spec : Prop :=
  ∀ n, P16412723923745561833.a n = (A170795 n : ℚ)

end A170795

/-! ## A170795.P3005178828171820703

`lcm(n*A170783(n), A168371(n))`
-/

namespace A170795.P3005178828171820703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) * A170783 n) (A168371 n)

end

end A170795.P3005178828171820703

namespace A170795

/-- `lcm(n*A170783(n), A168371(n))` -/
def P3005178828171820703.Spec : Prop :=
  ∀ n, (P3005178828171820703.a n : ℤ) = A170795 n

end A170795

/-! ## A170795.P17193816990577091031

`(A010801(n)+A000584(n)²)/2`
-/

namespace A170795.P17193816990577091031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010801 n + A000584 n ^ 2 : ℚ) / 2

end

end A170795.P17193816990577091031

namespace A170795

/-- `(A010801(n)+A000584(n)²)/2` -/
def P17193816990577091031.Spec : Prop :=
  ∀ n, P17193816990577091031.a n = (A170795 n : ℚ)

end A170795

/-! ## A170795.P8389507043259040109

`A168555(n)/(1/A253909(n))²`
-/

namespace A170795.P8389507043259040109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168555 n : ℚ) / (1 / (A253909 n : ℚ)) ^ 2

end

end A170795.P8389507043259040109

namespace A170795

/-- `A168555(n)/(1/A253909(n))²` -/
def P8389507043259040109.Spec : Prop :=
  ∀ n, P8389507043259040109.a n = (A170795 n : ℚ)

end A170795

/-! ## A170795.P12551176647450096102

`n^10+A170777(n)-A170774(n)`
-/

namespace A170795.P12551176647450096102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 10 : ℤ) + (A170777 n - A170774 n)

end

end A170795.P12551176647450096102

namespace A170795

/-- `n^10+A170777(n)-A170774(n)` -/
def P12551176647450096102.Spec : Prop :=
  ∀ n, P12551176647450096102.a n = A170795 n

end A170795

/-! ## A170795.P8708220247028278057

`A000583(n)*A168555(n)/gcd(n, n+1)`
-/

namespace A170795.P8708220247028278057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n * A168555 n : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A170795.P8708220247028278057

namespace A170795

/-- `A000583(n)*A168555(n)/gcd(n, n+1)` -/
def P8708220247028278057.Spec : Prop :=
  ∀ n, P8708220247028278057.a n = (A170795 n : ℚ)

end A170795

/-! ## A170795.P12806868047300774183

`A170777(n)+A170793(n)-A170775(n)`
-/

namespace A170795.P12806868047300774183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170777 n + (A170793 n - A170775 n)

end

end A170795.P12806868047300774183

namespace A170795

/-- `A170777(n)+A170793(n)-A170775(n)` -/
def P12806868047300774183.Spec : Prop :=
  ∀ n, P12806868047300774183.a n = A170795 n

end A170795

/-! ## A170795.P9695550750221571062

`A002523(n)*A168555(n)-A168555(n)`
-/

namespace A170795.P9695550750221571062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n * A168555 n - A168555 n

end

end A170795.P9695550750221571062

namespace A170795

/-- `A002523(n)*A168555(n)-A168555(n)` -/
def P9695550750221571062.Spec : Prop :=
  ∀ n, P9695550750221571062.a n = A170795 n

end A170795

/-! ## A170795.P16177563075445179073

`gcd(A000583(n)*A168555(n), A168555(n)²)`
-/

namespace A170795.P16177563075445179073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000583 n * A168555 n) (A168555 n ^ 2)

end

end A170795.P16177563075445179073

namespace A170795

/-- `gcd(A000583(n)*A168555(n), A168555(n)²)` -/
def P16177563075445179073.Spec : Prop :=
  ∀ n, (P16177563075445179073.a n : ℤ) = A170795 n

end A170795

/-! ## A170795.P13587677268517416961

`lcm(A170775(n), A170793(A137735(n²)))`
-/

namespace A170795.P13587677268517416961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A170775 n) (A170793 (A137735 (n ^ 2)).toNat)

end

end A170795.P13587677268517416961

namespace A170795

/-- `lcm(A170775(n), A170793(A137735(n²)))` -/
def P13587677268517416961.Spec : Prop :=
  ∀ n, (P13587677268517416961.a n : ℤ) = A170795 n

end A170795

/-!
# A170796: a(n) = n^10*(n^4 + 1)/2.

The programs for A170796, the canonical program `A170796.P373953073811796264` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170796 has offset 0).

The definition of A170796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170796.P373953073811796264

`n^10*(n^4+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170796

/-- `n^10*(n^4+1)/2` -/
def P373953073811796264.Spec : Prop :=
  ∀ n, P373953073811796264.a n = (A170796 n : ℚ)

end A170796

/-! ## A170796.P6520908841110583455

`-A001489(n)*A170786(n)`
-/

namespace A170796.P6520908841110583455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A170786 n)

end

end A170796.P6520908841110583455

namespace A170796

/-- `-A001489(n)*A170786(n)` -/
def P6520908841110583455.Spec : Prop :=
  ∀ n, P6520908841110583455.a n = A170796 n

end A170796

/-! ## A170796.P17782279915756028309

`(A010802(n)+A000584(n)²)/2`
-/

namespace A170796.P17782279915756028309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010802 n + A000584 n ^ 2 : ℚ) / 2

end

end A170796.P17782279915756028309

namespace A170796

/-- `(A010802(n)+A000584(n)²)/2` -/
def P17782279915756028309.Spec : Prop :=
  ∀ n, P17782279915756028309.a n = (A170796 n : ℚ)

end A170796

/-! ## A170796.P2511222677325129363

`-n*A001489(n)*A170776(n)`
-/

namespace A170796.P2511222677325129363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (A001489 n * A170776 n))

end

end A170796.P2511222677325129363

namespace A170796

/-- `-n*A001489(n)*A170776(n)` -/
def P2511222677325129363.Spec : Prop :=
  ∀ n, P2511222677325129363.a n = A170796 n

end A170796

/-! ## A170796.P9992294817309779702

`n²*A170786(n)/A028310(n)`
-/

namespace A170796.P9992294817309779702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A170786 n : ℚ) / (A028310 n : ℚ)

end

end A170796.P9992294817309779702

namespace A170796

/-- `n²*A170786(n)/A028310(n)` -/
def P9992294817309779702.Spec : Prop :=
  ∀ n, P9992294817309779702.a n = (A170796 n : ℚ)

end A170796

/-! ## A170796.P2704036033273247071

`A060890(n)*A168122(n)-A168122(n)`
-/

namespace A170796.P2704036033273247071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060890 n * A168122 n - A168122 n

end

end A170796.P2704036033273247071

namespace A170796

/-- `A060890(n)*A168122(n)-A168122(n)` -/
def P2704036033273247071.Spec : Prop :=
  ∀ n, P2704036033273247071.a n = A170796 n

end A170796

/-! ## A170796.P17020453735764698292

`A168364(n²)`
-/

namespace A170796.P17020453735764698292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168364 (n ^ 2)

end

end A170796.P17020453735764698292

namespace A170796

/-- `A168364(n²)` -/
def P17020453735764698292.Spec : Prop :=
  ∀ n, P17020453735764698292.a n = A170796 n

end A170796

/-! ## A170796.P12414980866827171117

`record[A168364(Δ[A028724(n)])]`
-/

namespace A170796.P12414980866827171117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168364 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170796.P12414980866827171117

namespace A170796

/-- `record[A168364(Δ[A028724(n)])]` -/
def P12414980866827171117.Spec : Prop :=
  ∀ n, P12414980866827171117.a n = A170796 n

end A170796

/-! ## A170796.P17399203471374518366

`A168364(A000290(n))+A064834(A047813(n))`
-/

namespace A170796.P17399203471374518366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168364 (A000290 n).toNat + A064834 (A047813 n).toNat

end

end A170796.P17399203471374518366

namespace A170796

/-- `A168364(A000290(n))+A064834(A047813(n))` -/
def P17399203471374518366.Spec : Prop :=
  ∀ n, P17399203471374518366.a n = A170796 n

end A170796

/-! ## A170796.P7870181882409539755

`A168364(A000290(n))+A064834(A064834(n))`
-/

namespace A170796.P7870181882409539755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168364 (A000290 n).toNat + A064834 (A064834 n).toNat

end

end A170796.P7870181882409539755

namespace A170796

/-- `A168364(A000290(n))+A064834(A064834(n))` -/
def P7870181882409539755.Spec : Prop :=
  ∀ n, P7870181882409539755.a n = A170796 n

end A170796

/-! ## A170796.P8916943790693620758

`A168527(n²)/A253909(n)`
-/

namespace A170796.P8916943790693620758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168527 (n ^ 2) : ℚ) / (A253909 n : ℚ)

end

end A170796.P8916943790693620758

namespace A170796

/-- `A168527(n²)/A253909(n)` -/
def P8916943790693620758.Spec : Prop :=
  ∀ n, P8916943790693620758.a n = (A170796 n : ℚ)

end A170796

/-! ## A170796.P3953165508710849739

`record[n*A168192(A037213(n)²)]`
-/

namespace A170796.P3953165508710849739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168192 (A037213 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170796.P3953165508710849739

namespace A170796

/-- `record[n*A168192(A037213(n)²)]` -/
def P3953165508710849739.Spec : Prop :=
  ∀ n, P3953165508710849739.a n = A170796 n

end A170796

/-!
# A170797: a(n) = n^10*(n^5+1)/2.

The programs for A170797, the canonical program `A170797.P12850498550503854552` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170797 has offset 0).

The definition of A170797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170797.P12850498550503854552

`n^10*(n^5+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170797

/-- `n^10*(n^5+1)/2` -/
def P12850498550503854552.Spec : Prop :=
  ∀ n, P12850498550503854552.a n = (A170797 n : ℚ)

end A170797

/-! ## A170797.P18183583512775724554

`lcm(A071236(n), A170793(n))`
-/

namespace A170797.P18183583512775724554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071236 n) (A170793 n)

end

end A170797.P18183583512775724554

namespace A170797

/-- `lcm(A071236(n), A170793(n))` -/
def P18183583512775724554.Spec : Prop :=
  ∀ n, (P18183583512775724554.a n : ℤ) = A170797 n

end A170797

/-! ## A170797.P18225964659942419460

`A004277(n)*A170787(n)/2`
-/

namespace A170797.P18225964659942419460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n * A170787 n : ℚ) / 2

end

end A170797.P18225964659942419460

namespace A170797

/-- `A004277(n)*A170787(n)/2` -/
def P18225964659942419460.Spec : Prop :=
  ∀ n, P18225964659942419460.a n = (A170797 n : ℚ)

end A170797

/-! ## A170797.P6740812521828681705

`(A010803(n)+A000584(n)²)/2`
-/

namespace A170797.P6740812521828681705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010803 n + A000584 n ^ 2 : ℚ) / 2

end

end A170797.P6740812521828681705

namespace A170797

/-- `(A010803(n)+A000584(n)²)/2` -/
def P6740812521828681705.Spec : Prop :=
  ∀ n, P6740812521828681705.a n = (A170797 n : ℚ)

end A170797

/-! ## A170797.P12769178852535694318

`A170777(n)/(1/A028310(n))²`
-/

namespace A170797.P12769178852535694318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170777 n : ℚ) / (1 / (A028310 n : ℚ)) ^ 2

end

end A170797.P12769178852535694318

namespace A170797

/-- `A170777(n)/(1/A028310(n))²` -/
def P12769178852535694318.Spec : Prop :=
  ∀ n, P12769178852535694318.a n = (A170797 n : ℚ)

end A170797

/-! ## A170797.P15715321119319319098

`A168627(n)/(1/A253909(n))²`
-/

namespace A170797.P15715321119319319098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168627 n : ℚ) / (1 / (A253909 n : ℚ)) ^ 2

end

end A170797.P15715321119319319098

namespace A170797

/-- `A168627(n)/(1/A253909(n))²` -/
def P15715321119319319098.Spec : Prop :=
  ∀ n, P15715321119319319098.a n = (A170797 n : ℚ)

end A170797

/-! ## A170797.P15172282270419554471

`lcm(A170777(n), A170793(A028310(n)))`
-/

namespace A170797.P15172282270419554471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A170777 n) (A170793 (A028310 n).toNat)

end

end A170797.P15172282270419554471

namespace A170797

/-- `lcm(A170777(n), A170793(A028310(n)))` -/
def P15172282270419554471.Spec : Prop :=
  ∀ n, (P15172282270419554471.a n : ℤ) = A170797 n

end A170797

/-! ## A170797.P237867532800448176

`A168660(n)+A168665(n)-A001015(n)`
-/

namespace A170797.P237867532800448176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168660 n + (A168665 n - A001015 n)

end

end A170797.P237867532800448176

namespace A170797

/-- `A168660(n)+A168665(n)-A001015(n)` -/
def P237867532800448176.Spec : Prop :=
  ∀ n, P237867532800448176.a n = A170797 n

end A170797

/-! ## A170797.P2694537036521470861

`A170779(n)+A170793(n)-A170775(n)`
-/

namespace A170797.P2694537036521470861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170779 n + (A170793 n - A170775 n)

end

end A170797.P2694537036521470861

namespace A170797

/-- `A170779(n)+A170793(n)-A170775(n)` -/
def P2694537036521470861.Spec : Prop :=
  ∀ n, P2694537036521470861.a n = A170797 n

end A170797

/-! ## A170797.P4284740316923221435

`A170779(n)+A170794(n)-A170776(n)`
-/

namespace A170797.P4284740316923221435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170779 n + (A170794 n - A170776 n)

end

end A170797.P4284740316923221435

namespace A170797

/-- `A170779(n)+A170794(n)-A170776(n)` -/
def P4284740316923221435.Spec : Prop :=
  ∀ n, P4284740316923221435.a n = A170797 n

end A170797

/-! ## A170797.P14788454547489395802

`A170779(n)+A170798(n)-A170780(n)`
-/

namespace A170797.P14788454547489395802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170779 n + (A170798 n - A170780 n)

end

end A170797.P14788454547489395802

namespace A170797

/-- `A170779(n)+A170798(n)-A170780(n)` -/
def P14788454547489395802.Spec : Prop :=
  ∀ n, P14788454547489395802.a n = A170797 n

end A170797

/-! ## A170797.P4845303370963068435

`(n-1)*A000583(n)*A071236(n)+A000583(n)*A071236(n)`
-/

namespace A170797.P4845303370963068435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (A000583 n * A071236 n) + A000583 n * A071236 n

end

end A170797.P4845303370963068435

namespace A170797

/-- `(n-1)*A000583(n)*A071236(n)+A000583(n)*A071236(n)` -/
def P4845303370963068435.Spec : Prop :=
  ∀ n, P4845303370963068435.a n = A170797 n

end A170797

/-!
# A170798: a(n) = n^10*(n^6 + 1)/2.

The programs for A170798, the canonical program `A170798.P3271590631186268660` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170798 has offset 0).

The definition of A170798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170798.P3271590631186268660

`n^10*(n^6+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170798

/-- `n^10*(n^6+1)/2` -/
def P3271590631186268660.Spec : Prop :=
  ∀ n, P3271590631186268660.a n = (A170798 n : ℚ)

end A170798

/-! ## A170798.P13518552169732148185

`lcm(A170778(n), A170794(n))`
-/

namespace A170798.P13518552169732148185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A170778 n) (A170794 n)

end

end A170798.P13518552169732148185

namespace A170798

/-- `lcm(A170778(n), A170794(n))` -/
def P13518552169732148185.Spec : Prop :=
  ∀ n, (P13518552169732148185.a n : ℤ) = A170798 n

end A170798

/-! ## A170798.P7339057096667304387

`(A010804(n)+A000584(n)²)/2`
-/

namespace A170798.P7339057096667304387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010804 n + A000584 n ^ 2 : ℚ) / 2

end

end A170798.P7339057096667304387

namespace A170798

/-- `(A010804(n)+A000584(n)²)/2` -/
def P7339057096667304387.Spec : Prop :=
  ∀ n, P7339057096667304387.a n = (A170798 n : ℚ)

end A170798

/-! ## A170798.P14298857847428445692

`(A001016(n)²+A000584(n)²)/2`
-/

namespace A170798.P14298857847428445692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001016 n ^ 2 + A000584 n ^ 2 : ℚ) / 2

end

end A170798.P14298857847428445692

namespace A170798

/-- `(A001016(n)²+A000584(n)²)/2` -/
def P14298857847428445692.Spec : Prop :=
  ∀ n, P14298857847428445692.a n = (A170798 n : ℚ)

end A170798

/-! ## A170798.P12256525874238065385

`A168660(n)+A168666(n)-A001015(n)`
-/

namespace A170798.P12256525874238065385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168660 n + (A168666 n - A001015 n)

end

end A170798.P12256525874238065385

namespace A170798

/-- `A168660(n)+A168666(n)-A001015(n)` -/
def P12256525874238065385.Spec : Prop :=
  ∀ n, P12256525874238065385.a n = A170798 n

end A170798

/-! ## A170798.P6564800663750632729

`A170780(n)+A170793(n)-A170775(n)`
-/

namespace A170798.P6564800663750632729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170780 n + (A170793 n - A170775 n)

end

end A170798.P6564800663750632729

namespace A170798

/-- `A170780(n)+A170793(n)-A170775(n)` -/
def P6564800663750632729.Spec : Prop :=
  ∀ n, P6564800663750632729.a n = A170798 n

end A170798

/-! ## A170798.P3171787492622690509

`A168371(n²)`
-/

namespace A170798.P3171787492622690509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168371 (n ^ 2)

end

end A170798.P3171787492622690509

namespace A170798

/-- `A168371(n²)` -/
def P3171787492622690509.Spec : Prop :=
  ∀ n, P3171787492622690509.a n = A170798 n

end A170798

/-! ## A170798.P4923980014085309198

`lcm(n, A168371(A000290(n)))`
-/

namespace A170798.P4923980014085309198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A168371 (A000290 n).toNat)

end

end A170798.P4923980014085309198

namespace A170798

/-- `lcm(n, A168371(A000290(n)))` -/
def P4923980014085309198.Spec : Prop :=
  ∀ n, (P4923980014085309198.a n : ℤ) = A170798 n

end A170798

/-! ## A170798.P15757511233745271884

`A168555(n²)/A253909(n)`
-/

namespace A170798.P15757511233745271884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168555 (n ^ 2) : ℚ) / (A253909 n : ℚ)

end

end A170798.P15757511233745271884

namespace A170798

/-- `A168555(n²)/A253909(n)` -/
def P15757511233745271884.Spec : Prop :=
  ∀ n, P15757511233745271884.a n = (A170798 n : ℚ)

end A170798

/-!
# A170799: a(n) = n^10*(n^7 + 1)/2.

The programs for A170799, the canonical program `A170799.P6572122554981811327` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170799 has offset 0).

The definition of A170799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170799.P6572122554981811327

`n^10*(n^7+1)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A170799

/-- `n^10*(n^7+1)/2` -/
def P6572122554981811327.Spec : Prop :=
  ∀ n, P6572122554981811327.a n = (A170799 n : ℚ)

end A170799

/-! ## A170799.P11648031542316015057

`lcm(A168067(n), A170793(n))`
-/

namespace A170799.P11648031542316015057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168067 n) (A170793 n)

end

end A170799.P11648031542316015057

namespace A170799

/-- `lcm(A168067(n), A170793(n))` -/
def P11648031542316015057.Spec : Prop :=
  ∀ n, (P11648031542316015057.a n : ℤ) = A170799 n

end A170799

/-! ## A170799.P5970940215608096929

`(A010805(n)+A000584(n)²)/2`
-/

namespace A170799.P5970940215608096929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010805 n + A000584 n ^ 2 : ℚ) / 2

end

end A170799.P5970940215608096929

namespace A170799

/-- `(A010805(n)+A000584(n)²)/2` -/
def P5970940215608096929.Spec : Prop :=
  ∀ n, P5970940215608096929.a n = (A170799 n : ℚ)

end A170799

/-! ## A170799.P11101228364440448102

`A170779(n)/(1/A028310(n))²`
-/

namespace A170799.P11101228364440448102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170779 n : ℚ) / (1 / (A028310 n : ℚ)) ^ 2

end

end A170799.P11101228364440448102

namespace A170799

/-- `A170779(n)/(1/A028310(n))²` -/
def P11101228364440448102.Spec : Prop :=
  ∀ n, P11101228364440448102.a n = (A170799 n : ℚ)

end A170799

/-! ## A170799.P12733904752325409426

`lcm(A170779(n), A170793(A028310(n)))`
-/

namespace A170799.P12733904752325409426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A170779 n) (A170793 (A028310 n).toNat)

end

end A170799.P12733904752325409426

namespace A170799

/-- `lcm(A170779(n), A170793(A028310(n)))` -/
def P12733904752325409426.Spec : Prop :=
  ∀ n, (P12733904752325409426.a n : ℤ) = A170799 n

end A170799

/-! ## A170799.P12980911983424303636

`A170781(n)+A170793(n)-A170775(n)`
-/

namespace A170799.P12980911983424303636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170781 n + (A170793 n - A170775 n)

end

end A170799.P12980911983424303636

namespace A170799

/-- `A170781(n)+A170793(n)-A170775(n)` -/
def P12980911983424303636.Spec : Prop :=
  ∀ n, P12980911983424303636.a n = A170799 n

end A170799

/-! ## A170799.P7111613203679686876

`A170781(n)+A170794(n)-A170776(n)`
-/

namespace A170799.P7111613203679686876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170781 n + (A170794 n - A170776 n)

end

end A170799.P7111613203679686876

namespace A170799

/-- `A170781(n)+A170794(n)-A170776(n)` -/
def P7111613203679686876.Spec : Prop :=
  ∀ n, P7111613203679686876.a n = A170799 n

end A170799

/-! ## A170799.P12324020855533566405

`A170781(n)+A170797(n)-A170779(n)`
-/

namespace A170799.P12324020855533566405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170781 n + (A170797 n - A170779 n)

end

end A170799.P12324020855533566405

namespace A170799

/-- `A170781(n)+A170797(n)-A170779(n)` -/
def P12324020855533566405.Spec : Prop :=
  ∀ n, P12324020855533566405.a n = A170799 n

end A170799

