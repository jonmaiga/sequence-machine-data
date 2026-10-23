import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C010
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A170732: 

The programs for A170732, there is no canonical definition to state claims against.
-/

/-! ## A170732.P17969728335038551256

`ogf((1+x)/(1-12x))`
-/

namespace A170732.P17969728335038551256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -12] n

end

end A170732.P17969728335038551256

/-! ## A170732.P2225756197690190648

`12*a(n-1)` with `a(0)=1, a(1)=13`
-/

namespace A170732.P2225756197690190648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n a =>
  12 * a (n - 1)

end

end A170732.P2225756197690190648

/-!
# A170733: 

The programs for A170733, there is no canonical definition to state claims against.
-/

/-! ## A170733.P11769070280618755485

`ogf((1+x)/(1-13x))`
-/

namespace A170733.P11769070280618755485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -13] n

end

end A170733.P11769070280618755485

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
# A170734: 

The programs for A170734, there is no canonical definition to state claims against.
-/

/-! ## A170734.P11135884649472492843

`ogf((1+x)/(1-14x))`
-/

namespace A170734.P11135884649472492843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -14] n

end

end A170734.P11135884649472492843

/-! ## A170734.P12976019776113103099

`14*a(n-1)` with `a(0)=1, a(1)=15`
-/

namespace A170734.P12976019776113103099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n a =>
  14 * a (n - 1)

end

end A170734.P12976019776113103099

/-!
# A170735: 

The programs for A170735, there is no canonical definition to state claims against.
-/

/-! ## A170735.P11526954450014034393

`ogf((1+x)/(1-15x))`
-/

namespace A170735.P11526954450014034393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -15] n

end

end A170735.P11526954450014034393

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
# A170736: 

The programs for A170736, there is no canonical definition to state claims against.
-/

/-! ## A170736.P17462115914097779655

`ogf((1+x)/(1-16x))`
-/

namespace A170736.P17462115914097779655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -16] n

end

end A170736.P17462115914097779655

/-! ## A170736.P10576529304038664288

`16*a(n-1)` with `a(0)=1, a(1)=17`
-/

namespace A170736.P10576529304038664288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n a =>
  16 * a (n - 1)

end

end A170736.P10576529304038664288

/-! ## A170736.P9909948170335760900

`and(Δ[A167033(n)]², A166965(n))`
-/

namespace A170736.P9909948170335760900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((f1 (n + 1) - f1 n) ^ 2) (A166965 n)

end

end A170736.P9909948170335760900

/-!
# A170737: 

The programs for A170737, there is no canonical definition to state claims against.
-/

/-! ## A170737.P18350919071796565174

`ogf((1+x)/(1-17x))`
-/

namespace A170737.P18350919071796565174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -17] n

end

end A170737.P18350919071796565174

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
# A170738: 

The programs for A170738, there is no canonical definition to state claims against.
-/

/-! ## A170738.P11843375436429953579

`ogf((1+x)/(1-18x))`
-/

namespace A170738.P11843375436429953579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -18] n

end

end A170738.P11843375436429953579

/-! ## A170738.P8444279424054228634

`18*a(n-1)` with `a(0)=1, a(1)=19`
-/

namespace A170738.P8444279424054228634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 19] fun n a =>
  18 * a (n - 1)

end

end A170738.P8444279424054228634

/-!
# A170739: 

The programs for A170739, there is no canonical definition to state claims against.
-/

/-! ## A170739.P3899293928595585302

`ogf((1+x)/(1-19x))`
-/

namespace A170739.P3899293928595585302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -19] n

end

end A170739.P3899293928595585302

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
# A170740: 

The programs for A170740, there is no canonical definition to state claims against.
-/

/-! ## A170740.P9064430995822463212

`ogf((1+x)/(1-20x))`
-/

namespace A170740.P9064430995822463212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -20] n

end

end A170740.P9064430995822463212

/-! ## A170740.P5884835087873100966

`20*a(n-1)` with `a(0)=1, a(1)=21`
-/

namespace A170740.P5884835087873100966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n a =>
  20 * a (n - 1)

end

end A170740.P5884835087873100966

/-!
# A170741: 

The programs for A170741, there is no canonical definition to state claims against.
-/

/-! ## A170741.P10343366225570039143

`ogf((1+x)/(1-21x))`
-/

namespace A170741.P10343366225570039143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -21] n

end

end A170741.P10343366225570039143

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
# A170742: 

The programs for A170742, there is no canonical definition to state claims against.
-/

/-! ## A170742.P9936175495283652969

`ogf((1+x)/(1-22x))`
-/

namespace A170742.P9936175495283652969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -22] n

end

end A170742.P9936175495283652969

/-! ## A170742.P10488793717654054607

`22*a(n-1)` with `a(0)=1, a(1)=23`
-/

namespace A170742.P10488793717654054607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 23] fun n a =>
  22 * a (n - 1)

end

end A170742.P10488793717654054607

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

/-! ## A170743.P4230432043396969650

`ogf((1+x)/(1-23x))`
-/

namespace A170743.P4230432043396969650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -23] n

end

end A170743.P4230432043396969650

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
# A170744: 

The programs for A170744, there is no canonical definition to state claims against.
-/

/-! ## A170744.P10801841258839428231

`ogf((1+x)/(1-24x))`
-/

namespace A170744.P10801841258839428231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -24] n

end

end A170744.P10801841258839428231

/-! ## A170744.P1935408188206413226

`24*a(n-1)` with `a(0)=1, a(1)=25`
-/

namespace A170744.P1935408188206413226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 25] fun n a =>
  24 * a (n - 1)

end

end A170744.P1935408188206413226

/-!
# A170745: 

The programs for A170745, there is no canonical definition to state claims against.
-/

/-! ## A170745.P6754911294292543981

`ogf((1+x)/(1-25x))`
-/

namespace A170745.P6754911294292543981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -25] n

end

end A170745.P6754911294292543981

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
# A170746: 

The programs for A170746, there is no canonical definition to state claims against.
-/

/-! ## A170746.P3516025509315458507

`ogf((1+x)/(1-26x))`
-/

namespace A170746.P3516025509315458507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -26] n

end

end A170746.P3516025509315458507

/-! ## A170746.P14633602558201979840

`26*a(n-1)` with `a(0)=1, a(1)=27`
-/

namespace A170746.P14633602558201979840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 27] fun n a =>
  26 * a (n - 1)

end

end A170746.P14633602558201979840

/-!
# A170747: 

The programs for A170747, there is no canonical definition to state claims against.
-/

/-! ## A170747.P4162858002784285612

`ogf((1+x)/(1-27x))`
-/

namespace A170747.P4162858002784285612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -27] n

end

end A170747.P4162858002784285612

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
# A170748: 

The programs for A170748, there is no canonical definition to state claims against.
-/

/-! ## A170748.P17052530118864998091

`ogf((1+x)/(1-28x))`
-/

namespace A170748.P17052530118864998091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -28] n

end

end A170748.P17052530118864998091

/-! ## A170748.P8219331507558841682

`28*a(n-1)` with `a(0)=1, a(1)=29`
-/

namespace A170748.P8219331507558841682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 29] fun n a =>
  28 * a (n - 1)

end

end A170748.P8219331507558841682

/-!
# A170749: 

The programs for A170749, there is no canonical definition to state claims against.
-/

/-! ## A170749.P2375964955972494950

`ogf((1+x)/(1-29x))`
-/

namespace A170749.P2375964955972494950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -29] n

end

end A170749.P2375964955972494950

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
# A170750: 

The programs for A170750, there is no canonical definition to state claims against.
-/

/-! ## A170750.P14865931798181460629

`ogf((1+x)/(1-30x))`
-/

namespace A170750.P14865931798181460629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -30] n

end

end A170750.P14865931798181460629

/-! ## A170750.P11768574853953330539

`30*a(n-1)` with `a(0)=1, a(1)=31`
-/

namespace A170750.P11768574853953330539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 31] fun n a =>
  30 * a (n - 1)

end

end A170750.P11768574853953330539

/-!
# A170751: 

The programs for A170751, there is no canonical definition to state claims against.
-/

/-! ## A170751.P4294630117064934138

`ogf((1+x)/(1-31x))`
-/

namespace A170751.P4294630117064934138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -31] n

end

end A170751.P4294630117064934138

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
# A170752: 

The programs for A170752, there is no canonical definition to state claims against.
-/

/-! ## A170752.P15160589178424152304

`ogf((1+x)/(1-32x))`
-/

namespace A170752.P15160589178424152304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -32] n

end

end A170752.P15160589178424152304

/-! ## A170752.P4125870832404144814

`32*a(n-1)` with `a(0)=1, a(1)=33`
-/

namespace A170752.P4125870832404144814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 33] fun n a =>
  32 * a (n - 1)

end

end A170752.P4125870832404144814

/-! ## A170752.P7789879178909132738

`A009980(n)*A067428(n)/A067429(n)`
-/

namespace A170752.P7789879178909132738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009980 n * A067428 n : ℚ) / (A067429 n : ℚ)

end

end A170752.P7789879178909132738

/-!
# A170753: 

The programs for A170753, there is no canonical definition to state claims against.
-/

/-! ## A170753.P8055543111233095068

`ogf((1+x)/(1-33x))`
-/

namespace A170753.P8055543111233095068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -33] n

end

end A170753.P8055543111233095068

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
# A170754: 

The programs for A170754, there is no canonical definition to state claims against.
-/

/-! ## A170754.P6955531202556944756

`ogf((1+x)/(1-34x))`
-/

namespace A170754.P6955531202556944756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -34] n

end

end A170754.P6955531202556944756

/-! ## A170754.P15842119140352538598

`34*a(n-1)` with `a(0)=1, a(1)=35`
-/

namespace A170754.P15842119140352538598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 35] fun n a =>
  34 * a (n - 1)

end

end A170754.P15842119140352538598

/-!
# A170755: 

The programs for A170755, there is no canonical definition to state claims against.
-/

/-! ## A170755.P3987791162700340162

`ogf((1+x)/(1-35x))`
-/

namespace A170755.P3987791162700340162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -35] n

end

end A170755.P3987791162700340162

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
# A170756: 

The programs for A170756, there is no canonical definition to state claims against.
-/

/-! ## A170756.P6801908582519338850

`ogf((1+x)/(1-36x))`
-/

namespace A170756.P6801908582519338850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -36] n

end

end A170756.P6801908582519338850

/-! ## A170756.P1014697964400618228

`36*a(n-1)` with `a(0)=1, a(1)=37`
-/

namespace A170756.P1014697964400618228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 37] fun n a =>
  36 * a (n - 1)

end

end A170756.P1014697964400618228

/-!
# A170757: 

The programs for A170757, there is no canonical definition to state claims against.
-/

/-! ## A170757.P8681059293487913224

`ogf((1+x)/(1-37x))`
-/

namespace A170757.P8681059293487913224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -37] n

end

end A170757.P8681059293487913224

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
# A170758: 

The programs for A170758, there is no canonical definition to state claims against.
-/

/-! ## A170758.P4902699590145660774

`ogf((1+x)/(1-38x))`
-/

namespace A170758.P4902699590145660774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -38] n

end

end A170758.P4902699590145660774

/-! ## A170758.P12174988340738652163

`38*a(n-1)` with `a(0)=1, a(1)=39`
-/

namespace A170758.P12174988340738652163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 39] fun n a =>
  38 * a (n - 1)

end

end A170758.P12174988340738652163

/-!
# A170759: 

The programs for A170759, there is no canonical definition to state claims against.
-/

/-! ## A170759.P14808318655258121231

`ogf((1+x)/(1-39x))`
-/

namespace A170759.P14808318655258121231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -39] n

end

end A170759.P14808318655258121231

/-!
# A170760: 

The programs for A170760, there is no canonical definition to state claims against.
-/

/-! ## A170760.P9065286099841733723

`ogf((1+x)/(1-40x))`
-/

namespace A170760.P9065286099841733723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -40] n

end

end A170760.P9065286099841733723

/-! ## A170760.P3751881993293337067

`40*a(n-1)` with `a(0)=1, a(1)=41`
-/

namespace A170760.P3751881993293337067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 41] fun n a =>
  40 * a (n - 1)

end

end A170760.P3751881993293337067

/-!
# A170761: 

The programs for A170761, there is no canonical definition to state claims against.
-/

/-! ## A170761.P5622076578335173522

`ogf((1+x)/(1-41x))`
-/

namespace A170761.P5622076578335173522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -41] n

end

end A170761.P5622076578335173522

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
# A170762: 

The programs for A170762, there is no canonical definition to state claims against.
-/

/-! ## A170762.P13082794682105832083

`ogf((1+x)/(1-42x))`
-/

namespace A170762.P13082794682105832083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -42] n

end

end A170762.P13082794682105832083

/-! ## A170762.P12334992548760741891

`42*a(n-1)` with `a(0)=1, a(1)=43`
-/

namespace A170762.P12334992548760741891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 43] fun n a =>
  42 * a (n - 1)

end

end A170762.P12334992548760741891

/-!
# A170763: 

The programs for A170763, there is no canonical definition to state claims against.
-/

/-! ## A170763.P8563512360984505579

`ogf((1+x)/(1-43x))`
-/

namespace A170763.P8563512360984505579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -43] n

end

end A170763.P8563512360984505579

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
# A170764: 

The programs for A170764, there is no canonical definition to state claims against.
-/

/-! ## A170764.P14149574249279074436

`ogf((1+x)/(1-44x))`
-/

namespace A170764.P14149574249279074436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -44] n

end

end A170764.P14149574249279074436

/-! ## A170764.P2349633406917230779

`44*a(n-1)` with `a(0)=1, a(1)=45`
-/

namespace A170764.P2349633406917230779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 45] fun n a =>
  44 * a (n - 1)

end

end A170764.P2349633406917230779

/-!
# A170765: 

The programs for A170765, there is no canonical definition to state claims against.
-/

/-! ## A170765.P9631020629462872741

`ogf((1+x)/(1-45x))`
-/

namespace A170765.P9631020629462872741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -45] n

end

end A170765.P9631020629462872741

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
# A170766: 

The programs for A170766, there is no canonical definition to state claims against.
-/

/-! ## A170766.P4674516958095292275

`ogf((1+x)/(1-46x))`
-/

namespace A170766.P4674516958095292275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -46] n

end

end A170766.P4674516958095292275

/-! ## A170766.P12201263310486715239

`46*a(n-1)` with `a(0)=1, a(1)=47`
-/

namespace A170766.P12201263310486715239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 47] fun n a =>
  46 * a (n - 1)

end

end A170766.P12201263310486715239

/-!
# A170767: 

The programs for A170767, there is no canonical definition to state claims against.
-/

/-! ## A170767.P13896496233652986858

`47*a(n-1)` with `a(0)=1, a(1)=48`
-/

namespace A170767.P13896496233652986858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 48] fun n a =>
  47 * a (n - 1)

end

end A170767.P13896496233652986858

/-! ## A170767.P132228600097873433

`ogf((1+x)/(1-47x))`
-/

namespace A170767.P132228600097873433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -47] n

end

end A170767.P132228600097873433

/-!
# A170768: 

The programs for A170768, there is no canonical definition to state claims against.
-/

/-! ## A170768.P14245746677542063919

`ogf((1+x)/(1-48x))`
-/

namespace A170768.P14245746677542063919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -48] n

end

end A170768.P14245746677542063919

/-! ## A170768.P903033201561256331

`48*a(n-1)` with `a(0)=1, a(1)=49`
-/

namespace A170768.P903033201561256331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 49] fun n a =>
  48 * a (n - 1)

end

end A170768.P903033201561256331

/-!
# A170769: 

The programs for A170769, there is no canonical definition to state claims against.
-/

/-! ## A170769.P9025152823711000421

`ogf((1+x)/(1-49x))`
-/

namespace A170769.P9025152823711000421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -49] n

end

end A170769.P9025152823711000421

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

The programs for A170774, the canonical program `A170774.P10289012073938425148` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170774 has offset 0).

The definition of A170774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170774.P10289012073938425148

`n^8*(n²+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170774

/-- `n^8*(n²+1)/2` -/
def P10289012073938425148.Spec : Prop :=
  ∀ n, P10289012073938425148.a n = (A170774 n : ℚ)

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

/-!
# A170775: a(n) = n^8*(n^3 + 1)/2.

The programs for A170775, the canonical program `A170775.P18121385576342472149` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170775 has offset 0).

The definition of A170775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170775.P18121385576342472149

`n^8*(n^3+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170775

/-- `n^8*(n^3+1)/2` -/
def P18121385576342472149.Spec : Prop :=
  ∀ n, P18121385576342472149.a n = (A170775 n : ℚ)

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

/-!
# A170776: a(n) = n^8*(n^4 + 1)/2.

The programs for A170776, the canonical program `A170776.P11830179127022578483` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170776 has offset 0).

The definition of A170776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170776.P11830179127022578483

`n^8*(n^4+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170776

/-- `n^8*(n^4+1)/2` -/
def P11830179127022578483.Spec : Prop :=
  ∀ n, P11830179127022578483.a n = (A170776 n : ℚ)

end A170776

/-! ## A170776.P1165475688045539170

`-(A001489(n)*A168661(n))`
-/

namespace A170776.P1165475688045539170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A168661 n)

end

end A170776.P1165475688045539170

namespace A170776

/-- `-(A001489(n)*A168661(n))` -/
def P1165475688045539170.Spec : Prop :=
  ∀ n, P1165475688045539170.a n = A170776 n

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

The programs for A170777, the canonical program `A170777.P12904183505882716092` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170777 has offset 0).

The definition of A170777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170777.P12904183505882716092

`n^8*(n^5+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170777

/-- `n^8*(n^5+1)/2` -/
def P12904183505882716092.Spec : Prop :=
  ∀ n, P12904183505882716092.a n = (A170777 n : ℚ)

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

`-(A001489(n)*A168662(n))`
-/

namespace A170777.P943494085467508974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A168662 n)

end

end A170777.P943494085467508974

namespace A170777

/-- `-(A001489(n)*A168662(n))` -/
def P943494085467508974.Spec : Prop :=
  ∀ n, P943494085467508974.a n = A170777 n

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

/-!
# A170778: a(n) = n^8*(n^6 + 1)/2.

The programs for A170778, the canonical program `A170778.P11975904718839726762` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170778 has offset 0).

The definition of A170778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170778.P11975904718839726762

`n^8*(n^6+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170778

/-- `n^8*(n^6+1)/2` -/
def P11975904718839726762.Spec : Prop :=
  ∀ n, P11975904718839726762.a n = (A170778 n : ℚ)

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

`-(A001489(n)*A168663(n))`
-/

namespace A170778.P15079984950092756657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A168663 n)

end

end A170778.P15079984950092756657

namespace A170778

/-- `-(A001489(n)*A168663(n))` -/
def P15079984950092756657.Spec : Prop :=
  ∀ n, P15079984950092756657.a n = A170778 n

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

The programs for A170779, the canonical program `A170779.P11968810449874663713` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170779 has offset 0).

The definition of A170779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170779.P11968810449874663713

`(n^15+n^8)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170779

/-- `(n^15+n^8)/2` -/
def P11968810449874663713.Spec : Prop :=
  ∀ n, P11968810449874663713.a n = (A170779 n : ℚ)

end A170779

/-! ## A170779.P8629079981213681206

`n^8*(n^7+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A170779.P8629079981213681206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 8 * (n ^ 7 + 1) : ℚ) / 2

end

end A170779.P8629079981213681206

namespace A170779

/-- `n^8*(n^7+1)/2` -/
def P8629079981213681206.Spec : Prop :=
  ∀ n, P8629079981213681206.a n = (A170779 n : ℚ)

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

The programs for A170780, the canonical program `A170780.P3630306831901184243` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170780 has offset 0).

The definition of A170780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170780.P3630306831901184243

`(n^16+n^8)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170780

/-- `(n^16+n^8)/2` -/
def P3630306831901184243.Spec : Prop :=
  ∀ n, P3630306831901184243.a n = (A170780 n : ℚ)

end A170780

/-! ## A170780.P9125384929338009024

`n^8*(n^8+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A170780.P9125384929338009024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 8 * (n ^ 8 + 1) : ℚ) / 2

end

end A170780.P9125384929338009024

namespace A170780

/-- `n^8*(n^8+1)/2` -/
def P9125384929338009024.Spec : Prop :=
  ∀ n, P9125384929338009024.a n = (A170780 n : ℚ)

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

The programs for A170781, the canonical program `A170781.P13674484255828465593` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170781 has offset 0).

The definition of A170781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170781.P13674484255828465593

`n^8*(n^9+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170781

/-- `n^8*(n^9+1)/2` -/
def P13674484255828465593.Spec : Prop :=
  ∀ n, P13674484255828465593.a n = (A170781 n : ℚ)

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

/-!
# A170782: a(n) = n^8*(n^10 + 1)/2.

The programs for A170782, the canonical program `A170782.P1614737055024139455` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170782 has offset 0).

The definition of A170782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170782.P1614737055024139455

`n^8*(n^10+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170782

/-- `n^8*(n^10+1)/2` -/
def P1614737055024139455.Spec : Prop :=
  ∀ n, P1614737055024139455.a n = (A170782 n : ℚ)

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

The programs for A170783, the canonical program `A170783.P15088866975921745427` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170783 has offset 0).

The definition of A170783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170783.P15088866975921745427

`n^9*(n+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170783

/-- `n^9*(n+1)/2` -/
def P15088866975921745427.Spec : Prop :=
  ∀ n, P15088866975921745427.a n = (A170783 n : ℚ)

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

/-!
# A170784: a(n) = n^9*(n^2 + 1)/2.

The programs for A170784, the canonical program `A170784.P4166560128692119417` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170784 has offset 0).

The definition of A170784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170784.P4166560128692119417

`n^9*(n²+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170784

/-- `n^9*(n²+1)/2` -/
def P4166560128692119417.Spec : Prop :=
  ∀ n, P4166560128692119417.a n = (A170784 n : ℚ)

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

/-!
# A170785: a(n) = n^9*(n^3 + 1)/2.

The programs for A170785, the canonical program `A170785.P14708336715475893211` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170785 has offset 0).

The definition of A170785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170785.P14708336715475893211

`n^9*(n^3+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170785

/-- `n^9*(n^3+1)/2` -/
def P14708336715475893211.Spec : Prop :=
  ∀ n, P14708336715475893211.a n = (A170785 n : ℚ)

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

The programs for A170786, the canonical program `A170786.P5584050107514686359` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170786 has offset 0).

The definition of A170786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170786.P5584050107514686359

`n^9*(n^4+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170786

/-- `n^9*(n^4+1)/2` -/
def P5584050107514686359.Spec : Prop :=
  ∀ n, P5584050107514686359.a n = (A170786 n : ℚ)

end A170786

/-! ## A170786.P4789597033042792463

`-(A001489(n)*A170776(n))`
-/

namespace A170786.P4789597033042792463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A170776 n)

end

end A170786.P4789597033042792463

namespace A170786

/-- `-(A001489(n)*A170776(n))` -/
def P4789597033042792463.Spec : Prop :=
  ∀ n, P4789597033042792463.a n = A170786 n

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

The programs for A170787, the canonical program `A170787.P4996168394147681988` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170787 has offset 0).

The definition of A170787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170787.P4996168394147681988

`n^9*(n^5+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170787

/-- `n^9*(n^5+1)/2` -/
def P4996168394147681988.Spec : Prop :=
  ∀ n, P4996168394147681988.a n = (A170787 n : ℚ)

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

The programs for A170788, the canonical program `A170788.P17515514060295524428` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170788 has offset 0).

The definition of A170788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170788.P17515514060295524428

`n^9*(n^6+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170788

/-- `n^9*(n^6+1)/2` -/
def P17515514060295524428.Spec : Prop :=
  ∀ n, P17515514060295524428.a n = (A170788 n : ℚ)

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

/-!
# A170789: a(n) = n^9*(n^7 + 1)/2.

The programs for A170789, the canonical program `A170789.P4935279469397986467` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170789 has offset 0).

The definition of A170789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170789.P4935279469397986467

`n^9*(n^7+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170789

/-- `n^9*(n^7+1)/2` -/
def P4935279469397986467.Spec : Prop :=
  ∀ n, P4935279469397986467.a n = (A170789 n : ℚ)

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

The programs for A170790, the canonical program `A170790.P18077906955680414502` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170790 has offset 0).

The definition of A170790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170790.P18077906955680414502

`(n^17+n^9)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170790

/-- `(n^17+n^9)/2` -/
def P18077906955680414502.Spec : Prop :=
  ∀ n, P18077906955680414502.a n = (A170790 n : ℚ)

end A170790

/-! ## A170790.P17999293819143759333

`n^9*(n^8+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A170790.P17999293819143759333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 9 * (n ^ 8 + 1) : ℚ) / 2

end

end A170790.P17999293819143759333

namespace A170790

/-- `n^9*(n^8+1)/2` -/
def P17999293819143759333.Spec : Prop :=
  ∀ n, P17999293819143759333.a n = (A170790 n : ℚ)

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

The programs for A170791, the canonical program `A170791.P13263660565823592677` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170791 has offset 0).

The definition of A170791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170791.P13263660565823592677

`(n^18+n^9)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170791

/-- `(n^18+n^9)/2` -/
def P13263660565823592677.Spec : Prop :=
  ∀ n, P13263660565823592677.a n = (A170791 n : ℚ)

end A170791

/-! ## A170791.P121138880209514678

`n^9*(n^9+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A170791.P121138880209514678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 9 * (n ^ 9 + 1) : ℚ) / 2

end

end A170791.P121138880209514678

namespace A170791

/-- `n^9*(n^9+1)/2` -/
def P121138880209514678.Spec : Prop :=
  ∀ n, P121138880209514678.a n = (A170791 n : ℚ)

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

/-!
# A170792: a(n) = n^9*(n^10 + 1)/2.

The programs for A170792, the canonical program `A170792.P7821020768952903033` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170792 has offset 0).

The definition of A170792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170792.P7821020768952903033

`n^9*(n^10+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170792

/-- `n^9*(n^10+1)/2` -/
def P7821020768952903033.Spec : Prop :=
  ∀ n, P7821020768952903033.a n = (A170792 n : ℚ)

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

The programs for A170793, the canonical program `A170793.P4395528040556316992` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170793 has offset 0).

The definition of A170793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170793.P4395528040556316992

`n^10*(n+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170793

/-- `n^10*(n+1)/2` -/
def P4395528040556316992.Spec : Prop :=
  ∀ n, P4395528040556316992.a n = (A170793 n : ℚ)

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

/-!
# A170794: a(n) = n^10*(n^2 + 1)/2.

The programs for A170794, the canonical program `A170794.P14293233280826601024` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170794 has offset 0).

The definition of A170794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170794.P14293233280826601024

`n^10*(n²+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170794

/-- `n^10*(n²+1)/2` -/
def P14293233280826601024.Spec : Prop :=
  ∀ n, P14293233280826601024.a n = (A170794 n : ℚ)

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

`-(A001489(n)*A170784(n))`
-/

namespace A170794.P1082588449723167997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A170784 n)

end

end A170794.P1082588449723167997

namespace A170794

/-- `-(A001489(n)*A170784(n))` -/
def P1082588449723167997.Spec : Prop :=
  ∀ n, P1082588449723167997.a n = A170794 n

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

/-!
# A170795: a(n) = n^10*(n^3 + 1)/2.

The programs for A170795, the canonical program `A170795.P4579867630430947981` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170795 has offset 0).

The definition of A170795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170795.P4579867630430947981

`n^10*(n^3+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170795

/-- `n^10*(n^3+1)/2` -/
def P4579867630430947981.Spec : Prop :=
  ∀ n, P4579867630430947981.a n = (A170795 n : ℚ)

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

The programs for A170796, the canonical program `A170796.P17450856212560641259` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170796 has offset 0).

The definition of A170796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170796.P17450856212560641259

`n^10*(n^4+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170796

/-- `n^10*(n^4+1)/2` -/
def P17450856212560641259.Spec : Prop :=
  ∀ n, P17450856212560641259.a n = (A170796 n : ℚ)

end A170796

/-! ## A170796.P6520908841110583455

`-(A001489(n)*A170786(n))`
-/

namespace A170796.P6520908841110583455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A170786 n)

end

end A170796.P6520908841110583455

namespace A170796

/-- `-(A001489(n)*A170786(n))` -/
def P6520908841110583455.Spec : Prop :=
  ∀ n, P6520908841110583455.a n = A170796 n

end A170796

/-! ## A170796.P2511222677325129363

`-(n*A001489(n)*A170776(n))`
-/

namespace A170796.P2511222677325129363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (A001489 n * A170776 n))

end

end A170796.P2511222677325129363

namespace A170796

/-- `-(n*A001489(n)*A170776(n))` -/
def P2511222677325129363.Spec : Prop :=
  ∀ n, P2511222677325129363.a n = A170796 n

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

The programs for A170797, the canonical program `A170797.P11074134541301632868` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170797 has offset 0).

The definition of A170797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170797.P11074134541301632868

`n^10*(n^5+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170797

/-- `n^10*(n^5+1)/2` -/
def P11074134541301632868.Spec : Prop :=
  ∀ n, P11074134541301632868.a n = (A170797 n : ℚ)

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

The programs for A170798, the canonical program `A170798.P12482735234320680013` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170798 has offset 0).

The definition of A170798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170798.P12482735234320680013

`n^10*(n^6+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170798

/-- `n^10*(n^6+1)/2` -/
def P12482735234320680013.Spec : Prop :=
  ∀ n, P12482735234320680013.a n = (A170798 n : ℚ)

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

/-!
# A170799: a(n) = n^10*(n^7 + 1)/2.

The programs for A170799, the canonical program `A170799.P9622177936453585056` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170799 has offset 0).

The definition of A170799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170799.P9622177936453585056

`n^10*(n^7+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A170799

/-- `n^10*(n^7+1)/2` -/
def P9622177936453585056.Spec : Prop :=
  ∀ n, P9622177936453585056.a n = (A170799 n : ℚ)

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

