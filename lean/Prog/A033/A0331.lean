import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A033100: Number of 3's when k is written in base b for all b and k satisfying 2<=b<=n+1, 1<=k<=n.

The programs for A033100, there is no canonical definition to state claims against.
-/

/-! ## A033100.P3827610907900043733

`∑[A033099(n+1)]`
-/

namespace A033100.P3827610907900043733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033100.P3827610907900043733

/-! ## A033100.P6177999488231718779

`A033099(n+1)+a(A023443(n))` with `a(0)=0`
-/

namespace A033100.P6177999488231718779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033099 (n + 1) + a (A023443 n).toNat

end

end A033100.P6177999488231718779

/-!
# A033101: Number of 4's when n is written in base b for 2<=b<=n+1.

The programs for A033101, there is no canonical definition to state claims against.
-/

/-! ## A033101.P8389204629040530258

`Δ[A033102(A028310(n))]`
-/

namespace A033101.P8389204629040530258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033101.P8389204629040530258

/-! ## A033101.P11813705693702667258

`Δ[A033102(A004277(n)-n)]`
-/

namespace A033101.P11813705693702667258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033101.P11813705693702667258

/-! ## A033101.P8730924862054464920

`A033102(n+1)-A033102(A028310(n))`
-/

namespace A033101.P8730924862054464920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (n + 1) - A033102 (A028310 n).toNat

end

end A033101.P8730924862054464920

/-! ## A033101.P16757146708457705321

`A033102(n+1)-A033102(abs(A274922(n)))`
-/

namespace A033101.P16757146708457705321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (n + 1) - A033102 |A274922 n|.toNat

end

end A033101.P16757146708457705321

/-! ## A033101.P10623592438159018099

`A033102(n+1)-A033102(A004277(n)-n)`
-/

namespace A033101.P10623592438159018099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (n + 1) - A033102 (A004277 n - (n : ℤ)).toNat

end

end A033101.P10623592438159018099

/-! ## A033101.P3779733482513134572

`Δ[A033102(abs(A274922(n)))]`
-/

namespace A033101.P3779733482513134572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 |A274922 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033101.P3779733482513134572

/-! ## A033101.P16152799510817410071

`Δ[A033102(A057428(n)+1+n)]`
-/

namespace A033101.P16152799510817410071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (A057428 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033101.P16152799510817410071

/-! ## A033101.P5981974128558922138

`Δ[A033102(1-A158388(n)+n)]`
-/

namespace A033101.P5981974128558922138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (1 - A158388 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033101.P5981974128558922138

/-! ## A033101.P16069394090732742199

`Δ[A033102(A004525(A004277(n)))]`
-/

namespace A033101.P16069394090732742199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (A004525 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033101.P16069394090732742199

/-! ## A033101.P10293821180323196613

`Δ[A033102(A008619(A004273(n)))]`
-/

namespace A033101.P10293821180323196613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033101.P10293821180323196613

/-! ## A033101.P12260470607091606238

`A033102(n+1)-A033102(A065033(2*n))`
-/

namespace A033101.P12260470607091606238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (n + 1) - A033102 (A065033 (2 * n)).toNat

end

end A033101.P12260470607091606238

/-! ## A033101.P14346871148032997090

`Δ[A033102(A065033(2*n))]`
-/

namespace A033101.P14346871148032997090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033101.P14346871148032997090

/-! ## A033101.P10389478267583259677

`Δ[A033102(A274922(2*n)-n)]`
-/

namespace A033101.P10389478267583259677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (A274922 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033101.P10389478267583259677

/-! ## A033101.P10948252228086243020

`Δ[A033102(A154282(2*n+1)+n)]`
-/

namespace A033101.P10948252228086243020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (A154282 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033101.P10948252228086243020

/-! ## A033101.P12419432811690707372

`Δ[A033102(A000267(A002620(n)))]`
-/

namespace A033101.P12419432811690707372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (A000267 (A002620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033101.P12419432811690707372

/-! ## A033101.P10136931655919069114

`Δ[A033102(A003056(A000124(n)))]`
-/

namespace A033101.P10136931655919069114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033101.P10136931655919069114

/-! ## A033101.P330275580553148750

`A033102(n+1)-A033102(A137734(n²))`
-/

namespace A033101.P330275580553148750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (n + 1) - A033102 (A137734 (n ^ 2)).toNat

end

end A033101.P330275580553148750

/-! ## A033101.P3887470358899048134

`A033102(n+1)-A033102(A137735(n²))`
-/

namespace A033101.P3887470358899048134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (n + 1) - A033102 (A137735 (n ^ 2)).toNat

end

end A033101.P3887470358899048134

/-! ## A033101.P8637651616539734244

`Δ[A033102(A137734(n²))]`
-/

namespace A033101.P8637651616539734244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033101.P8637651616539734244

/-! ## A033101.P494944877466645116

`Δ[A033102(A137735(n²))]`
-/

namespace A033101.P494944877466645116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033102 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033101.P494944877466645116

/-!
# A033102: Number of 4's when k is written in base b for all b and k satisfying 2<=b<=n+1, 1<=k<=n.

The programs for A033102, there is no canonical definition to state claims against.
-/

/-! ## A033102.P18223060908837581212

`∑[A033101(n+1)]`
-/

namespace A033102.P18223060908837581212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033102.P18223060908837581212

/-! ## A033102.P8921815409967500096

`A033101(n+1)+a(A023443(n))` with `a(0)=0`
-/

namespace A033102.P8921815409967500096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033101 (n + 1) + a (A023443 n).toNat

end

end A033102.P8921815409967500096

/-! ## A033102.P73159987590343434

`A033101(n+1)+a(A000038(n)-1+n)` with `a(0)=0`
-/

namespace A033102.P73159987590343434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033101 (n + 1) + a (A000038 n - 1 + (n : ℤ)).toNat

end

end A033102.P73159987590343434

/-! ## A033102.P9501776564957505620

`(A033101(n+1)+a(n-1))%A270976(n)` with `a(0)=0`
-/

namespace A033102.P9501776564957505620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A033101 (n + 1) + a (n - 1)) (A270976 n)

end

end A033102.P9501776564957505620

/-! ## A033102.P6447188004366489396

`A033101(n+1)+a(n-1)%A051049(n)` with `a(0)=0`
-/

namespace A033102.P6447188004366489396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033101 (n + 1) + Int.tmod (a (n - 1)) (A051049 n)

end

end A033102.P6447188004366489396

/-!
# A033103: Number of 5's when n is written in base b for 2<=b<=n+1.

The programs for A033103, there is no canonical definition to state claims against.
-/

/-! ## A033103.P15200042931721631991

`Δ[A033104(A028310(n))]`
-/

namespace A033103.P15200042931721631991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033103.P15200042931721631991

/-! ## A033103.P1053548997392561054

`Δ[A033104(A004277(n)-n)]`
-/

namespace A033103.P1053548997392561054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033103.P1053548997392561054

/-! ## A033103.P570807557713872121

`A033104(n+1)-A033104(A028310(n))`
-/

namespace A033103.P570807557713872121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (n + 1) - A033104 (A028310 n).toNat

end

end A033103.P570807557713872121

/-! ## A033103.P17254244155520013493

`A033104(n+1)-A033104(A004277(n)-n)`
-/

namespace A033103.P17254244155520013493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (n + 1) - A033104 (A004277 n - (n : ℤ)).toNat

end

end A033103.P17254244155520013493

/-! ## A033103.P17919044656080114190

`Δ[A033104(A004275(n+1)-n)]`
-/

namespace A033103.P17919044656080114190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033103.P17919044656080114190

/-! ## A033103.P5880971947761864469

`Δ[A033104(A008619(A004275(n)))]`
-/

namespace A033103.P5880971947761864469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033103.P5880971947761864469

/-! ## A033103.P8334579804592200418

`Δ[A033104(A008619(A004273(n)))]`
-/

namespace A033103.P8334579804592200418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033103.P8334579804592200418

/-! ## A033103.P16409566022714608028

`A033104(n+1)-A033104(A065033(2*n))`
-/

namespace A033103.P16409566022714608028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (n + 1) - A033104 (A065033 (2 * n)).toNat

end

end A033103.P16409566022714608028

/-! ## A033103.P2140634795416888289

`Δ[A033104(A065033(2*n))]`
-/

namespace A033103.P2140634795416888289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033103.P2140634795416888289

/-! ## A033103.P15574039894624899865

`Δ[A033104(A123108(2*n))]`
-/

namespace A033103.P15574039894624899865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033103.P15574039894624899865

/-! ## A033103.P3321559994954594011

`Δ[A033104(A154282(2*n+1)+n)]`
-/

namespace A033103.P3321559994954594011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (A154282 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033103.P3321559994954594011

/-! ## A033103.P14460490321194351834

`Δ[A033104(A001281(A004277(n)))]`
-/

namespace A033103.P14460490321194351834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (A001281 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033103.P14460490321194351834

/-! ## A033103.P6331969428168376611

`A033104(n+1)-A033104(A233583(n+1))`
-/

namespace A033103.P6331969428168376611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (n + 1) - A033104 (A233583 (n + 1)).toNat

end

end A033103.P6331969428168376611

/-! ## A033103.P1673854727233756131

`Δ[A033104(A233583(n+1))]`
-/

namespace A033103.P1673854727233756131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033103.P1673854727233756131

/-! ## A033103.P16962842278500835651

`Δ[A033104(A003056(A000124(n)))]`
-/

namespace A033103.P16962842278500835651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033103.P16962842278500835651

/-! ## A033103.P4513912919168146577

`A033104(n+1)-A033104(A137734(n²))`
-/

namespace A033103.P4513912919168146577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (n + 1) - A033104 (A137734 (n ^ 2)).toNat

end

end A033103.P4513912919168146577

/-! ## A033103.P13833084865892545608

`A033104(n+1)-A033104(A137735(n²))`
-/

namespace A033103.P13833084865892545608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (n + 1) - A033104 (A137735 (n ^ 2)).toNat

end

end A033103.P13833084865892545608

/-! ## A033103.P7420247023497433172

`Δ[A033104(A137734(n²))]`
-/

namespace A033103.P7420247023497433172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033103.P7420247023497433172

/-! ## A033103.P8189608055801956156

`Δ[A033104(A137735(n²))]`
-/

namespace A033103.P8189608055801956156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033103.P8189608055801956156

/-!
# A033104: Number of 5's when k is written in base b for all b and k satisfying 2<=b<=n+1, 1<=k<=n.

The programs for A033104, there is no canonical definition to state claims against.
-/

/-! ## A033104.P10446555874757661800

`∑[A033103(n+1)]`
-/

namespace A033104.P10446555874757661800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033104.P10446555874757661800

/-! ## A033104.P2877864906948105900

`A033103(A028310(n)+1)+a(n-1)` with `a(0)=0`
-/

namespace A033104.P2877864906948105900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033103 (A028310 n + 1).toNat + a (n - 1)

end

end A033104.P2877864906948105900

/-! ## A033104.P6220372141894350490

`A033103(A000041(C(4, n+1))+n)+a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A033104.P6220372141894350490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A033103 (A000041 (Nat.choose 4 (n + 1)) + (n : ℤ)).toNat + a (n - 1)

end

end A033104.P6220372141894350490

/-! ## A033104.P1901810420793468690

`A161055(lt[A161282(n+1), A019425(n)])`
-/

namespace A033104.P1901810420793468690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161055 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A033104.P1901810420793468690

/-!
# A033105: Number of 6's when n is written in base b for 2<=b<=n+1.

The programs for A033105, there is no canonical definition to state claims against.
-/

/-! ## A033105.P7004587267357476147

`Δ[A033106(A028310(n))]`
-/

namespace A033105.P7004587267357476147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033105.P7004587267357476147

/-! ## A033105.P14553888840700272840

`A033106(n+1)-A033106(A028310(n))`
-/

namespace A033105.P14553888840700272840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (n + 1) - A033106 (A028310 n).toNat

end

end A033105.P14553888840700272840

/-! ## A033105.P15830593555238555300

`A033106(n+1)-A033106(A000007(n)+n)`
-/

namespace A033105.P15830593555238555300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (n + 1) - A033106 (A000007 n + (n : ℤ)).toNat

end

end A033105.P15830593555238555300

/-! ## A033105.P11342282730543419047

`Δ[A033106(A000007(n)+n)]`
-/

namespace A033105.P11342282730543419047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033105.P11342282730543419047

/-! ## A033105.P10760150712268023928

`Δ[A033106(A004275(n+1)-n)]`
-/

namespace A033105.P10760150712268023928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033105.P10760150712268023928

/-! ## A033105.P18392273417772576160

`Δ[A033106(A008619(A004275(n)))]`
-/

namespace A033105.P18392273417772576160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033105.P18392273417772576160

/-! ## A033105.P11397391787612622756

`Δ[A033106(A008619(A004273(n)))]`
-/

namespace A033105.P11397391787612622756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033105.P11397391787612622756

/-! ## A033105.P5703554416616077843

`A033106(n+1)-A033106(A065033(2*n))`
-/

namespace A033105.P5703554416616077843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (n + 1) - A033106 (A065033 (2 * n)).toNat

end

end A033105.P5703554416616077843

/-! ## A033105.P16968185288016385741

`Δ[A033106(A065033(2*n))]`
-/

namespace A033105.P16968185288016385741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033105.P16968185288016385741

/-! ## A033105.P18209540634517481059

`Δ[A033106(A123108(2*n))]`
-/

namespace A033105.P18209540634517481059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033105.P18209540634517481059

/-! ## A033105.P8967921242635120201

`Δ[A033106(A110657(A008574(n)))]`
-/

namespace A033105.P8967921242635120201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (A110657 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033105.P8967921242635120201

/-! ## A033105.P8112010670707421031

`Δ[A033106(A007318(A000124(n)))]`
-/

namespace A033105.P8112010670707421031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033105.P8112010670707421031

/-! ## A033105.P7102057962869284163

`A033106(n+1)-A033106(A137734(n²))`
-/

namespace A033105.P7102057962869284163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (n + 1) - A033106 (A137734 (n ^ 2)).toNat

end

end A033105.P7102057962869284163

/-! ## A033105.P1882568213553852672

`A033106(n+1)-A033106(A137735(n²))`
-/

namespace A033105.P1882568213553852672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (n + 1) - A033106 (A137735 (n ^ 2)).toNat

end

end A033105.P1882568213553852672

/-! ## A033105.P15154824328148133852

`Δ[A033106(A137734(n²))]`
-/

namespace A033105.P15154824328148133852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033105.P15154824328148133852

/-! ## A033105.P7306261865057754721

`Δ[A033106(A137735(n²))]`
-/

namespace A033105.P7306261865057754721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033105.P7306261865057754721

/-!
# A033106: Number of 6's when k is written in base b for all b and k satisfying 2<=b<=n+1, 1<=k<=n.

The programs for A033106, there is no canonical definition to state claims against.
-/

/-! ## A033106.P6421235224548869210

`∑[A033105(n+1)]`
-/

namespace A033106.P6421235224548869210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033106.P6421235224548869210

/-!
# A033107: Number of 7's when n is written in base b for 2<=b<=n+1.

The programs for A033107, there is no canonical definition to state claims against.
-/

/-! ## A033107.P8925863711367783965

`Δ[A033108(A028310(n))]`
-/

namespace A033107.P8925863711367783965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033107.P8925863711367783965

/-! ## A033107.P2480744982838680246

`Δ[A033108(or(n, 2-A040001(n)))]`
-/

namespace A033107.P2480744982838680246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (Int.lor (n : ℤ) (2 - A040001 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033107.P2480744982838680246

/-! ## A033107.P8109985802297103108

`A033108(n+1)-A033108(A028310(n))`
-/

namespace A033107.P8109985802297103108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (n + 1) - A033108 (A028310 n).toNat

end

end A033107.P8109985802297103108

/-! ## A033107.P10932664373429335105

`A033108(n+1)-A033108(A000007(n)+n)`
-/

namespace A033107.P10932664373429335105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (n + 1) - A033108 (A000007 n + (n : ℤ)).toNat

end

end A033107.P10932664373429335105

/-! ## A033107.P17718429840770306251

`Δ[A033108(A000007(n)+n)]`
-/

namespace A033107.P17718429840770306251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033107.P17718429840770306251

/-! ## A033107.P3396077232420353808

`Δ[A033108(A004275(n+1)-n)]`
-/

namespace A033107.P3396077232420353808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033107.P3396077232420353808

/-! ## A033107.P14199180521672621585

`Δ[A033108(A008619(A004275(n)))]`
-/

namespace A033107.P14199180521672621585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033107.P14199180521672621585

/-! ## A033107.P2951632779177321764

`Δ[A033108(A008619(A004273(n)))]`
-/

namespace A033107.P2951632779177321764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033107.P2951632779177321764

/-! ## A033107.P11126971266522619153

`A033108(n+1)-A033108(A065033(2*n))`
-/

namespace A033107.P11126971266522619153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (n + 1) - A033108 (A065033 (2 * n)).toNat

end

end A033107.P11126971266522619153

/-! ## A033107.P17189262063223428878

`Δ[A033108(A065033(2*n))]`
-/

namespace A033107.P17189262063223428878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033107.P17189262063223428878

/-! ## A033107.P4014782859740443188

`Δ[A033108(A123108(2*n))]`
-/

namespace A033107.P4014782859740443188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033107.P4014782859740443188

/-! ## A033107.P15073216158097528380

`Δ[A033108(A154282(2*n+1)+n)]`
-/

namespace A033107.P15073216158097528380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (A154282 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033107.P15073216158097528380

/-! ## A033107.P11535333716128257700

`Δ[A033108(A008621(A130824(n)))]`
-/

namespace A033107.P11535333716128257700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (A008621 (A130824 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033107.P11535333716128257700

/-! ## A033107.P7166909181008595229

`A033108(n+1)-A033108(A233583(n+1))`
-/

namespace A033107.P7166909181008595229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (n + 1) - A033108 (A233583 (n + 1)).toNat

end

end A033107.P7166909181008595229

/-! ## A033107.P14319313963193495189

`Δ[A033108(A233583(n+1))]`
-/

namespace A033107.P14319313963193495189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033107.P14319313963193495189

/-! ## A033107.P16569040697406340581

`Δ[A033108(A003056(A000124(n)))]`
-/

namespace A033107.P16569040697406340581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033107.P16569040697406340581

/-! ## A033107.P7920105315970584307

`A033108(n+1)-A033108(A137734(n²))`
-/

namespace A033107.P7920105315970584307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (n + 1) - A033108 (A137734 (n ^ 2)).toNat

end

end A033107.P7920105315970584307

/-! ## A033107.P7850081482174088710

`A033108(n+1)-A033108(A137735(n²))`
-/

namespace A033107.P7850081482174088710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (n + 1) - A033108 (A137735 (n ^ 2)).toNat

end

end A033107.P7850081482174088710

/-! ## A033107.P14366411884182637031

`Δ[A033108(A137734(n²))]`
-/

namespace A033107.P14366411884182637031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033107.P14366411884182637031

/-! ## A033107.P1113376676584568470

`Δ[A033108(A137735(n²))]`
-/

namespace A033107.P1113376676584568470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033107.P1113376676584568470

/-!
# A033108: Number of 7's when k is written in base b for all b and k satisfying 2<=b<=n+1, 1<=k<=n.

The programs for A033108, there is no canonical definition to state claims against.
-/

/-! ## A033108.P2752180389083727464

`∑[A033107(n+1)]`
-/

namespace A033108.P2752180389083727464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033108.P2752180389083727464

/-!
# A033109: Number of 8's when n is written in base b for 2<=b<=n+1.

The programs for A033109, there is no canonical definition to state claims against.
-/

/-! ## A033109.P3968540113163222537

`Δ[A033110(A028310(n))]`
-/

namespace A033109.P3968540113163222537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033110 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033109.P3968540113163222537

/-! ## A033109.P8392549419252693278

`A033110(n+1)-A033110(A028310(n))`
-/

namespace A033109.P8392549419252693278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033110 (n + 1) - A033110 (A028310 n).toNat

end

end A033109.P8392549419252693278

/-! ## A033109.P20647347411046018

`Δ[A033110(A008619(A004273(n)))]`
-/

namespace A033109.P20647347411046018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033110 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033109.P20647347411046018

/-! ## A033109.P11156700829480982432

`Δ[A033110(A154282(2*n+1)+n)]`
-/

namespace A033109.P11156700829480982432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033110 (A154282 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033109.P11156700829480982432

/-! ## A033109.P4253986032636411409

`A033110(n+1)-A033110(A233583(n+1))`
-/

namespace A033109.P4253986032636411409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033110 (n + 1) - A033110 (A233583 (n + 1)).toNat

end

end A033109.P4253986032636411409

/-! ## A033109.P5407022679670489823

`Δ[A033110(A233583(n+1))]`
-/

namespace A033109.P5407022679670489823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033110 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033109.P5407022679670489823

/-! ## A033109.P17178643824365580183

`Δ[A033110(A007318(A000124(n)))]`
-/

namespace A033109.P17178643824365580183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033110 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033109.P17178643824365580183

/-! ## A033109.P17925876883438318568

`Δ[A033110(A134478(A000217(n)))]`
-/

namespace A033109.P17925876883438318568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033110 (A134478 (A000217 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033109.P17925876883438318568

/-! ## A033109.P831770230611838497

`A033110(n+1)-A033110(A137734(n²))`
-/

namespace A033109.P831770230611838497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033110 (n + 1) - A033110 (A137734 (n ^ 2)).toNat

end

end A033109.P831770230611838497

/-! ## A033109.P16470405237063571514

`A033110(n+1)-A033110(A137735(n²))`
-/

namespace A033109.P16470405237063571514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033110 (n + 1) - A033110 (A137735 (n ^ 2)).toNat

end

end A033109.P16470405237063571514

/-! ## A033109.P7362172752409060847

`Δ[A033110(A137734(n²))]`
-/

namespace A033109.P7362172752409060847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033110 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033109.P7362172752409060847

/-! ## A033109.P17387605861543523386

`Δ[A033110(A137735(n²))]`
-/

namespace A033109.P17387605861543523386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033110 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033109.P17387605861543523386

/-! ## A033109.P16433842956529094936

`Δ[A033110(A038690(A253909(n)))]`
-/

namespace A033109.P16433842956529094936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033110 (A038690 (A253909 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033109.P16433842956529094936

/-!
# A033110: Number of 8's when k is written in base b for all b and k satisfying 2<=b<=n+1, 1<=k<=n.

The programs for A033110, there is no canonical definition to state claims against.
-/

/-! ## A033110.P14923038896727807192

`∑[A033109(n+1)]`
-/

namespace A033110.P14923038896727807192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033110.P14923038896727807192

/-!
# A033111: Number of 9's when n is written in base b for 2<=b<=n+1.

The programs for A033111, there is no canonical definition to state claims against.
-/

/-! ## A033111.P1593510473037739187

`Δ[A033112(A028310(n))]`
-/

namespace A033111.P1593510473037739187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033112 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033111.P1593510473037739187

/-! ## A033111.P5887935460728928775

`A033112(n+1)-A033112(A028310(n))`
-/

namespace A033111.P5887935460728928775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033112 (n + 1) - A033112 (A028310 n).toNat

end

end A033111.P5887935460728928775

/-! ## A033111.P8050770295604656928

`A033112(n+1)-A033112(A000007(n)+n)`
-/

namespace A033111.P8050770295604656928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033112 (n + 1) - A033112 (A000007 n + (n : ℤ)).toNat

end

end A033111.P8050770295604656928

/-! ## A033111.P16452251165117011897

`Δ[A033112(A000007(n)+n)]`
-/

namespace A033111.P16452251165117011897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033112 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033111.P16452251165117011897

/-! ## A033111.P13660473898070485319

`Δ[A033112(xor(n, A000007(n)))]`
-/

namespace A033111.P13660473898070485319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033112 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033111.P13660473898070485319

/-! ## A033111.P2249484063113300467

`Δ[A033112(A008619(A004273(n)))]`
-/

namespace A033111.P2249484063113300467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033112 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033111.P2249484063113300467

/-! ## A033111.P9376048687487151357

`A033112(n+1)-A033112(A065033(2*n))`
-/

namespace A033111.P9376048687487151357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033112 (n + 1) - A033112 (A065033 (2 * n)).toNat

end

end A033111.P9376048687487151357

/-! ## A033111.P13162120952313461789

`Δ[A033112(A065033(2*n))]`
-/

namespace A033111.P13162120952313461789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033112 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033111.P13162120952313461789

/-! ## A033111.P15512748434184176942

`Δ[A033112(A123108(2*n))]`
-/

namespace A033111.P15512748434184176942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033112 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033111.P15512748434184176942

/-! ## A033111.P4801769019923080380

`A033112(n+1)-A033112(A233583(n+1))`
-/

namespace A033111.P4801769019923080380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033112 (n + 1) - A033112 (A233583 (n + 1)).toNat

end

end A033111.P4801769019923080380

/-! ## A033111.P1798435243884047700

`Δ[A033112(A233583(n+1))]`
-/

namespace A033111.P1798435243884047700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033112 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033111.P1798435243884047700

/-! ## A033111.P2886496746830777919

`Δ[A033112(A002260(A034856(n+1)))]`
-/

namespace A033111.P2886496746830777919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033112 (A002260 (A034856 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033111.P2886496746830777919

/-! ## A033111.P9239829879512698600

`Δ[A033112(A003056(A133263(n)))]`
-/

namespace A033111.P9239829879512698600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033112 (A003056 (A133263 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033111.P9239829879512698600

/-! ## A033111.P5160337573417794713

`A033112(n+1)-A033112(A137734(n²))`
-/

namespace A033111.P5160337573417794713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033112 (n + 1) - A033112 (A137734 (n ^ 2)).toNat

end

end A033111.P5160337573417794713

/-! ## A033111.P7723744918274468116

`A033112(n+1)-A033112(A137735(n²))`
-/

namespace A033111.P7723744918274468116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033112 (n + 1) - A033112 (A137735 (n ^ 2)).toNat

end

end A033111.P7723744918274468116

/-! ## A033111.P13105537771720175384

`Δ[A033112(A137734(n²))]`
-/

namespace A033111.P13105537771720175384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033112 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033111.P13105537771720175384

/-! ## A033111.P3449855295460375418

`Δ[A033112(A137735(n²))]`
-/

namespace A033111.P3449855295460375418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033112 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033111.P3449855295460375418

/-!
# A033112: Number of 9's when k is written in base b for all b and k satisfying 2<=b<=n+1, 1<=k<=n.

The programs for A033112, there is no canonical definition to state claims against.
-/

/-! ## A033112.P17165495250061744053

`∑[A033111(n+1)]`
-/

namespace A033112.P17165495250061744053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033112.P17165495250061744053

/-! ## A033112.P9056952682300766884

`A033111(1-char[2]+n)+a(n-1)` with `a(0)=0`
-/

namespace A033112.P9056952682300766884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033111 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat + a (n - 1)

end

end A033112.P9056952682300766884

/-! ## A033112.P11572137000209031371

`A017907(A096600(n+1)%A231369(2*n+5))`
-/

namespace A033112.P11572137000209031371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017907 (Int.tmod (A096600 (n + 1)) (A231369 (2 * n + 5))).toNat

end

end A033112.P11572137000209031371

/-!
# A033113: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,0.

The programs for A033113, the canonical program `A033113.P18069470244266137004` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033113 has offset 1).

The definition of A033113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033113.P18069470244266137004

`a(n-2)+3^n` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033113

/-- `a(n-2)+3^n` -/
def P18069470244266137004.Spec : Prop :=
  ∀ n, (P18069470244266137004.a n : ℤ) = A033113 (n + 1)

theorem P18069470244266137004.correct : P18069470244266137004.Spec := by
  intro n
  simp only [A033113, Nat.add_sub_cancel]

end A033113

/-! ## A033113.P15188753396083869837

`2*a(n-1)+3*a(n-2)+1` with `a(0)=1, a(1)=3`
-/

namespace A033113.P15188753396083869837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) + 1

end

end A033113.P15188753396083869837

namespace A033113

/-- `2*a(n-1)+3*a(n-2)+1` -/
def P15188753396083869837.Spec : Prop :=
  ∀ n, (P15188753396083869837.a n : ℤ) = A033113 (n + 1)

end A033113

/-! ## A033113.P16540323860035385250

`A039300(n+1)-1`
-/

namespace A033113.P16540323860035385250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 (n + 1) - 1

end

end A033113.P16540323860035385250

namespace A033113

/-- `A039300(n+1)-1` -/
def P16540323860035385250.Spec : Prop :=
  ∀ n, P16540323860035385250.a n = A033113 (n + 1)

end A033113

/-! ## A033113.P4966685772093090198

`A081251(n+1)/2`
-/

namespace A033113.P4966685772093090198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081251 (n + 1) : ℚ) / 2

end

end A033113.P4966685772093090198

namespace A033113

/-- `A081251(n+1)/2` -/
def P4966685772093090198.Spec : Prop :=
  ∀ n, P4966685772093090198.a n = (A033113 (n + 1) : ℚ)

end A033113

/-! ## A033113.P6322419523609313718

`round(3^(n+2)/8)`
-/

namespace A033113.P6322419523609313718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 ^ (n + 2) : ℚ) / 8)

end

end A033113.P6322419523609313718

namespace A033113

/-- `round(3^(n+2)/8)` -/
def P6322419523609313718.Spec : Prop :=
  ∀ n, P6322419523609313718.a n = A033113 (n + 1)

end A033113

/-! ## A033113.P12771958887461129090

`ogf(1/(1-3x-x^2+3x^3))`
-/

namespace A033113.P12771958887461129090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -1, 3] n

end

end A033113.P12771958887461129090

namespace A033113

/-- `ogf(1/(1-3x-x^2+3x^3))` -/
def P12771958887461129090.Spec : Prop :=
  ∀ n, P12771958887461129090.a n = A033113 (n + 1)

end A033113

/-! ## A033113.P8303160513092443941

`∑[3^n-a(n-1)]` with `a(0)=1`
-/

namespace A033113.P8303160513092443941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (3 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033113.P8303160513092443941

namespace A033113

/-- `∑[3^n-a(n-1)]` -/
def P8303160513092443941.Spec : Prop :=
  ∀ n, P8303160513092443941.a n = A033113 (n + 1)

end A033113

/-! ## A033113.P11111329040938042807

`ceil(∑[or(1, ∑[3^n])/2])`
-/

namespace A033113.P11111329040938042807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A033113.P11111329040938042807

namespace A033113

/-- `ceil(∑[or(1, ∑[3^n])/2])` -/
def P11111329040938042807.Spec : Prop :=
  ∀ n, P11111329040938042807.a n = A033113 (n + 1)

end A033113

/-! ## A033113.P3610226966545617529

`log2(gcd(2, n))+3*a(n-1)` with `a(0)=1`
-/

namespace A033113.P3610226966545617529
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) + 3 * a (n - 1)

end

end A033113.P3610226966545617529

namespace A033113

/-- `log2(gcd(2, n))+3*a(n-1)` -/
def P3610226966545617529.Spec : Prop :=
  ∀ n, P3610226966545617529.a n = (A033113 (n + 1) : ℝ)

end A033113

/-! ## A033113.P7540256997569186512

`(n+1)%2+3*a(n-1)` with `a(0)=1`
-/

namespace A033113.P7540256997569186512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 2 + 3 * a (n - 1)

end

end A033113.P7540256997569186512

namespace A033113

/-- `(n+1)%2+3*a(n-1)` -/
def P7540256997569186512.Spec : Prop :=
  ∀ n, (P7540256997569186512.a n : ℤ) = A033113 (n + 1)

end A033113

/-! ## A033113.P2957438732211139333

`1-(n%2-3*a(n-1))` with `a(0)=1`
-/

namespace A033113.P2957438732211139333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (((n % 2 : ℕ) : ℤ) - 3 * a (n - 1))

end

end A033113.P2957438732211139333

namespace A033113

/-- `1-(n%2-3*a(n-1))` -/
def P2957438732211139333.Spec : Prop :=
  ∀ n, P2957438732211139333.a n = A033113 (n + 1)

end A033113

/-! ## A033113.P14812879995185646398

`and(1, n+1)+3*a(n-1)` with `a(0)=1`
-/

namespace A033113.P14812879995185646398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 1 (n + 1) + 3 * a (n - 1)

end

end A033113.P14812879995185646398

namespace A033113

/-- `and(1, n+1)+3*a(n-1)` -/
def P14812879995185646398.Spec : Prop :=
  ∀ n, (P14812879995185646398.a n : ℤ) = A033113 (n + 1)

end A033113

/-! ## A033113.P8967821316477431727

`∑[floor(∑[3*a(n-1)]/2)]` with `a(0)=2, a(1)=3`
-/

namespace A033113.P8967821316477431727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033113.P8967821316477431727

namespace A033113

/-- `∑[floor(∑[3*a(n-1)]/2)]` -/
def P8967821316477431727.Spec : Prop :=
  ∀ n, P8967821316477431727.a n = A033113 (n + 1)

end A033113

/-! ## A033113.P6019763899690072971

`∑[3*a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A033113.P6019763899690072971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A033113.P6019763899690072971

namespace A033113

/-- `∑[3*a(n-1)]-a(n-1)` -/
def P6019763899690072971.Spec : Prop :=
  ∀ n, P6019763899690072971.a n = A033113 (n + 1)

end A033113

/-! ## A033113.P5560157483866916161

`val(a(n-1), 3)+3*a(n-1)` with `a(0)=1`
-/

namespace A033113.P5560157483866916161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.valuation (a (n - 1)) 3 + 3 * a (n - 1)

end

end A033113.P5560157483866916161

namespace A033113

/-- `val(a(n-1), 3)+3*a(n-1)` -/
def P5560157483866916161.Spec : Prop :=
  ∀ n, (P5560157483866916161.a n : ℤ) = A033113 (n + 1)

end A033113

/-! ## A033113.P16944932696123191106

`∑[a(n-1)+a(n-1)+a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A033113.P16944932696123191106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A033113.P16944932696123191106

namespace A033113

/-- `∑[a(n-1)+a(n-1)+a(n-1)]-a(n-1)` -/
def P16944932696123191106.Spec : Prop :=
  ∀ n, P16944932696123191106.a n = A033113 (n + 1)

end A033113

/-! ## A033113.P5460561256498706603

`∑[∑[A046717(n)]]`
-/

namespace A033113.P5460561256498706603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033113.P5460561256498706603

namespace A033113

/-- `∑[∑[A046717(n)]]` -/
def P5460561256498706603.Spec : Prop :=
  ∀ n, P5460561256498706603.a n = A033113 (n + 1)

end A033113

/-! ## A033113.P1571512317394812449

`∑[A015518(n+1)]`
-/

namespace A033113.P1571512317394812449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033113.P1571512317394812449

namespace A033113

/-- `∑[A015518(n+1)]` -/
def P1571512317394812449.Spec : Prop :=
  ∀ n, P1571512317394812449.a n = A033113 (n + 1)

end A033113

/-! ## A033113.P18078751518374461475

`∑[A080926(n)+1]`
-/

namespace A033113.P18078751518374461475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080926 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033113.P18078751518374461475

namespace A033113

/-- `∑[A080926(n)+1]` -/
def P18078751518374461475.Spec : Prop :=
  ∀ n, P18078751518374461475.a n = A033113 (n + 1)

end A033113

/-! ## A033113.P13026192516107311659

`Δ[A097137(n+1)]`
-/

namespace A033113.P13026192516107311659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033113.P13026192516107311659

namespace A033113

/-- `Δ[A097137(n+1)]` -/
def P13026192516107311659.Spec : Prop :=
  ∀ n, P13026192516107311659.a n = A033113 (n + 1)

end A033113

/-!
# A033114: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,0.

The programs for A033114, the canonical program `A033114.P15710734722098624949` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033114 has offset 1).

The definition of A033114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033114.P15710734722098624949

`a(n-2)+4^n` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033114

/-- `a(n-2)+4^n` -/
def P15710734722098624949.Spec : Prop :=
  ∀ n, (P15710734722098624949.a n : ℤ) = A033114 (n + 1)

theorem P15710734722098624949.correct : P15710734722098624949.Spec := by
  intro n
  simp only [A033114, Nat.add_sub_cancel]

end A033114

/-! ## A033114.P12965812336524030579

`3*a(n-1)+4*a(n-2)+1` with `a(0)=1, a(1)=4`
-/

namespace A033114.P12965812336524030579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * a (n - 1) + 4 * a (n - 2) + 1

end

end A033114.P12965812336524030579

namespace A033114

/-- `3*a(n-1)+4*a(n-2)+1` -/
def P12965812336524030579.Spec : Prop :=
  ∀ n, (P12965812336524030579.a n : ℤ) = A033114 (n + 1)

end A033114

/-! ## A033114.P2431160103457525209

`A117616(n+1)/2`
-/

namespace A033114.P2431160103457525209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117616 (n + 1) : ℚ) / 2

end

end A033114.P2431160103457525209

namespace A033114

/-- `A117616(n+1)/2` -/
def P2431160103457525209.Spec : Prop :=
  ∀ n, P2431160103457525209.a n = (A033114 (n + 1) : ℚ)

end A033114

/-! ## A033114.P2495743771365524406

`A043291(n+1)/3`
-/

namespace A033114.P2495743771365524406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043291 (n + 1) : ℚ) / 3

end

end A033114.P2495743771365524406

namespace A033114

/-- `A043291(n+1)/3` -/
def P2495743771365524406.Spec : Prop :=
  ∀ n, P2495743771365524406.a n = (A033114 (n + 1) : ℚ)

end A033114

/-! ## A033114.P13248937255024956066

`floor(4^(n+2)/15)`
-/

namespace A033114.P13248937255024956066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ (n + 2) : ℚ) / 15⌋

end

end A033114.P13248937255024956066

namespace A033114

/-- `floor(4^(n+2)/15)` -/
def P13248937255024956066.Spec : Prop :=
  ∀ n, P13248937255024956066.a n = A033114 (n + 1)

end A033114

/-! ## A033114.P17998039934942808913

`ogf(1/(1-4x-x^2+4x^3))`
-/

namespace A033114.P17998039934942808913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, -1, 4] n

end

end A033114.P17998039934942808913

namespace A033114

/-- `ogf(1/(1-4x-x^2+4x^3))` -/
def P17998039934942808913.Spec : Prop :=
  ∀ n, P17998039934942808913.a n = A033114 (n + 1)

end A033114

/-! ## A033114.P16343848802654117161

`or(4^n, a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A033114.P16343848802654117161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.lor (4 ^ n) (a (n - 2))

end

end A033114.P16343848802654117161

namespace A033114

/-- `or(4^n, a(n-2))` -/
def P16343848802654117161.Spec : Prop :=
  ∀ n, (P16343848802654117161.a n : ℤ) = A033114 (n + 1)

end A033114

/-! ## A033114.P17364360130912357238

`xor(4^n, a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A033114.P17364360130912357238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.xor (4 ^ n) (a (n - 2))

end

end A033114.P17364360130912357238

namespace A033114

/-- `xor(4^n, a(n-2))` -/
def P17364360130912357238.Spec : Prop :=
  ∀ n, (P17364360130912357238.a n : ℤ) = A033114 (n + 1)

end A033114

/-! ## A033114.P11059751254361508379

`∑[4^n-a(n-1)]` with `a(0)=1`
-/

namespace A033114.P11059751254361508379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033114.P11059751254361508379

namespace A033114

/-- `∑[4^n-a(n-1)]` -/
def P11059751254361508379.Spec : Prop :=
  ∀ n, P11059751254361508379.a n = A033114 (n + 1)

end A033114

/-! ## A033114.P11314990737491246043

`log2(gcd(2, n))+4*a(n-1)` with `a(0)=1`
-/

namespace A033114.P11314990737491246043
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) + 4 * a (n - 1)

end

end A033114.P11314990737491246043

namespace A033114

/-- `log2(gcd(2, n))+4*a(n-1)` -/
def P11314990737491246043.Spec : Prop :=
  ∀ n, P11314990737491246043.a n = (A033114 (n + 1) : ℝ)

end A033114

/-! ## A033114.P15921621394377066974

`char[2*n]+4*a(n-1)` with `a(0)=1`
-/

namespace A033114.P15921621394377066974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 4 * a (n - 1)

end

end A033114.P15921621394377066974

namespace A033114

/-- `char[2*n]+4*a(n-1)` -/
def P15921621394377066974.Spec : Prop :=
  ∀ n, (P15921621394377066974.a n : ℤ) = A033114 (n + 1)

end A033114

/-! ## A033114.P11606007695313188809

`or(4*a(n-1), char[2*n])` with `a(0)=1`
-/

namespace A033114.P11606007695313188809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (4 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A033114.P11606007695313188809

namespace A033114

/-- `or(4*a(n-1), char[2*n])` -/
def P11606007695313188809.Spec : Prop :=
  ∀ n, (P11606007695313188809.a n : ℤ) = A033114 (n + 1)

end A033114

/-! ## A033114.P6745524001194881992

`xor(4*a(n-1), char[2*n])` with `a(0)=1`
-/

namespace A033114.P6745524001194881992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (4 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A033114.P6745524001194881992

namespace A033114

/-- `xor(4*a(n-1), char[2*n])` -/
def P6745524001194881992.Spec : Prop :=
  ∀ n, (P6745524001194881992.a n : ℤ) = A033114 (n + 1)

end A033114

/-! ## A033114.P14141067807696769517

`1-(n%2-4*a(n-1))` with `a(0)=1`
-/

namespace A033114.P14141067807696769517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (((n % 2 : ℕ) : ℤ) - 4 * a (n - 1))

end

end A033114.P14141067807696769517

namespace A033114

/-- `1-(n%2-4*a(n-1))` -/
def P14141067807696769517.Spec : Prop :=
  ∀ n, P14141067807696769517.a n = A033114 (n + 1)

end A033114

/-! ## A033114.P3900544397938100585

`A083593(2*n)`
-/

namespace A033114.P3900544397938100585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083593 (2 * n)

end

end A033114.P3900544397938100585

namespace A033114

/-- `A083593(2*n)` -/
def P3900544397938100585.Spec : Prop :=
  ∀ n, P3900544397938100585.a n = A033114 (n + 1)

end A033114

/-! ## A033114.P16911849025504777400

`A281216(2*n)`
-/

namespace A033114.P16911849025504777400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281216 (2 * n)

end

end A033114.P16911849025504777400

namespace A033114

/-- `A281216(2*n)` -/
def P16911849025504777400.Spec : Prop :=
  ∀ n, P16911849025504777400.a n = A033114 (n + 1)

end A033114

/-! ## A033114.P3133629798321182145

`A283216(2*n)`
-/

namespace A033114.P3133629798321182145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283216 (2 * n)

end

end A033114.P3133629798321182145

namespace A033114

/-- `A283216(2*n)` -/
def P3133629798321182145.Spec : Prop :=
  ∀ n, P3133629798321182145.a n = A033114 (n + 1)

end A033114

/-! ## A033114.P15675575797376769639

`A115451(Δ[n²])`
-/

namespace A033114.P15675575797376769639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115451 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A033114.P15675575797376769639

namespace A033114

/-- `A115451(Δ[n²])` -/
def P15675575797376769639.Spec : Prop :=
  ∀ n, P15675575797376769639.a n = A033114 (n + 1)

end A033114

/-! ## A033114.P14030259225934215243

`A215095(Δ[n²])`
-/

namespace A033114.P14030259225934215243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215095 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A033114.P14030259225934215243

namespace A033114

/-- `A215095(Δ[n²])` -/
def P14030259225934215243.Spec : Prop :=
  ∀ n, P14030259225934215243.a n = A033114 (n + 1)

end A033114

/-! ## A033114.P3345862216731210155

`∑[∑[A122117(n)]]`
-/

namespace A033114.P3345862216731210155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033114.P3345862216731210155

namespace A033114

/-- `∑[∑[A122117(n)]]` -/
def P3345862216731210155.Spec : Prop :=
  ∀ n, P3345862216731210155.a n = A033114 (n + 1)

end A033114

/-!
# A033115: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,0.

The programs for A033115, the canonical program `A033115.P17339711678601970117` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033115 has offset 1).

The definition of A033115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033115.P17339711678601970117

`a(n-2)+5^n` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033115

/-- `a(n-2)+5^n` -/
def P17339711678601970117.Spec : Prop :=
  ∀ n, (P17339711678601970117.a n : ℤ) = A033115 (n + 1)

theorem P17339711678601970117.correct : P17339711678601970117.Spec := by
  intro n
  simp only [A033115, Nat.add_sub_cancel]

end A033115

/-! ## A033115.P1279777356301369020

`4*a(n-1)+5*a(n-2)+1` with `a(0)=1, a(1)=5`
-/

namespace A033115.P1279777356301369020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * a (n - 1) + 5 * a (n - 2) + 1

end

end A033115.P1279777356301369020

namespace A033115

/-- `4*a(n-1)+5*a(n-2)+1` -/
def P1279777356301369020.Spec : Prop :=
  ∀ n, (P1279777356301369020.a n : ℤ) = A033115 (n + 1)

end A033115

/-! ## A033115.P12683297858351981262

`floor(5^(n+2)/24)`
-/

namespace A033115.P12683297858351981262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 ^ (n + 2) : ℚ) / 24⌋

end

end A033115.P12683297858351981262

namespace A033115

/-- `floor(5^(n+2)/24)` -/
def P12683297858351981262.Spec : Prop :=
  ∀ n, P12683297858351981262.a n = A033115 (n + 1)

end A033115

/-! ## A033115.P7597171511201436954

`ogf(1/(1-5x-x^2+5x^3))`
-/

namespace A033115.P7597171511201436954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, -1, 5] n

end

end A033115.P7597171511201436954

namespace A033115

/-- `ogf(1/(1-5x-x^2+5x^3))` -/
def P7597171511201436954.Spec : Prop :=
  ∀ n, P7597171511201436954.a n = A033115 (n + 1)

end A033115

/-! ## A033115.P7711688116545622437

`∑[xor(1, 5*a(n-1))]` with `a(0)=1`
-/

namespace A033115.P7711688116545622437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor 1 (5 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033115.P7711688116545622437

namespace A033115

/-- `∑[xor(1, 5*a(n-1))]` -/
def P7711688116545622437.Spec : Prop :=
  ∀ n, (P7711688116545622437.a n : ℤ) = A033115 (n + 1)

end A033115

/-! ## A033115.P15656847135051791202

`∑[5^n-a(n-1)]` with `a(0)=1`
-/

namespace A033115.P15656847135051791202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (5 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033115.P15656847135051791202

namespace A033115

/-- `∑[5^n-a(n-1)]` -/
def P15656847135051791202.Spec : Prop :=
  ∀ n, P15656847135051791202.a n = A033115 (n + 1)

end A033115

/-! ## A033115.P15183400536053522659

`log2(gcd(2, n))+5*a(n-1)` with `a(0)=1`
-/

namespace A033115.P15183400536053522659
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) + 5 * a (n - 1)

end

end A033115.P15183400536053522659

namespace A033115

/-- `log2(gcd(2, n))+5*a(n-1)` -/
def P15183400536053522659.Spec : Prop :=
  ∀ n, P15183400536053522659.a n = (A033115 (n + 1) : ℝ)

end A033115

/-! ## A033115.P16476067641187759776

`char[2*n]+5*a(n-1)` with `a(0)=1`
-/

namespace A033115.P16476067641187759776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 5 * a (n - 1)

end

end A033115.P16476067641187759776

namespace A033115

/-- `char[2*n]+5*a(n-1)` -/
def P16476067641187759776.Spec : Prop :=
  ∀ n, (P16476067641187759776.a n : ℤ) = A033115 (n + 1)

end A033115

/-! ## A033115.P10513217142801931244

`1-(n%2-5*a(n-1))` with `a(0)=1`
-/

namespace A033115.P10513217142801931244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (((n % 2 : ℕ) : ℤ) - 5 * a (n - 1))

end

end A033115.P10513217142801931244

namespace A033115

/-- `1-(n%2-5*a(n-1))` -/
def P10513217142801931244.Spec : Prop :=
  ∀ n, P10513217142801931244.a n = A033115 (n + 1)

end A033115

/-! ## A033115.P16677598861630238024

`∑[A083425(n)]`
-/

namespace A033115.P16677598861630238024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033115.P16677598861630238024

namespace A033115

/-- `∑[A083425(n)]` -/
def P16677598861630238024.Spec : Prop :=
  ∀ n, P16677598861630238024.a n = A033115 (n + 1)

end A033115

/-! ## A033115.P10482575116661056781

`∑[∑[A083217(n)]]`
-/

namespace A033115.P10482575116661056781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083217 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033115.P10482575116661056781

namespace A033115

/-- `∑[∑[A083217(n)]]` -/
def P10482575116661056781.Spec : Prop :=
  ∀ n, P10482575116661056781.a n = A033115 (n + 1)

end A033115

/-! ## A033115.P18074744924943959848

`∑[A015531(n+1)]`
-/

namespace A033115.P18074744924943959848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033115.P18074744924943959848

namespace A033115

/-- `∑[A015531(n+1)]` -/
def P18074744924943959848.Spec : Prop :=
  ∀ n, P18074744924943959848.a n = A033115 (n + 1)

end A033115

/-! ## A033115.P3212680649518723648

`∑[abs(A014986(n+1))]`
-/

namespace A033115.P3212680649518723648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014986 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033115.P3212680649518723648

namespace A033115

/-- `∑[abs(A014986(n+1))]` -/
def P3212680649518723648.Spec : Prop :=
  ∀ n, P3212680649518723648.a n = A033115 (n + 1)

end A033115

/-! ## A033115.P4135742267293664439

`A000351(n)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A033115.P4135742267293664439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A000351 n + a (n - 2)

end

end A033115.P4135742267293664439

namespace A033115

/-- `A000351(n)+a(n-2)` -/
def P4135742267293664439.Spec : Prop :=
  ∀ n, P4135742267293664439.a n = A033115 (n + 1)

end A033115

/-! ## A033115.P5336389106214916867

`5*a(n-1)+2-A176895(2*n)` with `a(0)=1`
-/

namespace A033115.P5336389106214916867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + 2 - A176895 (2 * n)

end

end A033115.P5336389106214916867

namespace A033115

/-- `5*a(n-1)+2-A176895(2*n)` -/
def P5336389106214916867.Spec : Prop :=
  ∀ n, P5336389106214916867.a n = A033115 (n + 1)

end A033115

/-! ## A033115.P16436746126181544333

`∑[5*a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A033115.P16436746126181544333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A033115.P16436746126181544333

namespace A033115

/-- `∑[5*a(n-1)]-a(n-1)` -/
def P16436746126181544333.Spec : Prop :=
  ∀ n, P16436746126181544333.a n = A033115 (n + 1)

end A033115

/-! ## A033115.P6110372774301607035

`Δ[A097139(n+1)]`
-/

namespace A033115.P6110372774301607035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033115.P6110372774301607035

namespace A033115

/-- `Δ[A097139(n+1)]` -/
def P6110372774301607035.Spec : Prop :=
  ∀ n, P6110372774301607035.a n = A033115 (n + 1)

end A033115

/-! ## A033115.P17725369612118011390

`∑[A123010(n+3)]/4`
-/

namespace A033115.P17725369612118011390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123010 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A033115.P17725369612118011390

namespace A033115

/-- `∑[A123010(n+3)]/4` -/
def P17725369612118011390.Spec : Prop :=
  ∀ n, P17725369612118011390.a n = (A033115 (n + 1) : ℚ)

end A033115

/-! ## A033115.P10959664226923403487

`A033076(3*(n+1))/3`
-/

namespace A033115.P10959664226923403487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033076 (3 * (n + 1)) : ℚ) / 3

end

end A033115.P10959664226923403487

namespace A033115

/-- `A033076(3*(n+1))/3` -/
def P10959664226923403487.Spec : Prop :=
  ∀ n, P10959664226923403487.a n = (A033115 (n + 1) : ℚ)

end A033115

/-! ## A033115.P2341871191926639793

`2*A200864(n)-A016209(n)`
-/

namespace A033115.P2341871191926639793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A200864 n - A016209 n

end

end A033115.P2341871191926639793

namespace A033115

/-- `2*A200864(n)-A016209(n)` -/
def P2341871191926639793.Spec : Prop :=
  ∀ n, P2341871191926639793.a n = A033115 (n + 1)

end A033115

/-!
# A033116: Base-6 digits are, in order, the first n terms of the periodic sequence with initial period 1,0.

The programs for A033116, the canonical program `A033116.P388235926407882780` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033116 has offset 1).

The definition of A033116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033116.P388235926407882780

`a(n-2)+6^n` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033116

/-- `a(n-2)+6^n` -/
def P388235926407882780.Spec : Prop :=
  ∀ n, (P388235926407882780.a n : ℤ) = A033116 (n + 1)

theorem P388235926407882780.correct : P388235926407882780.Spec := by
  intro n
  simp only [A033116, Nat.add_sub_cancel]

end A033116

/-! ## A033116.P500981923938774276

`5*a(n-1)+6*a(n-2)+1` with `a(0)=1, a(1)=6`
-/

namespace A033116.P500981923938774276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  5 * a (n - 1) + 6 * a (n - 2) + 1

end

end A033116.P500981923938774276

namespace A033116

/-- `5*a(n-1)+6*a(n-2)+1` -/
def P500981923938774276.Spec : Prop :=
  ∀ n, (P500981923938774276.a n : ℤ) = A033116 (n + 1)

end A033116

/-! ## A033116.P10612275100341902665

`floor(6^(n+2)/35)`
-/

namespace A033116.P10612275100341902665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 ^ (n + 2) : ℚ) / 35⌋

end

end A033116.P10612275100341902665

namespace A033116

/-- `floor(6^(n+2)/35)` -/
def P10612275100341902665.Spec : Prop :=
  ∀ n, P10612275100341902665.a n = A033116 (n + 1)

end A033116

/-! ## A033116.P9381064145808059185

`ogf(1/(1-6x-x^2+6x^3))`
-/

namespace A033116.P9381064145808059185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, -1, 6] n

end

end A033116.P9381064145808059185

namespace A033116

/-- `ogf(1/(1-6x-x^2+6x^3))` -/
def P9381064145808059185.Spec : Prop :=
  ∀ n, P9381064145808059185.a n = A033116 (n + 1)

end A033116

/-! ## A033116.P17153624054424183922

`∑[6^n-a(n-1)]` with `a(0)=1`
-/

namespace A033116.P17153624054424183922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (6 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033116.P17153624054424183922

namespace A033116

/-- `∑[6^n-a(n-1)]` -/
def P17153624054424183922.Spec : Prop :=
  ∀ n, P17153624054424183922.a n = A033116 (n + 1)

end A033116

/-! ## A033116.P707445004413321691

`∑[lcm(2, ∑[(-6)^n])]/2`
-/

namespace A033116.P707445004413321691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-6) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A033116.P707445004413321691

namespace A033116

/-- `∑[lcm(2, ∑[(-6)^n])]/2` -/
def P707445004413321691.Spec : Prop :=
  ∀ n, P707445004413321691.a n = (A033116 (n + 1) : ℚ)

end A033116

/-! ## A033116.P9105581741097735015

`log2(gcd(2, n))+6*a(n-1)` with `a(0)=1`
-/

namespace A033116.P9105581741097735015
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) + 6 * a (n - 1)

end

end A033116.P9105581741097735015

namespace A033116

/-- `log2(gcd(2, n))+6*a(n-1)` -/
def P9105581741097735015.Spec : Prop :=
  ∀ n, P9105581741097735015.a n = (A033116 (n + 1) : ℝ)

end A033116

/-! ## A033116.P12238585273308757911

`char[2*n]+6*a(n-1)` with `a(0)=1`
-/

namespace A033116.P12238585273308757911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 6 * a (n - 1)

end

end A033116.P12238585273308757911

namespace A033116

/-- `char[2*n]+6*a(n-1)` -/
def P12238585273308757911.Spec : Prop :=
  ∀ n, (P12238585273308757911.a n : ℤ) = A033116 (n + 1)

end A033116

/-! ## A033116.P11286711430071975765

`or(6*a(n-1), char[2*n])` with `a(0)=1`
-/

namespace A033116.P11286711430071975765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (6 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A033116.P11286711430071975765

namespace A033116

/-- `or(6*a(n-1), char[2*n])` -/
def P11286711430071975765.Spec : Prop :=
  ∀ n, (P11286711430071975765.a n : ℤ) = A033116 (n + 1)

end A033116

/-! ## A033116.P12765430909399449783

`xor(6*a(n-1), char[2*n])` with `a(0)=1`
-/

namespace A033116.P12765430909399449783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (6 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A033116.P12765430909399449783

namespace A033116

/-- `xor(6*a(n-1), char[2*n])` -/
def P12765430909399449783.Spec : Prop :=
  ∀ n, (P12765430909399449783.a n : ℤ) = A033116 (n + 1)

end A033116

/-! ## A033116.P8578295683460418516

`∑[6*a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A033116.P8578295683460418516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A033116.P8578295683460418516

namespace A033116

/-- `∑[6*a(n-1)]-a(n-1)` -/
def P8578295683460418516.Spec : Prop :=
  ∀ n, P8578295683460418516.a n = A033116 (n + 1)

end A033116

/-! ## A033116.P18101412714260087934

`∑[A015540(n+1)]`
-/

namespace A033116.P18101412714260087934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033116.P18101412714260087934

namespace A033116

/-- `∑[A015540(n+1)]` -/
def P18101412714260087934.Spec : Prop :=
  ∀ n, P18101412714260087934.a n = A033116 (n + 1)

end A033116

/-! ## A033116.P15074961888000407284

`Δ[A178719(n+1)]`
-/

namespace A033116.P15074961888000407284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033116.P15074961888000407284

namespace A033116

/-- `Δ[A178719(n+1)]` -/
def P15074961888000407284.Spec : Prop :=
  ∀ n, P15074961888000407284.a n = A033116 (n + 1)

end A033116

/-! ## A033116.P8997250832494954449

`∑[abs(A014987(n+1))]`
-/

namespace A033116.P8997250832494954449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014987 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033116.P8997250832494954449

namespace A033116

/-- `∑[abs(A014987(n+1))]` -/
def P8997250832494954449.Spec : Prop :=
  ∀ n, P8997250832494954449.a n = A033116 (n + 1)

end A033116

/-! ## A033116.P5683887409633563517

`A178719(n+2)-A178719(n+1)`
-/

namespace A033116.P5683887409633563517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178719 (n + 2) - A178719 (n + 1)

end

end A033116.P5683887409633563517

namespace A033116

/-- `A178719(n+2)-A178719(n+1)` -/
def P5683887409633563517.Spec : Prop :=
  ∀ n, P5683887409633563517.a n = A033116 (n + 1)

end A033116

/-! ## A033116.P17094803408458223951

`(A015540(n+1)+A003464(n+1))/2`
-/

namespace A033116.P17094803408458223951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015540 (n + 1) + A003464 (n + 1) : ℚ) / 2

end

end A033116.P17094803408458223951

namespace A033116

/-- `(A015540(n+1)+A003464(n+1))/2` -/
def P17094803408458223951.Spec : Prop :=
  ∀ n, P17094803408458223951.a n = (A033116 (n + 1) : ℚ)

end A033116

/-! ## A033116.P12180077874515209555

`A037697(n+1)+∑[A037683(n+1)-A037697(n+1)]`
-/

namespace A033116.P12180077874515209555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037683 (n + 1) - A037697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037697 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033116.P12180077874515209555

namespace A033116

/-- `A037697(n+1)+∑[A037683(n+1)-A037697(n+1)]` -/
def P12180077874515209555.Spec : Prop :=
  ∀ n, P12180077874515209555.a n = A033116 (n + 1)

end A033116

/-!
# A033117: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,0.

The programs for A033117, the canonical program `A033117.P16766258034415345403` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033117 has offset 1).

The definition of A033117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033117.P16766258034415345403

`a(n-2)+7^n` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033117

/-- `a(n-2)+7^n` -/
def P16766258034415345403.Spec : Prop :=
  ∀ n, (P16766258034415345403.a n : ℤ) = A033117 (n + 1)

theorem P16766258034415345403.correct : P16766258034415345403.Spec := by
  intro n
  simp only [A033117, Nat.add_sub_cancel]

end A033117

/-! ## A033117.P18240459719066936716

`7*a(n-1)+a(n-2)-7*a(n-3)` with `a(0)=1, a(1)=7, a(2)=50`
-/

namespace A033117.P18240459719066936716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 50] fun n a =>
  7 * a (n - 1) + a (n - 2) - 7 * a (n - 3)

end

end A033117.P18240459719066936716

namespace A033117

/-- `7*a(n-1)+a(n-2)-7*a(n-3)` -/
def P18240459719066936716.Spec : Prop :=
  ∀ n, P18240459719066936716.a n = A033117 (n + 1)

end A033117

/-! ## A033117.P17715541724426067941

`1/6*floor(7^(n+2)/8)`
-/

namespace A033117.P17715541724426067941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (⌊(7 ^ (n + 2) : ℚ) / 8⌋ : ℚ)

end

end A033117.P17715541724426067941

namespace A033117

/-- `1/6*floor(7^(n+2)/8)` -/
def P17715541724426067941.Spec : Prop :=
  ∀ n, P17715541724426067941.a n = (A033117 (n + 1) : ℚ)

end A033117

/-! ## A033117.P335323476612510742

`ogf(1/(1-7x-x^2+7x^3))`
-/

namespace A033117.P335323476612510742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -7, -1, 7] n

end

end A033117.P335323476612510742

namespace A033117

/-- `ogf(1/(1-7x-x^2+7x^3))` -/
def P335323476612510742.Spec : Prop :=
  ∀ n, P335323476612510742.a n = A033117 (n + 1)

end A033117

/-! ## A033117.P2312470584906054073

`∑[7^n-a(n-1)]` with `a(0)=1`
-/

namespace A033117.P2312470584906054073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (7 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033117.P2312470584906054073

namespace A033117

/-- `∑[7^n-a(n-1)]` -/
def P2312470584906054073.Spec : Prop :=
  ∀ n, P2312470584906054073.a n = A033117 (n + 1)

end A033117

/-! ## A033117.P2977932225312744715

`log2(gcd(2, n))+7*a(n-1)` with `a(0)=1`
-/

namespace A033117.P2977932225312744715
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) + 7 * a (n - 1)

end

end A033117.P2977932225312744715

namespace A033117

/-- `log2(gcd(2, n))+7*a(n-1)` -/
def P2977932225312744715.Spec : Prop :=
  ∀ n, P2977932225312744715.a n = (A033117 (n + 1) : ℝ)

end A033117

/-! ## A033117.P10299456098585668097

`char[2*n]+7*a(n-1)` with `a(0)=1`
-/

namespace A033117.P10299456098585668097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 7 * a (n - 1)

end

end A033117.P10299456098585668097

namespace A033117

/-- `char[2*n]+7*a(n-1)` -/
def P10299456098585668097.Spec : Prop :=
  ∀ n, (P10299456098585668097.a n : ℤ) = A033117 (n + 1)

end A033117

/-! ## A033117.P829690919716711858

`7*a(n-1)-and(1, n)+1` with `a(0)=1`
-/

namespace A033117.P829690919716711858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - (Nat.land 1 n : ℤ) + 1

end

end A033117.P829690919716711858

namespace A033117

/-- `7*a(n-1)-and(1, n)+1` -/
def P829690919716711858.Spec : Prop :=
  ∀ n, P829690919716711858.a n = A033117 (n + 1)

end A033117

/-! ## A033117.P5359140731434532941

`∑[7*a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A033117.P5359140731434532941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A033117.P5359140731434532941

namespace A033117

/-- `∑[7*a(n-1)]-a(n-1)` -/
def P5359140731434532941.Spec : Prop :=
  ∀ n, P5359140731434532941.a n = A033117 (n + 1)

end A033117

/-! ## A033117.P4781205361184633267

`∑[∑[A083232(n)]]`
-/

namespace A033117.P4781205361184633267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083232 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033117.P4781205361184633267

namespace A033117

/-- `∑[∑[A083232(n)]]` -/
def P4781205361184633267.Spec : Prop :=
  ∀ n, P4781205361184633267.a n = A033117 (n + 1)

end A033117

/-! ## A033117.P10318934377830261465

`∑[A015552(n+1)]`
-/

namespace A033117.P10318934377830261465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033117.P10318934377830261465

namespace A033117

/-- `∑[A015552(n+1)]` -/
def P10318934377830261465.Spec : Prop :=
  ∀ n, P10318934377830261465.a n = A033117 (n + 1)

end A033117

/-! ## A033117.P11513045530189065298

`Δ[A178730(n+1)]`
-/

namespace A033117.P11513045530189065298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033117.P11513045530189065298

namespace A033117

/-- `Δ[A178730(n+1)]` -/
def P11513045530189065298.Spec : Prop :=
  ∀ n, P11513045530189065298.a n = A033117 (n + 1)

end A033117

/-! ## A033117.P15821070344443398091

`∑[abs(A014989(n+1))]`
-/

namespace A033117.P15821070344443398091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014989 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033117.P15821070344443398091

namespace A033117

/-- `∑[abs(A014989(n+1))]` -/
def P15821070344443398091.Spec : Prop :=
  ∀ n, P15821070344443398091.a n = A033117 (n + 1)

end A033117

/-! ## A033117.P7267976418993148160

`A178730(n+2)-A178730(n+1)`
-/

namespace A033117.P7267976418993148160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178730 (n + 2) - A178730 (n + 1)

end

end A033117.P7267976418993148160

namespace A033117

/-- `A178730(n+2)-A178730(n+1)` -/
def P7267976418993148160.Spec : Prop :=
  ∀ n, P7267976418993148160.a n = A033117 (n + 1)

end A033117

/-! ## A033117.P3010576503481863318

`(A039304(n+1)-1)/3`
-/

namespace A033117.P3010576503481863318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039304 (n + 1) - 1 : ℚ) / 3

end

end A033117.P3010576503481863318

namespace A033117

/-- `(A039304(n+1)-1)/3` -/
def P3010576503481863318.Spec : Prop :=
  ∀ n, P3010576503481863318.a n = (A033117 (n + 1) : ℚ)

end A033117

/-!
# A033118: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,0.

The programs for A033118, the canonical program `A033118.P2444544430549421995` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033118 has offset 1).

The definition of A033118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033118.P2444544430549421995

`a(n-2)+8^n` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033118

/-- `a(n-2)+8^n` -/
def P2444544430549421995.Spec : Prop :=
  ∀ n, (P2444544430549421995.a n : ℤ) = A033118 (n + 1)

theorem P2444544430549421995.correct : P2444544430549421995.Spec := by
  intro n
  simp only [A033118, Nat.add_sub_cancel]

end A033118

/-! ## A033118.P4019497212811890222

`8*a(n-1)+a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=8, a(2)=65`
-/

namespace A033118.P4019497212811890222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 65] fun n a =>
  8 * a (n - 1) + a (n - 2) - 8 * a (n - 3)

end

end A033118.P4019497212811890222

namespace A033118

/-- `8*a(n-1)+a(n-2)-8*a(n-3)` -/
def P4019497212811890222.Spec : Prop :=
  ∀ n, P4019497212811890222.a n = A033118 (n + 1)

end A033118

/-! ## A033118.P3957391622921465792

`floor(8^(n+2)/9)/7`
-/

namespace A033118.P3957391622921465792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(8 ^ (n + 2) : ℚ) / 9⌋ : ℚ) / 7

end

end A033118.P3957391622921465792

namespace A033118

/-- `floor(8^(n+2)/9)/7` -/
def P3957391622921465792.Spec : Prop :=
  ∀ n, P3957391622921465792.a n = (A033118 (n + 1) : ℚ)

end A033118

/-! ## A033118.P128059007011099961

`ogf(1/(1-8x-x^2+8x^3))`
-/

namespace A033118.P128059007011099961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, -1, 8] n

end

end A033118.P128059007011099961

namespace A033118

/-- `ogf(1/(1-8x-x^2+8x^3))` -/
def P128059007011099961.Spec : Prop :=
  ∀ n, P128059007011099961.a n = A033118 (n + 1)

end A033118

/-! ## A033118.P3058899879466163497

`or(8^n, a(n-2))` with `a(0)=1, a(1)=8`
-/

namespace A033118.P3058899879466163497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  Nat.lor (8 ^ n) (a (n - 2))

end

end A033118.P3058899879466163497

namespace A033118

/-- `or(8^n, a(n-2))` -/
def P3058899879466163497.Spec : Prop :=
  ∀ n, (P3058899879466163497.a n : ℤ) = A033118 (n + 1)

end A033118

/-! ## A033118.P12552923434554496344

`xor(8^n, a(n-2))` with `a(0)=1, a(1)=8`
-/

namespace A033118.P12552923434554496344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  Nat.xor (8 ^ n) (a (n - 2))

end

end A033118.P12552923434554496344

namespace A033118

/-- `xor(8^n, a(n-2))` -/
def P12552923434554496344.Spec : Prop :=
  ∀ n, (P12552923434554496344.a n : ℤ) = A033118 (n + 1)

end A033118

/-! ## A033118.P16539949049509924230

`∑[8^n-a(n-1)]` with `a(0)=1`
-/

namespace A033118.P16539949049509924230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (8 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033118.P16539949049509924230

namespace A033118

/-- `∑[8^n-a(n-1)]` -/
def P16539949049509924230.Spec : Prop :=
  ∀ n, P16539949049509924230.a n = A033118 (n + 1)

end A033118

/-! ## A033118.P10066781274220774353

`(n+1)%2+8*a(n-1)` with `a(0)=1`
-/

namespace A033118.P10066781274220774353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 2 + 8 * a (n - 1)

end

end A033118.P10066781274220774353

namespace A033118

/-- `(n+1)%2+8*a(n-1)` -/
def P10066781274220774353.Spec : Prop :=
  ∀ n, (P10066781274220774353.a n : ℤ) = A033118 (n + 1)

end A033118

/-! ## A033118.P8826303732298873315

`∑[8*a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A033118.P8826303732298873315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A033118.P8826303732298873315

namespace A033118

/-- `∑[8*a(n-1)]-a(n-1)` -/
def P8826303732298873315.Spec : Prop :=
  ∀ n, P8826303732298873315.a n = A033118 (n + 1)

end A033118

/-! ## A033118.P7139464478393727684

`∑[∑[A090409(n)]]`
-/

namespace A033118.P7139464478393727684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090409 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033118.P7139464478393727684

namespace A033118

/-- `∑[∑[A090409(n)]]` -/
def P7139464478393727684.Spec : Prop :=
  ∀ n, P7139464478393727684.a n = A033118 (n + 1)

end A033118

/-! ## A033118.P12504228237332748236

`∑[A015565(n+1)]`
-/

namespace A033118.P12504228237332748236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033118.P12504228237332748236

namespace A033118

/-- `∑[A015565(n+1)]` -/
def P12504228237332748236.Spec : Prop :=
  ∀ n, P12504228237332748236.a n = A033118 (n + 1)

end A033118

/-! ## A033118.P14753796408599010404

`Δ[A178827(n+1)]`
-/

namespace A033118.P14753796408599010404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033118.P14753796408599010404

namespace A033118

/-- `Δ[A178827(n+1)]` -/
def P14753796408599010404.Spec : Prop :=
  ∀ n, P14753796408599010404.a n = A033118 (n + 1)

end A033118

/-! ## A033118.P13204084822623584526

`A195904(3*n+1)`
-/

namespace A033118.P13204084822623584526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195904 (3 * n + 1)

end

end A033118.P13204084822623584526

namespace A033118

/-- `A195904(3*n+1)` -/
def P13204084822623584526.Spec : Prop :=
  ∀ n, P13204084822623584526.a n = A033118 (n + 1)

end A033118

/-! ## A033118.P2806417685594787080

`∑[abs(A014990(n+1))]`
-/

namespace A033118.P2806417685594787080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014990 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033118.P2806417685594787080

namespace A033118

/-- `∑[abs(A014990(n+1))]` -/
def P2806417685594787080.Spec : Prop :=
  ∀ n, P2806417685594787080.a n = A033118 (n + 1)

end A033118

/-! ## A033118.P10534716250808379247

`∑[A113405(3*(n+1))]`
-/

namespace A033118.P10534716250808379247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033118.P10534716250808379247

namespace A033118

/-- `∑[A113405(3*(n+1))]` -/
def P10534716250808379247.Spec : Prop :=
  ∀ n, P10534716250808379247.a n = A033118 (n + 1)

end A033118

/-! ## A033118.P679025045431573363

`∑[A131090(3*(n+1))]`
-/

namespace A033118.P679025045431573363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033118.P679025045431573363

namespace A033118

/-- `∑[A131090(3*(n+1))]` -/
def P679025045431573363.Spec : Prop :=
  ∀ n, P679025045431573363.a n = A033118 (n + 1)

end A033118

/-! ## A033118.P16375676931895798428

`∑[A131666(3*(n+1))]`
-/

namespace A033118.P16375676931895798428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033118.P16375676931895798428

namespace A033118

/-- `∑[A131666(3*(n+1))]` -/
def P16375676931895798428.Spec : Prop :=
  ∀ n, P16375676931895798428.a n = A033118 (n + 1)

end A033118

/-! ## A033118.P15371016965911951260

`∑[A133511(3*(n+1))]`
-/

namespace A033118.P15371016965911951260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033118.P15371016965911951260

namespace A033118

/-- `∑[A133511(3*(n+1))]` -/
def P15371016965911951260.Spec : Prop :=
  ∀ n, P15371016965911951260.a n = A033118 (n + 1)

end A033118

/-! ## A033118.P5929210435976533930

`∑[A135259(3*(n+1))]`
-/

namespace A033118.P5929210435976533930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135259 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033118.P5929210435976533930

namespace A033118

/-- `∑[A135259(3*(n+1))]` -/
def P5929210435976533930.Spec : Prop :=
  ∀ n, P5929210435976533930.a n = A033118 (n + 1)

end A033118

/-! ## A033118.P1814797531250202857

`A178827(n+2)-A178827(n+1)`
-/

namespace A033118.P1814797531250202857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178827 (n + 2) - A178827 (n + 1)

end

end A033118.P1814797531250202857

namespace A033118

/-- `A178827(n+2)-A178827(n+1)` -/
def P1814797531250202857.Spec : Prop :=
  ∀ n, P1814797531250202857.a n = A033118 (n + 1)

end A033118

/-!
# A033119: Base-9 digits are, in order, the first n terms of the periodic sequence with initial period 1,0.

The programs for A033119, the canonical program `A033119.P14661160997872873604` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033119 has offset 1).

The definition of A033119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033119.P14661160997872873604

`a(n-2)+9^n` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033119

/-- `a(n-2)+9^n` -/
def P14661160997872873604.Spec : Prop :=
  ∀ n, (P14661160997872873604.a n : ℤ) = A033119 (n + 1)

theorem P14661160997872873604.correct : P14661160997872873604.Spec := by
  intro n
  simp only [A033119, Nat.add_sub_cancel]

end A033119

/-! ## A033119.P10944755162710471035

`9*a(n-1)+a(n-2)-9*a(n-3)` with `a(0)=1, a(1)=9, a(2)=82`
-/

namespace A033119.P10944755162710471035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 82] fun n a =>
  9 * a (n - 1) + a (n - 2) - 9 * a (n - 3)

end

end A033119.P10944755162710471035

namespace A033119

/-- `9*a(n-1)+a(n-2)-9*a(n-3)` -/
def P10944755162710471035.Spec : Prop :=
  ∀ n, P10944755162710471035.a n = A033119 (n + 1)

end A033119

/-! ## A033119.P1565494931079222198

`floor((9*9^(n+1)-1)/80)`
-/

namespace A033119.P1565494931079222198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((9 * 9 ^ (n + 1) : ℤ) - 1 : ℚ) / 80⌋

end

end A033119.P1565494931079222198

namespace A033119

/-- `floor((9*9^(n+1)-1)/80)` -/
def P1565494931079222198.Spec : Prop :=
  ∀ n, P1565494931079222198.a n = A033119 (n + 1)

end A033119

/-! ## A033119.P952904463143436076

`ogf(1/(1-9x-x^2+9x^3))`
-/

namespace A033119.P952904463143436076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -9, -1, 9] n

end

end A033119.P952904463143436076

namespace A033119

/-- `ogf(1/(1-9x-x^2+9x^3))` -/
def P952904463143436076.Spec : Prop :=
  ∀ n, P952904463143436076.a n = A033119 (n + 1)

end A033119

/-! ## A033119.P4903037821706947125

`∑[9^n-a(n-1)]` with `a(0)=1`
-/

namespace A033119.P4903037821706947125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (9 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033119.P4903037821706947125

namespace A033119

/-- `∑[9^n-a(n-1)]` -/
def P4903037821706947125.Spec : Prop :=
  ∀ n, P4903037821706947125.a n = A033119 (n + 1)

end A033119

/-! ## A033119.P13930764588985528595

`log2(gcd(2, n))+9*a(n-1)` with `a(0)=1`
-/

namespace A033119.P13930764588985528595
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) + 9 * a (n - 1)

end

end A033119.P13930764588985528595

namespace A033119

/-- `log2(gcd(2, n))+9*a(n-1)` -/
def P13930764588985528595.Spec : Prop :=
  ∀ n, P13930764588985528595.a n = (A033119 (n + 1) : ℝ)

end A033119

/-! ## A033119.P16377736300191318378

`char[2*n]+9*a(n-1)` with `a(0)=1`
-/

namespace A033119.P16377736300191318378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 9 * a (n - 1)

end

end A033119.P16377736300191318378

namespace A033119

/-- `char[2*n]+9*a(n-1)` -/
def P16377736300191318378.Spec : Prop :=
  ∀ n, (P16377736300191318378.a n : ℤ) = A033119 (n + 1)

end A033119

/-! ## A033119.P13263925901435917075

`∑[9*a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A033119.P13263925901435917075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A033119.P13263925901435917075

namespace A033119

/-- `∑[9*a(n-1)]-a(n-1)` -/
def P13263925901435917075.Spec : Prop :=
  ∀ n, P13263925901435917075.a n = A033119 (n + 1)

end A033119

/-! ## A033119.P13508527877836806187

`∑[a(n-1)/(1/3)²]-a(n-1)` with `a(0)=1`
-/

namespace A033119.P13508527877836806187
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A033119.P13508527877836806187

namespace A033119

/-- `∑[a(n-1)/(1/3)²]-a(n-1)` -/
def P13508527877836806187.Spec : Prop :=
  ∀ n, P13508527877836806187.a n = (A033119 (n + 1) : ℚ)

end A033119

/-! ## A033119.P12886736672482936224

`∑[∑[A083302(n)]]`
-/

namespace A033119.P12886736672482936224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083302 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033119.P12886736672482936224

namespace A033119

/-- `∑[∑[A083302(n)]]` -/
def P12886736672482936224.Spec : Prop :=
  ∀ n, P12886736672482936224.a n = A033119 (n + 1)

end A033119

/-! ## A033119.P9195145043621451835

`∑[A015577(n+1)]`
-/

namespace A033119.P9195145043621451835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033119.P9195145043621451835

namespace A033119

/-- `∑[A015577(n+1)]` -/
def P9195145043621451835.Spec : Prop :=
  ∀ n, P9195145043621451835.a n = A033119 (n + 1)

end A033119

/-! ## A033119.P769152512121032316

`∑[abs(A014991(n+1))]`
-/

namespace A033119.P769152512121032316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014991 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033119.P769152512121032316

namespace A033119

/-- `∑[abs(A014991(n+1))]` -/
def P769152512121032316.Spec : Prop :=
  ∀ n, P769152512121032316.a n = A033119 (n + 1)

end A033119

/-! ## A033119.P12190412537648707153

`∑[A178543(2*n+1)]`
-/

namespace A033119.P12190412537648707153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178543 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033119.P12190412537648707153

namespace A033119

/-- `∑[A178543(2*n+1)]` -/
def P12190412537648707153.Spec : Prop :=
  ∀ n, P12190412537648707153.a n = A033119 (n + 1)

end A033119

/-!
# A033120: Base-2 digits of a(n) are, in order, the first n terms of the periodic sequence with initial period 1,0,1.

The programs for A033120, the canonical program `A033120.P18281272008083229885` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033120 has offset 1).

The definition of A033120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033120.P18281272008083229885

`floor(5/7*2^(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033120

/-- `floor(5/7*2^(n+1))` -/
def P18281272008083229885.Spec : Prop :=
  ∀ n, P18281272008083229885.a n = A033120 (n + 1)

theorem P18281272008083229885.correct : P18281272008083229885.Spec := by
  intro n
  simp only [A033120, Nat.add_sub_cancel]

end A033120

/-! ## A033120.P12272574530147875904

`5/8*2^(n+1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A033120.P12272574530147875904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  (5 : ℚ) / 8 * (2 ^ (n + 1) : ℚ) + a (n - 3)

end

end A033120.P12272574530147875904

namespace A033120

/-- `5/8*2^(n+1)+a(n-3)` -/
def P12272574530147875904.Spec : Prop :=
  ∀ n, P12272574530147875904.a n = (A033120 (n + 1) : ℚ)

end A033120

/-! ## A033120.P1982221879669745164

`a(n-6)+45*2^(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=11, a(4)=22, a(5)=45`
-/

namespace A033120.P1982221879669745164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 5, 11, 22, 45] fun n a =>
  a (n - 6) + 45 * (2 : ℚ) ^ ((n : ℤ) - 5 : ℤ)

end

end A033120.P1982221879669745164

namespace A033120

/-- `a(n-6)+45*2^(n-5)` -/
def P1982221879669745164.Spec : Prop :=
  ∀ n, P1982221879669745164.a n = (A033120 (n + 1) : ℚ)

end A033120

/-! ## A033120.P13265874975601843496

`ogf((1+x^2)/(1-2x-x^3+2x^4))`
-/

namespace A033120.P13265874975601843496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -2, 0, -1, 2] n

end

end A033120.P13265874975601843496

namespace A033120

/-- `ogf((1+x^2)/(1-2x-x^3+2x^4))` -/
def P13265874975601843496.Spec : Prop :=
  ∀ n, P13265874975601843496.a n = A033120 (n + 1)

end A033120

/-! ## A033120.P5252209942666562495

`or(2*a(n-1), C(2, n%3))` with `a(0)=1`
-/

namespace A033120.P5252209942666562495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 * a (n - 1)) (Nat.choose 2 (n % 3))

end

end A033120.P5252209942666562495

namespace A033120

/-- `or(2*a(n-1), C(2, n%3))` -/
def P5252209942666562495.Spec : Prop :=
  ∀ n, (P5252209942666562495.a n : ℤ) = A033120 (n + 1)

end A033120

/-! ## A033120.P16557638153336741895

`or(2*a(n-1), a(n-3))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A033120.P16557638153336741895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  Nat.lor (2 * a (n - 1)) (a (n - 3))

end

end A033120.P16557638153336741895

namespace A033120

/-- `or(2*a(n-1), a(n-3))` -/
def P16557638153336741895.Spec : Prop :=
  ∀ n, (P16557638153336741895.a n : ℤ) = A033120 (n + 1)

end A033120

/-! ## A033120.P13845876874227290354

`2*a(n-1)-(a(n-2)-a(n-1))%2` with `a(0)=1, a(1)=2`
-/

namespace A033120.P13845876874227290354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - Int.tmod (a (n - 2) - a (n - 1)) 2

end

end A033120.P13845876874227290354

namespace A033120

/-- `2*a(n-1)-(a(n-2)-a(n-1))%2` -/
def P13845876874227290354.Spec : Prop :=
  ∀ n, P13845876874227290354.a n = A033120 (n + 1)

end A033120

/-! ## A033120.P12025277878620778288

`2*a(n-2)+a(n-1)+gcd(2, a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A033120.P12025277878620778288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 2) + (a (n - 1) + Nat.gcd 2 (a (n - 2)))

end

end A033120.P12025277878620778288

namespace A033120

/-- `2*a(n-2)+a(n-1)+gcd(2, a(n-2))` -/
def P12025277878620778288.Spec : Prop :=
  ∀ n, (P12025277878620778288.a n : ℤ) = A033120 (n + 1)

end A033120

/-! ## A033120.P17950522526719283212

`a(n-1)+a(n-2)+2*a(n-3)+2` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A033120.P17950522526719283212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + a (n - 2) + 2 * a (n - 3) + 2

end

end A033120.P17950522526719283212

namespace A033120

/-- `a(n-1)+a(n-2)+2*a(n-3)+2` -/
def P17950522526719283212.Spec : Prop :=
  ∀ n, (P17950522526719283212.a n : ℤ) = A033120 (n + 1)

end A033120

/-! ## A033120.P4428529068541804556

`2^(n+1)-A046630(n)`
-/

namespace A033120.P4428529068541804556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A046630 n

end

end A033120.P4428529068541804556

namespace A033120

/-- `2^(n+1)-A046630(n)` -/
def P4428529068541804556.Spec : Prop :=
  ∀ n, P4428529068541804556.a n = A033120 (n + 1)

end A033120

/-! ## A033120.P17792821140742298783

`and(1, A000032(n-1))+2*a(n-1)` with `a(0)=1`
-/

namespace A033120.P17792821140742298783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (A000032 (n - 1)) + 2 * a (n - 1)

end

end A033120.P17792821140742298783

namespace A033120

/-- `and(1, A000032(n-1))+2*a(n-1)` -/
def P17792821140742298783.Spec : Prop :=
  ∀ n, P17792821140742298783.a n = A033120 (n + 1)

end A033120

/-! ## A033120.P4016668205663564510

`and(1, A000045(n-1))+2*a(n-1)` with `a(0)=1`
-/

namespace A033120.P4016668205663564510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (A000045 (n - 1)) + 2 * a (n - 1)

end

end A033120.P4016668205663564510

namespace A033120

/-- `and(1, A000045(n-1))+2*a(n-1)` -/
def P4016668205663564510.Spec : Prop :=
  ∀ n, P4016668205663564510.a n = A033120 (n + 1)

end A033120

/-! ## A033120.P17371202746322969467

`A077947(n)+A033129(n)`
-/

namespace A033120.P17371202746322969467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 n + A033129 n

end

end A033120.P17371202746322969467

namespace A033120

/-- `A077947(n)+A033129(n)` -/
def P17371202746322969467.Spec : Prop :=
  ∀ n, P17371202746322969467.a n = A033120 (n + 1)

end A033120

/-! ## A033120.P3928092803746066535

`A267210(n)-A294627(n)`
-/

namespace A033120.P3928092803746066535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267210 n - A294627 n

end

end A033120.P3928092803746066535

namespace A033120

/-- `A267210(n)-A294627(n)` -/
def P3928092803746066535.Spec : Prop :=
  ∀ n, P3928092803746066535.a n = A033120 (n + 1)

end A033120

/-! ## A033120.P8800512437728885106

`A033129(n)+Δ[A046630(n)]`
-/

namespace A033120.P8800512437728885106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033129 n + (f1 (n + 1) - f1 n)

end

end A033120.P8800512437728885106

namespace A033120

/-- `A033129(n)+Δ[A046630(n)]` -/
def P8800512437728885106.Spec : Prop :=
  ∀ n, P8800512437728885106.a n = A033120 (n + 1)

end A033120

/-! ## A033120.P11030011705976666336

`A057744(n)+A077947(n)-1`
-/

namespace A033120.P11030011705976666336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057744 n + (A077947 n - 1)

end

end A033120.P11030011705976666336

namespace A033120

/-- `A057744(n)+A077947(n)-1` -/
def P11030011705976666336.Spec : Prop :=
  ∀ n, P11030011705976666336.a n = A033120 (n + 1)

end A033120

/-! ## A033120.P16431055727084038996

`A126646(n)-A155803(n+2)`
-/

namespace A033120.P16431055727084038996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A155803 (n + 2)

end

end A033120.P16431055727084038996

namespace A033120

/-- `A126646(n)-A155803(n+2)` -/
def P16431055727084038996.Spec : Prop :=
  ∀ n, P16431055727084038996.a n = A033120 (n + 1)

end A033120

/-! ## A033120.P477799746450380320

`xor(A033129(n+1), A033129(n))`
-/

namespace A033120.P477799746450380320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033129 (n + 1)) (A033129 n)

end

end A033120.P477799746450380320

namespace A033120

/-- `xor(A033129(n+1), A033129(n))` -/
def P477799746450380320.Spec : Prop :=
  ∀ n, P477799746450380320.a n = A033120 (n + 1)

end A033120

/-! ## A033120.P9307789763734916578

`A033138(n+1)+Δ[A178455(n)]`
-/

namespace A033120.P9307789763734916578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033138 (n + 1) + (f1 (n + 1) - f1 n)

end

end A033120.P9307789763734916578

namespace A033120

/-- `A033138(n+1)+Δ[A178455(n)]` -/
def P9307789763734916578.Spec : Prop :=
  ∀ n, P9307789763734916578.a n = A033120 (n + 1)

end A033120

/-! ## A033120.P15194330484075094165

`A155803(n+1)+A033138(n+1)`
-/

namespace A033120.P15194330484075094165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (n + 1) + A033138 (n + 1)

end

end A033120.P15194330484075094165

namespace A033120

/-- `A155803(n+1)+A033138(n+1)` -/
def P15194330484075094165.Spec : Prop :=
  ∀ n, P15194330484075094165.a n = A033120 (n + 1)

end A033120

/-!
# A033121: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,1.

The programs for A033121, the canonical program `A033121.P6390373050507361312` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033121 has offset 1).

The definition of A033121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033121.P6390373050507361312

`3*a(n-1)+a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=31`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033121

/-- `3*a(n-1)+a(n-3)-3*a(n-4)` -/
def P6390373050507361312.Spec : Prop :=
  ∀ n, P6390373050507361312.a n = A033121 (n + 1)

theorem P6390373050507361312.correct : P6390373050507361312.Spec := by
  intro n
  simp only [A033121, Nat.add_sub_cancel]

end A033121

/-! ## A033121.P17116927126700404124

`floor(5*3^(n+1)/13)`
-/

namespace A033121.P17116927126700404124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * 3 ^ (n + 1) : ℚ) / 13⌋

end

end A033121.P17116927126700404124

namespace A033121

/-- `floor(5*3^(n+1)/13)` -/
def P17116927126700404124.Spec : Prop :=
  ∀ n, P17116927126700404124.a n = A033121 (n + 1)

end A033121

/-! ## A033121.P2846942867771513145

`ogf((1+x^2)/(1-3x-x^3+3x^4))`
-/

namespace A033121.P2846942867771513145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -3, 0, -1, 3] n

end

end A033121.P2846942867771513145

namespace A033121

/-- `ogf((1+x^2)/(1-3x-x^3+3x^4))` -/
def P2846942867771513145.Spec : Prop :=
  ∀ n, P2846942867771513145.a n = A033121 (n + 1)

end A033121

/-! ## A033121.P5446737016920068256

`∑[xor(3*a(n-1), n²%3)]` with `a(0)=1`
-/

namespace A033121.P5446737016920068256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor (3 * f1 (n - 1)) (n ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033121.P5446737016920068256

namespace A033121

/-- `∑[xor(3*a(n-1), n²%3)]` -/
def P5446737016920068256.Spec : Prop :=
  ∀ n, (P5446737016920068256.a n : ℤ) = A033121 (n + 1)

end A033121

/-! ## A033121.P7027583290067834480

`abs(1-n%3)+3*a(n-1)` with `a(0)=1`
-/

namespace A033121.P7027583290067834480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |1 - ((n % 3 : ℕ) : ℤ)| + 3 * a (n - 1)

end

end A033121.P7027583290067834480

namespace A033121

/-- `abs(1-n%3)+3*a(n-1)` -/
def P7027583290067834480.Spec : Prop :=
  ∀ n, P7027583290067834480.a n = A033121 (n + 1)

end A033121

/-! ## A033121.P8019295531533554594

`(1-n)²%3+3*a(n-1)` with `a(0)=1`
-/

namespace A033121.P8019295531533554594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((1 - (n : ℤ)) ^ 2) 3 + 3 * a (n - 1)

end

end A033121.P8019295531533554594

namespace A033121

/-- `(1-n)²%3+3*a(n-1)` -/
def P8019295531533554594.Spec : Prop :=
  ∀ n, P8019295531533554594.a n = A033121 (n + 1)

end A033121

/-! ## A033121.P15054396274617283057

`3*a(n-1)-(n-a(n-1))%3` with `a(0)=1`
-/

namespace A033121.P15054396274617283057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - Int.tmod ((n : ℤ) - a (n - 1)) 3

end

end A033121.P15054396274617283057

namespace A033121

/-- `3*a(n-1)-(n-a(n-1))%3` -/
def P15054396274617283057.Spec : Prop :=
  ∀ n, P15054396274617283057.a n = A033121 (n + 1)

end A033121

/-! ## A033121.P9842069498317627267

`3*a(n-1)+2-gcd(2, a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A033121.P9842069498317627267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) + (2 - (Int.gcd 2 (a (n - 2)) : ℤ))

end

end A033121.P9842069498317627267

namespace A033121

/-- `3*a(n-1)+2-gcd(2, a(n-2))` -/
def P9842069498317627267.Spec : Prop :=
  ∀ n, P9842069498317627267.a n = A033121 (n + 1)

end A033121

/-! ## A033121.P10865443963747996726

`A010892(n+1)²+3*a(n-1)` with `a(0)=1`
-/

namespace A033121.P10865443963747996726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010892 (n + 1) ^ 2 + 3 * a (n - 1)

end

end A033121.P10865443963747996726

namespace A033121

/-- `A010892(n+1)²+3*a(n-1)` -/
def P10865443963747996726.Spec : Prop :=
  ∀ n, P10865443963747996726.a n = A033121 (n + 1)

end A033121

/-! ## A033121.P13956923687639603642

`A033139(n+1)+A368344(n+1)-A368344(n)`
-/

namespace A033121.P13956923687639603642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (n + 1) + (A368344 (n + 1) - A368344 n)

end

end A033121.P13956923687639603642

namespace A033121

/-- `A033139(n+1)+A368344(n+1)-A368344(n)` -/
def P13956923687639603642.Spec : Prop :=
  ∀ n, P13956923687639603642.a n = A033121 (n + 1)

end A033121

/-! ## A033121.P12814010208583010679

`A033130(n+2)-3^(n+1)`
-/

namespace A033121.P12814010208583010679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033130 (n + 2) - (3 ^ (n + 1) : ℤ)

end

end A033121.P12814010208583010679

namespace A033121

/-- `A033130(n+2)-3^(n+1)` -/
def P12814010208583010679.Spec : Prop :=
  ∀ n, P12814010208583010679.a n = A033121 (n + 1)

end A033121

/-! ## A033121.P7720077865279015005

`A037512(n+1)-A033139(n+1)`
-/

namespace A033121.P7720077865279015005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037512 (n + 1) - A033139 (n + 1)

end

end A033121.P7720077865279015005

namespace A033121

/-- `A037512(n+1)-A033139(n+1)` -/
def P7720077865279015005.Spec : Prop :=
  ∀ n, P7720077865279015005.a n = A033121 (n + 1)

end A033121

/-! ## A033121.P6011747240085714681

`A037552(n+1)-A033130(n+1)`
-/

namespace A033121.P6011747240085714681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037552 (n + 1) - A033130 (n + 1)

end

end A033121.P6011747240085714681

namespace A033121

/-- `A037552(n+1)-A033130(n+1)` -/
def P6011747240085714681.Spec : Prop :=
  ∀ n, P6011747240085714681.a n = A033121 (n + 1)

end A033121

/-! ## A033121.P1676610747027655266

`A037560(n+1)-A037504(n+1)`
-/

namespace A033121.P1676610747027655266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037560 (n + 1) - A037504 (n + 1)

end

end A033121.P1676610747027655266

namespace A033121

/-- `A037560(n+1)-A037504(n+1)` -/
def P1676610747027655266.Spec : Prop :=
  ∀ n, P1676610747027655266.a n = A033121 (n + 1)

end A033121

/-! ## A033121.P5137584414733051052

`A010892(n*(n+1))+3*a(n-1)` with `a(0)=1`
-/

namespace A033121.P5137584414733051052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010892 (n * (n + 1)) + 3 * a (n - 1)

end

end A033121.P5137584414733051052

namespace A033121

/-- `A010892(n*(n+1))+3*a(n-1)` -/
def P5137584414733051052.Spec : Prop :=
  ∀ n, P5137584414733051052.a n = A033121 (n + 1)

end A033121

/-!
# A033122: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,1.

The programs for A033122, the canonical program `A033122.P9281212660425605738` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033122 has offset 1).

The definition of A033122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033122.P9281212660425605738

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=17, a(3)=69`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033122

/-- `4*a(n-1)+a(n-3)-4*a(n-4)` -/
def P9281212660425605738.Spec : Prop :=
  ∀ n, P9281212660425605738.a n = A033122 (n + 1)

theorem P9281212660425605738.correct : P9281212660425605738.Spec := by
  intro n
  simp only [A033122, Nat.add_sub_cancel]

end A033122

/-! ## A033122.P11264850935434804394

`floor(17*4^(n+1)/63)`
-/

namespace A033122.P11264850935434804394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(17 * 4 ^ (n + 1) : ℚ) / 63⌋

end

end A033122.P11264850935434804394

namespace A033122

/-- `floor(17*4^(n+1)/63)` -/
def P11264850935434804394.Spec : Prop :=
  ∀ n, P11264850935434804394.a n = A033122 (n + 1)

end A033122

/-! ## A033122.P1260001733973886937

`ogf((1+x^2)/(1-4x-x^3+4x^4))`
-/

namespace A033122.P1260001733973886937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -4, 0, -1, 4] n

end

end A033122.P1260001733973886937

namespace A033122

/-- `ogf((1+x^2)/(1-4x-x^3+4x^4))` -/
def P1260001733973886937.Spec : Prop :=
  ∀ n, P1260001733973886937.a n = A033122 (n + 1)

end A033122

/-! ## A033122.P4211660014160145857

`gcd(2, n%3)+4*a(n-1)-1` with `a(0)=1`
-/

namespace A033122.P4211660014160145857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.gcd 2 (n % 3) : ℤ) + 4 * a (n - 1) - 1

end

end A033122.P4211660014160145857

namespace A033122

/-- `gcd(2, n%3)+4*a(n-1)-1` -/
def P4211660014160145857.Spec : Prop :=
  ∀ n, P4211660014160145857.a n = A033122 (n + 1)

end A033122

/-! ## A033122.P17186323803657592349

`(a(n-1)+a(n-2))%2+4*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A033122.P17186323803657592349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  (a (n - 1) + a (n - 2)) % 2 + 4 * a (n - 1)

end

end A033122.P17186323803657592349

namespace A033122

/-- `(a(n-1)+a(n-2))%2+4*a(n-1)` -/
def P17186323803657592349.Spec : Prop :=
  ∀ n, (P17186323803657592349.a n : ℤ) = A033122 (n + 1)

end A033122

/-! ## A033122.P7176766915118594530

`4*a(n-1)-(a(n-2)-a(n-1))%2` with `a(0)=1, a(1)=4`
-/

namespace A033122.P7176766915118594530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 1) - Int.tmod (a (n - 2) - a (n - 1)) 2

end

end A033122.P7176766915118594530

namespace A033122

/-- `4*a(n-1)-(a(n-2)-a(n-1))%2` -/
def P7176766915118594530.Spec : Prop :=
  ∀ n, P7176766915118594530.a n = A033122 (n + 1)

end A033122

/-! ## A033122.P17826868848315427954

`∑[4^n-A178872(n)]`
-/

namespace A033122.P17826868848315427954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A178872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033122.P17826868848315427954

namespace A033122

/-- `∑[4^n-A178872(n)]` -/
def P17826868848315427954.Spec : Prop :=
  ∀ n, P17826868848315427954.a n = A033122 (n + 1)

end A033122

/-! ## A033122.P8284090294418092763

`∑[4*a(n-1)-A102283(n)]` with `a(0)=1`
-/

namespace A033122.P8284090294418092763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - 1) - A102283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033122.P8284090294418092763

namespace A033122

/-- `∑[4*a(n-1)-A102283(n)]` -/
def P8284090294418092763.Spec : Prop :=
  ∀ n, P8284090294418092763.a n = A033122 (n + 1)

end A033122

/-! ## A033122.P15236336384781505795

`∑[A155803(2*n)+∑[A011782(2*n)]]`
-/

namespace A033122.P15236336384781505795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033122.P15236336384781505795

namespace A033122

/-- `∑[A155803(2*n)+∑[A011782(2*n)]]` -/
def P15236336384781505795.Spec : Prop :=
  ∀ n, P15236336384781505795.a n = A033122 (n + 1)

end A033122

/-! ## A033122.P2429973098300830476

`A033140(n+1)+A368345(n+1)-A368345(n)`
-/

namespace A033122.P2429973098300830476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033140 (n + 1) + (A368345 (n + 1) - A368345 n)

end

end A033122.P2429973098300830476

namespace A033122

/-- `A033140(n+1)+A368345(n+1)-A368345(n)` -/
def P2429973098300830476.Spec : Prop :=
  ∀ n, P2429973098300830476.a n = A033122 (n + 1)

end A033122

/-! ## A033122.P12918971469819768154

`A033131(n+1)-A178872(n)`
-/

namespace A033122.P12918971469819768154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033131 (n + 1) - A178872 n

end

end A033122.P12918971469819768154

namespace A033122

/-- `A033131(n+1)-A178872(n)` -/
def P12918971469819768154.Spec : Prop :=
  ∀ n, P12918971469819768154.a n = A033122 (n + 1)

end A033122

/-! ## A033122.P2313034763329301905

`and(A037537(n+1), A072197(n))`
-/

namespace A033122.P2313034763329301905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037537 (n + 1)) (A072197 n)

end

end A033122.P2313034763329301905

namespace A033122

/-- `and(A037537(n+1), A072197(n))` -/
def P2313034763329301905.Spec : Prop :=
  ∀ n, P2313034763329301905.a n = A033122 (n + 1)

end A033122

/-! ## A033122.P8803780271079273317

`and(A037590(n+1), A072197(n))`
-/

namespace A033122.P8803780271079273317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037590 (n + 1)) (A072197 n)

end

end A033122.P8803780271079273317

namespace A033122

/-- `and(A037590(n+1), A072197(n))` -/
def P8803780271079273317.Spec : Prop :=
  ∀ n, P8803780271079273317.a n = A033122 (n + 1)

end A033122

/-! ## A033122.P5801209599048987765

`and(A037604(n+1), A072197(n))`
-/

namespace A033122.P5801209599048987765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037604 (n + 1)) (A072197 n)

end

end A033122.P5801209599048987765

namespace A033122

/-- `and(A037604(n+1), A072197(n))` -/
def P5801209599048987765.Spec : Prop :=
  ∀ n, P5801209599048987765.a n = A033122 (n + 1)

end A033122

/-! ## A033122.P8759994207688443532

`and(A037537(n+1), A272743(n))`
-/

namespace A033122.P8759994207688443532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037537 (n + 1)) (A272743 n)

end

end A033122.P8759994207688443532

namespace A033122

/-- `and(A037537(n+1), A272743(n))` -/
def P8759994207688443532.Spec : Prop :=
  ∀ n, P8759994207688443532.a n = A033122 (n + 1)

end A033122

/-! ## A033122.P18066177667391672935

`and(A037590(n+1), A272743(n))`
-/

namespace A033122.P18066177667391672935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037590 (n + 1)) (A272743 n)

end

end A033122.P18066177667391672935

namespace A033122

/-- `and(A037590(n+1), A272743(n))` -/
def P18066177667391672935.Spec : Prop :=
  ∀ n, P18066177667391672935.a n = A033122 (n + 1)

end A033122

/-! ## A033122.P15052021039340020978

`and(A037604(n+1), A272743(n))`
-/

namespace A033122.P15052021039340020978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037604 (n + 1)) (A272743 n)

end

end A033122.P15052021039340020978

namespace A033122

/-- `and(A037604(n+1), A272743(n))` -/
def P15052021039340020978.Spec : Prop :=
  ∀ n, P15052021039340020978.a n = A033122 (n + 1)

end A033122

/-! ## A033122.P14294617293390391517

`and(A037646(n+1), A272743(n))`
-/

namespace A033122.P14294617293390391517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037646 (n + 1)) (A272743 n)

end

end A033122.P14294617293390391517

namespace A033122

/-- `and(A037646(n+1), A272743(n))` -/
def P14294617293390391517.Spec : Prop :=
  ∀ n, P14294617293390391517.a n = A033122 (n + 1)

end A033122

/-! ## A033122.P9292747927605916932

`A037513(n+1)-A033140(n+1)`
-/

namespace A033122.P9292747927605916932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037513 (n + 1) - A033140 (n + 1)

end

end A033122.P9292747927605916932

namespace A033122

/-- `A037513(n+1)-A033140(n+1)` -/
def P9292747927605916932.Spec : Prop :=
  ∀ n, P9292747927605916932.a n = A033122 (n + 1)

end A033122

/-! ## A033122.P18039815365600108337

`A037553(n+1)-A033131(n+1)`
-/

namespace A033122.P18039815365600108337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037553 (n + 1) - A033131 (n + 1)

end

end A033122.P18039815365600108337

namespace A033122

/-- `A037553(n+1)-A033131(n+1)` -/
def P18039815365600108337.Spec : Prop :=
  ∀ n, P18039815365600108337.a n = A033122 (n + 1)

end A033122

/-!
# A033123: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,1.

The programs for A033123, the canonical program `A033123.P15502710429489708868` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033123 has offset 1).

The definition of A033123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033123.P15502710429489708868

`5*a(n-1)+a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=5, a(2)=26, a(3)=131`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033123

/-- `5*a(n-1)+a(n-3)-5*a(n-4)` -/
def P15502710429489708868.Spec : Prop :=
  ∀ n, P15502710429489708868.a n = A033123 (n + 1)

theorem P15502710429489708868.correct : P15502710429489708868.Spec := by
  intro n
  simp only [A033123, Nat.add_sub_cancel]

end A033123

/-! ## A033123.P11842538106109228048

`floor(13*5^(n+1)/62)`
-/

namespace A033123.P11842538106109228048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(13 * 5 ^ (n + 1) : ℚ) / 62⌋

end

end A033123.P11842538106109228048

namespace A033123

/-- `floor(13*5^(n+1)/62)` -/
def P11842538106109228048.Spec : Prop :=
  ∀ n, P11842538106109228048.a n = A033123 (n + 1)

end A033123

/-! ## A033123.P12293449621460686044

`ogf((1+x^2)/(1-5x-x^3+5x^4))`
-/

namespace A033123.P12293449621460686044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -5, 0, -1, 5] n

end

end A033123.P12293449621460686044

namespace A033123

/-- `ogf((1+x^2)/(1-5x-x^3+5x^4))` -/
def P12293449621460686044.Spec : Prop :=
  ∀ n, P12293449621460686044.a n = A033123 (n + 1)

end A033123

/-! ## A033123.P2853344599439785491

`∑[xor(5*a(n-1), n²%3)]` with `a(0)=1`
-/

namespace A033123.P2853344599439785491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor (5 * f1 (n - 1)) (n ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033123.P2853344599439785491

namespace A033123

/-- `∑[xor(5*a(n-1), n²%3)]` -/
def P2853344599439785491.Spec : Prop :=
  ∀ n, (P2853344599439785491.a n : ℤ) = A033123 (n + 1)

end A033123

/-! ## A033123.P6441969449719165710

`abs(1-n%3)+5*a(n-1)` with `a(0)=1`
-/

namespace A033123.P6441969449719165710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |1 - ((n % 3 : ℕ) : ℤ)| + 5 * a (n - 1)

end

end A033123.P6441969449719165710

namespace A033123

/-- `abs(1-n%3)+5*a(n-1)` -/
def P6441969449719165710.Spec : Prop :=
  ∀ n, P6441969449719165710.a n = A033123 (n + 1)

end A033123

/-! ## A033123.P12631726075195885481

`a(n-2)%2+5*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A033123.P12631726075195885481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) % 2 + 5 * a (n - 1)

end

end A033123.P12631726075195885481

namespace A033123

/-- `a(n-2)%2+5*a(n-1)` -/
def P12631726075195885481.Spec : Prop :=
  ∀ n, (P12631726075195885481.a n : ℤ) = A033123 (n + 1)

end A033123

/-! ## A033123.P5193059501481618832

`∑[5*a(n-1)-A102283(n)]` with `a(0)=1`
-/

namespace A033123.P5193059501481618832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1) - A102283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033123.P5193059501481618832

namespace A033123

/-- `∑[5*a(n-1)-A102283(n)]` -/
def P5193059501481618832.Spec : Prop :=
  ∀ n, P5193059501481618832.a n = A033123 (n + 1)

end A033123

/-! ## A033123.P2461999013264136939

`Δ[A004523(n+2)]+5*a(n-1)` with `a(0)=1`
-/

namespace A033123.P2461999013264136939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 5 * a (n - 1)

end

end A033123.P2461999013264136939

namespace A033123

/-- `Δ[A004523(n+2)]+5*a(n-1)` -/
def P2461999013264136939.Spec : Prop :=
  ∀ n, P2461999013264136939.a n = A033123 (n + 1)

end A033123

/-! ## A033123.P2117322013412415350

`∑[A020729(n)]-A037538(n+1)`
-/

namespace A033123.P2117322013412415350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037538 (n + 1)

end

end A033123.P2117322013412415350

namespace A033123

/-- `∑[A020729(n)]-A037538(n+1)` -/
def P2117322013412415350.Spec : Prop :=
  ∀ n, P2117322013412415350.a n = A033123 (n + 1)

end A033123

/-! ## A033123.P882721991137754144

`A037514(n+1)-A033141(n+1)`
-/

namespace A033123.P882721991137754144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037514 (n + 1) - A033141 (n + 1)

end

end A033123.P882721991137754144

namespace A033123

/-- `A037514(n+1)-A033141(n+1)` -/
def P882721991137754144.Spec : Prop :=
  ∀ n, P882721991137754144.a n = A033123 (n + 1)

end A033123

/-! ## A033123.P2534634424732172866

`A037554(n+1)-A033132(n+1)`
-/

namespace A033123.P2534634424732172866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037554 (n + 1) - A033132 (n + 1)

end

end A033123.P2534634424732172866

namespace A033123

/-- `A037554(n+1)-A033132(n+1)` -/
def P2534634424732172866.Spec : Prop :=
  ∀ n, P2534634424732172866.a n = A033123 (n + 1)

end A033123

/-! ## A033123.P15037022122199221920

`A037640(n+1)-A037598(n+1)`
-/

namespace A033123.P15037022122199221920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037640 (n + 1) - A037598 (n + 1)

end

end A033123.P15037022122199221920

namespace A033123

/-- `A037640(n+1)-A037598(n+1)` -/
def P15037022122199221920.Spec : Prop :=
  ∀ n, P15037022122199221920.a n = A033123 (n + 1)

end A033123

/-!
# A033124: Base-6 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,1.

The programs for A033124, the canonical program `A033124.P8204619158679424095` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033124 has offset 1).

The definition of A033124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033124.P8204619158679424095

`6*a(n-1)+a(n-3)-6*a(n-4)` with `a(0)=1, a(1)=6, a(2)=37, a(3)=223`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033124

/-- `6*a(n-1)+a(n-3)-6*a(n-4)` -/
def P8204619158679424095.Spec : Prop :=
  ∀ n, P8204619158679424095.a n = A033124 (n + 1)

theorem P8204619158679424095.correct : P8204619158679424095.Spec := by
  intro n
  simp only [A033124, Nat.add_sub_cancel]

end A033124

/-! ## A033124.P15185003844376525373

`round(37/215*6^(n+1))`
-/

namespace A033124.P15185003844376525373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((37 : ℚ) / 215 * (6 ^ (n + 1) : ℚ))

end

end A033124.P15185003844376525373

namespace A033124

/-- `round(37/215*6^(n+1))` -/
def P15185003844376525373.Spec : Prop :=
  ∀ n, P15185003844376525373.a n = A033124 (n + 1)

end A033124

/-! ## A033124.P1313977250567837119

`ogf((1+x^2)/(1-6x-x^3+6x^4))`
-/

namespace A033124.P1313977250567837119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -6, 0, -1, 6] n

end

end A033124.P1313977250567837119

namespace A033124

/-- `ogf((1+x^2)/(1-6x-x^3+6x^4))` -/
def P1313977250567837119.Spec : Prop :=
  ∀ n, P1313977250567837119.a n = A033124 (n + 1)

end A033124

/-! ## A033124.P8470199237404378555

`((n+2)^4)%3+6*a(n-1)` with `a(0)=1`
-/

namespace A033124.P8470199237404378555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2) ^ 4 % 3 + 6 * a (n - 1)

end

end A033124.P8470199237404378555

namespace A033124

/-- `((n+2)^4)%3+6*a(n-1)` -/
def P8470199237404378555.Spec : Prop :=
  ∀ n, (P8470199237404378555.a n : ℤ) = A033124 (n + 1)

end A033124

/-! ## A033124.P8206211862652740917

`Δ[A004396(n)]+6*a(n-1)` with `a(0)=1`
-/

namespace A033124.P8206211862652740917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 6 * a (n - 1)

end

end A033124.P8206211862652740917

namespace A033124

/-- `Δ[A004396(n)]+6*a(n-1)` -/
def P8206211862652740917.Spec : Prop :=
  ∀ n, P8206211862652740917.a n = A033124 (n + 1)

end A033124

/-! ## A033124.P16596110514721802350

`or(6*a(n-1), ∑[A163804(n)])` with `a(0)=1`
-/

namespace A033124.P16596110514721802350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (6 * a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033124.P16596110514721802350

namespace A033124

/-- `or(6*a(n-1), ∑[A163804(n)])` -/
def P16596110514721802350.Spec : Prop :=
  ∀ n, P16596110514721802350.a n = A033124 (n + 1)

end A033124

/-! ## A033124.P11826610116162030024

`xor(6*a(n-1), char[A007494(n)])` with `a(0)=1`
-/

namespace A033124.P11826610116162030024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (6 * a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A033124.P11826610116162030024

namespace A033124

/-- `xor(6*a(n-1), char[A007494(n)])` -/
def P11826610116162030024.Spec : Prop :=
  ∀ n, (P11826610116162030024.a n : ℤ) = A033124 (n + 1)

end A033124

/-! ## A033124.P15991479274072530880

`∑[2*3*a(n-1)-A102283(n)]` with `a(0)=1`
-/

namespace A033124.P15991479274072530880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (3 * f1 (n - 1)) - A102283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033124.P15991479274072530880

namespace A033124

/-- `∑[2*3*a(n-1)-A102283(n)]` -/
def P15991479274072530880.Spec : Prop :=
  ∀ n, P15991479274072530880.a n = A033124 (n + 1)

end A033124

/-! ## A033124.P2048814250151973934

`A037515(n+1)-A033142(n+1)`
-/

namespace A033124.P2048814250151973934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037515 (n + 1) - A033142 (n + 1)

end

end A033124.P2048814250151973934

namespace A033124

/-- `A037515(n+1)-A033142(n+1)` -/
def P2048814250151973934.Spec : Prop :=
  ∀ n, P2048814250151973934.a n = A033124 (n + 1)

end A033124

/-! ## A033124.P7594560144458704603

`A037620(n+1)-A037499(n+1)`
-/

namespace A033124.P7594560144458704603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037620 (n + 1) - A037499 (n + 1)

end

end A033124.P7594560144458704603

namespace A033124

/-- `A037620(n+1)-A037499(n+1)` -/
def P7594560144458704603.Spec : Prop :=
  ∀ n, P7594560144458704603.a n = A033124 (n + 1)

end A033124

/-! ## A033124.P9166445870693674451

`(A037499(n+1)+A033142(n+1))/2`
-/

namespace A033124.P9166445870693674451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037499 (n + 1) + A033142 (n + 1) : ℚ) / 2

end

end A033124.P9166445870693674451

namespace A033124

/-- `(A037499(n+1)+A033142(n+1))/2` -/
def P9166445870693674451.Spec : Prop :=
  ∀ n, P9166445870693674451.a n = (A033124 (n + 1) : ℚ)

end A033124

/-! ## A033124.P5613745586228925010

`A033133(n+1)+A037515(n+1)-A037523(n+1)`
-/

namespace A033124.P5613745586228925010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033133 (n + 1) + (A037515 (n + 1) - A037523 (n + 1))

end

end A033124.P5613745586228925010

namespace A033124

/-- `A033133(n+1)+A037515(n+1)-A037523(n+1)` -/
def P5613745586228925010.Spec : Prop :=
  ∀ n, P5613745586228925010.a n = A033124 (n + 1)

end A033124

/-! ## A033124.P14345280388210786515

`A037655(n+1)-A037515(n+1)`
-/

namespace A033124.P14345280388210786515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037655 (n + 1) - A037515 (n + 1)

end

end A033124.P14345280388210786515

namespace A033124

/-- `A037655(n+1)-A037515(n+1)` -/
def P14345280388210786515.Spec : Prop :=
  ∀ n, P14345280388210786515.a n = A033124 (n + 1)

end A033124

/-! ## A033124.P7671769733560001792

`A037641(n+1)-A037599(n+1)`
-/

namespace A033124.P7671769733560001792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037641 (n + 1) - A037599 (n + 1)

end

end A033124.P7671769733560001792

namespace A033124

/-- `A037641(n+1)-A037599(n+1)` -/
def P7671769733560001792.Spec : Prop :=
  ∀ n, P7671769733560001792.a n = A033124 (n + 1)

end A033124

/-! ## A033124.P10071786774242593198

`(A037655(n+1)-A033142(n+1))/2`
-/

namespace A033124.P10071786774242593198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037655 (n + 1) - A033142 (n + 1) : ℚ) / 2

end

end A033124.P10071786774242593198

namespace A033124

/-- `(A037655(n+1)-A033142(n+1))/2` -/
def P10071786774242593198.Spec : Prop :=
  ∀ n, P10071786774242593198.a n = (A033124 (n + 1) : ℚ)

end A033124

/-! ## A033124.P12843017261034477638

`or(6*a(n-1), A051064(A027689(n)))` with `a(0)=1`
-/

namespace A033124.P12843017261034477638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (6 * a (n - 1)) (A051064 (A027689 n).toNat)

end

end A033124.P12843017261034477638

namespace A033124

/-- `or(6*a(n-1), A051064(A027689(n)))` -/
def P12843017261034477638.Spec : Prop :=
  ∀ n, P12843017261034477638.a n = A033124 (n + 1)

end A033124

/-!
# A033125: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,1.

The programs for A033125, the canonical program `A033125.P10868483201198972100` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033125 has offset 1).

The definition of A033125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033125.P10868483201198972100

`7*a(n-1)+a(n-3)-7*a(n-4)` with `a(0)=1, a(1)=7, a(2)=50, a(3)=351`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033125

/-- `7*a(n-1)+a(n-3)-7*a(n-4)` -/
def P10868483201198972100.Spec : Prop :=
  ∀ n, P10868483201198972100.a n = A033125 (n + 1)

theorem P10868483201198972100.correct : P10868483201198972100.Spec := by
  intro n
  simp only [A033125, Nat.add_sub_cancel]

end A033125

/-! ## A033125.P4931445795566061759

`floor(25*7^(n+1)/171)`
-/

namespace A033125.P4931445795566061759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(25 * 7 ^ (n + 1) : ℚ) / 171⌋

end

end A033125.P4931445795566061759

namespace A033125

/-- `floor(25*7^(n+1)/171)` -/
def P4931445795566061759.Spec : Prop :=
  ∀ n, P4931445795566061759.a n = A033125 (n + 1)

end A033125

/-! ## A033125.P3485036443773917244

`ogf((1+x^2)/(1-7x-x^3+7x^4))`
-/

namespace A033125.P3485036443773917244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -7, 0, -1, 7] n

end

end A033125.P3485036443773917244

namespace A033125

/-- `ogf((1+x^2)/(1-7x-x^3+7x^4))` -/
def P3485036443773917244.Spec : Prop :=
  ∀ n, P3485036443773917244.a n = A033125 (n + 1)

end A033125

/-! ## A033125.P144670239324287456

`(1-n%3)²+7*a(n-1)` with `a(0)=1`
-/

namespace A033125.P144670239324287456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - ((n % 3 : ℕ) : ℤ)) ^ 2 + 7 * a (n - 1)

end

end A033125.P144670239324287456

namespace A033125

/-- `(1-n%3)²+7*a(n-1)` -/
def P144670239324287456.Spec : Prop :=
  ∀ n, P144670239324287456.a n = A033125 (n + 1)

end A033125

/-! ## A033125.P1125751547760782201

`Δ[A004396(n)]+7*a(n-1)` with `a(0)=1`
-/

namespace A033125.P1125751547760782201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 7 * a (n - 1)

end

end A033125.P1125751547760782201

namespace A033125

/-- `Δ[A004396(n)]+7*a(n-1)` -/
def P1125751547760782201.Spec : Prop :=
  ∀ n, P1125751547760782201.a n = A033125 (n + 1)

end A033125

/-! ## A033125.P11891691075802408642

`∑[7*a(n-1)-A102283(n)]` with `a(0)=1`
-/

namespace A033125.P11891691075802408642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1) - A102283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033125.P11891691075802408642

namespace A033125

/-- `∑[7*a(n-1)-A102283(n)]` -/
def P11891691075802408642.Spec : Prop :=
  ∀ n, P11891691075802408642.a n = A033125 (n + 1)

end A033125

/-! ## A033125.P12031889014536587827

`∑[xor(7*a(n-1), A011655(n))]` with `a(0)=1`
-/

namespace A033125.P12031889014536587827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (7 * f1 (n - 1)) (A011655 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033125.P12031889014536587827

namespace A033125

/-- `∑[xor(7*a(n-1), A011655(n))]` -/
def P12031889014536587827.Spec : Prop :=
  ∀ n, P12031889014536587827.a n = A033125 (n + 1)

end A033125

/-! ## A033125.P9763330386011270292

`abs(xor(7*a(n-1), A010892(2*n)))` with `a(0)=1`
-/

namespace A033125.P9763330386011270292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.xor (7 * a (n - 1)) (A010892 (2 * n))|

end

end A033125.P9763330386011270292

namespace A033125

/-- `abs(xor(7*a(n-1), A010892(2*n)))` -/
def P9763330386011270292.Spec : Prop :=
  ∀ n, P9763330386011270292.a n = A033125 (n + 1)

end A033125

/-! ## A033125.P329429119861986487

`7*a(n-1)+A008611(n)-A002264(n)` with `a(0)=1`
-/

namespace A033125.P329429119861986487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) + (A008611 n - A002264 n)

end

end A033125.P329429119861986487

namespace A033125

/-- `7*a(n-1)+A008611(n)-A002264(n)` -/
def P329429119861986487.Spec : Prop :=
  ∀ n, P329429119861986487.a n = A033125 (n + 1)

end A033125

/-! ## A033125.P14430528034886925173

`7*a(n-1)-(A047231(n+1)-A005408(n))` with `a(0)=1`
-/

namespace A033125.P14430528034886925173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - (A047231 (n + 1) - A005408 n)

end

end A033125.P14430528034886925173

namespace A033125

/-- `7*a(n-1)-(A047231(n+1)-A005408(n))` -/
def P14430528034886925173.Spec : Prop :=
  ∀ n, P14430528034886925173.a n = A033125 (n + 1)

end A033125

/-! ## A033125.P407547907696487417

`A037516(n+1)-A033143(n+1)`
-/

namespace A033125.P407547907696487417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037516 (n + 1) - A033143 (n + 1)

end

end A033125.P407547907696487417

namespace A033125

/-- `A037516(n+1)-A033143(n+1)` -/
def P407547907696487417.Spec : Prop :=
  ∀ n, P407547907696487417.a n = A033125 (n + 1)

end A033125

/-! ## A033125.P15484026487560290247

`A037635(n+1)-A037532(n+1)`
-/

namespace A033125.P15484026487560290247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037635 (n + 1) - A037532 (n + 1)

end

end A033125.P15484026487560290247

namespace A033125

/-- `A037635(n+1)-A037532(n+1)` -/
def P15484026487560290247.Spec : Prop :=
  ∀ n, P15484026487560290247.a n = A033125 (n + 1)

end A033125

/-! ## A033125.P5570842615681253788

`A037642(n+1)-A037600(n+1)`
-/

namespace A033125.P5570842615681253788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037642 (n + 1) - A037600 (n + 1)

end

end A033125.P5570842615681253788

namespace A033125

/-- `A037642(n+1)-A037600(n+1)` -/
def P5570842615681253788.Spec : Prop :=
  ∀ n, P5570842615681253788.a n = A033125 (n + 1)

end A033125

/-! ## A033125.P17501270492753307659

`A033134(n+2)-A000420(n+1)`
-/

namespace A033125.P17501270492753307659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033134 (n + 2) - A000420 (n + 1)

end

end A033125.P17501270492753307659

namespace A033125

/-- `A033134(n+2)-A000420(n+1)` -/
def P17501270492753307659.Spec : Prop :=
  ∀ n, P17501270492753307659.a n = A033125 (n + 1)

end A033125

/-! ## A033125.P15466002447077511226

`A037649(n+1)-2*A033143(n+1)`
-/

namespace A033125.P15466002447077511226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037649 (n + 1) - 2 * A033143 (n + 1)

end

end A033125.P15466002447077511226

namespace A033125

/-- `A037649(n+1)-2*A033143(n+1)` -/
def P15466002447077511226.Spec : Prop :=
  ∀ n, P15466002447077511226.a n = A033125 (n + 1)

end A033125

/-! ## A033125.P14248535638750790328

`A037556(n+1)+∑[A037532(n+1)-A037556(n+1)]`
-/

namespace A033125.P14248535638750790328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 1) - A037556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037556 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033125.P14248535638750790328

namespace A033125

/-- `A037556(n+1)+∑[A037532(n+1)-A037556(n+1)]` -/
def P14248535638750790328.Spec : Prop :=
  ∀ n, P14248535638750790328.a n = A033125 (n + 1)

end A033125

/-!
# A033126: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,1.

The programs for A033126, the canonical program `A033126.P10984355173944688031` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033126 has offset 1).

The definition of A033126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033126.P10984355173944688031

`8*a(n-1)+a(n-3)-8*a(n-4)` with `a(0)=1, a(1)=8, a(2)=65, a(3)=521`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033126

/-- `8*a(n-1)+a(n-3)-8*a(n-4)` -/
def P10984355173944688031.Spec : Prop :=
  ∀ n, P10984355173944688031.a n = A033126 (n + 1)

theorem P10984355173944688031.correct : P10984355173944688031.Spec := by
  intro n
  simp only [A033126, Nat.add_sub_cancel]

end A033126

/-! ## A033126.P9375128602423241637

`floor(65/511*8^(n+1))`
-/

namespace A033126.P9375128602423241637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(65 : ℚ) / 511 * (8 ^ (n + 1) : ℚ)⌋

end

end A033126.P9375128602423241637

namespace A033126

/-- `floor(65/511*8^(n+1))` -/
def P9375128602423241637.Spec : Prop :=
  ∀ n, P9375128602423241637.a n = A033126 (n + 1)

end A033126

/-! ## A033126.P3899717715516875626

`ogf((1+x^2)/(1-8x-x^3+8x^4))`
-/

namespace A033126.P3899717715516875626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -8, 0, -1, 8] n

end

end A033126.P3899717715516875626

namespace A033126

/-- `ogf((1+x^2)/(1-8x-x^3+8x^4))` -/
def P3899717715516875626.Spec : Prop :=
  ∀ n, P3899717715516875626.a n = A033126 (n + 1)

end A033126

/-! ## A033126.P1709845478223717055

`abs(1-n%3)+8*a(n-1)` with `a(0)=1`
-/

namespace A033126.P1709845478223717055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |1 - ((n % 3 : ℕ) : ℤ)| + 8 * a (n - 1)

end

end A033126.P1709845478223717055

namespace A033126

/-- `abs(1-n%3)+8*a(n-1)` -/
def P1709845478223717055.Spec : Prop :=
  ∀ n, P1709845478223717055.a n = A033126 (n + 1)

end A033126

/-! ## A033126.P6801239070237894246

`xor((n+1)%3+8*a(n-1), (2*n)%3)` with `a(0)=1`
-/

namespace A033126.P6801239070237894246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor ((n + 1) % 3 + 8 * a (n - 1)) (2 * n % 3)

end

end A033126.P6801239070237894246

namespace A033126

/-- `xor((n+1)%3+8*a(n-1), (2*n)%3)` -/
def P6801239070237894246.Spec : Prop :=
  ∀ n, (P6801239070237894246.a n : ℤ) = A033126 (n + 1)

end A033126

/-! ## A033126.P4435216514474326215

`or(8*a(n-1), Δ[A004396(n)])` with `a(0)=1`
-/

namespace A033126.P4435216514474326215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (8 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A033126.P4435216514474326215

namespace A033126

/-- `or(8*a(n-1), Δ[A004396(n)])` -/
def P4435216514474326215.Spec : Prop :=
  ∀ n, P4435216514474326215.a n = A033126 (n + 1)

end A033126

/-! ## A033126.P3980425348110590724

`or(8*a(n-1), char[A002517(n)])` with `a(0)=1`
-/

namespace A033126.P3980425348110590724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (8 * a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A033126.P3980425348110590724

namespace A033126

/-- `or(8*a(n-1), char[A002517(n)])` -/
def P3980425348110590724.Spec : Prop :=
  ∀ n, (P3980425348110590724.a n : ℤ) = A033126 (n + 1)

end A033126

/-! ## A033126.P13613443830818416627

`∑[8*a(n-1)+n-A064429(n)]` with `a(0)=1`
-/

namespace A033126.P13613443830818416627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  8 * f1 (n - 1) + ((n : ℤ) - A064429 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033126.P13613443830818416627

namespace A033126

/-- `∑[8*a(n-1)+n-A064429(n)]` -/
def P13613443830818416627.Spec : Prop :=
  ∀ n, P13613443830818416627.a n = A033126 (n + 1)

end A033126

/-! ## A033126.P17661234295948022588

`A037573(n+1)-∑[A001018(n)]`
-/

namespace A033126.P17661234295948022588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037573 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033126.P17661234295948022588

namespace A033126

/-- `A037573(n+1)-∑[A001018(n)]` -/
def P17661234295948022588.Spec : Prop :=
  ∀ n, P17661234295948022588.a n = A033126 (n + 1)

end A033126

/-! ## A033126.P17135168899399136805

`and(∑[A001018(n)], A037594(n+1))`
-/

namespace A033126.P17135168899399136805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A037594 (n + 1))

end

end A033126.P17135168899399136805

namespace A033126

/-- `and(∑[A001018(n)], A037594(n+1))` -/
def P17135168899399136805.Spec : Prop :=
  ∀ n, P17135168899399136805.a n = A033126 (n + 1)

end A033126

/-! ## A033126.P1205513612613807637

`and(∑[A001018(n)], A037650(n+1))`
-/

namespace A033126.P1205513612613807637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A037650 (n + 1))

end

end A033126.P1205513612613807637

namespace A033126

/-- `and(∑[A001018(n)], A037650(n+1))` -/
def P1205513612613807637.Spec : Prop :=
  ∀ n, P1205513612613807637.a n = A033126 (n + 1)

end A033126

/-! ## A033126.P10752585633406889738

`A037517(n+1)-A033144(n+1)`
-/

namespace A033126.P10752585633406889738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037517 (n + 1) - A033144 (n + 1)

end

end A033126.P10752585633406889738

namespace A033126

/-- `A037517(n+1)-A033144(n+1)` -/
def P10752585633406889738.Spec : Prop :=
  ∀ n, P10752585633406889738.a n = A033126 (n + 1)

end A033126

/-! ## A033126.P11535481340189105717

`A037557(n+1)-A033135(n+1)`
-/

namespace A033126.P11535481340189105717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037557 (n + 1) - A033135 (n + 1)

end

end A033126.P11535481340189105717

namespace A033126

/-- `A037557(n+1)-A033135(n+1)` -/
def P11535481340189105717.Spec : Prop :=
  ∀ n, P11535481340189105717.a n = A033126 (n + 1)

end A033126

/-! ## A033126.P578294750063309364

`A037565(n+1)-A037509(n+1)`
-/

namespace A033126.P578294750063309364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037565 (n + 1) - A037509 (n + 1)

end

end A033126.P578294750063309364

namespace A033126

/-- `A037565(n+1)-A037509(n+1)` -/
def P578294750063309364.Spec : Prop :=
  ∀ n, P578294750063309364.a n = A033126 (n + 1)

end A033126

/-! ## A033126.P14353430279801200192

`A037622(n+1)-A037501(n+1)`
-/

namespace A033126.P14353430279801200192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037622 (n + 1) - A037501 (n + 1)

end

end A033126.P14353430279801200192

namespace A033126

/-- `A037622(n+1)-A037501(n+1)` -/
def P14353430279801200192.Spec : Prop :=
  ∀ n, P14353430279801200192.a n = A033126 (n + 1)

theorem P14353430279801200192.correct : P14353430279801200192.Spec := by
  intro n
  simp only [A033126, Nat.add_sub_cancel, A033126.P14353430279801200192.a, A033126.P10984355173944688031.a, A037501, A037501.P4270999270885130315.a, A037622, A037622.P16795863825706726991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033126

/-! ## A033126.P2748971228178941355

`A037636(n+1)-A037533(n+1)`
-/

namespace A033126.P2748971228178941355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037636 (n + 1) - A037533 (n + 1)

end

end A033126.P2748971228178941355

namespace A033126

/-- `A037636(n+1)-A037533(n+1)` -/
def P2748971228178941355.Spec : Prop :=
  ∀ n, P2748971228178941355.a n = A033126 (n + 1)

end A033126

/-! ## A033126.P10760864265630354429

`A037643(n+1)-A037601(n+1)`
-/

namespace A033126.P10760864265630354429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037643 (n + 1) - A037601 (n + 1)

end

end A033126.P10760864265630354429

namespace A033126

/-- `A037643(n+1)-A037601(n+1)` -/
def P10760864265630354429.Spec : Prop :=
  ∀ n, P10760864265630354429.a n = A033126 (n + 1)

end A033126

/-! ## A033126.P5578492735168064163

`and(A037541(n+1), A037594(n+1))`
-/

namespace A033126.P5578492735168064163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037541 (n + 1)) (A037594 (n + 1))

end

end A033126.P5578492735168064163

namespace A033126

/-- `and(A037541(n+1), A037594(n+1))` -/
def P5578492735168064163.Spec : Prop :=
  ∀ n, P5578492735168064163.a n = A033126 (n + 1)

end A033126

/-! ## A033126.P12374833403696228008

`and(A037594(n+1), A037650(n+1))`
-/

namespace A033126.P12374833403696228008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037594 (n + 1)) (A037650 (n + 1))

end

end A033126.P12374833403696228008

namespace A033126

/-- `and(A037594(n+1), A037650(n+1))` -/
def P12374833403696228008.Spec : Prop :=
  ∀ n, P12374833403696228008.a n = A033126 (n + 1)

end A033126

/-! ## A033126.P4957318305075452257

`and(A037608(n+1), A037650(n+1))`
-/

namespace A033126.P4957318305075452257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037608 (n + 1)) (A037650 (n + 1))

end

end A033126.P4957318305075452257

namespace A033126

/-- `and(A037608(n+1), A037650(n+1))` -/
def P4957318305075452257.Spec : Prop :=
  ∀ n, P4957318305075452257.a n = A033126 (n + 1)

end A033126

/-!
# A033127: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,1.

The programs for A033127, the canonical program `A033127.P18205550115353323205` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033127 has offset 1).

The definition of A033127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033127.P18205550115353323205

`9*a(n-1)+a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=9, a(2)=82, a(3)=739`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033127

/-- `9*a(n-1)+a(n-3)-9*a(n-4)` -/
def P18205550115353323205.Spec : Prop :=
  ∀ n, P18205550115353323205.a n = A033127 (n + 1)

theorem P18205550115353323205.correct : P18205550115353323205.Spec := by
  intro n
  simp only [A033127, Nat.add_sub_cancel]

end A033127

/-! ## A033127.P16598031158574010449

`floor(41/364*9^(n+1))`
-/

namespace A033127.P16598031158574010449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(41 : ℚ) / 364 * (9 ^ (n + 1) : ℚ)⌋

end

end A033127.P16598031158574010449

namespace A033127

/-- `floor(41/364*9^(n+1))` -/
def P16598031158574010449.Spec : Prop :=
  ∀ n, P16598031158574010449.a n = A033127 (n + 1)

end A033127

/-! ## A033127.P3923714479652384495

`ogf((1+x^2)/(1-9x-x^3+9x^4))`
-/

namespace A033127.P3923714479652384495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -9, 0, -1, 9] n

end

end A033127.P3923714479652384495

namespace A033127

/-- `ogf((1+x^2)/(1-9x-x^3+9x^4))` -/
def P3923714479652384495.Spec : Prop :=
  ∀ n, P3923714479652384495.a n = A033127 (n + 1)

end A033127

/-! ## A033127.P14442456213213048281

`∑[9*a(n-1)-A102283(n)]` with `a(0)=1`
-/

namespace A033127.P14442456213213048281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) - A102283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033127.P14442456213213048281

namespace A033127

/-- `∑[9*a(n-1)-A102283(n)]` -/
def P14442456213213048281.Spec : Prop :=
  ∀ n, P14442456213213048281.a n = A033127 (n + 1)

end A033127

/-! ## A033127.P4420759493527520347

`∑[9*a(n-1)-A106510(n)]` with `a(0)=1`
-/

namespace A033127.P4420759493527520347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) - A106510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033127.P4420759493527520347

namespace A033127

/-- `∑[9*a(n-1)-A106510(n)]` -/
def P4420759493527520347.Spec : Prop :=
  ∀ n, P4420759493527520347.a n = A033127 (n + 1)

end A033127

/-! ## A033127.P8404673468538262671

`and(1, A000032(n+2))+9*a(n-1)` with `a(0)=1`
-/

namespace A033127.P8404673468538262671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (A000032 (n + 2)) + 9 * a (n - 1)

end

end A033127.P8404673468538262671

namespace A033127

/-- `and(1, A000032(n+2))+9*a(n-1)` -/
def P8404673468538262671.Spec : Prop :=
  ∀ n, P8404673468538262671.a n = A033127 (n + 1)

end A033127

/-! ## A033127.P12623106121628206051

`A037558(n+1)-∑[9*a(n-1)-(n%3-1)]` with `a(0)=1`
-/

namespace A033127.P12623106121628206051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) - (((n % 3 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037558 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033127.P12623106121628206051

namespace A033127

/-- `A037558(n+1)-∑[9*a(n-1)-(n%3-1)]` -/
def P12623106121628206051.Spec : Prop :=
  ∀ n, P12623106121628206051.a n = A033127 (n + 1)

end A033127

/-! ## A033127.P6326096710114390588

`A037518(n+1)-A033145(n+1)`
-/

namespace A033127.P6326096710114390588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037518 (n + 1) - A033145 (n + 1)

end

end A033127.P6326096710114390588

namespace A033127

/-- `A037518(n+1)-A033145(n+1)` -/
def P6326096710114390588.Spec : Prop :=
  ∀ n, P6326096710114390588.a n = A033127 (n + 1)

end A033127

/-! ## A033127.P7984960264467023213

`A037558(n+1)-A033136(n+1)`
-/

namespace A033127.P7984960264467023213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037558 (n + 1) - A033136 (n + 1)

end

end A033127.P7984960264467023213

namespace A033127

/-- `A037558(n+1)-A033136(n+1)` -/
def P7984960264467023213.Spec : Prop :=
  ∀ n, P7984960264467023213.a n = A033127 (n + 1)

end A033127

/-! ## A033127.P11410704008342826516

`A037637(n+1)-A037534(n+1)`
-/

namespace A033127.P11410704008342826516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037637 (n + 1) - A037534 (n + 1)

end

end A033127.P11410704008342826516

namespace A033127

/-- `A037637(n+1)-A037534(n+1)` -/
def P11410704008342826516.Spec : Prop :=
  ∀ n, P11410704008342826516.a n = A033127 (n + 1)

end A033127

/-! ## A033127.P8830142299353708429

`A037658(n+1)-A037518(n+1)`
-/

namespace A033127.P8830142299353708429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037658 (n + 1) - A037518 (n + 1)

end

end A033127.P8830142299353708429

namespace A033127

/-- `A037658(n+1)-A037518(n+1)` -/
def P8830142299353708429.Spec : Prop :=
  ∀ n, P8830142299353708429.a n = A033127 (n + 1)

theorem P8830142299353708429.correct : P8830142299353708429.Spec := by
  intro n
  simp only [A033127, Nat.add_sub_cancel, A033127.P8830142299353708429.a, A033127.P18205550115353323205.a, A037518, A037518.P965897409930183489.a, A037658, A037658.P4555952278933181869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033127

/-! ## A033127.P18173665127810859381

`A037644(n+1)-A037602(n+1)`
-/

namespace A033127.P18173665127810859381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037644 (n + 1) - A037602 (n + 1)

end

end A033127.P18173665127810859381

namespace A033127

/-- `A037644(n+1)-A037602(n+1)` -/
def P18173665127810859381.Spec : Prop :=
  ∀ n, P18173665127810859381.a n = A033127 (n + 1)

end A033127

/-! ## A033127.P11220657782005817660

`(A037502(n+1)+A033145(n+1))/2`
-/

namespace A033127.P11220657782005817660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037502 (n + 1) + A033145 (n + 1) : ℚ) / 2

end

end A033127.P11220657782005817660

namespace A033127

/-- `(A037502(n+1)+A033145(n+1))/2` -/
def P11220657782005817660.Spec : Prop :=
  ∀ n, P11220657782005817660.a n = (A033127 (n + 1) : ℚ)

end A033127

/-! ## A033127.P7974189037720472801

`A037651(n+1)-2*A033145(n+1)`
-/

namespace A033127.P7974189037720472801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037651 (n + 1) - 2 * A033145 (n + 1)

end

end A033127.P7974189037720472801

namespace A033127

/-- `A037651(n+1)-2*A033145(n+1)` -/
def P7974189037720472801.Spec : Prop :=
  ∀ n, P7974189037720472801.a n = A033127 (n + 1)

end A033127

/-! ## A033127.P2102503781516459620

`2*A037518(n+1)-A037651(n+1)`
-/

namespace A033127.P2102503781516459620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037518 (n + 1) - A037651 (n + 1)

end

end A033127.P2102503781516459620

namespace A033127

/-- `2*A037518(n+1)-A037651(n+1)` -/
def P2102503781516459620.Spec : Prop :=
  ∀ n, P2102503781516459620.a n = A033127 (n + 1)

end A033127

/-! ## A033127.P13361245843904204973

`(A037658(n+1)-A033145(n+1))/2`
-/

namespace A033127.P13361245843904204973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037658 (n + 1) - A033145 (n + 1) : ℚ) / 2

end

end A033127.P13361245843904204973

namespace A033127

/-- `(A037658(n+1)-A033145(n+1))/2` -/
def P13361245843904204973.Spec : Prop :=
  ∀ n, P13361245843904204973.a n = (A033127 (n + 1) : ℚ)

end A033127

/-! ## A033127.P5237206147463758728

`(A037518(n+1)+A037502(n+1))/3`
-/

namespace A033127.P5237206147463758728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037518 (n + 1) + A037502 (n + 1) : ℚ) / 3

end

end A033127.P5237206147463758728

namespace A033127

/-- `(A037518(n+1)+A037502(n+1))/3` -/
def P5237206147463758728.Spec : Prop :=
  ∀ n, P5237206147463758728.a n = (A033127 (n + 1) : ℚ)

end A033127

/-! ## A033127.P2538642784336486633

`9*a(n-1)-A049347(A000124(n))` with `a(0)=1`
-/

namespace A033127.P2538642784336486633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - A049347 (A000124 n).toNat

end

end A033127.P2538642784336486633

namespace A033127

/-- `9*a(n-1)-A049347(A000124(n))` -/
def P2538642784336486633.Spec : Prop :=
  ∀ n, P2538642784336486633.a n = A033127 (n + 1)

end A033127

/-! ## A033127.P468711994088334699

`A037658(A000027(n+1))%A037518(n+1)`
-/

namespace A033127.P468711994088334699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037658 (A000027 (n + 1)).toNat) (A037518 (n + 1))

end

end A033127.P468711994088334699

namespace A033127

/-- `A037658(A000027(n+1))%A037518(n+1)` -/
def P468711994088334699.Spec : Prop :=
  ∀ n, P468711994088334699.a n = A033127 (n + 1)

end A033127

/-! ## A033127.P14648239930409866482

`A037518(n+1)+A037542(n+1)-A037566(n+1)`
-/

namespace A033127.P14648239930409866482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037518 (n + 1) + (A037542 (n + 1) - A037566 (n + 1))

end

end A033127.P14648239930409866482

namespace A033127

/-- `A037518(n+1)+A037542(n+1)-A037566(n+1)` -/
def P14648239930409866482.Spec : Prop :=
  ∀ n, P14648239930409866482.a n = A033127 (n + 1)

end A033127

/-!
# A033128: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,0,1.

The programs for A033128, the canonical program `A033128.P14826130765287616147` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033128 has offset 1).

The definition of A033128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033128.P14826130765287616147

`floor(101/999*10^(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033128

/-- `floor(101/999*10^(n+1))` -/
def P14826130765287616147.Spec : Prop :=
  ∀ n, P14826130765287616147.a n = A033128 (n + 1)

theorem P14826130765287616147.correct : P14826130765287616147.Spec := by
  intro n
  simp only [A033128, Nat.add_sub_cancel]

end A033128

/-! ## A033128.P3897083401170367266

`ogf((1+x^2)/(1-10x-x^3+10x^4))`
-/

namespace A033128.P3897083401170367266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -10, 0, -1, 10] n

end

end A033128.P3897083401170367266

namespace A033128

/-- `ogf((1+x^2)/(1-10x-x^3+10x^4))` -/
def P3897083401170367266.Spec : Prop :=
  ∀ n, P3897083401170367266.a n = A033128 (n + 1)

end A033128

/-! ## A033128.P18394681124820193611

`or(10*a(n-1), ((n²+n)%3)!)` with `a(0)=1`
-/

namespace A033128.P18394681124820193611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (10 * a (n - 1)) (Nat.factorial ((n ^ 2 + n) % 3))

end

end A033128.P18394681124820193611

namespace A033128

/-- `or(10*a(n-1), ((n²+n)%3)!)` -/
def P18394681124820193611.Spec : Prop :=
  ∀ n, (P18394681124820193611.a n : ℤ) = A033128 (n + 1)

end A033128

/-! ## A033128.P9634087629543283820

`or(10*a(n-1), Δ[A004396(n)])` with `a(0)=1`
-/

namespace A033128.P9634087629543283820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A033128.P9634087629543283820

namespace A033128

/-- `or(10*a(n-1), Δ[A004396(n)])` -/
def P9634087629543283820.Spec : Prop :=
  ∀ n, P9634087629543283820.a n = A033128 (n + 1)

end A033128

/-! ## A033128.P9596163815723633807

`or(10*a(n-1), A000035(A059126(n)))` with `a(0)=1`
-/

namespace A033128.P9596163815723633807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A000035 (A059126 n).toNat)

end

end A033128.P9596163815723633807

namespace A033128

/-- `or(10*a(n-1), A000035(A059126(n)))` -/
def P9596163815723633807.Spec : Prop :=
  ∀ n, P9596163815723633807.a n = A033128 (n + 1)

end A033128

/-! ## A033128.P17181193169456916591

`or(10*a(n-1), A060865(A005408(n)))` with `a(0)=1`
-/

namespace A033128.P17181193169456916591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A060865 (A005408 n).toNat)

end

end A033128.P17181193169456916591

namespace A033128

/-- `or(10*a(n-1), A060865(A005408(n)))` -/
def P17181193169456916591.Spec : Prop :=
  ∀ n, P17181193169456916591.a n = A033128 (n + 1)

end A033128

/-! ## A033128.P4175039347276652665

`or(10*a(n-1), A247339(A285107(n)))` with `a(0)=1`
-/

namespace A033128.P4175039347276652665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A247339 (A285107 n).toNat)

end

end A033128.P4175039347276652665

namespace A033128

/-- `or(10*a(n-1), A247339(A285107(n)))` -/
def P4175039347276652665.Spec : Prop :=
  ∀ n, P4175039347276652665.a n = A033128 (n + 1)

end A033128

/-! ## A033128.P10096098696661735546

`xor(10*a(n-1), A000035(A005131(n)))` with `a(0)=1`
-/

namespace A033128.P10096098696661735546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A000035 (A005131 n).toNat)

end

end A033128.P10096098696661735546

namespace A033128

/-- `xor(10*a(n-1), A000035(A005131(n)))` -/
def P10096098696661735546.Spec : Prop :=
  ∀ n, P10096098696661735546.a n = A033128 (n + 1)

end A033128

/-! ## A033128.P7215784230007275469

`xor(10*a(n-1), A093719(A028563(n)))` with `a(0)=1`
-/

namespace A033128.P7215784230007275469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A093719 (A028563 n).toNat)

end

end A033128.P7215784230007275469

namespace A033128

/-- `xor(10*a(n-1), A093719(A028563(n)))` -/
def P7215784230007275469.Spec : Prop :=
  ∀ n, P7215784230007275469.a n = A033128 (n + 1)

end A033128

/-! ## A033128.P17259254609359506012

`or(10*a(n-1), A000034(A007089(n)))` with `a(0)=1`
-/

namespace A033128.P17259254609359506012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A000034 (A007089 n).toNat)

end

end A033128.P17259254609359506012

namespace A033128

/-- `or(10*a(n-1), A000034(A007089(n)))` -/
def P17259254609359506012.Spec : Prop :=
  ∀ n, P17259254609359506012.a n = A033128 (n + 1)

end A033128

/-!
# A033129: Base-2 digits are, in order, the first n terms of the periodic sequence with initial period [1,1,0].

The programs for A033129, the canonical program `A033129.P1318292628239491205` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033129 has offset 0).

The definition of A033129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033129.P1318292628239491205

`floor(2^(n+1)*3/7)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033129

/-- `floor(2^(n+1)*3/7)` -/
def P1318292628239491205.Spec : Prop :=
  ∀ n, P1318292628239491205.a n = A033129 n

theorem P1318292628239491205.correct : P1318292628239491205.Spec := by
  intro n
  simp only [A033129]

end A033129

/-! ## A033129.P8002932091058194997

`ogf((x+x^2)/(1-2x-x^3+2x^4))`
-/

namespace A033129.P8002932091058194997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -2, 0, -1, 2] n

end

end A033129.P8002932091058194997

namespace A033129

/-- `ogf((x+x^2)/(1-2x-x^3+2x^4))` -/
def P8002932091058194997.Spec : Prop :=
  ∀ n, P8002932091058194997.a n = A033129 n

end A033129

/-! ## A033129.P3971108547883137145

`n²%3+2*a(n-1)` with `a(0)=0`
-/

namespace A033129.P3971108547883137145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n ^ 2 % 3 + 2 * a (n - 1)

end

end A033129.P3971108547883137145

namespace A033129

/-- `n²%3+2*a(n-1)` -/
def P3971108547883137145.Spec : Prop :=
  ∀ n, (P3971108547883137145.a n : ℤ) = A033129 n

end A033129

/-! ## A033129.P3445603263294547467

`or(2*a(n-1), a(n-3))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A033129.P3445603263294547467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  Nat.lor (2 * a (n - 1)) (a (n - 3))

end

end A033129.P3445603263294547467

namespace A033129

/-- `or(2*a(n-1), a(n-3))` -/
def P3445603263294547467.Spec : Prop :=
  ∀ n, (P3445603263294547467.a n : ℤ) = A033129 n

end A033129

/-! ## A033129.P13185230934847956878

`1-(a(n-2)%3-2*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A033129.P13185230934847956878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - (Int.tmod (a (n - 2)) 3 - 2 * a (n - 1))

end

end A033129.P13185230934847956878

namespace A033129

/-- `1-(a(n-2)%3-2*a(n-1))` -/
def P13185230934847956878.Spec : Prop :=
  ∀ n, P13185230934847956878.a n = A033129 n

end A033129

/-! ## A033129.P15326508891559537772

`2*a(n-2)+a(n-1)+gcd(2, a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A033129.P15326508891559537772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 2) + (a (n - 1) + Nat.gcd 2 (a (n - 2)))

end

end A033129.P15326508891559537772

namespace A033129

/-- `2*a(n-2)+a(n-1)+gcd(2, a(n-2))` -/
def P15326508891559537772.Spec : Prop :=
  ∀ n, (P15326508891559537772.a n : ℤ) = A033129 n

end A033129

/-! ## A033129.P10550672192345325237

`a(n-1)+a(n-1)+(a(n-1)+a(n-2))%2` with `a(0)=0, a(1)=1`
-/

namespace A033129.P10550672192345325237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 2)) % 2)

end

end A033129.P10550672192345325237

namespace A033129

/-- `a(n-1)+a(n-1)+(a(n-1)+a(n-2))%2` -/
def P10550672192345325237.Spec : Prop :=
  ∀ n, (P10550672192345325237.a n : ℤ) = A033129 n

end A033129

/-! ## A033129.P17266732529429616154

`a(n-1)-((a(n-2)-a(n-1))%2-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A033129.P17266732529429616154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 2) - a (n - 1)) 2 - a (n - 1))

end

end A033129.P17266732529429616154

namespace A033129

/-- `a(n-1)-((a(n-2)-a(n-1))%2-a(n-1))` -/
def P17266732529429616154.Spec : Prop :=
  ∀ n, P17266732529429616154.a n = A033129 n

end A033129

/-! ## A033129.P2611726246049821279

`∑[A294627(n)]`
-/

namespace A033129.P2611726246049821279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033129.P2611726246049821279

namespace A033129

/-- `∑[A294627(n)]` -/
def P2611726246049821279.Spec : Prop :=
  ∀ n, P2611726246049821279.a n = A033129 n

end A033129

/-! ## A033129.P17333193920079804299

`A057744(n)-1`
-/

namespace A033129.P17333193920079804299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057744 n - 1

end

end A033129.P17333193920079804299

namespace A033129

/-- `A057744(n)-1` -/
def P17333193920079804299.Spec : Prop :=
  ∀ n, P17333193920079804299.a n = A033129 n

end A033129

/-! ## A033129.P14245392923116853436

`and(1, A000032(n))+2*a(n-1)` with `a(0)=0`
-/

namespace A033129.P14245392923116853436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land 1 (A000032 n) + 2 * a (n - 1)

end

end A033129.P14245392923116853436

namespace A033129

/-- `and(1, A000032(n))+2*a(n-1)` -/
def P14245392923116853436.Spec : Prop :=
  ∀ n, P14245392923116853436.a n = A033129 n

end A033129

/-! ## A033129.P623721181623639444

`and(1, A000045(n))+2*a(n-1)` with `a(0)=0`
-/

namespace A033129.P623721181623639444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land 1 (A000045 n) + 2 * a (n - 1)

end

end A033129.P623721181623639444

namespace A033129

/-- `and(1, A000045(n))+2*a(n-1)` -/
def P623721181623639444.Spec : Prop :=
  ∀ n, P623721181623639444.a n = A033129 n

end A033129

/-! ## A033129.P17172924790665883860

`a(n-1)+A011655(n)+a(n-1)` with `a(0)=0`
-/

namespace A033129.P17172924790665883860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A011655 n + a (n - 1))

end

end A033129.P17172924790665883860

namespace A033129

/-- `a(n-1)+A011655(n)+a(n-1)` -/
def P17172924790665883860.Spec : Prop :=
  ∀ n, P17172924790665883860.a n = A033129 n

end A033129

/-! ## A033129.P12283321664712517221

`a(n-1)+A267208(n)+a(n-1)` with `a(0)=0`
-/

namespace A033129.P12283321664712517221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A267208 n + a (n - 1))

end

end A033129.P12283321664712517221

namespace A033129

/-- `a(n-1)+A267208(n)+a(n-1)` -/
def P12283321664712517221.Spec : Prop :=
  ∀ n, P12283321664712517221.a n = A033129 n

end A033129

/-! ## A033129.P2049800365834161936

`A000225(n)-A155803(n)`
-/

namespace A033129.P2049800365834161936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A155803 n

end

end A033129.P2049800365834161936

namespace A033129

/-- `A000225(n)-A155803(n)` -/
def P2049800365834161936.Spec : Prop :=
  ∀ n, P2049800365834161936.a n = A033129 n

end A033129

/-! ## A033129.P3970273898298954278

`xor(A077947(n), A078010(n))`
-/

namespace A033129.P3970273898298954278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077947 n) (A078010 n)

end

end A033129.P3970273898298954278

namespace A033129

/-- `xor(A077947(n), A078010(n))` -/
def P3970273898298954278.Spec : Prop :=
  ∀ n, P3970273898298954278.a n = A033129 n

end A033129

/-! ## A033129.P11009747046936109337

`A000079(n)-(A155803(n)+1)`
-/

namespace A033129.P11009747046936109337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A155803 n + 1)

end

end A033129.P11009747046936109337

namespace A033129

/-- `A000079(n)-(A155803(n)+1)` -/
def P11009747046936109337.Spec : Prop :=
  ∀ n, P11009747046936109337.a n = A033129 n

end A033129

/-! ## A033129.P10702202607373126963

`A178455(n+2)-A178455(n)`
-/

namespace A033129.P10702202607373126963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178455 (n + 2) - A178455 n

end

end A033129.P10702202607373126963

namespace A033129

/-- `A178455(n+2)-A178455(n)` -/
def P10702202607373126963.Spec : Prop :=
  ∀ n, P10702202607373126963.a n = A033129 n

end A033129

/-! ## A033129.P12637795403724073593

`∑[A122552(n)]-A010892(n)²`
-/

namespace A033129.P12637795403724073593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010892 n ^ 2

end

end A033129.P12637795403724073593

namespace A033129

/-- `∑[A122552(n)]-A010892(n)²` -/
def P12637795403724073593.Spec : Prop :=
  ∀ n, P12637795403724073593.a n = A033129 n

end A033129

/-! ## A033129.P13681180685128148118

`A294627(n+1)-A010892(n)²`
-/

namespace A033129.P13681180685128148118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 (n + 1) - A010892 n ^ 2

end

end A033129.P13681180685128148118

namespace A033129

/-- `A294627(n+1)-A010892(n)²` -/
def P13681180685128148118.Spec : Prop :=
  ∀ n, P13681180685128148118.a n = A033129 n

end A033129

/-!
# A033130: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,0.

The programs for A033130, the canonical program `A033130.P13860399126557355425` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033130 has offset 1).

The definition of A033130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033130.P13860399126557355425

`3*a(n-1)+a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=37`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033130

/-- `3*a(n-1)+a(n-3)-3*a(n-4)` -/
def P13860399126557355425.Spec : Prop :=
  ∀ n, P13860399126557355425.a n = A033130 (n + 1)

theorem P13860399126557355425.correct : P13860399126557355425.Spec := by
  intro n
  simp only [A033130, Nat.add_sub_cancel]

end A033130

/-! ## A033130.P12010285034304262798

`floor(6*3^(n+1)/13)`
-/

namespace A033130.P12010285034304262798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 * 3 ^ (n + 1) : ℚ) / 13⌋

end

end A033130.P12010285034304262798

namespace A033130

/-- `floor(6*3^(n+1)/13)` -/
def P12010285034304262798.Spec : Prop :=
  ∀ n, P12010285034304262798.a n = A033130 (n + 1)

end A033130

/-! ## A033130.P4973630447214954487

`ogf((1+x)/(1-3x-x^3+3x^4))`
-/

namespace A033130.P4973630447214954487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -3, 0, -1, 3] n

end

end A033130.P4973630447214954487

namespace A033130

/-- `ogf((1+x)/(1-3x-x^3+3x^4))` -/
def P4973630447214954487.Spec : Prop :=
  ∀ n, P4973630447214954487.a n = A033130 (n + 1)

end A033130

/-! ## A033130.P11609068823348086895

`∑[3^n]-floor(a(n-1)/4)` with `a(0)=1`
-/

namespace A033130.P11609068823348086895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(a (n - 1) : ℚ) / 4⌋

end

end A033130.P11609068823348086895

namespace A033130

/-- `∑[3^n]-floor(a(n-1)/4)` -/
def P11609068823348086895.Spec : Prop :=
  ∀ n, P11609068823348086895.a n = A033130 (n + 1)

end A033130

/-! ## A033130.P9170726959563455749

`(n+1)²%3+3*a(n-1)` with `a(0)=1`
-/

namespace A033130.P9170726959563455749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) ^ 2 % 3 + 3 * a (n - 1)

end

end A033130.P9170726959563455749

namespace A033130

/-- `(n+1)²%3+3*a(n-1)` -/
def P9170726959563455749.Spec : Prop :=
  ∀ n, (P9170726959563455749.a n : ℤ) = A033130 (n + 1)

end A033130

/-! ## A033130.P2167509892271960081

`floor(24*3^n/13)-a(n-1)` with `a(0)=1`
-/

namespace A033130.P2167509892271960081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊24 * ((3 ^ n : ℚ) / 13)⌋ - a (n - 1)

end

end A033130.P2167509892271960081

namespace A033130

/-- `floor(24*3^n/13)-a(n-1)` -/
def P2167509892271960081.Spec : Prop :=
  ∀ n, P2167509892271960081.a n = A033130 (n + 1)

end A033130

/-! ## A033130.P13096817954140021214

`1-(a(n-2)%2-3*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A033130.P13096817954140021214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  1 - (Int.tmod (a (n - 2)) 2 - 3 * a (n - 1))

end

end A033130.P13096817954140021214

namespace A033130

/-- `1-(a(n-2)%2-3*a(n-1))` -/
def P13096817954140021214.Spec : Prop :=
  ∀ n, P13096817954140021214.a n = A033130 (n + 1)

end A033130

/-! ## A033130.P15880707011954978091

`gcd(2, a(n-2))+3*a(n-1)-1` with `a(0)=1, a(1)=4`
-/

namespace A033130.P15880707011954978091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (Int.gcd 2 (a (n - 2)) : ℤ) + (3 * a (n - 1) - 1)

end

end A033130.P15880707011954978091

namespace A033130

/-- `gcd(2, a(n-2))+3*a(n-1)-1` -/
def P15880707011954978091.Spec : Prop :=
  ∀ n, P15880707011954978091.a n = A033130 (n + 1)

end A033130

/-! ## A033130.P12170360922481267076

`3*a(n-1)-A131185(2*(n+1))` with `a(0)=1`
-/

namespace A033130.P12170360922481267076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A131185 (2 * (n + 1))

end

end A033130.P12170360922481267076

namespace A033130

/-- `3*a(n-1)-A131185(2*(n+1))` -/
def P12170360922481267076.Spec : Prop :=
  ∀ n, P12170360922481267076.a n = A033130 (n + 1)

end A033130

/-! ## A033130.P1048351646730163172

`∑[3*a(n-1)]-(a(n-1)+a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A033130.P1048351646730163172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A033130.P1048351646730163172

namespace A033130

/-- `∑[3*a(n-1)]-(a(n-1)+a(n-2))` -/
def P1048351646730163172.Spec : Prop :=
  ∀ n, P1048351646730163172.a n = A033130 (n + 1)

end A033130

/-! ## A033130.P7656513441842149749

`(A077842(n+2)-1)/3`
-/

namespace A033130.P7656513441842149749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077842 (n + 2) - 1 : ℚ) / 3

end

end A033130.P7656513441842149749

namespace A033130

/-- `(A077842(n+2)-1)/3` -/
def P7656513441842149749.Spec : Prop :=
  ∀ n, P7656513441842149749.a n = (A033130 (n + 1) : ℚ)

end A033130

/-! ## A033130.P17310754858641393958

`∑[2*A077834(n)]-A077834(n)`
-/

namespace A033130.P17310754858641393958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A077834 n

end

end A033130.P17310754858641393958

namespace A033130

/-- `∑[2*A077834(n)]-A077834(n)` -/
def P17310754858641393958.Spec : Prop :=
  ∀ n, P17310754858641393958.a n = A033130 (n + 1)

end A033130

/-! ## A033130.P12618208768483957916

`A037520(n+1)-A033139(n+1)`
-/

namespace A033130.P12618208768483957916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037520 (n + 1) - A033139 (n + 1)

end

end A033130.P12618208768483957916

namespace A033130

/-- `A037520(n+1)-A033139(n+1)` -/
def P12618208768483957916.Spec : Prop :=
  ∀ n, P12618208768483957916.a n = A033130 (n + 1)

end A033130

/-! ## A033130.P16730182564981333201

`A037552(n+1)-A033121(n+1)`
-/

namespace A033130.P16730182564981333201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037552 (n + 1) - A033121 (n + 1)

end

end A033130.P16730182564981333201

namespace A033130

/-- `A037552(n+1)-A033121(n+1)` -/
def P16730182564981333201.Spec : Prop :=
  ∀ n, P16730182564981333201.a n = A033130 (n + 1)

end A033130

/-! ## A033130.P12013621697211786106

`A037568(n+1)-A037496(n+1)`
-/

namespace A033130.P12013621697211786106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037568 (n + 1) - A037496 (n + 1)

end

end A033130.P12013621697211786106

namespace A033130

/-- `A037568(n+1)-A037496(n+1)` -/
def P12013621697211786106.Spec : Prop :=
  ∀ n, P12013621697211786106.a n = A033130 (n + 1)

end A033130

/-! ## A033130.P1273500512474465957

`Δ[A037528(n+1)]-(A037536(n+1)+1)`
-/

namespace A033130.P1273500512474465957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A037536 (n + 1) + 1)

end

end A033130.P1273500512474465957

namespace A033130

/-- `Δ[A037528(n+1)]-(A037536(n+1)+1)` -/
def P1273500512474465957.Spec : Prop :=
  ∀ n, P1273500512474465957.a n = A033130 (n + 1)

end A033130

/-! ## A033130.P9338950088722058175

`A033139(n+1)+A033121(n+2)-A033139(n+2)`
-/

namespace A033130.P9338950088722058175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (n + 1) + (A033121 (n + 2) - A033139 (n + 2))

end

end A033130.P9338950088722058175

namespace A033130

/-- `A033139(n+1)+A033121(n+2)-A033139(n+2)` -/
def P9338950088722058175.Spec : Prop :=
  ∀ n, P9338950088722058175.a n = A033130 (n + 1)

end A033130

/-! ## A033130.P14643917768425826479

`A037520(n+1)+∑[A037504(n+1)-A037520(n+1)]`
-/

namespace A033130.P14643917768425826479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037504 (n + 1) - A037520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037520 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033130.P14643917768425826479

namespace A033130

/-- `A037520(n+1)+∑[A037504(n+1)-A037520(n+1)]` -/
def P14643917768425826479.Spec : Prop :=
  ∀ n, P14643917768425826479.a n = A033130 (n + 1)

end A033130

/-! ## A033130.P11917447378405028012

`A033121(n+3)-3^(n+2)`
-/

namespace A033130.P11917447378405028012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033121 (n + 3) - (3 ^ (n + 2) : ℤ)

end

end A033130.P11917447378405028012

namespace A033130

/-- `A033121(n+3)-3^(n+2)` -/
def P11917447378405028012.Spec : Prop :=
  ∀ n, P11917447378405028012.a n = A033130 (n + 1)

end A033130

/-!
# A033131: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,0.

The programs for A033131, the canonical program `A033131.P7867554378789420458` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033131 has offset 1).

The definition of A033131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033131.P9542562299430498796

`floor(20/63*4^(n+1))`
-/

namespace A033131.P9542562299430498796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(20 : ℚ) / 63 * (4 ^ (n + 1) : ℚ)⌋

end

end A033131.P9542562299430498796

namespace A033131

/-- `floor(20/63*4^(n+1))` -/
def P9542562299430498796.Spec : Prop :=
  ∀ n, P9542562299430498796.a n = A033131 (n + 1)

end A033131

/-! ## A033131.P7867554378789420458

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=5, a(2)=20, a(3)=81`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033131

/-- `4*a(n-1)+a(n-3)-4*a(n-4)` -/
def P7867554378789420458.Spec : Prop :=
  ∀ n, P7867554378789420458.a n = A033131 (n + 1)

theorem P7867554378789420458.correct : P7867554378789420458.Spec := by
  intro n
  simp only [A033131, Nat.add_sub_cancel]

end A033131

/-! ## A033131.P4419326721830195923

`ogf((1+x)/(1-4x-x^3+4x^4))`
-/

namespace A033131.P4419326721830195923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -4, 0, -1, 4] n

end

end A033131.P4419326721830195923

namespace A033131

/-- `ogf((1+x)/(1-4x-x^3+4x^4))` -/
def P4419326721830195923.Spec : Prop :=
  ∀ n, P4419326721830195923.a n = A033131 (n + 1)

end A033131

/-! ## A033131.P8422131751834978217

`∑[4^n]-floor(a(n-1)/5)` with `a(0)=1`
-/

namespace A033131.P8422131751834978217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(a (n - 1) : ℚ) / 5⌋

end

end A033131.P8422131751834978217

namespace A033131

/-- `∑[4^n]-floor(a(n-1)/5)` -/
def P8422131751834978217.Spec : Prop :=
  ∀ n, P8422131751834978217.a n = A033131 (n + 1)

end A033131

/-! ## A033131.P8256118265294558465

`xor(4*a(n-1), char[∑[n%3]])` with `a(0)=1`
-/

namespace A033131.P8256118265294558465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (4 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A033131.P8256118265294558465

namespace A033131

/-- `xor(4*a(n-1), char[∑[n%3]])` -/
def P8256118265294558465.Spec : Prop :=
  ∀ n, (P8256118265294558465.a n : ℤ) = A033131 (n + 1)

end A033131

/-! ## A033131.P10660985853776746197

`(n+1)²%3+4*a(n-1)` with `a(0)=1`
-/

namespace A033131.P10660985853776746197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) ^ 2 % 3 + 4 * a (n - 1)

end

end A033131.P10660985853776746197

namespace A033131

/-- `(n+1)²%3+4*a(n-1)` -/
def P10660985853776746197.Spec : Prop :=
  ∀ n, (P10660985853776746197.a n : ℤ) = A033131 (n + 1)

end A033131

/-! ## A033131.P3960523445149233321

`∑[4*a(n-1)]-(a(n-1)+a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A033131.P3960523445149233321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A033131.P3960523445149233321

namespace A033131

/-- `∑[4*a(n-1)]-(a(n-1)+a(n-2))` -/
def P3960523445149233321.Spec : Prop :=
  ∀ n, P3960523445149233321.a n = A033131 (n + 1)

end A033131

/-! ## A033131.P11014890953369981335

`∑[4*a(n-1)]-a(n-1)-a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A033131.P11014890953369981335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1) - a (n - 2)

end

end A033131.P11014890953369981335

namespace A033131

/-- `∑[4*a(n-1)]-a(n-1)-a(n-2)` -/
def P11014890953369981335.Spec : Prop :=
  ∀ n, P11014890953369981335.a n = A033131 (n + 1)

end A033131

/-! ## A033131.P4411345383482110271

`A003947(n)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=20`
-/

namespace A033131.P4411345383482110271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 20] fun n a =>
  A003947 n + a (n - 3)

end

end A033131.P4411345383482110271

namespace A033131

/-- `A003947(n)+a(n-3)` -/
def P4411345383482110271.Spec : Prop :=
  ∀ n, P4411345383482110271.a n = A033131 (n + 1)

end A033131

/-! ## A033131.P13001870786605367110

`A037537(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A033131.P13001870786605367110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037537 (n + 1) - a (n - 1)

end

end A033131.P13001870786605367110

namespace A033131

/-- `A037537(n+1)-a(n-1)` -/
def P13001870786605367110.Spec : Prop :=
  ∀ n, P13001870786605367110.a n = A033131 (n + 1)

end A033131

/-! ## A033131.P4456402622774163380

`A178872(n)+A033122(n+1)`
-/

namespace A033131.P4456402622774163380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + A033122 (n + 1)

end

end A033131.P4456402622774163380

namespace A033131

/-- `A178872(n)+A033122(n+1)` -/
def P4456402622774163380.Spec : Prop :=
  ∀ n, P4456402622774163380.a n = A033131 (n + 1)

end A033131

/-! ## A033131.P8286716300373110643

`and(A037529(n+1), A072197(n))`
-/

namespace A033131.P8286716300373110643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037529 (n + 1)) (A072197 n)

end

end A033131.P8286716300373110643

namespace A033131

/-- `and(A037529(n+1), A072197(n))` -/
def P8286716300373110643.Spec : Prop :=
  ∀ n, P8286716300373110643.a n = A033131 (n + 1)

end A033131

/-! ## A033131.P4347448694838470542

`and(A037597(n+1), A072197(n))`
-/

namespace A033131.P4347448694838470542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037597 (n + 1)) (A072197 n)

end

end A033131.P4347448694838470542

namespace A033131

/-- `and(A037597(n+1), A072197(n))` -/
def P4347448694838470542.Spec : Prop :=
  ∀ n, P4347448694838470542.a n = A033131 (n + 1)

end A033131

/-! ## A033131.P6403709964064294353

`and(A037611(n+1), A072197(n))`
-/

namespace A033131.P6403709964064294353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037611 (n + 1)) (A072197 n)

end

end A033131.P6403709964064294353

namespace A033131

/-- `and(A037611(n+1), A072197(n))` -/
def P6403709964064294353.Spec : Prop :=
  ∀ n, P6403709964064294353.a n = A033131 (n + 1)

end A033131

/-! ## A033131.P552413923684796676

`∑[A178872(n+1)+A178872(n)]`
-/

namespace A033131.P552413923684796676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 (n + 1) + A178872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033131.P552413923684796676

namespace A033131

/-- `∑[A178872(n+1)+A178872(n)]` -/
def P552413923684796676.Spec : Prop :=
  ∀ n, P552413923684796676.a n = A033131 (n + 1)

end A033131

/-! ## A033131.P323366039145929273

`A037521(n+1)-A033140(n+1)`
-/

namespace A033131.P323366039145929273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037521 (n + 1) - A033140 (n + 1)

end

end A033131.P323366039145929273

namespace A033131

/-- `A037521(n+1)-A033140(n+1)` -/
def P323366039145929273.Spec : Prop :=
  ∀ n, P323366039145929273.a n = A033131 (n + 1)

end A033131

/-! ## A033131.P6036124593347089970

`A037553(n+1)-A033122(n+1)`
-/

namespace A033131.P6036124593347089970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037553 (n + 1) - A033122 (n + 1)

end

end A033131.P6036124593347089970

namespace A033131

/-- `A037553(n+1)-A033122(n+1)` -/
def P6036124593347089970.Spec : Prop :=
  ∀ n, P6036124593347089970.a n = A033131 (n + 1)

end A033131

/-! ## A033131.P7840133614771456676

`A037569(n+1)-A037497(n+1)`
-/

namespace A033131.P7840133614771456676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037569 (n + 1) - A037497 (n + 1)

end

end A033131.P7840133614771456676

namespace A033131

/-- `A037569(n+1)-A037497(n+1)` -/
def P7840133614771456676.Spec : Prop :=
  ∀ n, P7840133614771456676.a n = A033131 (n + 1)

end A033131

/-! ## A033131.P6835367886414233044

`A037625(n+1)-A037505(n+1)`
-/

namespace A033131.P6835367886414233044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037625 (n + 1) - A037505 (n + 1)

end

end A033131.P6835367886414233044

namespace A033131

/-- `A037625(n+1)-A037505(n+1)` -/
def P6835367886414233044.Spec : Prop :=
  ∀ n, P6835367886414233044.a n = A033131 (n + 1)

end A033131

/-! ## A033131.P400735363594107031

`A037639(n+1)-A037537(n+1)`
-/

namespace A033131.P400735363594107031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037639 (n + 1) - A037537 (n + 1)

end

end A033131.P400735363594107031

namespace A033131

/-- `A037639(n+1)-A037537(n+1)` -/
def P400735363594107031.Spec : Prop :=
  ∀ n, P400735363594107031.a n = A033131 (n + 1)

end A033131

/-!
# A033132: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,0.

The programs for A033132, the canonical program `A033132.P11507490931217143944` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033132 has offset 1).

The definition of A033132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033132.P15774508122815631868

`floor(15/62*5^(n+1))`
-/

namespace A033132.P15774508122815631868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(15 : ℚ) / 62 * (5 ^ (n + 1) : ℚ)⌋

end

end A033132.P15774508122815631868

namespace A033132

/-- `floor(15/62*5^(n+1))` -/
def P15774508122815631868.Spec : Prop :=
  ∀ n, P15774508122815631868.a n = A033132 (n + 1)

end A033132

/-! ## A033132.P11507490931217143944

`5*a(n-1)+a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=6, a(2)=30, a(3)=151`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033132

/-- `5*a(n-1)+a(n-3)-5*a(n-4)` -/
def P11507490931217143944.Spec : Prop :=
  ∀ n, P11507490931217143944.a n = A033132 (n + 1)

theorem P11507490931217143944.correct : P11507490931217143944.Spec := by
  intro n
  simp only [A033132, Nat.add_sub_cancel]

end A033132

/-! ## A033132.P11218855362629452303

`ogf((1+x)/(1-5x-x^3+5x^4))`
-/

namespace A033132.P11218855362629452303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -5, 0, -1, 5] n

end

end A033132.P11218855362629452303

namespace A033132

/-- `ogf((1+x)/(1-5x-x^3+5x^4))` -/
def P11218855362629452303.Spec : Prop :=
  ∀ n, P11218855362629452303.a n = A033132 (n + 1)

end A033132

/-! ## A033132.P14847668960963362259

`(n+1)²%3+5*a(n-1)` with `a(0)=1`
-/

namespace A033132.P14847668960963362259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) ^ 2 % 3 + 5 * a (n - 1)

end

end A033132.P14847668960963362259

namespace A033132

/-- `(n+1)²%3+5*a(n-1)` -/
def P14847668960963362259.Spec : Prop :=
  ∀ n, (P14847668960963362259.a n : ℤ) = A033132 (n + 1)

end A033132

/-! ## A033132.P17133632148394402461

`A003948(n)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=30`
-/

namespace A033132.P17133632148394402461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 30] fun n a =>
  A003948 n + a (n - 3)

end

end A033132.P17133632148394402461

namespace A033132

/-- `A003948(n)+a(n-3)` -/
def P17133632148394402461.Spec : Prop :=
  ∀ n, P17133632148394402461.a n = A033132 (n + 1)

end A033132

/-! ## A033132.P6562345491478679762

`A037538(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A033132.P6562345491478679762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037538 (n + 1) - a (n - 1)

end

end A033132.P6562345491478679762

namespace A033132

/-- `A037538(n+1)-a(n-1)` -/
def P6562345491478679762.Spec : Prop :=
  ∀ n, P6562345491478679762.a n = A033132 (n + 1)

end A033132

/-! ## A033132.P4822501657451825790

`5*a(n-1)+A010892(n)²` with `a(0)=1`
-/

namespace A033132.P4822501657451825790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + A010892 n ^ 2

end

end A033132.P4822501657451825790

namespace A033132

/-- `5*a(n-1)+A010892(n)²` -/
def P4822501657451825790.Spec : Prop :=
  ∀ n, P4822501657451825790.a n = A033132 (n + 1)

end A033132

/-! ## A033132.P5962911499435072649

`∑[A020729(n)]-A037530(n+1)`
-/

namespace A033132.P5962911499435072649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037530 (n + 1)

end

end A033132.P5962911499435072649

namespace A033132

/-- `∑[A020729(n)]-A037530(n+1)` -/
def P5962911499435072649.Spec : Prop :=
  ∀ n, P5962911499435072649.a n = A033132 (n + 1)

end A033132

/-! ## A033132.P17082099799989749793

`A037522(n+1)-A033141(n+1)`
-/

namespace A033132.P17082099799989749793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037522 (n + 1) - A033141 (n + 1)

end

end A033132.P17082099799989749793

namespace A033132

/-- `A037522(n+1)-A033141(n+1)` -/
def P17082099799989749793.Spec : Prop :=
  ∀ n, P17082099799989749793.a n = A033132 (n + 1)

end A033132

/-! ## A033132.P14549388465766489990

`A037633(n+1)-A037591(n+1)`
-/

namespace A033132.P14549388465766489990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037633 (n + 1) - A037591 (n + 1)

end

end A033132.P14549388465766489990

namespace A033132

/-- `A037633(n+1)-A037591(n+1)` -/
def P14549388465766489990.Spec : Prop :=
  ∀ n, P14549388465766489990.a n = A033132 (n + 1)

end A033132

/-! ## A033132.P17031250026702866871

`∑[A037514(n+1)-A037498(n+1)]`
-/

namespace A033132.P17031250026702866871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037514 (n + 1) - A037498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033132.P17031250026702866871

namespace A033132

/-- `∑[A037514(n+1)-A037498(n+1)]` -/
def P17031250026702866871.Spec : Prop :=
  ∀ n, P17031250026702866871.a n = A033132 (n + 1)

end A033132

/-! ## A033132.P6665821830223329628

`∑[A037640(n+1)-A037612(n+1)]`
-/

namespace A033132.P6665821830223329628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037640 (n + 1) - A037612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033132.P6665821830223329628

namespace A033132

/-- `∑[A037640(n+1)-A037612(n+1)]` -/
def P6665821830223329628.Spec : Prop :=
  ∀ n, P6665821830223329628.a n = A033132 (n + 1)

end A033132

/-! ## A033132.P15906919339483469790

`A037661(n+1)-2*A033141(n+1)`
-/

namespace A033132.P15906919339483469790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037661 (n + 1) - 2 * A033141 (n + 1)

end

end A033132.P15906919339483469790

namespace A033132

/-- `A037661(n+1)-2*A033141(n+1)` -/
def P15906919339483469790.Spec : Prop :=
  ∀ n, P15906919339483469790.a n = A033132 (n + 1)

end A033132

/-! ## A033132.P5287757316128805051

`A037612(n+1)-(gcd(3, A000040(n+2))+1)*a(n-1)` with `a(0)=1`
-/

namespace A033132.P5287757316128805051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037612 (n + 1) - (Int.gcd 3 (A000040 (n + 2)) + 1 : ℤ) * a (n - 1)

end

end A033132.P5287757316128805051

namespace A033132

/-- `A037612(n+1)-(gcd(3, A000040(n+2))+1)*a(n-1)` -/
def P5287757316128805051.Spec : Prop :=
  ∀ n, P5287757316128805051.a n = A033132 (n + 1)

end A033132

/-! ## A033132.P15608868751840960176

`A037522(n+1)+∑[A037506(n+1)-A037522(n+1)]`
-/

namespace A033132.P15608868751840960176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037506 (n + 1) - A037522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037522 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033132.P15608868751840960176

namespace A033132

/-- `A037522(n+1)+∑[A037506(n+1)-A037522(n+1)]` -/
def P15608868751840960176.Spec : Prop :=
  ∀ n, P15608868751840960176.a n = A033132 (n + 1)

end A033132

/-! ## A033132.P658535069352722242

`A037530(n+2)-A033123(n+2)`
-/

namespace A033132.P658535069352722242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037530 (n + 2) - A033123 (n + 2)

end

end A033132.P658535069352722242

namespace A033132

/-- `A037530(n+2)-A033123(n+2)` -/
def P658535069352722242.Spec : Prop :=
  ∀ n, P658535069352722242.a n = A033132 (n + 1)

end A033132

/-!
# A033133: Base-6 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,0.

The programs for A033133, the canonical program `A033133.P10345834201440290909` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033133 has offset 1).

The definition of A033133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033133.P10345834201440290909

`6*a(n-1)+a(n-3)-6*a(n-4)` with `a(0)=1, a(1)=7, a(2)=42, a(3)=253`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033133

/-- `6*a(n-1)+a(n-3)-6*a(n-4)` -/
def P10345834201440290909.Spec : Prop :=
  ∀ n, P10345834201440290909.a n = A033133 (n + 1)

theorem P10345834201440290909.correct : P10345834201440290909.Spec := by
  intro n
  simp only [A033133, Nat.add_sub_cancel]

end A033133

/-! ## A033133.P16787311053402350078

`floor(42*6^(n+1)/215)`
-/

namespace A033133.P16787311053402350078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(42 * 6 ^ (n + 1) : ℚ) / 215⌋

end

end A033133.P16787311053402350078

namespace A033133

/-- `floor(42*6^(n+1)/215)` -/
def P16787311053402350078.Spec : Prop :=
  ∀ n, P16787311053402350078.a n = A033133 (n + 1)

end A033133

/-! ## A033133.P764364367986881859

`ogf((1+x)/(1-6x-x^3+6x^4))`
-/

namespace A033133.P764364367986881859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -6, 0, -1, 6] n

end

end A033133.P764364367986881859

namespace A033133

/-- `ogf((1+x)/(1-6x-x^3+6x^4))` -/
def P764364367986881859.Spec : Prop :=
  ∀ n, P764364367986881859.a n = A033133 (n + 1)

end A033133

/-! ## A033133.P18006708290078519255

`(n+1)²%3+6*a(n-1)` with `a(0)=1`
-/

namespace A033133.P18006708290078519255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) ^ 2 % 3 + 6 * a (n - 1)

end

end A033133.P18006708290078519255

namespace A033133

/-- `(n+1)²%3+6*a(n-1)` -/
def P18006708290078519255.Spec : Prop :=
  ∀ n, (P18006708290078519255.a n : ℤ) = A033133 (n + 1)

end A033133

/-! ## A033133.P11280221815785873422

`or(6*a(n-1), ((2*n+1)%3)!)` with `a(0)=1`
-/

namespace A033133.P11280221815785873422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (6 * a (n - 1)) (Nat.factorial ((2 * n + 1) % 3))

end

end A033133.P11280221815785873422

namespace A033133

/-- `or(6*a(n-1), ((2*n+1)%3)!)` -/
def P11280221815785873422.Spec : Prop :=
  ∀ n, (P11280221815785873422.a n : ℤ) = A033133 (n + 1)

end A033133

/-! ## A033133.P1347188759003099958

`A003949(n)+a(n-3)` with `a(0)=1, a(1)=7, a(2)=42`
-/

namespace A033133.P1347188759003099958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 42] fun n a =>
  A003949 n + a (n - 3)

end

end A033133.P1347188759003099958

namespace A033133

/-- `A003949(n)+a(n-3)` -/
def P1347188759003099958.Spec : Prop :=
  ∀ n, P1347188759003099958.a n = A033133 (n + 1)

end A033133

/-! ## A033133.P11840467581357689021

`A037539(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A033133.P11840467581357689021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037539 (n + 1) - a (n - 1)

end

end A033133.P11840467581357689021

namespace A033133

/-- `A037539(n+1)-a(n-1)` -/
def P11840467581357689021.Spec : Prop :=
  ∀ n, P11840467581357689021.a n = A033133 (n + 1)

end A033133

/-! ## A033133.P15681475947042282920

`xor(6*a(n-1), A049347(n)²)` with `a(0)=1`
-/

namespace A033133.P15681475947042282920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (6 * a (n - 1)) (A049347 n ^ 2)

end

end A033133.P15681475947042282920

namespace A033133

/-- `xor(6*a(n-1), A049347(n)²)` -/
def P15681475947042282920.Spec : Prop :=
  ∀ n, P15681475947042282920.a n = A033133 (n + 1)

end A033133

/-! ## A033133.P8604378749972007531

`xor(6*a(n-1), A027037(n)%2)` with `a(0)=1`
-/

namespace A033133.P8604378749972007531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (6 * a (n - 1)) (Int.tmod (A027037 n) 2)

end

end A033133.P8604378749972007531

namespace A033133

/-- `xor(6*a(n-1), A027037(n)%2)` -/
def P8604378749972007531.Spec : Prop :=
  ∀ n, P8604378749972007531.a n = A033133 (n + 1)

end A033133

/-! ## A033133.P14929920283582864185

`A010892(n)²+3*2*a(n-1)` with `a(0)=1`
-/

namespace A033133.P14929920283582864185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010892 n ^ 2 + 3 * (2 * a (n - 1))

end

end A033133.P14929920283582864185

namespace A033133

/-- `A010892(n)²+3*2*a(n-1)` -/
def P14929920283582864185.Spec : Prop :=
  ∀ n, P14929920283582864185.a n = A033133 (n + 1)

end A033133

/-! ## A033133.P15391580369084277972

`xor(6*a(n-1), Δ[A004523(n+1)])` with `a(0)=1`
-/

namespace A033133.P15391580369084277972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (6 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A033133.P15391580369084277972

namespace A033133

/-- `xor(6*a(n-1), Δ[A004523(n+1)])` -/
def P15391580369084277972.Spec : Prop :=
  ∀ n, P15391580369084277972.a n = A033133 (n + 1)

end A033133

/-! ## A033133.P2187286815918418186

`and(1, A000045(n+1))+6*a(n-1)` with `a(0)=1`
-/

namespace A033133.P2187286815918418186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (A000045 (n + 1)) + 6 * a (n - 1)

end

end A033133.P2187286815918418186

namespace A033133

/-- `and(1, A000045(n+1))+6*a(n-1)` -/
def P2187286815918418186.Spec : Prop :=
  ∀ n, P2187286815918418186.a n = A033133 (n + 1)

end A033133

/-! ## A033133.P17955662774602559183

`A037523(n+1)-A033142(n+1)`
-/

namespace A033133.P17955662774602559183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037523 (n + 1) - A033142 (n + 1)

end

end A033133.P17955662774602559183

namespace A033133

/-- `A037523(n+1)-A033142(n+1)` -/
def P17955662774602559183.Spec : Prop :=
  ∀ n, P17955662774602559183.a n = A033133 (n + 1)

end A033133

/-! ## A033133.P2534502946245536042

`A037634(n+1)-A037592(n+1)`
-/

namespace A033133.P2534502946245536042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037634 (n + 1) - A037592 (n + 1)

end

end A033133.P2534502946245536042

namespace A033133

/-- `A037634(n+1)-A037592(n+1)` -/
def P2534502946245536042.Spec : Prop :=
  ∀ n, P2534502946245536042.a n = A033133 (n + 1)

end A033133

/-! ## A033133.P15856028943133109352

`∑[A037515(n+1)-A037499(n+1)]`
-/

namespace A033133.P15856028943133109352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037515 (n + 1) - A037499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033133.P15856028943133109352

namespace A033133

/-- `∑[A037515(n+1)-A037499(n+1)]` -/
def P15856028943133109352.Spec : Prop :=
  ∀ n, P15856028943133109352.a n = A033133 (n + 1)

end A033133

/-! ## A033133.P287598033830945771

`(A037507(n+1)+A033142(n+1))/2`
-/

namespace A033133.P287598033830945771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037507 (n + 1) + A033142 (n + 1) : ℚ) / 2

end

end A033133.P287598033830945771

namespace A033133

/-- `(A037507(n+1)+A033142(n+1))/2` -/
def P287598033830945771.Spec : Prop :=
  ∀ n, P287598033830945771.a n = (A033133 (n + 1) : ℚ)

end A033133

/-! ## A033133.P14956609969657317351

`xor(6*a(n-1), A000035(A064989(n+1)))` with `a(0)=1`
-/

namespace A033133.P14956609969657317351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (6 * a (n - 1)) (A000035 (A064989 (n + 1)).toNat)

end

end A033133.P14956609969657317351

namespace A033133

/-- `xor(6*a(n-1), A000035(A064989(n+1)))` -/
def P14956609969657317351.Spec : Prop :=
  ∀ n, P14956609969657317351.a n = A033133 (n + 1)

end A033133

/-! ## A033133.P7599428421359134156

`char[A008619(A008619(6*n))]+2*3*a(n-1)` with `a(0)=1`
-/

namespace A033133.P7599428421359134156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008619 (6 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * (3 * a (n - 1))

end

end A033133.P7599428421359134156

namespace A033133

/-- `char[A008619(A008619(6*n))]+2*3*a(n-1)` -/
def P7599428421359134156.Spec : Prop :=
  ∀ n, (P7599428421359134156.a n : ℤ) = A033133 (n + 1)

end A033133

/-! ## A033133.P716878144786730748

`A037523(n+1)+∑[A037507(n+1)-A037523(n+1)]`
-/

namespace A033133.P716878144786730748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037507 (n + 1) - A037523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037523 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033133.P716878144786730748

namespace A033133

/-- `A037523(n+1)+∑[A037507(n+1)-A037523(n+1)]` -/
def P716878144786730748.Spec : Prop :=
  ∀ n, P716878144786730748.a n = A033133 (n + 1)

end A033133

/-! ## A033133.P744662442299830351

`A037531(n+2)-A033124(n+2)`
-/

namespace A033133.P744662442299830351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037531 (n + 2) - A033124 (n + 2)

end

end A033133.P744662442299830351

namespace A033133

/-- `A037531(n+2)-A033124(n+2)` -/
def P744662442299830351.Spec : Prop :=
  ∀ n, P744662442299830351.a n = A033133 (n + 1)

end A033133

/-!
# A033134: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,0.

The programs for A033134, the canonical program `A033134.P10049616052748735050` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033134 has offset 1).

The definition of A033134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033134.P10049616052748735050

`7*a(n-1)+a(n-3)-7*a(n-4)` with `a(0)=1, a(1)=8, a(2)=56, a(3)=393`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033134

/-- `7*a(n-1)+a(n-3)-7*a(n-4)` -/
def P10049616052748735050.Spec : Prop :=
  ∀ n, P10049616052748735050.a n = A033134 (n + 1)

theorem P10049616052748735050.correct : P10049616052748735050.Spec := by
  intro n
  simp only [A033134, Nat.add_sub_cancel]

end A033134

/-! ## A033134.P4561808402296385831

`floor(28/171*7^(n+1))`
-/

namespace A033134.P4561808402296385831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(28 : ℚ) / 171 * (7 ^ (n + 1) : ℚ)⌋

end

end A033134.P4561808402296385831

namespace A033134

/-- `floor(28/171*7^(n+1))` -/
def P4561808402296385831.Spec : Prop :=
  ∀ n, P4561808402296385831.a n = A033134 (n + 1)

end A033134

/-! ## A033134.P8019208967284926036

`ogf((1+x)/(1-7x-x^3+7x^4))`
-/

namespace A033134.P8019208967284926036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -7, 0, -1, 7] n

end

end A033134.P8019208967284926036

namespace A033134

/-- `ogf((1+x)/(1-7x-x^3+7x^4))` -/
def P8019208967284926036.Spec : Prop :=
  ∀ n, P8019208967284926036.a n = A033134 (n + 1)

end A033134

/-! ## A033134.P1808501120232436266

`(n+1)²%3+7*a(n-1)` with `a(0)=1`
-/

namespace A033134.P1808501120232436266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) ^ 2 % 3 + 7 * a (n - 1)

end

end A033134.P1808501120232436266

namespace A033134

/-- `(n+1)²%3+7*a(n-1)` -/
def P1808501120232436266.Spec : Prop :=
  ∀ n, (P1808501120232436266.a n : ℤ) = A033134 (n + 1)

end A033134

/-! ## A033134.P2058246646541393654

`∑[7*a(n-1)+1-n%3]` with `a(0)=1`
-/

namespace A033134.P2058246646541393654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1) + (1 - ((n % 3 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033134.P2058246646541393654

namespace A033134

/-- `∑[7*a(n-1)+1-n%3]` -/
def P2058246646541393654.Spec : Prop :=
  ∀ n, P2058246646541393654.a n = A033134 (n + 1)

end A033134

/-! ## A033134.P8528955958130535784

`A003950(n)+a(n-3)` with `a(0)=1, a(1)=8, a(2)=56`
-/

namespace A033134.P8528955958130535784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 56] fun n a =>
  A003950 n + a (n - 3)

end

end A033134.P8528955958130535784

namespace A033134

/-- `A003950(n)+a(n-3)` -/
def P8528955958130535784.Spec : Prop :=
  ∀ n, P8528955958130535784.a n = A033134 (n + 1)

end A033134

/-! ## A033134.P8397283940758520858

`A037540(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A033134.P8397283940758520858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037540 (n + 1) - a (n - 1)

end

end A033134.P8397283940758520858

namespace A033134

/-- `A037540(n+1)-a(n-1)` -/
def P8397283940758520858.Spec : Prop :=
  ∀ n, P8397283940758520858.a n = A033134 (n + 1)

end A033134

/-! ## A033134.P17854744507891705561

`A010892(n)²+7*a(n-1)` with `a(0)=1`
-/

namespace A033134.P17854744507891705561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010892 n ^ 2 + 7 * a (n - 1)

end

end A033134.P17854744507891705561

namespace A033134

/-- `A010892(n)²+7*a(n-1)` -/
def P17854744507891705561.Spec : Prop :=
  ∀ n, P17854744507891705561.a n = A033134 (n + 1)

end A033134

/-! ## A033134.P8491506117542601501

`A091338(n+1)²+7*a(n-1)` with `a(0)=1`
-/

namespace A033134.P8491506117542601501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091338 (n + 1) ^ 2 + 7 * a (n - 1)

end

end A033134.P8491506117542601501

namespace A033134

/-- `A091338(n+1)²+7*a(n-1)` -/
def P8491506117542601501.Spec : Prop :=
  ∀ n, P8491506117542601501.a n = A033134 (n + 1)

end A033134

/-! ## A033134.P4513629314773019551

`∑[7*a(n-1)-A049347(n+1)]` with `a(0)=1`
-/

namespace A033134.P4513629314773019551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1) - A049347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033134.P4513629314773019551

namespace A033134

/-- `∑[7*a(n-1)-A049347(n+1)]` -/
def P4513629314773019551.Spec : Prop :=
  ∀ n, P4513629314773019551.a n = A033134 (n + 1)

end A033134

/-! ## A033134.P6982466351255854565

`7*a(n-1)-A135851(Δ[3*floor(n/3)])` with `a(0)=1`
-/

namespace A033134.P6982466351255854565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - A135851 (f1 (n + 1) - f1 n).toNat

end

end A033134.P6982466351255854565

namespace A033134

/-- `7*a(n-1)-A135851(Δ[3*floor(n/3)])` -/
def P6982466351255854565.Spec : Prop :=
  ∀ n, P6982466351255854565.a n = A033134 (n + 1)

end A033134

/-! ## A033134.P17110462981031542067

`A037500(n+1)+A037508(n+1)-A037532(n+1)`
-/

namespace A033134.P17110462981031542067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037500 (n + 1) + (A037508 (n + 1) - A037532 (n + 1))

end

end A033134.P17110462981031542067

namespace A033134

/-- `A037500(n+1)+A037508(n+1)-A037532(n+1)` -/
def P17110462981031542067.Spec : Prop :=
  ∀ n, P17110462981031542067.a n = A033134 (n + 1)

end A033134

/-! ## A033134.P8469612059862075324

`A037524(n+1)-A033143(n+1)`
-/

namespace A033134.P8469612059862075324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037524 (n + 1) - A033143 (n + 1)

end

end A033134.P8469612059862075324

namespace A033134

/-- `A037524(n+1)-A033143(n+1)` -/
def P8469612059862075324.Spec : Prop :=
  ∀ n, P8469612059862075324.a n = A033134 (n + 1)

end A033134

/-! ## A033134.P16917329890274682692

`A037642(n+1)-A037540(n+1)`
-/

namespace A033134.P16917329890274682692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037642 (n + 1) - A037540 (n + 1)

end

end A033134.P16917329890274682692

namespace A033134

/-- `A037642(n+1)-A037540(n+1)` -/
def P16917329890274682692.Spec : Prop :=
  ∀ n, P16917329890274682692.a n = A033134 (n + 1)

end A033134

/-! ## A033134.P14139558176402013811

`A037635(n+1)-A037593(n+1)`
-/

namespace A033134.P14139558176402013811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037635 (n + 1) - A037593 (n + 1)

end

end A033134.P14139558176402013811

namespace A033134

/-- `A037635(n+1)-A037593(n+1)` -/
def P14139558176402013811.Spec : Prop :=
  ∀ n, P14139558176402013811.a n = A033134 (n + 1)

end A033134

/-! ## A033134.P2499008765006161232

`A037532(n+2)-A033125(n+2)`
-/

namespace A033134.P2499008765006161232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 2) - A033125 (n + 2)

end

end A033134.P2499008765006161232

namespace A033134

/-- `A037532(n+2)-A033125(n+2)` -/
def P2499008765006161232.Spec : Prop :=
  ∀ n, P2499008765006161232.a n = A033134 (n + 1)

end A033134

/-! ## A033134.P12580057912021290779

`A037614(n+2)-A037540(n+2)`
-/

namespace A033134.P12580057912021290779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037614 (n + 2) - A037540 (n + 2)

end

end A033134.P12580057912021290779

namespace A033134

/-- `A037614(n+2)-A037540(n+2)` -/
def P12580057912021290779.Spec : Prop :=
  ∀ n, P12580057912021290779.a n = A033134 (n + 1)

end A033134

/-! ## A033134.P16870673674060937821

`∑[A037516(n+1)-A037500(n+1)]`
-/

namespace A033134.P16870673674060937821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037516 (n + 1) - A037500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033134.P16870673674060937821

namespace A033134

/-- `∑[A037516(n+1)-A037500(n+1)]` -/
def P16870673674060937821.Spec : Prop :=
  ∀ n, P16870673674060937821.a n = A033134 (n + 1)

end A033134

/-! ## A033134.P5111883691053426481

`∑[A037556(n+1)-A037532(n+1)]`
-/

namespace A033134.P5111883691053426481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037556 (n + 1) - A037532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033134.P5111883691053426481

namespace A033134

/-- `∑[A037556(n+1)-A037532(n+1)]` -/
def P5111883691053426481.Spec : Prop :=
  ∀ n, P5111883691053426481.a n = A033134 (n + 1)

end A033134

/-! ## A033134.P14920604344611472971

`∑[A037564(n+1)-A037548(n+1)]`
-/

namespace A033134.P14920604344611472971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037564 (n + 1) - A037548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033134.P14920604344611472971

namespace A033134

/-- `∑[A037564(n+1)-A037548(n+1)]` -/
def P14920604344611472971.Spec : Prop :=
  ∀ n, P14920604344611472971.a n = A033134 (n + 1)

end A033134

/-!
# A033135: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,0.

The programs for A033135, the canonical program `A033135.P11766262309282443201` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033135 has offset 1).

The definition of A033135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033135.P11766262309282443201

`8*a(n-1)+a(n-3)-8*a(n-4)` with `a(0)=1, a(1)=9, a(2)=72, a(3)=577`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033135

/-- `8*a(n-1)+a(n-3)-8*a(n-4)` -/
def P11766262309282443201.Spec : Prop :=
  ∀ n, P11766262309282443201.a n = A033135 (n + 1)

theorem P11766262309282443201.correct : P11766262309282443201.Spec := by
  intro n
  simp only [A033135, Nat.add_sub_cancel]

end A033135

/-! ## A033135.P1602208314523622159

`floor(72*8^(n+1)/511)`
-/

namespace A033135.P1602208314523622159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(72 * 8 ^ (n + 1) : ℚ) / 511⌋

end

end A033135.P1602208314523622159

namespace A033135

/-- `floor(72*8^(n+1)/511)` -/
def P1602208314523622159.Spec : Prop :=
  ∀ n, P1602208314523622159.a n = A033135 (n + 1)

end A033135

/-! ## A033135.P17191365121247698498

`ogf((1+x)/(1-8x-x^3+8x^4))`
-/

namespace A033135.P17191365121247698498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -8, 0, -1, 8] n

end

end A033135.P17191365121247698498

namespace A033135

/-- `ogf((1+x)/(1-8x-x^3+8x^4))` -/
def P17191365121247698498.Spec : Prop :=
  ∀ n, P17191365121247698498.a n = A033135 (n + 1)

end A033135

/-! ## A033135.P8732621999012009950

`(n+1)²%3+8*a(n-1)` with `a(0)=1`
-/

namespace A033135.P8732621999012009950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) ^ 2 % 3 + 8 * a (n - 1)

end

end A033135.P8732621999012009950

namespace A033135

/-- `(n+1)²%3+8*a(n-1)` -/
def P8732621999012009950.Spec : Prop :=
  ∀ n, (P8732621999012009950.a n : ℤ) = A033135 (n + 1)

end A033135

/-! ## A033135.P1831025716871960403

`record[gcd(2, n%3)+8*a(n-1)-1]` with `a(0)=1, a(1)=0`
-/

namespace A033135.P1831025716871960403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (Nat.gcd 2 (n % 3) : ℤ) + 8 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033135.P1831025716871960403

namespace A033135

/-- `record[gcd(2, n%3)+8*a(n-1)-1]` -/
def P1831025716871960403.Spec : Prop :=
  ∀ n, P1831025716871960403.a n = A033135 (n + 1)

end A033135

/-! ## A033135.P17740464593417781848

`A003951(n)+a(n-3)` with `a(0)=1, a(1)=9, a(2)=72`
-/

namespace A033135.P17740464593417781848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 72] fun n a =>
  A003951 n + a (n - 3)

end

end A033135.P17740464593417781848

namespace A033135

/-- `A003951(n)+a(n-3)` -/
def P17740464593417781848.Spec : Prop :=
  ∀ n, P17740464593417781848.a n = A033135 (n + 1)

end A033135

/-! ## A033135.P11293214038241138617

`A037541(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A033135.P11293214038241138617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037541 (n + 1) - a (n - 1)

end

end A033135.P11293214038241138617

namespace A033135

/-- `A037541(n+1)-a(n-1)` -/
def P11293214038241138617.Spec : Prop :=
  ∀ n, P11293214038241138617.a n = A033135 (n + 1)

end A033135

/-! ## A033135.P12067157633429865763

`or(8*a(n-1), A010892(n)²)` with `a(0)=1`
-/

namespace A033135.P12067157633429865763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (8 * a (n - 1)) (A010892 n ^ 2)

end

end A033135.P12067157633429865763

namespace A033135

/-- `or(8*a(n-1), A010892(n)²)` -/
def P12067157633429865763.Spec : Prop :=
  ∀ n, P12067157633429865763.a n = A033135 (n + 1)

end A033135

/-! ## A033135.P12846367704512907129

`xor(8*a(n-1), A049347(n)²)` with `a(0)=1`
-/

namespace A033135.P12846367704512907129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (8 * a (n - 1)) (A049347 n ^ 2)

end

end A033135.P12846367704512907129

namespace A033135

/-- `xor(8*a(n-1), A049347(n)²)` -/
def P12846367704512907129.Spec : Prop :=
  ∀ n, P12846367704512907129.a n = A033135 (n + 1)

end A033135

/-! ## A033135.P3674262261431982699

`or(8*a(n-1), char[A032766(n)])` with `a(0)=1`
-/

namespace A033135.P3674262261431982699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (8 * a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A033135.P3674262261431982699

namespace A033135

/-- `or(8*a(n-1), char[A032766(n)])` -/
def P3674262261431982699.Spec : Prop :=
  ∀ n, (P3674262261431982699.a n : ℤ) = A033135 (n + 1)

end A033135

/-! ## A033135.P7507247384868875139

`and(∑[A001018(n)], A037533(n+1))`
-/

namespace A033135.P7507247384868875139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A037533 (n + 1))

end

end A033135.P7507247384868875139

namespace A033135

/-- `and(∑[A001018(n)], A037533(n+1))` -/
def P7507247384868875139.Spec : Prop :=
  ∀ n, P7507247384868875139.a n = A033135 (n + 1)

end A033135

/-! ## A033135.P4700449285924844784

`A037525(n+1)-A033144(n+1)`
-/

namespace A033135.P4700449285924844784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037525 (n + 1) - A033144 (n + 1)

end

end A033135.P4700449285924844784

namespace A033135

/-- `A037525(n+1)-A033144(n+1)` -/
def P4700449285924844784.Spec : Prop :=
  ∀ n, P4700449285924844784.a n = A033135 (n + 1)

end A033135

/-! ## A033135.P13777966398959770167

`A037557(n+1)-A033126(n+1)`
-/

namespace A033135.P13777966398959770167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037557 (n + 1) - A033126 (n + 1)

end

end A033135.P13777966398959770167

namespace A033135

/-- `A037557(n+1)-A033126(n+1)` -/
def P13777966398959770167.Spec : Prop :=
  ∀ n, P13777966398959770167.a n = A033135 (n + 1)

end A033135

/-! ## A033135.P15180592933560872283

`A037573(n+1)-A037501(n+1)`
-/

namespace A033135.P15180592933560872283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037573 (n + 1) - A037501 (n + 1)

end

end A033135.P15180592933560872283

namespace A033135

/-- `A037573(n+1)-A037501(n+1)` -/
def P15180592933560872283.Spec : Prop :=
  ∀ n, P15180592933560872283.a n = A033135 (n + 1)

end A033135

/-! ## A033135.P15844968319736282911

`A037643(n+1)-A037541(n+1)`
-/

namespace A033135.P15844968319736282911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037643 (n + 1) - A037541 (n + 1)

end

end A033135.P15844968319736282911

namespace A033135

/-- `A037643(n+1)-A037541(n+1)` -/
def P15844968319736282911.Spec : Prop :=
  ∀ n, P15844968319736282911.a n = A033135 (n + 1)

end A033135

/-! ## A033135.P1310320972864208127

`A037636(n+1)-A037594(n+1)`
-/

namespace A033135.P1310320972864208127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037636 (n + 1) - A037594 (n + 1)

end

end A033135.P1310320972864208127

namespace A033135

/-- `A037636(n+1)-A037594(n+1)` -/
def P1310320972864208127.Spec : Prop :=
  ∀ n, P1310320972864208127.a n = A033135 (n + 1)

end A033135

/-! ## A033135.P14259222181470085308

`∑[A037525(n+1)-∑[A001018(n)]]`
-/

namespace A033135.P14259222181470085308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037525 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033135.P14259222181470085308

namespace A033135

/-- `∑[A037525(n+1)-∑[A001018(n)]]` -/
def P14259222181470085308.Spec : Prop :=
  ∀ n, P14259222181470085308.a n = A033135 (n + 1)

end A033135

/-! ## A033135.P10263091981315257972

`∑[A037643(n+1)-A037615(n+1)]`
-/

namespace A033135.P10263091981315257972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037643 (n + 1) - A037615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033135.P10263091981315257972

namespace A033135

/-- `∑[A037643(n+1)-A037615(n+1)]` -/
def P10263091981315257972.Spec : Prop :=
  ∀ n, P10263091981315257972.a n = A033135 (n + 1)

end A033135

/-! ## A033135.P8105419940000711061

`8*a(n-1)-A049347(A034856(n+1))` with `a(0)=1`
-/

namespace A033135.P8105419940000711061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) - A049347 (A034856 (n + 1)).toNat

end

end A033135.P8105419940000711061

namespace A033135

/-- `8*a(n-1)-A049347(A034856(n+1))` -/
def P8105419940000711061.Spec : Prop :=
  ∀ n, P8105419940000711061.a n = A033135 (n + 1)

end A033135

/-! ## A033135.P252231469542273376

`8*a(n-1)-A049347(A167499(n+4)-1)` with `a(0)=1`
-/

namespace A033135.P252231469542273376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) - A049347 (A167499 (n + 4) - 1).toNat

end

end A033135.P252231469542273376

namespace A033135

/-- `8*a(n-1)-A049347(A167499(n+4)-1)` -/
def P252231469542273376.Spec : Prop :=
  ∀ n, P252231469542273376.a n = A033135 (n + 1)

end A033135

/-!
# A033136: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,0.

The programs for A033136, the canonical program `A033136.P16977007339341636555` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033136 has offset 1).

The definition of A033136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033136.P16977007339341636555

`round(45/364*9^(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033136

/-- `round(45/364*9^(n+1))` -/
def P16977007339341636555.Spec : Prop :=
  ∀ n, P16977007339341636555.a n = A033136 (n + 1)

theorem P16977007339341636555.correct : P16977007339341636555.Spec := by
  intro n
  simp only [A033136, Nat.add_sub_cancel]

end A033136

/-! ## A033136.P10336325344219920482

`ogf((1+x)/(1-9x-x^3+9x^4))`
-/

namespace A033136.P10336325344219920482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -9, 0, -1, 9] n

end

end A033136.P10336325344219920482

namespace A033136

/-- `ogf((1+x)/(1-9x-x^3+9x^4))` -/
def P10336325344219920482.Spec : Prop :=
  ∀ n, P10336325344219920482.a n = A033136 (n + 1)

end A033136

/-! ## A033136.P11987914760751331962

`∑[9*a(n-1)-(n%3-1)]` with `a(0)=1`
-/

namespace A033136.P11987914760751331962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) - (((n % 3 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033136.P11987914760751331962

namespace A033136

/-- `∑[9*a(n-1)-(n%3-1)]` -/
def P11987914760751331962.Spec : Prop :=
  ∀ n, P11987914760751331962.a n = A033136 (n + 1)

end A033136

/-! ## A033136.P14080677373778074209

`a(n-1)+(n+1)²%3+8*a(n-1)` with `a(0)=1`
-/

namespace A033136.P14080677373778074209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n + 1) ^ 2 % 3 + 8 * a (n - 1))

end

end A033136.P14080677373778074209

namespace A033136

/-- `a(n-1)+(n+1)²%3+8*a(n-1)` -/
def P14080677373778074209.Spec : Prop :=
  ∀ n, (P14080677373778074209.a n : ℤ) = A033136 (n + 1)

end A033136

/-! ## A033136.P3816763553172293600

`A003952(n)+a(n-3)` with `a(0)=1, a(1)=10, a(2)=90`
-/

namespace A033136.P3816763553172293600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 90] fun n a =>
  A003952 n + a (n - 3)

end

end A033136.P3816763553172293600

namespace A033136

/-- `A003952(n)+a(n-3)` -/
def P3816763553172293600.Spec : Prop :=
  ∀ n, P3816763553172293600.a n = A033136 (n + 1)

end A033136

/-! ## A033136.P10680631192585434188

`A037542(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A033136.P10680631192585434188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037542 (n + 1) - a (n - 1)

end

end A033136.P10680631192585434188

namespace A033136

/-- `A037542(n+1)-a(n-1)` -/
def P10680631192585434188.Spec : Prop :=
  ∀ n, P10680631192585434188.a n = A033136 (n + 1)

end A033136

/-! ## A033136.P5589103500411488101

`A010892(n)²+9*a(n-1)` with `a(0)=1`
-/

namespace A033136.P5589103500411488101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010892 n ^ 2 + 9 * a (n - 1)

end

end A033136.P5589103500411488101

namespace A033136

/-- `A010892(n)²+9*a(n-1)` -/
def P5589103500411488101.Spec : Prop :=
  ∀ n, P5589103500411488101.a n = A033136 (n + 1)

end A033136

/-! ## A033136.P5882077373968095746

`A037616(n+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A033136.P5882077373968095746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037616 (n + 1) - 2 * a (n - 1)

end

end A033136.P5882077373968095746

namespace A033136

/-- `A037616(n+1)-2*a(n-1)` -/
def P5882077373968095746.Spec : Prop :=
  ∀ n, P5882077373968095746.a n = A033136 (n + 1)

end A033136

/-! ## A033136.P11984145956368390383

`A244893(n+1)-(2-9*a(n-1))` with `a(0)=1`
-/

namespace A033136.P11984145956368390383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A244893 (n + 1) - (2 - 9 * a (n - 1))

end

end A033136.P11984145956368390383

namespace A033136

/-- `A244893(n+1)-(2-9*a(n-1))` -/
def P11984145956368390383.Spec : Prop :=
  ∀ n, P11984145956368390383.a n = A033136 (n + 1)

end A033136

/-! ## A033136.P7259543666459911942

`A037637(n+1)-A037595(n+1)`
-/

namespace A033136.P7259543666459911942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037637 (n + 1) - A037595 (n + 1)

end

end A033136.P7259543666459911942

namespace A033136

/-- `A037637(n+1)-A037595(n+1)` -/
def P7259543666459911942.Spec : Prop :=
  ∀ n, P7259543666459911942.a n = A033136 (n + 1)

end A033136

/-! ## A033136.P15958043971864179122

`∑[A037518(n+1)-A037502(n+1)]`
-/

namespace A033136.P15958043971864179122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037518 (n + 1) - A037502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033136.P15958043971864179122

namespace A033136

/-- `∑[A037518(n+1)-A037502(n+1)]` -/
def P15958043971864179122.Spec : Prop :=
  ∀ n, P15958043971864179122.a n = A033136 (n + 1)

end A033136

/-! ## A033136.P5377758889999538482

`∑[A037644(n+1)-A037616(n+1)]`
-/

namespace A033136.P5377758889999538482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037644 (n + 1) - A037616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033136.P5377758889999538482

namespace A033136

/-- `∑[A037644(n+1)-A037616(n+1)]` -/
def P5377758889999538482.Spec : Prop :=
  ∀ n, P5377758889999538482.a n = A033136 (n + 1)

end A033136

/-! ## A033136.P12378128985658119166

`(A037510(n+1)+A033145(n+1))/2`
-/

namespace A033136.P12378128985658119166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037510 (n + 1) + A033145 (n + 1) : ℚ) / 2

end

end A033136.P12378128985658119166

namespace A033136

/-- `(A037510(n+1)+A033145(n+1))/2` -/
def P12378128985658119166.Spec : Prop :=
  ∀ n, P12378128985658119166.a n = (A033136 (n + 1) : ℚ)

end A033136

/-! ## A033136.P11963422978818042708

`A033127(n+1)+A037542(n+1)-A037534(n+1)`
-/

namespace A033136.P11963422978818042708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033127 (n + 1) + (A037542 (n + 1) - A037534 (n + 1))

end

end A033136.P11963422978818042708

namespace A033136

/-- `A033127(n+1)+A037542(n+1)-A037534(n+1)` -/
def P11963422978818042708.Spec : Prop :=
  ∀ n, P11963422978818042708.a n = A033136 (n + 1)

end A033136

/-! ## A033136.P2954950475552345282

`A037534(n+2)-A033127(n+2)`
-/

namespace A033136.P2954950475552345282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037534 (n + 2) - A033127 (n + 2)

end

end A033136.P2954950475552345282

namespace A033136

/-- `A037534(n+2)-A033127(n+2)` -/
def P2954950475552345282.Spec : Prop :=
  ∀ n, P2954950475552345282.a n = A033136 (n + 1)

end A033136

/-! ## A033136.P11243132872084417329

`A037558(n+2)-2*A033145(n+2)`
-/

namespace A033136.P11243132872084417329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037558 (n + 2) - 2 * A033145 (n + 2)

end

end A033136.P11243132872084417329

namespace A033136

/-- `A037558(n+2)-2*A033145(n+2)` -/
def P11243132872084417329.Spec : Prop :=
  ∀ n, P11243132872084417329.a n = A033136 (n + 1)

end A033136

/-! ## A033136.P15184165465401622842

`A037637(n+2)-2*A033127(n+2)`
-/

namespace A033136.P15184165465401622842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037637 (n + 2) - 2 * A033127 (n + 2)

end

end A033136.P15184165465401622842

namespace A033136

/-- `A037637(n+2)-2*A033127(n+2)` -/
def P15184165465401622842.Spec : Prop :=
  ∀ n, P15184165465401622842.a n = A033136 (n + 1)

end A033136

/-! ## A033136.P9868496435148285987

`2*A037534(n+2)-A037637(n+2)`
-/

namespace A033136.P9868496435148285987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037534 (n + 2) - A037637 (n + 2)

end

end A033136.P9868496435148285987

namespace A033136

/-- `2*A037534(n+2)-A037637(n+2)` -/
def P9868496435148285987.Spec : Prop :=
  ∀ n, P9868496435148285987.a n = A033136 (n + 1)

end A033136

/-!
# A033137: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,1,0.

The programs for A033137, the canonical program `A033137.P11445624885706759351` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033137 has offset 1).

The definition of A033137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033137.P11445624885706759351

`floor(110*10^(n+1)/999)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033137

/-- `floor(110*10^(n+1)/999)` -/
def P11445624885706759351.Spec : Prop :=
  ∀ n, P11445624885706759351.a n = A033137 (n + 1)

theorem P11445624885706759351.correct : P11445624885706759351.Spec := by
  intro n
  simp only [A033137, Nat.add_sub_cancel]

end A033137

/-! ## A033137.P3670917882518814786

`ogf((1+x)/(1-10x-x^3+10x^4))`
-/

namespace A033137.P3670917882518814786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -10, 0, -1, 10] n

end

end A033137.P3670917882518814786

namespace A033137

/-- `ogf((1+x)/(1-10x-x^3+10x^4))` -/
def P3670917882518814786.Spec : Prop :=
  ∀ n, P3670917882518814786.a n = A033137 (n + 1)

end A033137

/-! ## A033137.P16940516568245516960

`or(10*a(n-1), dr(3*n))` with `a(0)=1`
-/

namespace A033137.P16940516568245516960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (10 * a (n - 1)) (SequenceMachineLib.digitalRoot (3 * n : ℤ))

end

end A033137.P16940516568245516960

namespace A033137

/-- `or(10*a(n-1), dr(3*n))` -/
def P16940516568245516960.Spec : Prop :=
  ∀ n, (P16940516568245516960.a n : ℤ) = A033137 (n + 1)

end A033137

/-! ## A033137.P14777314150631462008

`(n+1)²%3+10*a(n-1)` with `a(0)=1`
-/

namespace A033137.P14777314150631462008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) ^ 2 % 3 + 10 * a (n - 1)

end

end A033137.P14777314150631462008

namespace A033137

/-- `(n+1)²%3+10*a(n-1)` -/
def P14777314150631462008.Spec : Prop :=
  ∀ n, (P14777314150631462008.a n : ℤ) = A033137 (n + 1)

end A033137

/-! ## A033137.P17465368010685762048

`A037543(n)-a(n-1)` with `a(0)=1`
-/

namespace A033137.P17465368010685762048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037543 (n + 1) - a (n - 1)

end

end A033137.P17465368010685762048

namespace A033137

/-- `A037543(n)-a(n-1)` -/
def P17465368010685762048.Spec : Prop :=
  ∀ n, P17465368010685762048.a n = A033137 (n + 1)

end A033137

/-! ## A033137.P58216527096286827

`or(10*a(n-1), A010892(n)²)` with `a(0)=1`
-/

namespace A033137.P58216527096286827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A010892 n ^ 2)

end

end A033137.P58216527096286827

namespace A033137

/-- `or(10*a(n-1), A010892(n)²)` -/
def P58216527096286827.Spec : Prop :=
  ∀ n, P58216527096286827.a n = A033137 (n + 1)

end A033137

/-! ## A033137.P13173895698832901312

`or(10*a(n-1), char[A032766(n)])` with `a(0)=1`
-/

namespace A033137.P13173895698832901312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (10 * a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A033137.P13173895698832901312

namespace A033137

/-- `or(10*a(n-1), char[A032766(n)])` -/
def P13173895698832901312.Spec : Prop :=
  ∀ n, (P13173895698832901312.a n : ℤ) = A033137 (n + 1)

end A033137

/-! ## A033137.P8127877529224249247

`or(10*a(n-1), A076453(n+2)²)` with `a(0)=1`
-/

namespace A033137.P8127877529224249247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A076453 (n + 2) ^ 2)

end

end A033137.P8127877529224249247

namespace A033137

/-- `or(10*a(n-1), A076453(n+2)²)` -/
def P8127877529224249247.Spec : Prop :=
  ∀ n, P8127877529224249247.a n = A033137 (n + 1)

end A033137

/-! ## A033137.P6702054137387215833

`A037617(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A033137.P6702054137387215833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037617 (n + 1) - (a (n - 1) + a (n - 1))

end

end A033137.P6702054137387215833

namespace A033137

/-- `A037617(n)-(a(n-1)+a(n-1))` -/
def P6702054137387215833.Spec : Prop :=
  ∀ n, P6702054137387215833.a n = A033137 (n + 1)

end A033137

/-! ## A033137.P10940447124428344432

`2*A000042(n+1)-A037535(n)`
-/

namespace A033137.P10940447124428344432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000042 (n + 1) - A037535 (n + 1)

end

end A033137.P10940447124428344432

namespace A033137

/-- `2*A000042(n+1)-A037535(n)` -/
def P10940447124428344432.Spec : Prop :=
  ∀ n, P10940447124428344432.a n = A033137 (n + 1)

end A033137

/-!
# A033138: a(n) = floor(2^(n+2)/7).

The programs for A033138, the canonical program `A033138.P4222323638086138965` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033138 has offset 1).

The definition of A033138 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^(n+3)/7)` (program `A033138.P4222323638086138965`, by `A033138.P4222323638086138965.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033138.P3469135941424049828

`a(n-3)+2^n` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A033138.P3469135941424049828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 3) + 2 ^ n

end

end A033138.P3469135941424049828

namespace A033138

/-- `a(n-3)+2^n` -/
def P3469135941424049828.Spec : Prop :=
  ∀ n, (P3469135941424049828.a n : ℤ) = A033138 (n + 1)

end A033138

/-! ## A033138.P14745732241896857236

`2*a(n-1)+a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9`
-/

namespace A033138.P14745732241896857236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 9] fun n a =>
  2 * a (n - 1) + a (n - 3) - 2 * a (n - 4)

end

end A033138.P14745732241896857236

namespace A033138

/-- `2*a(n-1)+a(n-3)-2*a(n-4)` -/
def P14745732241896857236.Spec : Prop :=
  ∀ n, P14745732241896857236.a n = A033138 (n + 1)

end A033138

/-! ## A033138.P4222323638086138965

`floor(2^(n+3)/7)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033138

/-- `floor(2^(n+3)/7)` -/
def P4222323638086138965.Spec : Prop :=
  ∀ n, P4222323638086138965.a n = A033138 (n + 1)

theorem P4222323638086138965.correct : P4222323638086138965.Spec := by
  intro n
  simp only [A033138, Nat.add_sub_cancel]

end A033138

/-! ## A033138.P10162222282138711119

`ogf(1/(1-2x-x^3+2x^4))`
-/

namespace A033138.P10162222282138711119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 0, -1, 2] n

end

end A033138.P10162222282138711119

namespace A033138

/-- `ogf(1/(1-2x-x^3+2x^4))` -/
def P10162222282138711119.Spec : Prop :=
  ∀ n, P10162222282138711119.a n = A033138 (n + 1)

end A033138

/-! ## A033138.P12355241148640744182

`or(2^n, a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A033138.P12355241148640744182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  Nat.lor (2 ^ n) (a (n - 3))

end

end A033138.P12355241148640744182

namespace A033138

/-- `or(2^n, a(n-3))` -/
def P12355241148640744182.Spec : Prop :=
  ∀ n, (P12355241148640744182.a n : ℤ) = A033138 (n + 1)

end A033138

/-! ## A033138.P526677821393700266

`xor(2^n, a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A033138.P526677821393700266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  Nat.xor (2 ^ n) (a (n - 3))

end

end A033138.P526677821393700266

namespace A033138

/-- `xor(2^n, a(n-3))` -/
def P526677821393700266.Spec : Prop :=
  ∀ n, (P526677821393700266.a n : ℤ) = A033138 (n + 1)

end A033138

/-! ## A033138.P5202762742793065141

`4%gcd(3, n)+2*a(n-1)` with `a(0)=1`
-/

namespace A033138.P5202762742793065141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 % Nat.gcd 3 n + 2 * a (n - 1)

end

end A033138.P5202762742793065141

namespace A033138

/-- `4%gcd(3, n)+2*a(n-1)` -/
def P5202762742793065141.Spec : Prop :=
  ∀ n, (P5202762742793065141.a n : ℤ) = A033138 (n + 1)

end A033138

/-! ## A033138.P5645196618314102407

`(n+1)%3+4*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A033138.P5645196618314102407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1) % 3 + 4 * a (n - 2)

end

end A033138.P5645196618314102407

namespace A033138

/-- `(n+1)%3+4*a(n-2)` -/
def P5645196618314102407.Spec : Prop :=
  ∀ n, (P5645196618314102407.a n : ℤ) = A033138 (n + 1)

end A033138

/-! ## A033138.P15404485993100222621

`4*a(n-2)-(2-n)%3` with `a(0)=1, a(1)=2`
-/

namespace A033138.P15404485993100222621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 2) - Int.tmod (2 - (n : ℤ)) 3

end

end A033138.P15404485993100222621

namespace A033138

/-- `4*a(n-2)-(2-n)%3` -/
def P15404485993100222621.Spec : Prop :=
  ∀ n, P15404485993100222621.a n = A033138 (n + 1)

end A033138

/-! ## A033138.P14443668910478579805

`val(a(n-1), 4)+2*a(n-1)` with `a(0)=1`
-/

namespace A033138.P14443668910478579805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.valuation (a (n - 1)) 4 + 2 * a (n - 1)

end

end A033138.P14443668910478579805

namespace A033138

/-- `val(a(n-1), 4)+2*a(n-1)` -/
def P14443668910478579805.Spec : Prop :=
  ∀ n, (P14443668910478579805.a n : ℤ) = A033138 (n + 1)

end A033138

/-! ## A033138.P10415180534967102842

`∑[2^n-a(n-1)-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A033138.P10415180534967102842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (2 ^ n : ℤ) - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033138.P10415180534967102842

namespace A033138

/-- `∑[2^n-a(n-1)-a(n-2)]` -/
def P10415180534967102842.Spec : Prop :=
  ∀ n, P10415180534967102842.a n = A033138 (n + 1)

end A033138

/-! ## A033138.P4188373718022560632

`floor(gcd(4, a(n-1))/3)+2*a(n-1)` with `a(0)=1`
-/

namespace A033138.P4188373718022560632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Int.gcd 4 (a (n - 1)) : ℚ) / 3⌋ + 2 * a (n - 1)

end

end A033138.P4188373718022560632

namespace A033138

/-- `floor(gcd(4, a(n-1))/3)+2*a(n-1)` -/
def P4188373718022560632.Spec : Prop :=
  ∀ n, P4188373718022560632.a n = A033138 (n + 1)

end A033138

/-! ## A033138.P13974660167554431007

`∑[A077947(n)]`
-/

namespace A033138.P13974660167554431007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033138.P13974660167554431007

namespace A033138

/-- `∑[A077947(n)]` -/
def P13974660167554431007.Spec : Prop :=
  ∀ n, P13974660167554431007.a n = A033138 (n + 1)

end A033138

/-! ## A033138.P10097638943678694049

`A155803(n+3)`
-/

namespace A033138.P10097638943678694049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (n + 3)

end

end A033138.P10097638943678694049

namespace A033138

/-- `A155803(n+3)` -/
def P10097638943678694049.Spec : Prop :=
  ∀ n, P10097638943678694049.a n = A033138 (n + 1)

end A033138

/-! ## A033138.P240672968839027697

`∑[abs(A077972(n))]`
-/

namespace A033138.P240672968839027697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077972 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033138.P240672968839027697

namespace A033138

/-- `∑[abs(A077972(n))]` -/
def P240672968839027697.Spec : Prop :=
  ∀ n, P240672968839027697.a n = A033138 (n + 1)

end A033138

/-! ## A033138.P2498093872558559417

`∑[∑[A078010(n)]]`
-/

namespace A033138.P2498093872558559417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033138.P2498093872558559417

namespace A033138

/-- `∑[∑[A078010(n)]]` -/
def P2498093872558559417.Spec : Prop :=
  ∀ n, P2498093872558559417.a n = A033138 (n + 1)

end A033138

/-! ## A033138.P17102606431140925714

`∑[abs(∑[A078043(n)])]`
-/

namespace A033138.P17102606431140925714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078043 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033138.P17102606431140925714

namespace A033138

/-- `∑[abs(∑[A078043(n)])]` -/
def P17102606431140925714.Spec : Prop :=
  ∀ n, P17102606431140925714.a n = A033138 (n + 1)

end A033138

/-! ## A033138.P16119046789702711633

`A046630(n+1)-1`
-/

namespace A033138.P16119046789702711633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 (n + 1) - 1

end

end A033138.P16119046789702711633

namespace A033138

/-- `A046630(n+1)-1` -/
def P16119046789702711633.Spec : Prop :=
  ∀ n, P16119046789702711633.a n = A033138 (n + 1)

end A033138

/-! ## A033138.P4279373536404449759

`record[A155803(abs(3-n))]`
-/

namespace A033138.P4279373536404449759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033138.P4279373536404449759

namespace A033138

/-- `record[A155803(abs(3-n))]` -/
def P4279373536404449759.Spec : Prop :=
  ∀ n, P4279373536404449759.a n = A033138 (n + 1)

end A033138

/-! ## A033138.P7782381741939222603

`∑[A152732(n+3)/2]`
-/

namespace A033138.P7782381741939222603
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152732 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033138.P7782381741939222603

namespace A033138

/-- `∑[A152732(n+3)/2]` -/
def P7782381741939222603.Spec : Prop :=
  ∀ n, P7782381741939222603.a n = (A033138 (n + 1) : ℚ)

end A033138

/-!
# A033139: Base 3 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,0.

The programs for A033139, the canonical program `A033139.P3466657549977775736` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033139 has offset 1).

The definition of A033139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033139.P3466657549977775736

`floor(9*3^(n+1)/26)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033139

/-- `floor(9*3^(n+1)/26)` -/
def P3466657549977775736.Spec : Prop :=
  ∀ n, P3466657549977775736.a n = A033139 (n + 1)

theorem P3466657549977775736.correct : P3466657549977775736.Spec := by
  intro n
  simp only [A033139, Nat.add_sub_cancel]

end A033139

/-! ## A033139.P14474710225673768710

`ogf(1/(1-3x-x^3+3x^4))`
-/

namespace A033139.P14474710225673768710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 0, -1, 3] n

end

end A033139.P14474710225673768710

namespace A033139

/-- `ogf(1/(1-3x-x^3+3x^4))` -/
def P14474710225673768710.Spec : Prop :=
  ∀ n, P14474710225673768710.a n = A033139 (n + 1)

end A033139

/-! ## A033139.P13681348155026799668

`a(n-3)+3^n` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A033139.P13681348155026799668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  a (n - 3) + 3 ^ n

end

end A033139.P13681348155026799668

namespace A033139

/-- `a(n-3)+3^n` -/
def P13681348155026799668.Spec : Prop :=
  ∀ n, (P13681348155026799668.a n : ℤ) = A033139 (n + 1)

end A033139

/-! ## A033139.P12752825559653665020

`char[3*n]+3*a(n-1)` with `a(0)=1`
-/

namespace A033139.P12752825559653665020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 3 * a (n - 1)

end

end A033139.P12752825559653665020

namespace A033139

/-- `char[3*n]+3*a(n-1)` -/
def P12752825559653665020.Spec : Prop :=
  ∀ n, (P12752825559653665020.a n : ℤ) = A033139 (n + 1)

end A033139

/-! ## A033139.P690396079729451889

`3*a(n-1)+1-n²%3` with `a(0)=1`
-/

namespace A033139.P690396079729451889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + 1 - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A033139.P690396079729451889

namespace A033139

/-- `3*a(n-1)+1-n²%3` -/
def P690396079729451889.Spec : Prop :=
  ∀ n, P690396079729451889.a n = A033139 (n + 1)

end A033139

/-! ## A033139.P13640770474228202641

`∑[3^n-a(n-1)-a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A033139.P13640770474228202641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (3 ^ n : ℤ) - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033139.P13640770474228202641

namespace A033139

/-- `∑[3^n-a(n-1)-a(n-2)]` -/
def P13640770474228202641.Spec : Prop :=
  ∀ n, P13640770474228202641.a n = A033139 (n + 1)

end A033139

/-! ## A033139.P10858138021370873555

`∑[3*a(n-1)]-(a(n-1)+a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A033139.P10858138021370873555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A033139.P10858138021370873555

namespace A033139

/-- `∑[3*a(n-1)]-(a(n-1)+a(n-2))` -/
def P10858138021370873555.Spec : Prop :=
  ∀ n, P10858138021370873555.a n = A033139 (n + 1)

end A033139

/-! ## A033139.P4551682910673798665

`∑[3*a(n-1)]-a(n-1)-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A033139.P4551682910673798665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1) - a (n - 2)

end

end A033139.P4551682910673798665

namespace A033139

/-- `∑[3*a(n-1)]-a(n-1)-a(n-2)` -/
def P4551682910673798665.Spec : Prop :=
  ∀ n, P4551682910673798665.a n = A033139 (n + 1)

end A033139

/-! ## A033139.P15373074343921798337

`∑[A077834(n)]`
-/

namespace A033139.P15373074343921798337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033139.P15373074343921798337

namespace A033139

/-- `∑[A077834(n)]` -/
def P15373074343921798337.Spec : Prop :=
  ∀ n, P15373074343921798337.a n = A033139 (n + 1)

end A033139

/-! ## A033139.P2829560494214888381

`∑[∑[A077842(n)]]`
-/

namespace A033139.P2829560494214888381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033139.P2829560494214888381

namespace A033139

/-- `∑[∑[A077842(n)]]` -/
def P2829560494214888381.Spec : Prop :=
  ∀ n, P2829560494214888381.a n = A033139 (n + 1)

end A033139

/-! ## A033139.P2744449376252192937

`Δ[A368344(n+2)]`
-/

namespace A033139.P2744449376252192937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368344 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033139.P2744449376252192937

namespace A033139

/-- `Δ[A368344(n+2)]` -/
def P2744449376252192937.Spec : Prop :=
  ∀ n, P2744449376252192937.a n = A033139 (n + 1)

end A033139

/-! ## A033139.P4079185525147168569

`A000244(n)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A033139.P4079185525147168569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  A000244 n + a (n - 3)

end

end A033139.P4079185525147168569

namespace A033139

/-- `A000244(n)+a(n-3)` -/
def P4079185525147168569.Spec : Prop :=
  ∀ n, P4079185525147168569.a n = A033139 (n + 1)

end A033139

/-! ## A033139.P8371456871213047228

`A033130(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A033139.P8371456871213047228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033130 (n + 1) - a (n - 1)

end

end A033139.P8371456871213047228

namespace A033139

/-- `A033130(n+1)-a(n-1)` -/
def P8371456871213047228.Spec : Prop :=
  ∀ n, P8371456871213047228.a n = A033139 (n + 1)

end A033139

/-! ## A033139.P10252487434945595899

`A033121(n+1)+A368344(n)-A368344(n+1)`
-/

namespace A033139.P10252487434945595899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033121 (n + 1) + (A368344 n - A368344 (n + 1))

end

end A033139.P10252487434945595899

namespace A033139

/-- `A033121(n+1)+A368344(n)-A368344(n+1)` -/
def P10252487434945595899.Spec : Prop :=
  ∀ n, P10252487434945595899.a n = A033139 (n + 1)

end A033139

/-! ## A033139.P727062041299063508

`∑[A152733(n+3)/3]`
-/

namespace A033139.P727062041299063508
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152733 (n + 3) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033139.P727062041299063508

namespace A033139

/-- `∑[A152733(n+3)/3]` -/
def P727062041299063508.Spec : Prop :=
  ∀ n, P727062041299063508.a n = (A033139 (n + 1) : ℚ)

end A033139

/-! ## A033139.P10563830963620079773

`(A263334(n+1)-1)/2`
-/

namespace A033139.P10563830963620079773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263334 (n + 1) - 1 : ℚ) / 2

end

end A033139.P10563830963620079773

namespace A033139

/-- `(A263334(n+1)-1)/2` -/
def P10563830963620079773.Spec : Prop :=
  ∀ n, P10563830963620079773.a n = (A033139 (n + 1) : ℚ)

end A033139

/-! ## A033139.P2351297142308256448

`A037512(n+1)-A033121(n+1)`
-/

namespace A033139.P2351297142308256448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037512 (n + 1) - A033121 (n + 1)

end

end A033139.P2351297142308256448

namespace A033139

/-- `A037512(n+1)-A033121(n+1)` -/
def P2351297142308256448.Spec : Prop :=
  ∀ n, P2351297142308256448.a n = A033139 (n + 1)

end A033139

/-! ## A033139.P1626503818929750708

`A037520(n+1)-A033130(n+1)`
-/

namespace A033139.P1626503818929750708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037520 (n + 1) - A033130 (n + 1)

end

end A033139.P1626503818929750708

namespace A033139

/-- `A037520(n+1)-A033130(n+1)` -/
def P1626503818929750708.Spec : Prop :=
  ∀ n, P1626503818929750708.a n = A033139 (n + 1)

end A033139

/-! ## A033139.P15505548616961240730

`A037560(n+1)-A037536(n+1)`
-/

namespace A033139.P15505548616961240730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037560 (n + 1) - A037536 (n + 1)

end

end A033139.P15505548616961240730

namespace A033139

/-- `A037560(n+1)-A037536(n+1)` -/
def P15505548616961240730.Spec : Prop :=
  ∀ n, P15505548616961240730.a n = A033139 (n + 1)

end A033139

/-! ## A033139.P11491300503465967134

`A037568(n+1)-A037528(n+1)`
-/

namespace A033139.P11491300503465967134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037568 (n + 1) - A037528 (n + 1)

end

end A033139.P11491300503465967134

namespace A033139

/-- `A037568(n+1)-A037528(n+1)` -/
def P11491300503465967134.Spec : Prop :=
  ∀ n, P11491300503465967134.a n = A033139 (n + 1)

end A033139

/-!
# A033140: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,0.

The programs for A033140, the canonical program `A033140.P17669525988068157691` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033140 has offset 1).

The definition of A033140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033140.P17669525988068157691

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=65`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033140

/-- `4*a(n-1)+a(n-3)-4*a(n-4)` -/
def P17669525988068157691.Spec : Prop :=
  ∀ n, P17669525988068157691.a n = A033140 (n + 1)

theorem P17669525988068157691.correct : P17669525988068157691.Spec := by
  intro n
  simp only [A033140, Nat.add_sub_cancel]

end A033140

/-! ## A033140.P8836769649634918912

`floor(4^(n+3)/63)`
-/

namespace A033140.P8836769649634918912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ (n + 3) : ℚ) / 63⌋

end

end A033140.P8836769649634918912

namespace A033140

/-- `floor(4^(n+3)/63)` -/
def P8836769649634918912.Spec : Prop :=
  ∀ n, P8836769649634918912.a n = A033140 (n + 1)

end A033140

/-! ## A033140.P8378529594450829333

`ogf(1/(1-4x-x^3+4x^4))`
-/

namespace A033140.P8378529594450829333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 0, -1, 4] n

end

end A033140.P8378529594450829333

namespace A033140

/-- `ogf(1/(1-4x-x^3+4x^4))` -/
def P8378529594450829333.Spec : Prop :=
  ∀ n, P8378529594450829333.a n = A033140 (n + 1)

end A033140

/-! ## A033140.P17518861104147811690

`a(n-3)+4^n` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A033140.P17518861104147811690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 16] fun n a =>
  a (n - 3) + 4 ^ n

end

end A033140.P17518861104147811690

namespace A033140

/-- `a(n-3)+4^n` -/
def P17518861104147811690.Spec : Prop :=
  ∀ n, (P17518861104147811690.a n : ℤ) = A033140 (n + 1)

end A033140

/-! ## A033140.P9844854629569624239

`xor(4*a(n-1), char[3*n])` with `a(0)=1`
-/

namespace A033140.P9844854629569624239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (4 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A033140.P9844854629569624239

namespace A033140

/-- `xor(4*a(n-1), char[3*n])` -/
def P9844854629569624239.Spec : Prop :=
  ∀ n, (P9844854629569624239.a n : ℤ) = A033140 (n + 1)

end A033140

/-! ## A033140.P11590060765348142755

`4%gcd(3, n)+4*a(n-1)` with `a(0)=1`
-/

namespace A033140.P11590060765348142755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 % Nat.gcd 3 n + 4 * a (n - 1)

end

end A033140.P11590060765348142755

namespace A033140

/-- `4%gcd(3, n)+4*a(n-1)` -/
def P11590060765348142755.Spec : Prop :=
  ∀ n, (P11590060765348142755.a n : ℤ) = A033140 (n + 1)

end A033140

/-! ## A033140.P15781625007975394405

`1-n²%3+4*a(n-1)` with `a(0)=1`
-/

namespace A033140.P15781625007975394405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((n ^ 2 % 3 : ℕ) : ℤ) + 4 * a (n - 1)

end

end A033140.P15781625007975394405

namespace A033140

/-- `1-n²%3+4*a(n-1)` -/
def P15781625007975394405.Spec : Prop :=
  ∀ n, P15781625007975394405.a n = A033140 (n + 1)

end A033140

/-! ## A033140.P4423205807160212198

`∑[n+1]%3+4*a(n-1)` with `a(0)=1`
-/

namespace A033140.P4423205807160212198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 3 + 4 * a (n - 1)

end

end A033140.P4423205807160212198

namespace A033140

/-- `∑[n+1]%3+4*a(n-1)` -/
def P4423205807160212198.Spec : Prop :=
  ∀ n, (P4423205807160212198.a n : ℤ) = A033140 (n + 1)

end A033140

/-! ## A033140.P5270523006862420109

`∑[4^n-a(n-1)-a(n-2)]` with `a(0)=1, a(1)=3`
-/

namespace A033140.P5270523006862420109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (4 ^ n : ℤ) - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033140.P5270523006862420109

namespace A033140

/-- `∑[4^n-a(n-1)-a(n-2)]` -/
def P5270523006862420109.Spec : Prop :=
  ∀ n, P5270523006862420109.a n = A033140 (n + 1)

end A033140

/-! ## A033140.P7015140443352679750

`A195904(Δ[n²])`
-/

namespace A033140.P7015140443352679750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195904 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A033140.P7015140443352679750

namespace A033140

/-- `A195904(Δ[n²])` -/
def P7015140443352679750.Spec : Prop :=
  ∀ n, P7015140443352679750.a n = A033140 (n + 1)

end A033140

/-! ## A033140.P3681750516896660889

`∑[A178872(n+1)]`
-/

namespace A033140.P3681750516896660889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033140.P3681750516896660889

namespace A033140

/-- `∑[A178872(n+1)]` -/
def P3681750516896660889.Spec : Prop :=
  ∀ n, P3681750516896660889.a n = A033140 (n + 1)

end A033140

/-! ## A033140.P16316181268579414068

`∑[∑[A077947(2*n)]]`
-/

namespace A033140.P16316181268579414068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033140.P16316181268579414068

namespace A033140

/-- `∑[∑[A077947(2*n)]]` -/
def P16316181268579414068.Spec : Prop :=
  ∀ n, P16316181268579414068.a n = A033140 (n + 1)

end A033140

/-! ## A033140.P243113108497891502

`∑[∑[A077972(2*n)]]`
-/

namespace A033140.P243113108497891502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077972 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033140.P243113108497891502

namespace A033140

/-- `∑[∑[A077972(2*n)]]` -/
def P243113108497891502.Spec : Prop :=
  ∀ n, P243113108497891502.a n = A033140 (n + 1)

end A033140

/-! ## A033140.P11570910342905726546

`∑[∑[∑[A122552(2*n)]]]`
-/

namespace A033140.P11570910342905726546
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122552 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033140.P11570910342905726546

namespace A033140

/-- `∑[∑[∑[A122552(2*n)]]]` -/
def P11570910342905726546.Spec : Prop :=
  ∀ n, P11570910342905726546.a n = A033140 (n + 1)

end A033140

/-! ## A033140.P12909362176325992567

`A000302(n)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A033140.P12909362176325992567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 16] fun n a =>
  A000302 n + a (n - 3)

end

end A033140.P12909362176325992567

namespace A033140

/-- `A000302(n)+a(n-3)` -/
def P12909362176325992567.Spec : Prop :=
  ∀ n, P12909362176325992567.a n = A033140 (n + 1)

end A033140

/-! ## A033140.P7265211574420867794

`and(A037497(n+1), A272743(n))`
-/

namespace A033140.P7265211574420867794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037497 (n + 1)) (A272743 n)

end

end A033140.P7265211574420867794

namespace A033140

/-- `and(A037497(n+1), A272743(n))` -/
def P7265211574420867794.Spec : Prop :=
  ∀ n, P7265211574420867794.a n = A033140 (n + 1)

end A033140

/-! ## A033140.P12843474839065753347

`and(A033122(n+1), A037497(n+1))`
-/

namespace A033140.P12843474839065753347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033122 (n + 1)) (A037497 (n + 1))

end

end A033140.P12843474839065753347

namespace A033140

/-- `and(A033122(n+1), A037497(n+1))` -/
def P12843474839065753347.Spec : Prop :=
  ∀ n, P12843474839065753347.a n = A033140 (n + 1)

end A033140

/-! ## A033140.P18077361731168976140

`A113405(2*(n+1))+A077947(2*n)`
-/

namespace A033140.P18077361731168976140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (2 * (n + 1)) + A077947 (2 * n)

end

end A033140.P18077361731168976140

namespace A033140

/-- `A113405(2*(n+1))+A077947(2*n)` -/
def P18077361731168976140.Spec : Prop :=
  ∀ n, P18077361731168976140.a n = A033140 (n + 1)

end A033140

/-! ## A033140.P4663247082458928775

`A113405(2*(n+1))+A077972(2*n)`
-/

namespace A033140.P4663247082458928775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (2 * (n + 1)) + A077972 (2 * n)

end

end A033140.P4663247082458928775

namespace A033140

/-- `A113405(2*(n+1))+A077972(2*n)` -/
def P4663247082458928775.Spec : Prop :=
  ∀ n, P4663247082458928775.a n = A033140 (n + 1)

end A033140

/-! ## A033140.P8313738213546318582

`and(A033138(2*n+1), A267045(2*n))`
-/

namespace A033140.P8313738213546318582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033138 (2 * n + 1)) (A267045 (2 * n))

end

end A033140.P8313738213546318582

namespace A033140

/-- `and(A033138(2*n+1), A267045(2*n))` -/
def P8313738213546318582.Spec : Prop :=
  ∀ n, P8313738213546318582.a n = A033140 (n + 1)

end A033140

/-!
# A033141: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,0.

The programs for A033141, the canonical program `A033141.P11305019978706514664` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033141 has offset 1).

The definition of A033141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033141.P11305019978706514664

`5*a(n-1)+a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=126`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033141

/-- `5*a(n-1)+a(n-3)-5*a(n-4)` -/
def P11305019978706514664.Spec : Prop :=
  ∀ n, P11305019978706514664.a n = A033141 (n + 1)

theorem P11305019978706514664.correct : P11305019978706514664.Spec := by
  intro n
  simp only [A033141, Nat.add_sub_cancel]

end A033141

/-! ## A033141.P843724000182951478

`floor(5^(n+3)/124)`
-/

namespace A033141.P843724000182951478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 ^ (n + 3) : ℚ) / 124⌋

end

end A033141.P843724000182951478

namespace A033141

/-- `floor(5^(n+3)/124)` -/
def P843724000182951478.Spec : Prop :=
  ∀ n, P843724000182951478.a n = A033141 (n + 1)

end A033141

/-! ## A033141.P6974932606803653262

`ogf(1/(1-5x-x^3+5x^4))`
-/

namespace A033141.P6974932606803653262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 0, -1, 5] n

end

end A033141.P6974932606803653262

namespace A033141

/-- `ogf(1/(1-5x-x^3+5x^4))` -/
def P6974932606803653262.Spec : Prop :=
  ∀ n, P6974932606803653262.a n = A033141 (n + 1)

end A033141

/-! ## A033141.P11593062401061331038

`char[3*n]+5*a(n-1)` with `a(0)=1`
-/

namespace A033141.P11593062401061331038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 5 * a (n - 1)

end

end A033141.P11593062401061331038

namespace A033141

/-- `char[3*n]+5*a(n-1)` -/
def P11593062401061331038.Spec : Prop :=
  ∀ n, (P11593062401061331038.a n : ℤ) = A033141 (n + 1)

end A033141

/-! ## A033141.P10074595495426554905

`∑[5^n-(a(n-1)+a(n-2))]` with `a(0)=1, a(1)=4`
-/

namespace A033141.P10074595495426554905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  (5 ^ n : ℤ) - (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033141.P10074595495426554905

namespace A033141

/-- `∑[5^n-(a(n-1)+a(n-2))]` -/
def P10074595495426554905.Spec : Prop :=
  ∀ n, P10074595495426554905.a n = A033141 (n + 1)

end A033141

/-! ## A033141.P9932923084295609556

`∑[5^n-a(n-1)-a(n-2)]` with `a(0)=1, a(1)=4`
-/

namespace A033141.P9932923084295609556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  (5 ^ n : ℤ) - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033141.P9932923084295609556

namespace A033141

/-- `∑[5^n-a(n-1)-a(n-2)]` -/
def P9932923084295609556.Spec : Prop :=
  ∀ n, P9932923084295609556.a n = A033141 (n + 1)

end A033141

/-! ## A033141.P7913410599500753430

`A000351(n)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=25`
-/

namespace A033141.P7913410599500753430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 25] fun n a =>
  A000351 n + a (n - 3)

end

end A033141.P7913410599500753430

namespace A033141

/-- `A000351(n)+a(n-3)` -/
def P7913410599500753430.Spec : Prop :=
  ∀ n, P7913410599500753430.a n = A033141 (n + 1)

end A033141

/-! ## A033141.P9557871274806745985

`∑[5*a(n-1)]-(a(n-1)+a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A033141.P9557871274806745985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A033141.P9557871274806745985

namespace A033141

/-- `∑[5*a(n-1)]-(a(n-1)+a(n-2))` -/
def P9557871274806745985.Spec : Prop :=
  ∀ n, P9557871274806745985.a n = A033141 (n + 1)

end A033141

/-! ## A033141.P5816634699013426923

`∑[5*a(n-1)]-a(n-1)-a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A033141.P5816634699013426923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1) - a (n - 2)

end

end A033141.P5816634699013426923

namespace A033141

/-- `∑[5*a(n-1)]-a(n-1)-a(n-2)` -/
def P5816634699013426923.Spec : Prop :=
  ∀ n, P5816634699013426923.a n = A033141 (n + 1)

end A033141

/-! ## A033141.P11714014716402844957

`A033132(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A033141.P11714014716402844957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033132 (n + 1) - a (n - 1)

end

end A033141.P11714014716402844957

namespace A033141

/-- `A033132(n+1)-a(n-1)` -/
def P11714014716402844957.Spec : Prop :=
  ∀ n, P11714014716402844957.a n = A033141 (n + 1)

end A033141

/-! ## A033141.P5973610013915499783

`A037514(n+1)-A033123(n+1)`
-/

namespace A033141.P5973610013915499783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037514 (n + 1) - A033123 (n + 1)

end

end A033141.P5973610013915499783

namespace A033141

/-- `A037514(n+1)-A033123(n+1)` -/
def P5973610013915499783.Spec : Prop :=
  ∀ n, P5973610013915499783.a n = A033141 (n + 1)

end A033141

/-! ## A033141.P3417279545314147069

`A037522(n+1)-A033132(n+1)`
-/

namespace A033141.P3417279545314147069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037522 (n + 1) - A033132 (n + 1)

end

end A033141.P3417279545314147069

namespace A033141

/-- `A037522(n+1)-A033132(n+1)` -/
def P3417279545314147069.Spec : Prop :=
  ∀ n, P3417279545314147069.a n = A033141 (n + 1)

end A033141

/-! ## A033141.P11153827521973184341

`A037619(n+1)-A037591(n+1)`
-/

namespace A033141.P11153827521973184341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037619 (n + 1) - A037591 (n + 1)

end

end A033141.P11153827521973184341

namespace A033141

/-- `A037619(n+1)-A037591(n+1)` -/
def P11153827521973184341.Spec : Prop :=
  ∀ n, P11153827521973184341.a n = A033141 (n + 1)

theorem P11153827521973184341.correct : P11153827521973184341.Spec := by
  intro n
  simp only [A033141, Nat.add_sub_cancel, A033141.P11153827521973184341.a, A033141.P11305019978706514664.a, A037591, A037591.P17676027445311115704.a, A037619, A037619.P18037895035531182528.a, A037554, A037554.P11989371830114067518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033141

/-! ## A033141.P15914378315419561416

`A037626(n+1)-A037598(n+1)`
-/

namespace A033141.P15914378315419561416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037626 (n + 1) - A037598 (n + 1)

end

end A033141.P15914378315419561416

namespace A033141

/-- `A037626(n+1)-A037598(n+1)` -/
def P15914378315419561416.Spec : Prop :=
  ∀ n, P15914378315419561416.a n = A033141 (n + 1)

theorem P15914378315419561416.correct : P15914378315419561416.Spec := by
  intro n
  simp only [A033141, Nat.add_sub_cancel, A033141.P15914378315419561416.a, A033141.P11305019978706514664.a, A037598, A037598.P14435589116521687136.f1, A037598.P14435589116521687136.a, A037626, A037626.P12681275956258568283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033141

/-! ## A033141.P2487619681487113580

`∑[A037522(n+1)-A037506(n+1)]`
-/

namespace A033141.P2487619681487113580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037522 (n + 1) - A037506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033141.P2487619681487113580

namespace A033141

/-- `∑[A037522(n+1)-A037506(n+1)]` -/
def P2487619681487113580.Spec : Prop :=
  ∀ n, P2487619681487113580.a n = A033141 (n + 1)

end A033141

/-! ## A033141.P1797596575918056979

`∑[A037633(n+1)-A037605(n+1)]`
-/

namespace A033141.P1797596575918056979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037633 (n + 1) - A037605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033141.P1797596575918056979

namespace A033141

/-- `∑[A037633(n+1)-A037605(n+1)]` -/
def P1797596575918056979.Spec : Prop :=
  ∀ n, P1797596575918056979.a n = A033141 (n + 1)

end A033141

/-! ## A033141.P8180658758546943519

`A037668(n+1)-2*A033132(n+1)`
-/

namespace A033141.P8180658758546943519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037668 (n + 1) - 2 * A033132 (n + 1)

end

end A033141.P8180658758546943519

namespace A033141

/-- `A037668(n+1)-2*A033132(n+1)` -/
def P8180658758546943519.Spec : Prop :=
  ∀ n, P8180658758546943519.a n = A033141 (n + 1)

end A033141

/-! ## A033141.P5466439527409795121

`A033132(n+1)+A037514(n+1)-A037554(n+1)`
-/

namespace A033141.P5466439527409795121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033132 (n + 1) + (A037514 (n + 1) - A037554 (n + 1))

end

end A033141.P5466439527409795121

namespace A033141

/-- `A033132(n+1)+A037514(n+1)-A037554(n+1)` -/
def P5466439527409795121.Spec : Prop :=
  ∀ n, P5466439527409795121.a n = A033141 (n + 1)

end A033141

/-! ## A033141.P2195291210718707979

`A037554(n+2)-A037514(n+2)`
-/

namespace A033141.P2195291210718707979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037554 (n + 2) - A037514 (n + 2)

end

end A033141.P2195291210718707979

namespace A033141

/-- `A037554(n+2)-A037514(n+2)` -/
def P2195291210718707979.Spec : Prop :=
  ∀ n, P2195291210718707979.a n = A033141 (n + 1)

end A033141

/-!
# A033142: Base-6 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,0.

The programs for A033142, the canonical program `A033142.P13211676816256555068` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033142 has offset 1).

The definition of A033142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033142.P13211676816256555068

`6*a(n-1)+a(n-3)-6*a(n-4)` with `a(0)=1, a(1)=6, a(2)=36, a(3)=217`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033142

/-- `6*a(n-1)+a(n-3)-6*a(n-4)` -/
def P13211676816256555068.Spec : Prop :=
  ∀ n, P13211676816256555068.a n = A033142 (n + 1)

theorem P13211676816256555068.correct : P13211676816256555068.Spec := by
  intro n
  simp only [A033142, Nat.add_sub_cancel]

end A033142

/-! ## A033142.P11292070082159334104

`floor(36/215*6^(n+1))`
-/

namespace A033142.P11292070082159334104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(36 : ℚ) / 215 * (6 ^ (n + 1) : ℚ)⌋

end

end A033142.P11292070082159334104

namespace A033142

/-- `floor(36/215*6^(n+1))` -/
def P11292070082159334104.Spec : Prop :=
  ∀ n, P11292070082159334104.a n = A033142 (n + 1)

end A033142

/-! ## A033142.P12002784564976052643

`ogf(1/(1-6x-x^3+6x^4))`
-/

namespace A033142.P12002784564976052643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 0, -1, 6] n

end

end A033142.P12002784564976052643

namespace A033142

/-- `ogf(1/(1-6x-x^3+6x^4))` -/
def P12002784564976052643.Spec : Prop :=
  ∀ n, P12002784564976052643.a n = A033142 (n + 1)

end A033142

/-! ## A033142.P8552931318975451982

`char[3*n]+6*a(n-1)` with `a(0)=1`
-/

namespace A033142.P8552931318975451982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 6 * a (n - 1)

end

end A033142.P8552931318975451982

namespace A033142

/-- `char[3*n]+6*a(n-1)` -/
def P8552931318975451982.Spec : Prop :=
  ∀ n, (P8552931318975451982.a n : ℤ) = A033142 (n + 1)

end A033142

/-! ## A033142.P7067095563542926627

`or(6*a(n-1), char[3*n])` with `a(0)=1`
-/

namespace A033142.P7067095563542926627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (6 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A033142.P7067095563542926627

namespace A033142

/-- `or(6*a(n-1), char[3*n])` -/
def P7067095563542926627.Spec : Prop :=
  ∀ n, (P7067095563542926627.a n : ℤ) = A033142 (n + 1)

end A033142

/-! ## A033142.P12110057376335704794

`xor(6*a(n-1), char[3*n])` with `a(0)=1`
-/

namespace A033142.P12110057376335704794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (6 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A033142.P12110057376335704794

namespace A033142

/-- `xor(6*a(n-1), char[3*n])` -/
def P12110057376335704794.Spec : Prop :=
  ∀ n, (P12110057376335704794.a n : ℤ) = A033142 (n + 1)

end A033142

/-! ## A033142.P7490532586037004423

`6*a(n-1)+1-n²%3` with `a(0)=1`
-/

namespace A033142.P7490532586037004423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) + (1 - ((n ^ 2 % 3 : ℕ) : ℤ))

end

end A033142.P7490532586037004423

namespace A033142

/-- `6*a(n-1)+1-n²%3` -/
def P7490532586037004423.Spec : Prop :=
  ∀ n, P7490532586037004423.a n = A033142 (n + 1)

end A033142

/-! ## A033142.P754697612369671035

`A000400(n)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=36`
-/

namespace A033142.P754697612369671035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 36] fun n a =>
  A000400 n + a (n - 3)

end

end A033142.P754697612369671035

namespace A033142

/-- `A000400(n)+a(n-3)` -/
def P754697612369671035.Spec : Prop :=
  ∀ n, P754697612369671035.a n = A033142 (n + 1)

end A033142

/-! ## A033142.P17188466166126570128

`A033133(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A033142.P17188466166126570128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033133 (n + 1) - a (n - 1)

end

end A033142.P17188466166126570128

namespace A033142

/-- `A033133(n+1)-a(n-1)` -/
def P17188466166126570128.Spec : Prop :=
  ∀ n, P17188466166126570128.a n = A033142 (n + 1)

end A033142

/-! ## A033142.P17139342714061661844

`A037515(n+1)-A033124(n+1)`
-/

namespace A033142.P17139342714061661844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037515 (n + 1) - A033124 (n + 1)

end

end A033142.P17139342714061661844

namespace A033142

/-- `A037515(n+1)-A033124(n+1)` -/
def P17139342714061661844.Spec : Prop :=
  ∀ n, P17139342714061661844.a n = A033142 (n + 1)

end A033142

/-! ## A033142.P13755401750836884799

`A037523(n+1)-A033133(n+1)`
-/

namespace A033142.P13755401750836884799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037523 (n + 1) - A033133 (n + 1)

end

end A033142.P13755401750836884799

namespace A033142

/-- `A037523(n+1)-A033133(n+1)` -/
def P13755401750836884799.Spec : Prop :=
  ∀ n, P13755401750836884799.a n = A033142 (n + 1)

end A033142

/-! ## A033142.P14543901477927656634

`A037563(n+1)-A037539(n+1)`
-/

namespace A033142.P14543901477927656634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037563 (n + 1) - A037539 (n + 1)

end

end A033142.P14543901477927656634

namespace A033142

/-- `A037563(n+1)-A037539(n+1)` -/
def P14543901477927656634.Spec : Prop :=
  ∀ n, P14543901477927656634.a n = A033142 (n + 1)

end A033142

/-! ## A033142.P897571430023387550

`A037620(n+1)-A037592(n+1)`
-/

namespace A033142.P897571430023387550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037620 (n + 1) - A037592 (n + 1)

end

end A033142.P897571430023387550

namespace A033142

/-- `A037620(n+1)-A037592(n+1)` -/
def P897571430023387550.Spec : Prop :=
  ∀ n, P897571430023387550.a n = A033142 (n + 1)

end A033142

/-! ## A033142.P9132588316259355633

`∑[A037523(n+1)-A037507(n+1)]`
-/

namespace A033142.P9132588316259355633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037523 (n + 1) - A037507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033142.P9132588316259355633

namespace A033142

/-- `∑[A037523(n+1)-A037507(n+1)]` -/
def P9132588316259355633.Spec : Prop :=
  ∀ n, P9132588316259355633.a n = A033142 (n + 1)

end A033142

/-! ## A033142.P2434067020316146004

`∑[A037571(n+1)-A037547(n+1)]`
-/

namespace A033142.P2434067020316146004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037571 (n + 1) - A037547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033142.P2434067020316146004

namespace A033142

/-- `∑[A037571(n+1)-A037547(n+1)]` -/
def P2434067020316146004.Spec : Prop :=
  ∀ n, P2434067020316146004.a n = A033142 (n + 1)

end A033142

/-! ## A033142.P379615260964854938

`∑[A037634(n+1)-A037606(n+1)]`
-/

namespace A033142.P379615260964854938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037634 (n + 1) - A037606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033142.P379615260964854938

namespace A033142

/-- `∑[A037634(n+1)-A037606(n+1)]` -/
def P379615260964854938.Spec : Prop :=
  ∀ n, P379615260964854938.a n = A033142 (n + 1)

end A033142

/-! ## A033142.P17357440638801234778

`2*A033124(n+1)-A037499(n+1)`
-/

namespace A033142.P17357440638801234778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033124 (n + 1) - A037499 (n + 1)

end

end A033142.P17357440638801234778

namespace A033142

/-- `2*A033124(n+1)-A037499(n+1)` -/
def P17357440638801234778.Spec : Prop :=
  ∀ n, P17357440638801234778.a n = A033142 (n + 1)

end A033142

/-! ## A033142.P960298388448123735

`2*A033133(n+1)-A037507(n+1)`
-/

namespace A033142.P960298388448123735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033133 (n + 1) - A037507 (n + 1)

end

end A033142.P960298388448123735

namespace A033142

/-- `2*A033133(n+1)-A037507(n+1)` -/
def P960298388448123735.Spec : Prop :=
  ∀ n, P960298388448123735.a n = A033142 (n + 1)

end A033142

/-! ## A033142.P4184437053227461645

`∑[∑[A037620(n+1)-A037547(n+1)]]`
-/

namespace A033142.P4184437053227461645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037620 (n + 1) - A037547 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033142.P4184437053227461645

namespace A033142

/-- `∑[∑[A037620(n+1)-A037547(n+1)]]` -/
def P4184437053227461645.Spec : Prop :=
  ∀ n, P4184437053227461645.a n = A033142 (n + 1)

end A033142

/-! ## A033142.P17932934776808429174

`∑[round(A037627(n+1)/3)]`
-/

namespace A033142.P17932934776808429174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A037627 (n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033142.P17932934776808429174

namespace A033142

/-- `∑[round(A037627(n+1)/3)]` -/
def P17932934776808429174.Spec : Prop :=
  ∀ n, P17932934776808429174.a n = A033142 (n + 1)

end A033142

/-!
# A033143: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,0.

The programs for A033143, the canonical program `A033143.P17446137891870727698` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033143 has offset 1).

The definition of A033143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033143.P17446137891870727698

`7*a(n-1)+a(n-3)-7*a(n-4)` with `a(0)=1, a(1)=7, a(2)=49, a(3)=344`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033143

/-- `7*a(n-1)+a(n-3)-7*a(n-4)` -/
def P17446137891870727698.Spec : Prop :=
  ∀ n, P17446137891870727698.a n = A033143 (n + 1)

theorem P17446137891870727698.correct : P17446137891870727698.Spec := by
  intro n
  simp only [A033143, Nat.add_sub_cancel]

end A033143

/-! ## A033143.P13579219717962819780

`floor(7^(n+3)/342)`
-/

namespace A033143.P13579219717962819780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 ^ (n + 3) : ℚ) / 342⌋

end

end A033143.P13579219717962819780

namespace A033143

/-- `floor(7^(n+3)/342)` -/
def P13579219717962819780.Spec : Prop :=
  ∀ n, P13579219717962819780.a n = A033143 (n + 1)

end A033143

/-! ## A033143.P7935791309360346582

`ogf(1/(1-7x-x^3+7x^4))`
-/

namespace A033143.P7935791309360346582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -7, 0, -1, 7] n

end

end A033143.P7935791309360346582

namespace A033143

/-- `ogf(1/(1-7x-x^3+7x^4))` -/
def P7935791309360346582.Spec : Prop :=
  ∀ n, P7935791309360346582.a n = A033143 (n + 1)

end A033143

/-! ## A033143.P1066792570276285531

`char[3*n]+7*a(n-1)` with `a(0)=1`
-/

namespace A033143.P1066792570276285531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 7 * a (n - 1)

end

end A033143.P1066792570276285531

namespace A033143

/-- `char[3*n]+7*a(n-1)` -/
def P1066792570276285531.Spec : Prop :=
  ∀ n, (P1066792570276285531.a n : ℤ) = A033143 (n + 1)

end A033143

/-! ## A033143.P3840069144994042459

`or(8*a(n-1), char[3*n])-a(n-1)` with `a(0)=1`
-/

namespace A033143.P3840069144994042459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (8 * a (n - 1)) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1)

end

end A033143.P3840069144994042459

namespace A033143

/-- `or(8*a(n-1), char[3*n])-a(n-1)` -/
def P3840069144994042459.Spec : Prop :=
  ∀ n, P3840069144994042459.a n = A033143 (n + 1)

end A033143

/-! ## A033143.P1953703198411783849

`dr(∑[n]²+1)+7*a(n-1)-(2*n)%3` with `a(0)=1`
-/

namespace A033143.P1953703198411783849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.digitalRoot (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 : ℕ) : ℤ) : ℤ) + 7 * a (n - 1) - ((2 * n % 3 : ℕ) : ℤ)

end

end A033143.P1953703198411783849

namespace A033143

/-- `dr(∑[n]²+1)+7*a(n-1)-(2*n)%3` -/
def P1953703198411783849.Spec : Prop :=
  ∀ n, P1953703198411783849.a n = A033143 (n + 1)

end A033143

/-! ## A033143.P8187916483594555008

`A000420(n)+a(n-3)` with `a(0)=1, a(1)=7, a(2)=49`
-/

namespace A033143.P8187916483594555008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 49] fun n a =>
  A000420 n + a (n - 3)

end

end A033143.P8187916483594555008

namespace A033143

/-- `A000420(n)+a(n-3)` -/
def P8187916483594555008.Spec : Prop :=
  ∀ n, P8187916483594555008.a n = A033143 (n + 1)

end A033143

/-! ## A033143.P755945903387401259

`A033134(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A033143.P755945903387401259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033134 (n + 1) - a (n - 1)

end

end A033143.P755945903387401259

namespace A033143

/-- `A033134(n+1)-a(n-1)` -/
def P755945903387401259.Spec : Prop :=
  ∀ n, P755945903387401259.a n = A033143 (n + 1)

end A033143

/-! ## A033143.P1752477710382962202

`∑[7*a(n-1)+1-A010872(n)]-a(n-1)` with `a(0)=1`
-/

namespace A033143.P1752477710382962202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1) + (1 - A010872 n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A033143.P1752477710382962202

namespace A033143

/-- `∑[7*a(n-1)+1-A010872(n)]-a(n-1)` -/
def P1752477710382962202.Spec : Prop :=
  ∀ n, P1752477710382962202.a n = A033143 (n + 1)

end A033143

/-! ## A033143.P12350970422515257177

`∑[Δ[A046635(n)]/2]`
-/

namespace A033143.P12350970422515257177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046635 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033143.P12350970422515257177

namespace A033143

/-- `∑[Δ[A046635(n)]/2]` -/
def P12350970422515257177.Spec : Prop :=
  ∀ n, P12350970422515257177.a n = (A033143 (n + 1) : ℚ)

end A033143

/-! ## A033143.P2223232624897228352

`(A046635(n+1)-1)/2`
-/

namespace A033143.P2223232624897228352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046635 (n + 1) - 1 : ℚ) / 2

end

end A033143.P2223232624897228352

namespace A033143

/-- `(A046635(n+1)-1)/2` -/
def P2223232624897228352.Spec : Prop :=
  ∀ n, P2223232624897228352.a n = (A033143 (n + 1) : ℚ)

end A033143

/-! ## A033143.P16436549682036695917

`A037516(n+1)-A033125(n+1)`
-/

namespace A033143.P16436549682036695917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037516 (n + 1) - A033125 (n + 1)

end

end A033143.P16436549682036695917

namespace A033143

/-- `A037516(n+1)-A033125(n+1)` -/
def P16436549682036695917.Spec : Prop :=
  ∀ n, P16436549682036695917.a n = A033143 (n + 1)

end A033143

/-! ## A033143.P940497430824667162

`A037564(n+1)-A037540(n+1)`
-/

namespace A033143.P940497430824667162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037564 (n + 1) - A037540 (n + 1)

end

end A033143.P940497430824667162

namespace A033143

/-- `A037564(n+1)-A037540(n+1)` -/
def P940497430824667162.Spec : Prop :=
  ∀ n, P940497430824667162.a n = A033143 (n + 1)

end A033143

/-! ## A033143.P12696312600894042949

`A037621(n+1)-A037593(n+1)`
-/

namespace A033143.P12696312600894042949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037621 (n + 1) - A037593 (n + 1)

end

end A033143.P12696312600894042949

namespace A033143

/-- `A037621(n+1)-A037593(n+1)` -/
def P12696312600894042949.Spec : Prop :=
  ∀ n, P12696312600894042949.a n = A033143 (n + 1)

end A033143

/-! ## A033143.P11586046594085089764

`A037628(n+1)-A037600(n+1)`
-/

namespace A033143.P11586046594085089764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037628 (n + 1) - A037600 (n + 1)

end

end A033143.P11586046594085089764

namespace A033143

/-- `A037628(n+1)-A037600(n+1)` -/
def P11586046594085089764.Spec : Prop :=
  ∀ n, P11586046594085089764.a n = A033143 (n + 1)

theorem P11586046594085089764.correct : P11586046594085089764.Spec := by
  intro n
  simp only [A033143, Nat.add_sub_cancel, A033143.P11586046594085089764.a, A033143.P17446137891870727698.a, A037600, A037600.P10646715206021842611.a, A037628, A037628.P14679779907453231846.a, A037500, A037500.P14588839510185725909.a, A037508, A037508.P12364456326571946635.a, A037532, A037532.P16759706842372982497.a, A000420, A000420.P3695589171832359676.a, A049347, A049347.P9996747395155426839.a, A102283, A102283.P18218274576938374007.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033143

/-! ## A033143.P10610825118643092292

`A037532(n+2)-A037500(n+2)`
-/

namespace A033143.P10610825118643092292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 2) - A037500 (n + 2)

end

end A033143.P10610825118643092292

namespace A033143

/-- `A037532(n+2)-A037500(n+2)` -/
def P10610825118643092292.Spec : Prop :=
  ∀ n, P10610825118643092292.a n = A033143 (n + 1)

end A033143

/-! ## A033143.P15976298244353195459

`A037548(n+2)-A037532(n+2)`
-/

namespace A033143.P15976298244353195459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037548 (n + 2) - A037532 (n + 2)

end

end A033143.P15976298244353195459

namespace A033143

/-- `A037548(n+2)-A037532(n+2)` -/
def P15976298244353195459.Spec : Prop :=
  ∀ n, P15976298244353195459.a n = A033143 (n + 1)

end A033143

/-! ## A033143.P8600862637794632796

`∑[A037524(n+1)-A037508(n+1)]`
-/

namespace A033143.P8600862637794632796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037524 (n + 1) - A037508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033143.P8600862637794632796

namespace A033143

/-- `∑[A037524(n+1)-A037508(n+1)]` -/
def P8600862637794632796.Spec : Prop :=
  ∀ n, P8600862637794632796.a n = A033143 (n + 1)

end A033143

/-! ## A033143.P14731375829787899351

`∑[A037556(n+1)-A037540(n+1)]`
-/

namespace A033143.P14731375829787899351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037556 (n + 1) - A037540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033143.P14731375829787899351

namespace A033143

/-- `∑[A037556(n+1)-A037540(n+1)]` -/
def P14731375829787899351.Spec : Prop :=
  ∀ n, P14731375829787899351.a n = A033143 (n + 1)

end A033143

/-! ## A033143.P10888305182039264286

`∑[A037572(n+1)-A037548(n+1)]`
-/

namespace A033143.P10888305182039264286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037572 (n + 1) - A037548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033143.P10888305182039264286

namespace A033143

/-- `∑[A037572(n+1)-A037548(n+1)]` -/
def P10888305182039264286.Spec : Prop :=
  ∀ n, P10888305182039264286.a n = A033143 (n + 1)

end A033143

/-!
# A033144: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,0.

The programs for A033144, the canonical program `A033144.P12708854879116162222` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033144 has offset 1).

The definition of A033144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033144.P12708854879116162222

`8*a(n-1)+a(n-3)-8*a(n-4)` with `a(0)=1, a(1)=8, a(2)=64, a(3)=513`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033144

/-- `8*a(n-1)+a(n-3)-8*a(n-4)` -/
def P12708854879116162222.Spec : Prop :=
  ∀ n, P12708854879116162222.a n = A033144 (n + 1)

theorem P12708854879116162222.correct : P12708854879116162222.Spec := by
  intro n
  simp only [A033144, Nat.add_sub_cancel]

end A033144

/-! ## A033144.P147521552228954154

`round(64/511*8^(n+1))`
-/

namespace A033144.P147521552228954154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((64 : ℚ) / 511 * (8 ^ (n + 1) : ℚ))

end

end A033144.P147521552228954154

namespace A033144

/-- `round(64/511*8^(n+1))` -/
def P147521552228954154.Spec : Prop :=
  ∀ n, P147521552228954154.a n = A033144 (n + 1)

end A033144

/-! ## A033144.P10887128443984172423

`ogf(1/(1-8x-x^3+8x^4))`
-/

namespace A033144.P10887128443984172423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, 0, -1, 8] n

end

end A033144.P10887128443984172423

namespace A033144

/-- `ogf(1/(1-8x-x^3+8x^4))` -/
def P10887128443984172423.Spec : Prop :=
  ∀ n, P10887128443984172423.a n = A033144 (n + 1)

end A033144

/-! ## A033144.P14416821322171157754

`char[3*n]+8*a(n-1)` with `a(0)=1`
-/

namespace A033144.P14416821322171157754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 8 * a (n - 1)

end

end A033144.P14416821322171157754

namespace A033144

/-- `char[3*n]+8*a(n-1)` -/
def P14416821322171157754.Spec : Prop :=
  ∀ n, (P14416821322171157754.a n : ℤ) = A033144 (n + 1)

end A033144

/-! ## A033144.P16407086851310426252

`or(8*a(n-1), char[3*n])` with `a(0)=1`
-/

namespace A033144.P16407086851310426252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (8 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A033144.P16407086851310426252

namespace A033144

/-- `or(8*a(n-1), char[3*n])` -/
def P16407086851310426252.Spec : Prop :=
  ∀ n, (P16407086851310426252.a n : ℤ) = A033144 (n + 1)

end A033144

/-! ## A033144.P2679821405617017871

`xor(8*a(n-1), char[3*n])` with `a(0)=1`
-/

namespace A033144.P2679821405617017871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (8 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A033144.P2679821405617017871

namespace A033144

/-- `xor(8*a(n-1), char[3*n])` -/
def P2679821405617017871.Spec : Prop :=
  ∀ n, (P2679821405617017871.a n : ℤ) = A033144 (n + 1)

end A033144

/-! ## A033144.P3824838453491953303

`xor(8*a(n-1), ((n+1)%3)!)-(2*n)%3` with `a(0)=1`
-/

namespace A033144.P3824838453491953303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (8 * a (n - 1)) (Nat.factorial ((n + 1) % 3) : ℤ) - ((2 * n % 3 : ℕ) : ℤ)

end

end A033144.P3824838453491953303

namespace A033144

/-- `xor(8*a(n-1), ((n+1)%3)!)-(2*n)%3` -/
def P3824838453491953303.Spec : Prop :=
  ∀ n, P3824838453491953303.a n = A033144 (n + 1)

end A033144

/-! ## A033144.P2821084052548284566

`9*a(n-1)-char[3*n]/log2(1/2)-a(n-1)` with `a(0)=1`
-/

namespace A033144.P2821084052548284566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) / Real.logb 2 ((1 : ℚ) / 2 : ℝ) - a (n - 1)

end

end A033144.P2821084052548284566

namespace A033144

/-- `9*a(n-1)-char[3*n]/log2(1/2)-a(n-1)` -/
def P2821084052548284566.Spec : Prop :=
  ∀ n, P2821084052548284566.a n = (A033144 (n + 1) : ℝ)

end A033144

/-! ## A033144.P17477366505807032148

`A001018(n)+a(n-3)` with `a(0)=1, a(1)=8, a(2)=64`
-/

namespace A033144.P17477366505807032148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 64] fun n a =>
  A001018 n + a (n - 3)

end

end A033144.P17477366505807032148

namespace A033144

/-- `A001018(n)+a(n-3)` -/
def P17477366505807032148.Spec : Prop :=
  ∀ n, P17477366505807032148.a n = A033144 (n + 1)

end A033144

/-! ## A033144.P10914198577902224807

`A033135(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A033144.P10914198577902224807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033135 (n + 1) - a (n - 1)

end

end A033144.P10914198577902224807

namespace A033144

/-- `A033135(n+1)-a(n-1)` -/
def P10914198577902224807.Spec : Prop :=
  ∀ n, P10914198577902224807.a n = A033144 (n + 1)

end A033144

/-! ## A033144.P12998616951686086223

`A037557(n+1)-∑[A001018(n)]`
-/

namespace A033144.P12998616951686086223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037557 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033144.P12998616951686086223

namespace A033144

/-- `A037557(n+1)-∑[A001018(n)]` -/
def P12998616951686086223.Spec : Prop :=
  ∀ n, P12998616951686086223.a n = A033144 (n + 1)

end A033144

/-! ## A033144.P10644264131951037459

`A037517(n+1)-A033126(n+1)`
-/

namespace A033144.P10644264131951037459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037517 (n + 1) - A033126 (n + 1)

end

end A033144.P10644264131951037459

namespace A033144

/-- `A037517(n+1)-A033126(n+1)` -/
def P10644264131951037459.Spec : Prop :=
  ∀ n, P10644264131951037459.a n = A033144 (n + 1)

end A033144

/-! ## A033144.P7551335997812283036

`A037525(n+1)-A033135(n+1)`
-/

namespace A033144.P7551335997812283036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037525 (n + 1) - A033135 (n + 1)

end

end A033144.P7551335997812283036

namespace A033144

/-- `A037525(n+1)-A033135(n+1)` -/
def P7551335997812283036.Spec : Prop :=
  ∀ n, P7551335997812283036.a n = A033144 (n + 1)

end A033144

/-! ## A033144.P3912212840578596946

`A037573(n+1)-A037533(n+1)`
-/

namespace A033144.P3912212840578596946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037573 (n + 1) - A037533 (n + 1)

end

end A033144.P3912212840578596946

namespace A033144

/-- `A037573(n+1)-A037533(n+1)` -/
def P3912212840578596946.Spec : Prop :=
  ∀ n, P3912212840578596946.a n = A033144 (n + 1)

end A033144

/-! ## A033144.P1041538381888090951

`A037622(n+1)-A037594(n+1)`
-/

namespace A033144.P1041538381888090951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037622 (n + 1) - A037594 (n + 1)

end

end A033144.P1041538381888090951

namespace A033144

/-- `A037622(n+1)-A037594(n+1)` -/
def P1041538381888090951.Spec : Prop :=
  ∀ n, P1041538381888090951.a n = A033144 (n + 1)

end A033144

/-! ## A033144.P5360319243911176858

`A037629(n+1)-A037601(n+1)`
-/

namespace A033144.P5360319243911176858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037629 (n + 1) - A037601 (n + 1)

end

end A033144.P5360319243911176858

namespace A033144

/-- `A037629(n+1)-A037601(n+1)` -/
def P5360319243911176858.Spec : Prop :=
  ∀ n, P5360319243911176858.a n = A033144 (n + 1)

end A033144

/-! ## A033144.P3289977767118941639

`and(A037594(n+1), A037601(n+1))`
-/

namespace A033144.P3289977767118941639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037594 (n + 1)) (A037601 (n + 1))

end

end A033144.P3289977767118941639

namespace A033144

/-- `and(A037594(n+1), A037601(n+1))` -/
def P3289977767118941639.Spec : Prop :=
  ∀ n, P3289977767118941639.a n = A033144 (n + 1)

end A033144

/-! ## A033144.P13697941108486959615

`and(A037601(n+1), A037650(n+1))`
-/

namespace A033144.P13697941108486959615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037601 (n + 1)) (A037650 (n + 1))

end

end A033144.P13697941108486959615

namespace A033144

/-- `and(A037601(n+1), A037650(n+1))` -/
def P13697941108486959615.Spec : Prop :=
  ∀ n, P13697941108486959615.a n = A033144 (n + 1)

end A033144

/-! ## A033144.P17525538677622251173

`and(A037615(n+1), A037650(n+1))`
-/

namespace A033144.P17525538677622251173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037615 (n + 1)) (A037650 (n + 1))

end

end A033144.P17525538677622251173

namespace A033144

/-- `and(A037615(n+1), A037650(n+1))` -/
def P17525538677622251173.Spec : Prop :=
  ∀ n, P17525538677622251173.a n = A033144 (n + 1)

end A033144

/-! ## A033144.P18162706976791054509

`∑[A037517(n+1)-∑[A001018(n)]]`
-/

namespace A033144.P18162706976791054509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037517 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033144.P18162706976791054509

namespace A033144

/-- `∑[A037517(n+1)-∑[A001018(n)]]` -/
def P18162706976791054509.Spec : Prop :=
  ∀ n, P18162706976791054509.a n = A033144 (n + 1)

end A033144

/-!
# A033145: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,0.

The programs for A033145, the canonical program `A033145.P18225206486127704413` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033145 has offset 1).

The definition of A033145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033145.P18225206486127704413

`9*a(n-1)+a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=9, a(2)=81, a(3)=730`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033145

/-- `9*a(n-1)+a(n-3)-9*a(n-4)` -/
def P18225206486127704413.Spec : Prop :=
  ∀ n, P18225206486127704413.a n = A033145 (n + 1)

theorem P18225206486127704413.correct : P18225206486127704413.Spec := by
  intro n
  simp only [A033145, Nat.add_sub_cancel]

end A033145

/-! ## A033145.P12636989586913125637

`floor(81/728*9^(n+1))`
-/

namespace A033145.P12636989586913125637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(81 : ℚ) / 728 * (9 ^ (n + 1) : ℚ)⌋

end

end A033145.P12636989586913125637

namespace A033145

/-- `floor(81/728*9^(n+1))` -/
def P12636989586913125637.Spec : Prop :=
  ∀ n, P12636989586913125637.a n = A033145 (n + 1)

end A033145

/-! ## A033145.P14756512545622512759

`ogf(1/(1-9x-x^3+9x^4))`
-/

namespace A033145.P14756512545622512759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -9, 0, -1, 9] n

end

end A033145.P14756512545622512759

namespace A033145

/-- `ogf(1/(1-9x-x^3+9x^4))` -/
def P14756512545622512759.Spec : Prop :=
  ∀ n, P14756512545622512759.a n = A033145 (n + 1)

end A033145

/-! ## A033145.P8795692512702085726

`1-n²%3+9*a(n-1)` with `a(0)=1`
-/

namespace A033145.P8795692512702085726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((n ^ 2 % 3 : ℕ) : ℤ) + 9 * a (n - 1)

end

end A033145.P8795692512702085726

namespace A033145

/-- `1-n²%3+9*a(n-1)` -/
def P8795692512702085726.Spec : Prop :=
  ∀ n, P8795692512702085726.a n = A033145 (n + 1)

end A033145

/-! ## A033145.P10012592529935653011

`∑[n+1]%3+9*a(n-1)` with `a(0)=1`
-/

namespace A033145.P10012592529935653011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 3 + 9 * a (n - 1)

end

end A033145.P10012592529935653011

namespace A033145

/-- `∑[n+1]%3+9*a(n-1)` -/
def P10012592529935653011.Spec : Prop :=
  ∀ n, (P10012592529935653011.a n : ℤ) = A033145 (n + 1)

end A033145

/-! ## A033145.P14131741533438615441

`9*a(n-1)-char[3*n]/log2(1/2)` with `a(0)=1`
-/

namespace A033145.P14131741533438615441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) / Real.logb 2 ((1 : ℚ) / 2 : ℝ)

end

end A033145.P14131741533438615441

namespace A033145

/-- `9*a(n-1)-char[3*n]/log2(1/2)` -/
def P14131741533438615441.Spec : Prop :=
  ∀ n, P14131741533438615441.a n = (A033145 (n + 1) : ℝ)

end A033145

/-! ## A033145.P17641903011703998298

`a(n-1)+or(8*a(n-1), char[3*n])` with `a(0)=1`
-/

namespace A033145.P17641903011703998298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.lor (8 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A033145.P17641903011703998298

namespace A033145

/-- `a(n-1)+or(8*a(n-1), char[3*n])` -/
def P17641903011703998298.Spec : Prop :=
  ∀ n, (P17641903011703998298.a n : ℤ) = A033145 (n + 1)

end A033145

/-! ## A033145.P13670145707878941915

`∑[9*a(n-1)-(n%3-1)]-a(n-1)` with `a(0)=1`
-/

namespace A033145.P13670145707878941915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) - (((n % 3 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A033145.P13670145707878941915

namespace A033145

/-- `∑[9*a(n-1)-(n%3-1)]-a(n-1)` -/
def P13670145707878941915.Spec : Prop :=
  ∀ n, P13670145707878941915.a n = A033145 (n + 1)

end A033145

/-! ## A033145.P2445416954252993666

`A001019(n)+a(n-3)` with `a(0)=1, a(1)=9, a(2)=81`
-/

namespace A033145.P2445416954252993666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 81] fun n a =>
  A001019 n + a (n - 3)

end

end A033145.P2445416954252993666

namespace A033145

/-- `A001019(n)+a(n-3)` -/
def P2445416954252993666.Spec : Prop :=
  ∀ n, P2445416954252993666.a n = A033145 (n + 1)

end A033145

/-! ## A033145.P18078515667414501417

`A033136(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A033145.P18078515667414501417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033136 (n + 1) - a (n - 1)

end

end A033145.P18078515667414501417

namespace A033145

/-- `A033136(n+1)-a(n-1)` -/
def P18078515667414501417.Spec : Prop :=
  ∀ n, P18078515667414501417.a n = A033145 (n + 1)

end A033145

/-! ## A033145.P1946499534479916133

`A037510(n+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A033145.P1946499534479916133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037510 (n + 1) - 2 * a (n - 1)

end

end A033145.P1946499534479916133

namespace A033145

/-- `A037510(n+1)-2*a(n-1)` -/
def P1946499534479916133.Spec : Prop :=
  ∀ n, P1946499534479916133.a n = A033145 (n + 1)

end A033145

/-! ## A033145.P2537392316159286358

`A037518(n+1)-A033127(n+1)`
-/

namespace A033145.P2537392316159286358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037518 (n + 1) - A033127 (n + 1)

end

end A033145.P2537392316159286358

namespace A033145

/-- `A037518(n+1)-A033127(n+1)` -/
def P2537392316159286358.Spec : Prop :=
  ∀ n, P2537392316159286358.a n = A033145 (n + 1)

end A033145

/-! ## A033145.P15694347314355667805

`A037526(n+1)-A033136(n+1)`
-/

namespace A033145.P15694347314355667805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037526 (n + 1) - A033136 (n + 1)

end

end A033145.P15694347314355667805

namespace A033145

/-- `A037526(n+1)-A033136(n+1)` -/
def P15694347314355667805.Spec : Prop :=
  ∀ n, P15694347314355667805.a n = A033145 (n + 1)

end A033145

/-! ## A033145.P2875942831400206813

`A037566(n+1)-A037542(n+1)`
-/

namespace A033145.P2875942831400206813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037566 (n + 1) - A037542 (n + 1)

end

end A033145.P2875942831400206813

namespace A033145

/-- `A037566(n+1)-A037542(n+1)` -/
def P2875942831400206813.Spec : Prop :=
  ∀ n, P2875942831400206813.a n = A033145 (n + 1)

end A033145

/-! ## A033145.P8817092809037341668

`A037574(n+1)-A037534(n+1)`
-/

namespace A033145.P8817092809037341668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037574 (n + 1) - A037534 (n + 1)

end

end A033145.P8817092809037341668

namespace A033145

/-- `A037574(n+1)-A037534(n+1)` -/
def P8817092809037341668.Spec : Prop :=
  ∀ n, P8817092809037341668.a n = A033145 (n + 1)

end A033145

/-! ## A033145.P10234488407986854362

`A037651(n+1)-A037518(n+1)`
-/

namespace A033145.P10234488407986854362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037651 (n + 1) - A037518 (n + 1)

end

end A033145.P10234488407986854362

namespace A033145

/-- `A037651(n+1)-A037518(n+1)` -/
def P10234488407986854362.Spec : Prop :=
  ∀ n, P10234488407986854362.a n = A033145 (n + 1)

theorem P10234488407986854362.correct : P10234488407986854362.Spec := by
  intro n
  simp only [A033145, Nat.add_sub_cancel, A033145.P10234488407986854362.a, A033145.P18225206486127704413.a, A037518, A037518.P965897409930183489.a, A037651, A037651.P5689358388814351133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033145

/-! ## A033145.P18184077067508824720

`A037623(n+1)-A037595(n+1)`
-/

namespace A033145.P18184077067508824720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037623 (n + 1) - A037595 (n + 1)

end

end A033145.P18184077067508824720

namespace A033145

/-- `A037623(n+1)-A037595(n+1)` -/
def P18184077067508824720.Spec : Prop :=
  ∀ n, P18184077067508824720.a n = A033145 (n + 1)

end A033145

/-! ## A033145.P9904633661406698674

`A037630(n+1)-A037602(n+1)`
-/

namespace A033145.P9904633661406698674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037630 (n + 1) - A037602 (n + 1)

end

end A033145.P9904633661406698674

namespace A033145

/-- `A037630(n+1)-A037602(n+1)` -/
def P9904633661406698674.Spec : Prop :=
  ∀ n, P9904633661406698674.a n = A033145 (n + 1)

end A033145

/-! ## A033145.P263902423023557614

`∑[A037637(n+1)-A037609(n+1)]`
-/

namespace A033145.P263902423023557614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037637 (n + 1) - A037609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033145.P263902423023557614

namespace A033145

/-- `∑[A037637(n+1)-A037609(n+1)]` -/
def P263902423023557614.Spec : Prop :=
  ∀ n, P263902423023557614.a n = A033145 (n + 1)

end A033145

/-! ## A033145.P5571591703004370619

`2*A033127(n+1)-A037502(n+1)`
-/

namespace A033145.P5571591703004370619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033127 (n + 1) - A037502 (n + 1)

end

end A033145.P5571591703004370619

namespace A033145

/-- `2*A033127(n+1)-A037502(n+1)` -/
def P5571591703004370619.Spec : Prop :=
  ∀ n, P5571591703004370619.a n = A033145 (n + 1)

end A033145

/-!
# A033146: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,0,0.

The programs for A033146, the canonical program `A033146.P1263010599493969375` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033146 has offset 1).

The definition of A033146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033146.P1263010599493969375

`round(100/999*10^(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033146

/-- `round(100/999*10^(n+1))` -/
def P1263010599493969375.Spec : Prop :=
  ∀ n, P1263010599493969375.a n = A033146 (n + 1)

theorem P1263010599493969375.correct : P1263010599493969375.Spec := by
  intro n
  simp only [A033146, Nat.add_sub_cancel]

end A033146

/-! ## A033146.P2410161089230512147

`ogf(1/(1-10x-x^3+10x^4))`
-/

namespace A033146.P2410161089230512147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, 0, -1, 10] n

end

end A033146.P2410161089230512147

namespace A033146

/-- `ogf(1/(1-10x-x^3+10x^4))` -/
def P2410161089230512147.Spec : Prop :=
  ∀ n, P2410161089230512147.a n = A033146 (n + 1)

end A033146

/-! ## A033146.P7500851713469769817

`char[3*n]+10*a(n-1)` with `a(0)=1`
-/

namespace A033146.P7500851713469769817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 10 * a (n - 1)

end

end A033146.P7500851713469769817

namespace A033146

/-- `char[3*n]+10*a(n-1)` -/
def P7500851713469769817.Spec : Prop :=
  ∀ n, (P7500851713469769817.a n : ℤ) = A033146 (n + 1)

end A033146

/-! ## A033146.P13007526825608519176

`or(10*a(n-1), char[3*n])` with `a(0)=1`
-/

namespace A033146.P13007526825608519176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (10 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A033146.P13007526825608519176

namespace A033146

/-- `or(10*a(n-1), char[3*n])` -/
def P13007526825608519176.Spec : Prop :=
  ∀ n, (P13007526825608519176.a n : ℤ) = A033146 (n + 1)

end A033146

/-! ## A033146.P2689835860063958808

`A033137(n)-a(n-1)` with `a(0)=1`
-/

namespace A033146.P2689835860063958808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033137 (n + 1) - a (n - 1)

end

end A033146.P2689835860063958808

namespace A033146

/-- `A033137(n)-a(n-1)` -/
def P2689835860063958808.Spec : Prop :=
  ∀ n, P2689835860063958808.a n = A033146 (n + 1)

end A033146

/-! ## A033146.P17161653300545719008

`A033128(n)-a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A033146.P17161653300545719008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  A033128 (n + 1) - a (n - 2)

end

end A033146.P17161653300545719008

namespace A033146

/-- `A033128(n)-a(n-2)` -/
def P17161653300545719008.Spec : Prop :=
  ∀ n, P17161653300545719008.a n = A033146 (n + 1)

end A033146

/-! ## A033146.P15826993427106160389

`A037511(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A033146.P15826993427106160389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037511 (n + 1) - (a (n - 1) + a (n - 1))

end

end A033146.P15826993427106160389

namespace A033146

/-- `A037511(n)-(a(n-1)+a(n-1))` -/
def P15826993427106160389.Spec : Prop :=
  ∀ n, P15826993427106160389.a n = A033146 (n + 1)

end A033146

/-! ## A033146.P5941170754325565432

`2*A033128(n)-A037503(n)`
-/

namespace A033146.P5941170754325565432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033128 (n + 1) - A037503 (n + 1)

end

end A033146.P5941170754325565432

namespace A033146

/-- `2*A033128(n)-A037503(n)` -/
def P5941170754325565432.Spec : Prop :=
  ∀ n, P5941170754325565432.a n = A033146 (n + 1)

end A033146

/-! ## A033146.P11153908814373095201

`2*A033137(n)-A037511(n)`
-/

namespace A033146.P11153908814373095201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033137 (n + 1) - A037511 (n + 1)

end

end A033146.P11153908814373095201

namespace A033146

/-- `2*A033137(n)-A037511(n)` -/
def P11153908814373095201.Spec : Prop :=
  ∀ n, P11153908814373095201.a n = A033146 (n + 1)

end A033146

/-! ## A033146.P10587264516495312287

`A037511(n+1)-A033137(n+1)`
-/

namespace A033146.P10587264516495312287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037511 (n + 1 + 1) - A033137 (n + 1 + 1)

end

end A033146.P10587264516495312287

namespace A033146

/-- `A037511(n+1)-A033137(n+1)` -/
def P10587264516495312287.Spec : Prop :=
  ∀ n, P10587264516495312287.a n = A033146 (n + 1)

end A033146

/-!
# A033148: Number of rotationally symmetric solutions for queens on n X n board.

The programs for A033148, there is no canonical definition to state claims against.
-/

/-! ## A033148.P3484715482013701224

`A186181(n)*A260318(n+1)`
-/

namespace A033148.P3484715482013701224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186181 n * A260318 (n + 1)

end

end A033148.P3484715482013701224

/-! ## A033148.P124106372599555700

`A260318(n+1)*A329683(n)`
-/

namespace A033148.P124106372599555700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260318 (n + 1) * A329683 n

end

end A033148.P124106372599555700

/-! ## A033148.P403000604697252849

`sqrt(A060546(n))*A260189(n+1)`
-/

namespace A033148.P403000604697252849
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A060546 n : ℝ) * (A260189 (n + 1) : ℝ)

end

end A033148.P403000604697252849

/-! ## A033148.P10594780831600218624

`A036453(n+1)*A260318(n+1)`
-/

namespace A033148.P10594780831600218624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A260318 (n + 1)

end

end A033148.P10594780831600218624

/-! ## A033148.P5784979273237752441

`A078832(n+1)*A260318(n+1)`
-/

namespace A033148.P5784979273237752441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1) * A260318 (n + 1)

end

end A033148.P5784979273237752441

/-! ## A033148.P7331516333746378685

`A104435(n+1)*A260318(n+1)`
-/

namespace A033148.P7331516333746378685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1) * A260318 (n + 1)

end

end A033148.P7331516333746378685

/-! ## A033148.P54526699041624279

`A260318(n+1)*A358619(n+1)`
-/

namespace A033148.P54526699041624279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260318 (n + 1) * A358619 (n + 1)

end

end A033148.P54526699041624279

/-! ## A033148.P3658532935861126801

`A000032(C(2, n))*A260318(n+1)`
-/

namespace A033148.P3658532935861126801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 n) * A260318 (n + 1)

end

end A033148.P3658532935861126801

/-! ## A033148.P2221183898917561411

`A006530(∏{e}[n, 2^#])*A260318(n+1)`
-/

namespace A033148.P2221183898917561411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) * A260318 (n + 1)

end

end A033148.P2221183898917561411

/-!
# A033149: Position of first occurrence of n in the continued fraction for the Euler-Mascheroni constant (gamma).

The programs for A033149, there is no canonical definition to state claims against.
-/

/-! ## A033149.P8658087225070033785

`A224847(n+1)+1`
-/

namespace A033149.P8658087225070033785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224847 (n + 1) + 1

end

end A033149.P8658087225070033785

/-! ## A033149.P16478239328085137936

`A020725(A224847(n+1))`
-/

namespace A033149.P16478239328085137936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A224847 (n + 1)).toNat

end

end A033149.P16478239328085137936

/-!
# A033153: Incrementally largest terms in the continued fraction for Niven's constant.

The programs for A033153, there is no canonical definition to state claims against.
-/

/-! ## A033153.P8294061099153960067

`record[A033151(n)]`
-/

namespace A033153.P8294061099153960067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033153.P8294061099153960067

/-! ## A033153.P17280420961731355495

`A033151(A033154(n+1))`
-/

namespace A033153.P17280420961731355495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033151 (A033154 (n + 1)).toNat

end

end A033153.P17280420961731355495

/-!
# A033155: Number of n-step self-avoiding walks on the square lattice having exactly 1 pair of nonconsecutive vertices that are adjacent in the lattice.

The programs for A033155, there is no canonical definition to state claims against.
-/

/-! ## A033155.P11593449362259431192

`8*A038747(n+1)`
-/

namespace A033155.P11593449362259431192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A038747 (n + 1)

end

end A033155.P11593449362259431192

/-! ## A033155.P6609769062944584541

`A008590(A038747(n+1))`
-/

namespace A033155.P6609769062944584541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A038747 (n + 1)).toNat

end

end A033155.P6609769062944584541

/-! ## A033155.P788404365675473146

`A017077(A038747(n+1))-A261585(n)`
-/

namespace A033155.P788404365675473146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A038747 (n + 1)).toNat - A261585 n

end

end A033155.P788404365675473146

/-! ## A033155.P5942343408846432312

`A008586(A038747(n+1)+A038747(n+1))`
-/

namespace A033155.P5942343408846432312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A038747 (n + 1) + A038747 (n + 1)).toNat

end

end A033155.P5942343408846432312

/-!
# A033156: a(1) = 1; for n >= 2, a(n) = a(n-1) + floor(a(n-1)/(n-1)) + 2.

The programs for A033156, the canonical program `A033156.P5459592426304149472` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033156 has offset 1).

The definition of A033156 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2+a(n-1)+floor(a(n-1)/n)` (program `A033156.P5459592426304149472`, by `A033156.P5459592426304149472.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033156.P5459592426304149472

`2+a(n-1)+floor(a(n-1)/n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033156

/-- `2+a(n-1)+floor(a(n-1)/n)` -/
def P5459592426304149472.Spec : Prop :=
  ∀ n, P5459592426304149472.a n = A033156 (n + 1)

theorem P5459592426304149472.correct : P5459592426304149472.Spec := by
  intro n
  simp only [A033156, Nat.add_sub_cancel]

end A033156

/-! ## A033156.P391403812183960460

`a(n-1)+floor(a(n-1)/n)+2` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033156.P391403812183960460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊(a (n - 1) : ℚ) / (n : ℚ)⌋ + 2

end

end A033156.P391403812183960460

namespace A033156

/-- `a(n-1)+floor(a(n-1)/n)+2` -/
def P391403812183960460.Spec : Prop :=
  ∀ n, P391403812183960460.a n = A033156 (n + 1)

theorem P391403812183960460.correct : P391403812183960460.Spec := by
  intro n
  simp only [A033156, Nat.add_sub_cancel, A033156.P391403812183960460.a, A033156.P5459592426304149472.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A033156

/-! ## A033156.P7755199337305947732

`n+1+A003314(n+1)`
-/

namespace A033156.P7755199337305947732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A003314 (n + 1)

end

end A033156.P7755199337305947732

namespace A033156

/-- `n+1+A003314(n+1)` -/
def P7755199337305947732.Spec : Prop :=
  ∀ n, P7755199337305947732.a n = A033156 (n + 1)

end A033156

/-! ## A033156.P7286442244983449922

`A123753(n)+n+1-1`
-/

namespace A033156.P7286442244983449922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123753 n + (n + 1 : ℤ) - 1

end

end A033156.P7286442244983449922

namespace A033156

/-- `A123753(n)+n+1-1` -/
def P7286442244983449922.Spec : Prop :=
  ∀ n, P7286442244983449922.a n = A033156 (n + 1)

end A033156

/-! ## A033156.P2701220087036357129

`A001855(n+1)+2*(n+1)-1`
-/

namespace A033156.P2701220087036357129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1) + (2 * (n + 1) : ℤ) - 1

end

end A033156.P2701220087036357129

namespace A033156

/-- `A001855(n+1)+2*(n+1)-1` -/
def P2701220087036357129.Spec : Prop :=
  ∀ n, P2701220087036357129.a n = A033156 (n + 1)

end A033156

/-! ## A033156.P13100779521753075936

`∑[ceil(log2(4*n+2))]`
-/

namespace A033156.P13100779521753075936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (4 * n + 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033156.P13100779521753075936

namespace A033156

/-- `∑[ceil(log2(4*n+2))]` -/
def P13100779521753075936.Spec : Prop :=
  ∀ n, P13100779521753075936.a n = A033156 (n + 1)

end A033156

/-! ## A033156.P6738079316066480474

`∑[ceil(record[log2(or(2, n))])]+n`
-/

namespace A033156.P6738079316066480474
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lor 2 n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A033156.P6738079316066480474

namespace A033156

/-- `∑[ceil(record[log2(or(2, n))])]+n` -/
def P6738079316066480474.Spec : Prop :=
  ∀ n, P6738079316066480474.a n = A033156 (n + 1)

end A033156

/-! ## A033156.P14404507783238959475

`∑[∑[∏{p}[n, val(#, 2)]]]+n`
-/

namespace A033156.P14404507783238959475
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), SequenceMachineLib.valuation p 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A033156.P14404507783238959475

namespace A033156

/-- `∑[∑[∏{p}[n, val(#, 2)]]]+n` -/
def P14404507783238959475.Spec : Prop :=
  ∀ n, (P14404507783238959475.a n : ℤ) = A033156 (n + 1)

end A033156

/-! ## A033156.P4019232177984491099

`∑[∑[char[and(n, -n)]]]+n`
-/

namespace A033156.P4019232177984491099
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A033156.P4019232177984491099

namespace A033156

/-- `∑[∑[char[and(n, -n)]]]+n` -/
def P4019232177984491099.Spec : Prop :=
  ∀ n, (P4019232177984491099.a n : ℤ) = A033156 (n + 1)

end A033156

/-! ## A033156.P9130115516031905064

`∑[∑[C(and(n, -n), n)]]+n`
-/

namespace A033156.P9130115516031905064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) (-(n : ℤ))).toNat n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A033156.P9130115516031905064

namespace A033156

/-- `∑[∑[C(and(n, -n), n)]]+n` -/
def P9130115516031905064.Spec : Prop :=
  ∀ n, (P9130115516031905064.a n : ℤ) = A033156 (n + 1)

end A033156

/-! ## A033156.P16096980946150624367

`∑[a(floor(n/2))+1]-1` with `a(0)=2`
-/

namespace A033156.P16096980946150624367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A033156.P16096980946150624367

namespace A033156

/-- `∑[a(floor(n/2))+1]-1` -/
def P16096980946150624367.Spec : Prop :=
  ∀ n, P16096980946150624367.a n = A033156 (n + 1)

end A033156

/-! ## A033156.P16167475351797410194

`ceil(log2(n+1))+a(n-1)+2` with `a(0)=1`
-/

namespace A033156.P16167475351797410194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉ + (a (n - 1) + 2)

end

end A033156.P16167475351797410194

namespace A033156

/-- `ceil(log2(n+1))+a(n-1)+2` -/
def P16167475351797410194.Spec : Prop :=
  ∀ n, P16167475351797410194.a n = A033156 (n + 1)

end A033156

/-! ## A033156.P10565806874570531429

`floor((1/n+1)*a(n-1))+2` with `a(0)=1`
-/

namespace A033156.P10565806874570531429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(1 / (n : ℚ) + 1) * (a (n - 1) : ℚ)⌋ + 2

end

end A033156.P10565806874570531429

namespace A033156

/-- `floor((1/n+1)*a(n-1))+2` -/
def P10565806874570531429.Spec : Prop :=
  ∀ n, P10565806874570531429.a n = A033156 (n + 1)

end A033156

/-! ## A033156.P7804245212516434553

`floor(a(n-1)-((n-a(n-1))/n-3))` with `a(0)=1`
-/

namespace A033156.P7804245212516434553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) - (((n : ℤ) - a (n - 1) : ℚ) / (n : ℚ) - 3)⌋

end

end A033156.P7804245212516434553

namespace A033156

/-- `floor(a(n-1)-((n-a(n-1))/n-3))` -/
def P7804245212516434553.Spec : Prop :=
  ∀ n, P7804245212516434553.a n = A033156 (n + 1)

end A033156

/-! ## A033156.P14038879155012739289

`a(n-1)+(a(n-1)-a(n-1)%n)/n+2` with `a(0)=1`
-/

namespace A033156.P14038879155012739289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((a (n - 1) - (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) (n : ℤ) : ℚ)) / (n : ℚ) + 2)

end

end A033156.P14038879155012739289

namespace A033156

/-- `a(n-1)+(a(n-1)-a(n-1)%n)/n+2` -/
def P14038879155012739289.Spec : Prop :=
  ∀ n, P14038879155012739289.a n = (A033156 (n + 1) : ℚ)

end A033156

/-! ## A033156.P12506297357661069162

`A123753(n)+n`
-/

namespace A033156.P12506297357661069162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123753 n + (n : ℤ)

end

end A033156.P12506297357661069162

namespace A033156

/-- `A123753(n)+n` -/
def P12506297357661069162.Spec : Prop :=
  ∀ n, P12506297357661069162.a n = A033156 (n + 1)

end A033156

/-! ## A033156.P13565286244296361857

`∑[A070941(n)]+n`
-/

namespace A033156.P13565286244296361857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A033156.P13565286244296361857

namespace A033156

/-- `∑[A070941(n)]+n` -/
def P13565286244296361857.Spec : Prop :=
  ∀ n, P13565286244296361857.a n = A033156 (n + 1)

end A033156

/-! ## A033156.P3460301886293055493

`A083652(n)+2*n`
-/

namespace A033156.P3460301886293055493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n + (2 * n : ℤ)

end

end A033156.P3460301886293055493

namespace A033156

/-- `A083652(n)+2*n` -/
def P3460301886293055493.Spec : Prop :=
  ∀ n, P3460301886293055493.a n = A033156 (n + 1)

end A033156

/-! ## A033156.P1212171692097096068

`∑[A070939(n)+2]-2`
-/

namespace A033156.P1212171692097096068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A033156.P1212171692097096068

namespace A033156

/-- `∑[A070939(n)+2]-2` -/
def P1212171692097096068.Spec : Prop :=
  ∀ n, P1212171692097096068.a n = A033156 (n + 1)

end A033156

/-! ## A033156.P2230008697045142850

`∑[floor(log2(A004767(n)))]+n`
-/

namespace A033156.P2230008697045142850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A004767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A033156.P2230008697045142850

namespace A033156

/-- `∑[floor(log2(A004767(n)))]+n` -/
def P2230008697045142850.Spec : Prop :=
  ∀ n, (P2230008697045142850.a n : ℤ) = A033156 (n + 1)

end A033156

/-!
# A033157: Begins with (1, 4); avoids 3-term arithmetic progressions.

The programs for A033157, the canonical program `A033157.P10781485780208723287` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033157 has offset 1).

The definition of A033157 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185256, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033157.P10781485780208723287

`A185256(n+1)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A033157

/-- `A185256(n+1)+1` -/
def P10781485780208723287.Spec : Prop :=
  ∀ n, P10781485780208723287.a n = A033157 (n + 1)

theorem P10781485780208723287.correct : P10781485780208723287.Spec := by
  intro n
  simp only [A033157, Nat.add_sub_cancel]

end A033157

/-! ## A033157.P13531763058261553703

`A033161(n+1)-1`
-/

namespace A033157.P13531763058261553703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033161 (n + 1) - 1

end

end A033157.P13531763058261553703

namespace A033157

/-- `A033161(n+1)-1` -/
def P13531763058261553703.Spec : Prop :=
  ∀ n, P13531763058261553703.a n = A033157 (n + 1)

theorem P13531763058261553703.correct : P13531763058261553703.Spec := by
  intro n
  simp only [A033157, Nat.add_sub_cancel, A033157.P13531763058261553703.a, A033157.P10781485780208723287.a, A033161, A033161.P7450569827711651060.a, A185256, A185256.P14243737951295279238.a, A033160, A033160.P14903934844071324041.a, A140081, A140081.P14265476151605300908.a, A004793, A004793.P14402439767548149062.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033157

/-! ## A033157.P9983844159720839392

`A140081(n)+A004793(n+1)`
-/

namespace A033157.P9983844159720839392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 n + A004793 (n + 1)

end

end A033157.P9983844159720839392

namespace A033157

/-- `A140081(n)+A004793(n+1)` -/
def P9983844159720839392.Spec : Prop :=
  ∀ n, P9983844159720839392.a n = A033157 (n + 1)

theorem P9983844159720839392.correct : P9983844159720839392.Spec := by
  intro n
  simp only [A033157, Nat.add_sub_cancel, A033157.P9983844159720839392.a, A033157.P10781485780208723287.a, A004793, A004793.P14402439767548149062.a, A140081, A140081.P14265476151605300908.a, A185256, A185256.P14243737951295279238.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, A033161, A033161.P7450569827711651060.a, A033160, A033160.P14903934844071324041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033157

/-! ## A033157.P1035993192734542999

`A033160(n+1)-A102560(n)`
-/

namespace A033157.P1035993192734542999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (n + 1) - A102560 n

end

end A033157.P1035993192734542999

namespace A033157

/-- `A033160(n+1)-A102560(n)` -/
def P1035993192734542999.Spec : Prop :=
  ∀ n, P1035993192734542999.a n = A033157 (n + 1)

end A033157

/-! ## A033157.P11491802232284203942

`A186776(n+1)+A140081(n)+1`
-/

namespace A033157.P11491802232284203942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (n + 1) + (A140081 n + 1)

end

end A033157.P11491802232284203942

namespace A033157

/-- `A186776(n+1)+A140081(n)+1` -/
def P11491802232284203942.Spec : Prop :=
  ∀ n, P11491802232284203942.a n = A033157 (n + 1)

theorem P11491802232284203942.correct : P11491802232284203942.Spec := by
  intro n
  simp only [A033157, Nat.add_sub_cancel, A033157.P11491802232284203942.a, A033157.P10781485780208723287.a, A140081, A140081.P14265476151605300908.a, A185256, A185256.P14243737951295279238.a, A186776, A186776.P17009521900512411188.a, A004793, A004793.P14402439767548149062.a, A033161, A033161.P7450569827711651060.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, A033160, A033160.P14903934844071324041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033157

/-! ## A033157.P870098189892884294

`A004793(n+1)+1-A102560(n)`
-/

namespace A033157.P870098189892884294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + (1 - A102560 n)

end

end A033157.P870098189892884294

namespace A033157

/-- `A004793(n+1)+1-A102560(n)` -/
def P870098189892884294.Spec : Prop :=
  ∀ n, P870098189892884294.a n = A033157 (n + 1)

end A033157

/-! ## A033157.P6024303221427565221

`A033163(n+1)-(A102560(n)+1)`
-/

namespace A033157.P6024303221427565221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033163 (n + 1) - (A102560 n + 1)

end

end A033157.P6024303221427565221

namespace A033157

/-- `A033163(n+1)-(A102560(n)+1)` -/
def P6024303221427565221.Spec : Prop :=
  ∀ n, P6024303221427565221.a n = A033157 (n + 1)

end A033157

/-! ## A033157.P15630635998390984956

`A033160(n+1)+A140081(n)-1`
-/

namespace A033157.P15630635998390984956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (n + 1) + (A140081 n - 1)

end

end A033157.P15630635998390984956

namespace A033157

/-- `A033160(n+1)+A140081(n)-1` -/
def P15630635998390984956.Spec : Prop :=
  ∀ n, P15630635998390984956.a n = A033157 (n + 1)

theorem P15630635998390984956.correct : P15630635998390984956.Spec := by
  intro n
  simp only [A033157, Nat.add_sub_cancel, A033157.P15630635998390984956.a, A033157.P10781485780208723287.a, A033160, A033160.P14903934844071324041.a, A140081, A140081.P14265476151605300908.a, A185256, A185256.P14243737951295279238.a, A004793, A004793.P14402439767548149062.a, A033161, A033161.P7450569827711651060.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033157

/-! ## A033157.P3047376310633923853

`A005836(n+1)+Δ[A187326(n)]+1`
-/

namespace A033157.P3047376310633923853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + (f1 (n + 1) - f1 n + 1)

end

end A033157.P3047376310633923853

namespace A033157

/-- `A005836(n+1)+Δ[A187326(n)]+1` -/
def P3047376310633923853.Spec : Prop :=
  ∀ n, P3047376310633923853.a n = A033157 (n + 1)

end A033157

/-! ## A033157.P10432883124526818595

`A003278(n+1)+Δ[A187331(n)]-1`
-/

namespace A033157.P10432883124526818595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A033157.P10432883124526818595

namespace A033157

/-- `A003278(n+1)+Δ[A187331(n)]-1` -/
def P10432883124526818595.Spec : Prop :=
  ∀ n, P10432883124526818595.a n = A033157 (n + 1)

end A033157

/-! ## A033157.P4716647776026702261

`A004793(n+1)+Δ[A047487(n+1)]-1`
-/

namespace A033157.P4716647776026702261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A033157.P4716647776026702261

namespace A033157

/-- `A004793(n+1)+Δ[A047487(n+1)]-1` -/
def P4716647776026702261.Spec : Prop :=
  ∀ n, P4716647776026702261.a n = A033157 (n + 1)

end A033157

/-! ## A033157.P13798205509679357666

`A004793(n+1)+Δ[A047624(n+1)]-1`
-/

namespace A033157.P13798205509679357666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A033157.P13798205509679357666

namespace A033157

/-- `A004793(n+1)+Δ[A047624(n+1)]-1` -/
def P13798205509679357666.Spec : Prop :=
  ∀ n, P13798205509679357666.a n = A033157 (n + 1)

end A033157

/-! ## A033157.P10980725750234719337

`A280193(A057023(n+1))+A033161(n+1)`
-/

namespace A033157.P10980725750234719337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A057023 (n + 1)).toNat + A033161 (n + 1)

end

end A033157.P10980725750234719337

namespace A033157

/-- `A280193(A057023(n+1))+A033161(n+1)` -/
def P10980725750234719337.Spec : Prop :=
  ∀ n, P10980725750234719337.a n = A033157 (n + 1)

end A033157

/-! ## A033157.P14230817187055138076

`A004793(n+1)+1-A056594(A184552(n))`
-/

namespace A033157.P14230817187055138076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + (1 - A056594 (A184552 n).toNat)

end

end A033157.P14230817187055138076

namespace A033157

/-- `A004793(n+1)+1-A056594(A184552(n))` -/
def P14230817187055138076.Spec : Prop :=
  ∀ n, P14230817187055138076.a n = A033157 (n + 1)

end A033157

/-! ## A033157.P16179792083444233120

`A023443(A033161(n+1))`
-/

namespace A033157.P16179792083444233120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A033161 (n + 1)).toNat

end

end A033157.P16179792083444233120

namespace A033157

/-- `A023443(A033161(n+1))` -/
def P16179792083444233120.Spec : Prop :=
  ∀ n, P16179792083444233120.a n = A033157 (n + 1)

end A033157

/-! ## A033157.P8372618380552685528

`A004482(A185256(n+1))`
-/

namespace A033157.P8372618380552685528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A185256 (n + 1)).toNat

end

end A033157.P8372618380552685528

namespace A033157

/-- `A004482(A185256(n+1))` -/
def P8372618380552685528.Spec : Prop :=
  ∀ n, P8372618380552685528.a n = A033157 (n + 1)

end A033157

/-! ## A033157.P5234055674846803422

`A023444(A033161(n+1)+1)`
-/

namespace A033157.P5234055674846803422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A033161 (n + 1) + 1).toNat

end

end A033157.P5234055674846803422

namespace A033157

/-- `A023444(A033161(n+1)+1)` -/
def P5234055674846803422.Spec : Prop :=
  ∀ n, P5234055674846803422.a n = A033157 (n + 1)

end A033157

/-!
# A033158: Begins with (1, 5); avoids 3-term arithmetic progressions.

The programs for A033158, there is no canonical definition to state claims against.
-/

/-! ## A033158.P7132687252448181025

`A005487(n)+1`
-/

namespace A033158.P7132687252448181025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005487 n + 1

end

end A033158.P7132687252448181025

/-! ## A033158.P12042308025331248980

`A236269(n)+a(n-1)` with `a(0)=1`
-/

namespace A033158.P12042308025331248980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A236269 n + a (n - 1)

end

end A033158.P12042308025331248980

/-! ## A033158.P14949452009954877412

`1-(A007814(or(1, n))-A005487(n))`
-/

namespace A033158.P14949452009954877412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A007814 (Nat.lor 1 n) - A005487 n)

end

end A033158.P14949452009954877412

/-! ## A033158.P2647905964491540939

`∑[A236269(n+1)]+1-A236269(n+1)`
-/

namespace A033158.P2647905964491540939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A236269 (n + 1))

end

end A033158.P2647905964491540939

/-! ## A033158.P3629135667406946711

`2-(A000120(A001316(n))-A005487(n))`
-/

namespace A033158.P3629135667406946711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000120 (A001316 n).toNat - A005487 n)

end

end A033158.P3629135667406946711

/-! ## A033158.P11748687856340756056

`2-(A007318(∑[n])-A005487(n))`
-/

namespace A033158.P11748687856340756056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - A005487 n)

end

end A033158.P11748687856340756056

/-!
# A033159: Begins with (2, 3); avoids 3-term arithmetic progressions.

The programs for A033159, the canonical program `A033159.P8601337771363928605` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033159 has offset 1).

The definition of A033159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033159.P11455938326893216665

`(∑[and(n, -n)^log2(3)]+n)/2+2`
-/

namespace A033159.P11455938326893216665
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2 + 2

end

end A033159.P11455938326893216665

namespace A033159

/-- `(∑[and(n, -n)^log2(3)]+n)/2+2` -/
def P11455938326893216665.Spec : Prop :=
  ∀ n, P11455938326893216665.a n = (A033159 (n + 1) : ℝ)

end A033159

/-! ## A033159.P8601337771363928605

`a(n-2)+a(xor(n, n-2)/2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033159

/-- `a(n-2)+a(xor(n, n-2)/2)` -/
def P8601337771363928605.Spec : Prop :=
  ∀ n, (P8601337771363928605.a n : ℤ) = A033159 (n + 1)

theorem P8601337771363928605.correct : P8601337771363928605.Spec := by
  intro n
  simp only [A033159, Nat.add_sub_cancel]

end A033159

/-! ## A033159.P18391251974345704656

`∑[3*a(floor(n/2))-a(n-1)]` with `a(0)=2, a(1)=1`
-/

namespace A033159.P18391251974345704656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033159.P18391251974345704656

namespace A033159

/-- `∑[3*a(floor(n/2))-a(n-1)]` -/
def P18391251974345704656.Spec : Prop :=
  ∀ n, P18391251974345704656.a n = A033159 (n + 1)

end A033159

/-! ## A033159.P15502885065020126362

`2*a(n-1)+1-a(and(n, n-1))` with `a(0)=2`
-/

namespace A033159.P15502885065020126362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) + (1 - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A033159.P15502885065020126362

namespace A033159

/-- `2*a(n-1)+1-a(and(n, n-1))` -/
def P15502885065020126362.Spec : Prop :=
  ∀ n, P15502885065020126362.a n = A033159 (n + 1)

end A033159

/-! ## A033159.P15684443871527295040

`3*a(floor(n/2))+n-2*floor(n/2)-4` with `a(0)=2`
-/

namespace A033159.P15684443871527295040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * a ⌊(n : ℚ) / 2⌋.toNat + ((n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋) - 4

end

end A033159.P15684443871527295040

namespace A033159

/-- `3*a(floor(n/2))+n-2*floor(n/2)-4` -/
def P15684443871527295040.Spec : Prop :=
  ∀ n, P15684443871527295040.a n = A033159 (n + 1)

end A033159

/-! ## A033159.P18171297381798986958

`A003278(n+1)+1`
-/

namespace A033159.P18171297381798986958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + 1

end

end A033159.P18171297381798986958

namespace A033159

/-- `A003278(n+1)+1` -/
def P18171297381798986958.Spec : Prop :=
  ∀ n, P18171297381798986958.a n = A033159 (n + 1)

end A033159

/-! ## A033159.P16777285712908000579

`A005836(n+1)+2`
-/

namespace A033159.P16777285712908000579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + 2

end

end A033159.P16777285712908000579

namespace A033159

/-- `A005836(n+1)+2` -/
def P16777285712908000579.Spec : Prop :=
  ∀ n, P16777285712908000579.a n = A033159 (n + 1)

end A033159

/-! ## A033159.P18317549111626075291

`A033162(n+1)-1`
-/

namespace A033159.P18317549111626075291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033162 (n + 1) - 1

end

end A033159.P18317549111626075291

namespace A033159

/-- `A033162(n+1)-1` -/
def P18317549111626075291.Spec : Prop :=
  ∀ n, P18317549111626075291.a n = A033159 (n + 1)

end A033159

/-! ## A033159.P5035307999872541479

`A033164(n+1)-2`
-/

namespace A033159.P5035307999872541479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033164 (n + 1) - 2

end

end A033159.P5035307999872541479

namespace A033159

/-- `A033164(n+1)-2` -/
def P5035307999872541479.Spec : Prop :=
  ∀ n, P5035307999872541479.a n = A033159 (n + 1)

end A033159

/-! ## A033159.P11813510075461302291

`A005823(n+1)/2+2`
-/

namespace A033159.P11813510075461302291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005823 (n + 1) : ℚ) / 2 + 2

end

end A033159.P11813510075461302291

namespace A033159

/-- `A005823(n+1)/2+2` -/
def P11813510075461302291.Spec : Prop :=
  ∀ n, P11813510075461302291.a n = (A033159 (n + 1) : ℚ)

end A033159

/-! ## A033159.P1085806967422097702

`A081601(n+1)/3+2`
-/

namespace A033159.P1085806967422097702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081601 (n + 1) : ℚ) / 3 + 2

end

end A033159.P1085806967422097702

namespace A033159

/-- `A081601(n+1)/3+2` -/
def P1085806967422097702.Spec : Prop :=
  ∀ n, P1085806967422097702.a n = (A033159 (n + 1) : ℚ)

end A033159

/-! ## A033159.P16316286793379196232

`(A191106(n+1)+3)/2`
-/

namespace A033159.P16316286793379196232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191106 (n + 1) + 3 : ℚ) / 2

end

end A033159.P16316286793379196232

namespace A033159

/-- `(A191106(n+1)+3)/2` -/
def P16316286793379196232.Spec : Prop :=
  ∀ n, P16316286793379196232.a n = (A033159 (n + 1) : ℚ)

end A033159

/-! ## A033159.P3906791364088562052

`(A356426(n+1)+4)/3`
-/

namespace A033159.P3906791364088562052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356426 (n + 1) + 4 : ℚ) / 3

end

end A033159.P3906791364088562052

namespace A033159

/-- `(A356426(n+1)+4)/3` -/
def P3906791364088562052.Spec : Prop :=
  ∀ n, P3906791364088562052.a n = (A033159 (n + 1) : ℚ)

end A033159

/-! ## A033159.P7498230678716885957

`(A191107(n+1)+5)/3`
-/

namespace A033159.P7498230678716885957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191107 (n + 1) + 5 : ℚ) / 3

end

end A033159.P7498230678716885957

namespace A033159

/-- `(A191107(n+1)+5)/3` -/
def P7498230678716885957.Spec : Prop :=
  ∀ n, P7498230678716885957.a n = (A033159 (n + 1) : ℚ)

end A033159

/-! ## A033159.P13115945119202604910

`A236313(n)+a(n-1)` with `a(0)=2`
-/

namespace A033159.P13115945119202604910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A236313 n + a (n - 1)

end

end A033159.P13115945119202604910

namespace A033159

/-- `A236313(n)+a(n-1)` -/
def P13115945119202604910.Spec : Prop :=
  ∀ n, P13115945119202604910.a n = A033159 (n + 1)

end A033159

/-! ## A033159.P14770731396657080517

`A004793(n+1)+char[2*n]`
-/

namespace A033159.P14770731396657080517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A033159.P14770731396657080517

namespace A033159

/-- `A004793(n+1)+char[2*n]` -/
def P14770731396657080517.Spec : Prop :=
  ∀ n, P14770731396657080517.a n = A033159 (n + 1)

end A033159

/-! ## A033159.P7858095105336023426

`A059841(n)+A004793(n+1)`
-/

namespace A033159.P7858095105336023426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A004793 (n + 1)

end

end A033159.P7858095105336023426

namespace A033159

/-- `A059841(n)+A004793(n+1)` -/
def P7858095105336023426.Spec : Prop :=
  ∀ n, P7858095105336023426.a n = A033159 (n + 1)

end A033159

/-! ## A033159.P13990612655240642844

`A033160(n+1)-A000035(n)`
-/

namespace A033159.P13990612655240642844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (n + 1) - A000035 n

end

end A033159.P13990612655240642844

namespace A033159

/-- `A033160(n+1)-A000035(n)` -/
def P13990612655240642844.Spec : Prop :=
  ∀ n, P13990612655240642844.a n = A033159 (n + 1)

end A033159

/-! ## A033159.P11808711479182185666

`A033163(n+1)-A000034(n)`
-/

namespace A033159.P11808711479182185666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033163 (n + 1) - A000034 n

end

end A033159.P11808711479182185666

namespace A033159

/-- `A033163(n+1)-A000034(n)` -/
def P11808711479182185666.Spec : Prop :=
  ∀ n, P11808711479182185666.a n = A033159 (n + 1)

end A033159

/-! ## A033159.P16673053556614832580

`A265746(A197911(n))+2`
-/

namespace A033159.P16673053556614832580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265746 (A197911 n).toNat + 2

end

end A033159.P16673053556614832580

namespace A033159

/-- `A265746(A197911(n))+2` -/
def P16673053556614832580.Spec : Prop :=
  ∀ n, P16673053556614832580.a n = A033159 (n + 1)

end A033159

/-!
# A033160: Begins with (2, 4); avoids 3-term arithmetic progressions.

The programs for A033160, the canonical program `A033160.P14903934844071324041` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033160 has offset 1).

The definition of A033160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033160.P15815265851349930254

`n%2+(∑[and(n, -n)^log2(3)]+n)/2+2`
-/

namespace A033160.P15815265851349930254
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2 + 2)

end

end A033160.P15815265851349930254

namespace A033160

/-- `n%2+(∑[and(n, -n)^log2(3)]+n)/2+2` -/
def P15815265851349930254.Spec : Prop :=
  ∀ n, P15815265851349930254.a n = (A033160 (n + 1) : ℝ)

end A033160

/-! ## A033160.P14903934844071324041

`A004793(n+1)+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033160

/-- `A004793(n+1)+1` -/
def P14903934844071324041.Spec : Prop :=
  ∀ n, P14903934844071324041.a n = A033160 (n + 1)

theorem P14903934844071324041.correct : P14903934844071324041.Spec := by
  intro n
  simp only [A033160, Nat.add_sub_cancel]

end A033160

/-! ## A033160.P2682920011701004700

`A033163(n+1)-1`
-/

namespace A033160.P2682920011701004700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033163 (n + 1) - 1

end

end A033160.P2682920011701004700

namespace A033160

/-- `A033163(n+1)-1` -/
def P2682920011701004700.Spec : Prop :=
  ∀ n, P2682920011701004700.a n = A033160 (n + 1)

theorem P2682920011701004700.correct : P2682920011701004700.Spec := by
  intro n
  simp only [A033160, Nat.add_sub_cancel, A033160.P2682920011701004700.a, A033160.P14903934844071324041.a, A004793, A004793.P14402439767548149062.a, A033163, A033163.P3512797110537312179.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033160

/-! ## A033160.P17867488348351458493

`A186776(n+1)+2`
-/

namespace A033160.P17867488348351458493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (n + 1) + 2

end

end A033160.P17867488348351458493

namespace A033160

/-- `A186776(n+1)+2` -/
def P17867488348351458493.Spec : Prop :=
  ∀ n, P17867488348351458493.a n = A033160 (n + 1)

theorem P17867488348351458493.correct : P17867488348351458493.Spec := by
  intro n
  simp only [A033160, Nat.add_sub_cancel, A033160.P17867488348351458493.a, A033160.P14903934844071324041.a, A004793, A004793.P14402439767548149062.a, A186776, A186776.P17009521900512411188.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033160

/-! ## A033160.P8290615674402789760

`A033159(n+1)+n%2`
-/

namespace A033160.P8290615674402789760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A033160.P8290615674402789760

namespace A033160

/-- `A033159(n+1)+n%2` -/
def P8290615674402789760.Spec : Prop :=
  ∀ n, P8290615674402789760.a n = A033160 (n + 1)

end A033160

/-! ## A033160.P2758311431127496777

`A033164(n+1)-gcd(2, n)`
-/

namespace A033160.P2758311431127496777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033164 (n + 1) - (Nat.gcd 2 n : ℤ)

end

end A033160.P2758311431127496777

namespace A033160

/-- `A033164(n+1)-gcd(2, n)` -/
def P2758311431127496777.Spec : Prop :=
  ∀ n, P2758311431127496777.a n = A033160 (n + 1)

end A033160

/-! ## A033160.P16591917244864338761

`A033162(n+1)-char[2*n]`
-/

namespace A033160.P16591917244864338761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033162 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A033160.P16591917244864338761

namespace A033160

/-- `A033162(n+1)-char[2*n]` -/
def P16591917244864338761.Spec : Prop :=
  ∀ n, P16591917244864338761.a n = A033160 (n + 1)

end A033160

/-! ## A033160.P15324000276926640779

`A003278(n+1)+A000034(n)`
-/

namespace A033160.P15324000276926640779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + A000034 n

end

end A033160.P15324000276926640779

namespace A033160

/-- `A003278(n+1)+A000034(n)` -/
def P15324000276926640779.Spec : Prop :=
  ∀ n, P15324000276926640779.a n = A033160 (n + 1)

theorem P15324000276926640779.correct : P15324000276926640779.Spec := by
  intro n
  simp only [A033160, Nat.add_sub_cancel, A033160.P15324000276926640779.a, A033160.P14903934844071324041.a, A000034, A000034.P10773112074177680709.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, A004793, A004793.P14402439767548149062.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033160

/-! ## A033160.P16308249129801188911

`A010693(n)+A005836(n+1)`
-/

namespace A033160.P16308249129801188911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n + A005836 (n + 1)

end

end A033160.P16308249129801188911

namespace A033160

/-- `A010693(n)+A005836(n+1)` -/
def P16308249129801188911.Spec : Prop :=
  ∀ n, P16308249129801188911.a n = A033160 (n + 1)

end A033160

/-! ## A033160.P16523009596195137217

`A033159(n+1)+A000035(n)`
-/

namespace A033160.P16523009596195137217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (n + 1) + A000035 n

end

end A033160.P16523009596195137217

namespace A033160

/-- `A033159(n+1)+A000035(n)` -/
def P16523009596195137217.Spec : Prop :=
  ∀ n, P16523009596195137217.a n = A033160 (n + 1)

end A033160

/-! ## A033160.P7573254756734117933

`A102560(n)+A033157(n+1)`
-/

namespace A033160.P7573254756734117933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n + A033157 (n + 1)

end

end A033160.P7573254756734117933

namespace A033160

/-- `A102560(n)+A033157(n+1)` -/
def P7573254756734117933.Spec : Prop :=
  ∀ n, P7573254756734117933.a n = A033160 (n + 1)

end A033160

/-! ## A033160.P6625358507330672329

`A033161(n+1)-A140081(n)`
-/

namespace A033160.P6625358507330672329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033161 (n + 1) - A140081 n

end

end A033160.P6625358507330672329

namespace A033160

/-- `A033161(n+1)-A140081(n)` -/
def P6625358507330672329.Spec : Prop :=
  ∀ n, P6625358507330672329.a n = A033160 (n + 1)

theorem P6625358507330672329.correct : P6625358507330672329.Spec := by
  intro n
  simp only [A033160, Nat.add_sub_cancel, A033160.P6625358507330672329.a, A033160.P14903934844071324041.a, A004793, A004793.P14402439767548149062.a, A033161, A033161.P7450569827711651060.a, A140081, A140081.P14265476151605300908.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033160

/-! ## A033160.P4725759836281031806

`A003278(n+1)+Δ[A032766(n)]`
-/

namespace A033160.P4725759836281031806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + (f1 (n + 1) - f1 n)

end

end A033160.P4725759836281031806

namespace A033160

/-- `A003278(n+1)+Δ[A032766(n)]` -/
def P4725759836281031806.Spec : Prop :=
  ∀ n, P4725759836281031806.a n = A033160 (n + 1)

end A033160

/-! ## A033160.P17879938655319081801

`A003278(n+1)+A000035(n)+1`
-/

namespace A033160.P17879938655319081801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + (A000035 n + 1)

end

end A033160.P17879938655319081801

namespace A033160

/-- `A003278(n+1)+A000035(n)+1` -/
def P17879938655319081801.Spec : Prop :=
  ∀ n, P17879938655319081801.a n = A033160 (n + 1)

theorem P17879938655319081801.correct : P17879938655319081801.Spec := by
  intro n
  simp only [A033160, Nat.add_sub_cancel, A033160.P17879938655319081801.a, A033160.P14903934844071324041.a, A000035, A000035.P2023072528413494694.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, A004793, A004793.P14402439767548149062.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033160

/-! ## A033160.P6327700763689134206

`A005836(n+1)+A000034(n)+1`
-/

namespace A033160.P6327700763689134206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + (A000034 n + 1)

end

end A033160.P6327700763689134206

namespace A033160

/-- `A005836(n+1)+A000034(n)+1` -/
def P6327700763689134206.Spec : Prop :=
  ∀ n, P6327700763689134206.a n = A033160 (n + 1)

end A033160

/-! ## A033160.P6469850666743384668

`A185256(n+1)+A102560(n)+1`
-/

namespace A033160.P6469850666743384668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185256 (n + 1) + (A102560 n + 1)

end

end A033160.P6469850666743384668

namespace A033160

/-- `A185256(n+1)+A102560(n)+1` -/
def P6469850666743384668.Spec : Prop :=
  ∀ n, P6469850666743384668.a n = A033160 (n + 1)

end A033160

/-! ## A033160.P2244660829900178162

`A005836(n+1)+A000035(n)+2`
-/

namespace A033160.P2244660829900178162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + (A000035 n + 2)

end

end A033160.P2244660829900178162

namespace A033160

/-- `A005836(n+1)+A000035(n)+2` -/
def P2244660829900178162.Spec : Prop :=
  ∀ n, P2244660829900178162.a n = A033160 (n + 1)

end A033160

/-! ## A033160.P12637658779983860229

`A003278(n+1)+A010693(n)-1`
-/

namespace A033160.P12637658779983860229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + (A010693 n - 1)

end

end A033160.P12637658779983860229

namespace A033160

/-- `A003278(n+1)+A010693(n)-1` -/
def P12637658779983860229.Spec : Prop :=
  ∀ n, P12637658779983860229.a n = A033160 (n + 1)

end A033160

/-! ## A033160.P10770774542532572147

`A005836(n+1)+A010702(n)-1`
-/

namespace A033160.P10770774542532572147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + (A010702 n - 1)

end

end A033160.P10770774542532572147

namespace A033160

/-- `A005836(n+1)+A010702(n)-1` -/
def P10770774542532572147.Spec : Prop :=
  ∀ n, P10770774542532572147.a n = A033160 (n + 1)

end A033160

/-! ## A033160.P1770921121779906178

`A033159(n+1)+A000034(n)-1`
-/

namespace A033160.P1770921121779906178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (n + 1) + (A000034 n - 1)

end

end A033160.P1770921121779906178

namespace A033160

/-- `A033159(n+1)+A000034(n)-1` -/
def P1770921121779906178.Spec : Prop :=
  ∀ n, P1770921121779906178.a n = A033160 (n + 1)

end A033160

/-!
# A033161: Begins with (2, 5); avoids 3-term arithmetic progressions.

The programs for A033161, the canonical program `A033161.P7450569827711651060` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033161 has offset 1).

The definition of A033161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033161.P1500844241700021257

`A033157(n+1)+1`
-/

namespace A033161.P1500844241700021257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033157 (n + 1) + 1

end

end A033161.P1500844241700021257

namespace A033161

/-- `A033157(n+1)+1` -/
def P1500844241700021257.Spec : Prop :=
  ∀ n, P1500844241700021257.a n = A033161 (n + 1)

theorem P1500844241700021257.correct : P1500844241700021257.Spec := by
  intro n
  simp only [A033161, Nat.add_sub_cancel, A033161.P1500844241700021257.a, A033161.P7450569827711651060.a, A033157, A033157.P10781485780208723287.a, A033160, A033160.P14903934844071324041.a, A140081, A140081.P14265476151605300908.a, A004793, A004793.P14402439767548149062.a, A185256, A185256.P14243737951295279238.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033161

/-! ## A033161.P6750936404782711419

`A185256(n+1)+2`
-/

namespace A033161.P6750936404782711419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185256 (n + 1) + 2

end

end A033161.P6750936404782711419

namespace A033161

/-- `A185256(n+1)+2` -/
def P6750936404782711419.Spec : Prop :=
  ∀ n, P6750936404782711419.a n = A033161 (n + 1)

theorem P6750936404782711419.correct : P6750936404782711419.Spec := by
  intro n
  simp only [A033161, Nat.add_sub_cancel, A033161.P6750936404782711419.a, A033161.P7450569827711651060.a, A033160, A033160.P14903934844071324041.a, A140081, A140081.P14265476151605300908.a, A185256, A185256.P14243737951295279238.a, A004793, A004793.P14402439767548149062.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033161

/-! ## A033161.P7450569827711651060

`A140081(n)+A033160(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A033161

/-- `A140081(n)+A033160(n+1)` -/
def P7450569827711651060.Spec : Prop :=
  ∀ n, P7450569827711651060.a n = A033161 (n + 1)

theorem P7450569827711651060.correct : P7450569827711651060.Spec := by
  intro n
  simp only [A033161, Nat.add_sub_cancel]

end A033161

/-! ## A033161.P1233784405503089872

`A033163(n+1)-A102560(n)`
-/

namespace A033161.P1233784405503089872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033163 (n + 1) - A102560 n

end

end A033161.P1233784405503089872

namespace A033161

/-- `A033163(n+1)-A102560(n)` -/
def P1233784405503089872.Spec : Prop :=
  ∀ n, P1233784405503089872.a n = A033161 (n + 1)

end A033161

/-! ## A033161.P7599194109696362807

`A004793(n+1)+A140081(n)+1`
-/

namespace A033161.P7599194109696362807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + (A140081 n + 1)

end

end A033161.P7599194109696362807

namespace A033161

/-- `A004793(n+1)+A140081(n)+1` -/
def P7599194109696362807.Spec : Prop :=
  ∀ n, P7599194109696362807.a n = A033161 (n + 1)

theorem P7599194109696362807.correct : P7599194109696362807.Spec := by
  intro n
  simp only [A033161, Nat.add_sub_cancel, A033161.P7599194109696362807.a, A033161.P7450569827711651060.a, A004793, A004793.P14402439767548149062.a, A033160, A033160.P14903934844071324041.a, A140081, A140081.P14265476151605300908.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033161

/-! ## A033161.P2949011218513718619

`A033160(n+1)+1-A102560(n)`
-/

namespace A033161.P2949011218513718619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (n + 1) + (1 - A102560 n)

end

end A033161.P2949011218513718619

namespace A033161

/-- `A033160(n+1)+1-A102560(n)` -/
def P2949011218513718619.Spec : Prop :=
  ∀ n, P2949011218513718619.a n = A033161 (n + 1)

end A033161

/-! ## A033161.P11290081665926338834

`A186776(n+1)+A140081(n)+2`
-/

namespace A033161.P11290081665926338834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (n + 1) + (A140081 n + 2)

end

end A033161.P11290081665926338834

namespace A033161

/-- `A186776(n+1)+A140081(n)+2` -/
def P11290081665926338834.Spec : Prop :=
  ∀ n, P11290081665926338834.a n = A033161 (n + 1)

theorem P11290081665926338834.correct : P11290081665926338834.Spec := by
  intro n
  simp only [A033161, Nat.add_sub_cancel, A033161.P11290081665926338834.a, A033161.P7450569827711651060.a, A033160, A033160.P14903934844071324041.a, A140081, A140081.P14265476151605300908.a, A186776, A186776.P17009521900512411188.a, A004793, A004793.P14402439767548149062.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033161

/-! ## A033161.P15454416873678968993

`A004793(n+1)+2-A102560(n)`
-/

namespace A033161.P15454416873678968993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + (2 - A102560 n)

end

end A033161.P15454416873678968993

namespace A033161

/-- `A004793(n+1)+2-A102560(n)` -/
def P15454416873678968993.Spec : Prop :=
  ∀ n, P15454416873678968993.a n = A033161 (n + 1)

end A033161

/-! ## A033161.P13029166268251176222

`A005836(n+1)+Δ[A187326(n)]+2`
-/

namespace A033161.P13029166268251176222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + (f1 (n + 1) - f1 n + 2)

end

end A033161.P13029166268251176222

namespace A033161

/-- `A005836(n+1)+Δ[A187326(n)]+2` -/
def P13029166268251176222.Spec : Prop :=
  ∀ n, P13029166268251176222.a n = A033161 (n + 1)

end A033161

/-! ## A033161.P3303076750053054614

`A003278(n+1)+Δ[A187331(n)]`
-/

namespace A033161.P3303076750053054614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + (f1 (n + 1) - f1 n)

end

end A033161.P3303076750053054614

namespace A033161

/-- `A003278(n+1)+Δ[A187331(n)]` -/
def P3303076750053054614.Spec : Prop :=
  ∀ n, P3303076750053054614.a n = A033161 (n + 1)

end A033161

/-! ## A033161.P15972101834903612919

`A004793(n+1)+Δ[A047487(n+1)]`
-/

namespace A033161.P15972101834903612919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + (f1 (n + 1) - f1 n)

end

end A033161.P15972101834903612919

namespace A033161

/-- `A004793(n+1)+Δ[A047487(n+1)]` -/
def P15972101834903612919.Spec : Prop :=
  ∀ n, P15972101834903612919.a n = A033161 (n + 1)

end A033161

/-! ## A033161.P14227638099735388349

`A004793(n+1)+Δ[A047624(n+1)]`
-/

namespace A033161.P14227638099735388349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + (f1 (n + 1) - f1 n)

end

end A033161.P14227638099735388349

namespace A033161

/-- `A004793(n+1)+Δ[A047624(n+1)]` -/
def P14227638099735388349.Spec : Prop :=
  ∀ n, P14227638099735388349.a n = A033161 (n + 1)

end A033161

/-! ## A033161.P12985181090409006228

`∪[A033160(2*n+1), A033160(2*(n+1))+2]`
-/

namespace A033161.P12985181090409006228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (2 * (n + 1)) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033161.P12985181090409006228

namespace A033161

/-- `∪[A033160(2*n+1), A033160(2*(n+1))+2]` -/
def P12985181090409006228.Spec : Prop :=
  ∀ n, (P12985181090409006228.a n : ℤ) = A033161 (n + 1)

end A033161

/-! ## A033161.P18361588882377766373

`A004793(n+1)+2-A056594(A184552(n))`
-/

namespace A033161.P18361588882377766373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + (2 - A056594 (A184552 n).toNat)

end

end A033161.P18361588882377766373

namespace A033161

/-- `A004793(n+1)+2-A056594(A184552(n))` -/
def P18361588882377766373.Spec : Prop :=
  ∀ n, P18361588882377766373.a n = A033161 (n + 1)

end A033161

/-! ## A033161.P9714008508476102891

`A020725(A033157(n+1))`
-/

namespace A033161.P9714008508476102891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A033157 (n + 1)).toNat

end

end A033161.P9714008508476102891

namespace A033161

/-- `A020725(A033157(n+1))` -/
def P9714008508476102891.Spec : Prop :=
  ∀ n, P9714008508476102891.a n = A033161 (n + 1)

end A033161

/-!
# A033162: Begins with (3, 4); avoids 3-term arithmetic progressions.

The programs for A033162, the canonical program `A033162.P7238810650914516972` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033162 has offset 1).

The definition of A033162 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033162.P7238810650914516972

`A005836(n+1)+3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033162

/-- `A005836(n+1)+3` -/
def P7238810650914516972.Spec : Prop :=
  ∀ n, P7238810650914516972.a n = A033162 (n + 1)

theorem P7238810650914516972.correct : P7238810650914516972.Spec := by
  intro n
  simp only [A033162, Nat.add_sub_cancel]

end A033162

/-! ## A033162.P17586612110338141210

`(∑[and(n, -n)^log2(3)]+n)/2+3`
-/

namespace A033162.P17586612110338141210
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2 + 3

end

end A033162.P17586612110338141210

namespace A033162

/-- `(∑[and(n, -n)^log2(3)]+n)/2+3` -/
def P17586612110338141210.Spec : Prop :=
  ∀ n, P17586612110338141210.a n = (A033162 (n + 1) : ℝ)

end A033162

/-! ## A033162.P10139980098574473356

`∑[3*a(floor(n/2))-a(n-1)]` with `a(0)=3, a(1)=1`
-/

namespace A033162.P10139980098574473356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033162.P10139980098574473356

namespace A033162

/-- `∑[3*a(floor(n/2))-a(n-1)]` -/
def P10139980098574473356.Spec : Prop :=
  ∀ n, P10139980098574473356.a n = A033162 (n + 1)

end A033162

/-! ## A033162.P16159444885182396610

`2*a(n-1)+1-a(and(n, n-1))` with `a(0)=3`
-/

namespace A033162.P16159444885182396610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * a (n - 1) + (1 - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A033162.P16159444885182396610

namespace A033162

/-- `2*a(n-1)+1-a(and(n, n-1))` -/
def P16159444885182396610.Spec : Prop :=
  ∀ n, P16159444885182396610.a n = A033162 (n + 1)

end A033162

/-! ## A033162.P1197860770804452663

`A033159(n+1)+1`
-/

namespace A033162.P1197860770804452663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (n + 1) + 1

end

end A033162.P1197860770804452663

namespace A033162

/-- `A033159(n+1)+1` -/
def P1197860770804452663.Spec : Prop :=
  ∀ n, P1197860770804452663.a n = A033162 (n + 1)

end A033162

/-! ## A033162.P11698361822415269813

`A003278(n+1)+2`
-/

namespace A033162.P11698361822415269813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + 2

end

end A033162.P11698361822415269813

namespace A033162

/-- `A003278(n+1)+2` -/
def P11698361822415269813.Spec : Prop :=
  ∀ n, P11698361822415269813.a n = A033162 (n + 1)

end A033162

/-! ## A033162.P11011561063121189704

`A033164(n+1)-1`
-/

namespace A033162.P11011561063121189704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033164 (n + 1) - 1

end

end A033162.P11011561063121189704

namespace A033162

/-- `A033164(n+1)-1` -/
def P11011561063121189704.Spec : Prop :=
  ∀ n, P11011561063121189704.a n = A033162 (n + 1)

end A033162

/-! ## A033162.P5664061018768248382

`A005823(n+1)/2+3`
-/

namespace A033162.P5664061018768248382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005823 (n + 1) : ℚ) / 2 + 3

end

end A033162.P5664061018768248382

namespace A033162

/-- `A005823(n+1)/2+3` -/
def P5664061018768248382.Spec : Prop :=
  ∀ n, P5664061018768248382.a n = (A033162 (n + 1) : ℚ)

theorem P5664061018768248382.correct : P5664061018768248382.Spec := by
  intro n
  simp only [A033162, Nat.add_sub_cancel, A033162.P5664061018768248382.a, A033162.P7238810650914516972.a, A005823, A005823.P15253501149959078210.a, A005836, A005836.P12367569128854000442.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033162

/-! ## A033162.P3544377768324505717

`A081601(n+1)/3+3`
-/

namespace A033162.P3544377768324505717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081601 (n + 1) : ℚ) / 3 + 3

end

end A033162.P3544377768324505717

namespace A033162

/-- `A081601(n+1)/3+3` -/
def P3544377768324505717.Spec : Prop :=
  ∀ n, P3544377768324505717.a n = (A033162 (n + 1) : ℚ)

theorem P3544377768324505717.correct : P3544377768324505717.Spec := by
  intro n
  simp only [A033162, Nat.add_sub_cancel, A033162.P3544377768324505717.a, A033162.P7238810650914516972.a, A005836, A005836.P12367569128854000442.a, A081601, A081601.P7694742959722061994.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033162

/-! ## A033162.P704414875073538116

`(A191106(n+1)+5)/2`
-/

namespace A033162.P704414875073538116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191106 (n + 1) + 5 : ℚ) / 2

end

end A033162.P704414875073538116

namespace A033162

/-- `(A191106(n+1)+5)/2` -/
def P704414875073538116.Spec : Prop :=
  ∀ n, P704414875073538116.a n = (A033162 (n + 1) : ℚ)

theorem P704414875073538116.correct : P704414875073538116.Spec := by
  intro n
  simp only [A033162, Nat.add_sub_cancel, A033162.P704414875073538116.a, A033162.P7238810650914516972.a, A005836, A005836.P12367569128854000442.a, A191106, A191106.P14318960782642290276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033162

/-! ## A033162.P13837255477759766985

`A004793(n+1)+gcd(2, n)`
-/

namespace A033162.P13837255477759766985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + (Nat.gcd 2 n : ℤ)

end

end A033162.P13837255477759766985

namespace A033162

/-- `A004793(n+1)+gcd(2, n)` -/
def P13837255477759766985.Spec : Prop :=
  ∀ n, P13837255477759766985.a n = A033162 (n + 1)

end A033162

/-! ## A033162.P3925059907067253986

`A236313(n)+a(n-1)` with `a(0)=3`
-/

namespace A033162.P3925059907067253986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A236313 n + a (n - 1)

end

end A033162.P3925059907067253986

namespace A033162

/-- `A236313(n)+a(n-1)` -/
def P3925059907067253986.Spec : Prop :=
  ∀ n, P3925059907067253986.a n = A033162 (n + 1)

end A033162

/-! ## A033162.P326928287298887744

`A059841(n)+A033160(n+1)`
-/

namespace A033162.P326928287298887744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A033160 (n + 1)

end

end A033162.P326928287298887744

namespace A033162

/-- `A059841(n)+A033160(n+1)` -/
def P326928287298887744.Spec : Prop :=
  ∀ n, P326928287298887744.a n = A033162 (n + 1)

end A033162

/-! ## A033162.P53519939585506354

`A186776(n+1)+A176059(n)`
-/

namespace A033162.P53519939585506354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (n + 1) + A176059 n

end

end A033162.P53519939585506354

namespace A033162

/-- `A186776(n+1)+A176059(n)` -/
def P53519939585506354.Spec : Prop :=
  ∀ n, P53519939585506354.a n = A033162 (n + 1)

end A033162

/-! ## A033162.P3558880396395071368

`A033163(n+1)-A000035(n)`
-/

namespace A033162.P3558880396395071368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033163 (n + 1) - A000035 n

end

end A033162.P3558880396395071368

namespace A033162

/-- `A033163(n+1)-A000035(n)` -/
def P3558880396395071368.Spec : Prop :=
  ∀ n, P3558880396395071368.a n = A033162 (n + 1)

end A033162

/-! ## A033162.P10073817127500829347

`A004793(n+1)+A059841(n)+1`
-/

namespace A033162.P10073817127500829347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + (A059841 n + 1)

end

end A033162.P10073817127500829347

namespace A033162

/-- `A004793(n+1)+A059841(n)+1` -/
def P10073817127500829347.Spec : Prop :=
  ∀ n, P10073817127500829347.a n = A033162 (n + 1)

end A033162

/-! ## A033162.P9388852113688404502

`A033160(n+1)+1-A000035(n)`
-/

namespace A033162.P9388852113688404502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (n + 1) + (1 - A000035 n)

end

end A033162.P9388852113688404502

namespace A033162

/-- `A033160(n+1)+1-A000035(n)` -/
def P9388852113688404502.Spec : Prop :=
  ∀ n, P9388852113688404502.a n = A033162 (n + 1)

end A033162

/-! ## A033162.P14134857874295962237

`A033163(n+1)+1-A000034(n)`
-/

namespace A033162.P14134857874295962237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033163 (n + 1) + (1 - A000034 n)

end

end A033162.P14134857874295962237

namespace A033162

/-- `A033163(n+1)+1-A000034(n)` -/
def P14134857874295962237.Spec : Prop :=
  ∀ n, P14134857874295962237.a n = A033162 (n + 1)

end A033162

/-! ## A033162.P13558932729990055640

`A033163(n+1)+A059841(n)-1`
-/

namespace A033162.P13558932729990055640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033163 (n + 1) + (A059841 n - 1)

end

end A033162.P13558932729990055640

namespace A033162

/-- `A033163(n+1)+A059841(n)-1` -/
def P13558932729990055640.Spec : Prop :=
  ∀ n, P13558932729990055640.a n = A033162 (n + 1)

end A033162

/-! ## A033162.P17385871536196237436

`A004793(n+1)+A176059(n)-1`
-/

namespace A033162.P17385871536196237436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + (A176059 n - 1)

end

end A033162.P17385871536196237436

namespace A033162

/-- `A004793(n+1)+A176059(n)-1` -/
def P17385871536196237436.Spec : Prop :=
  ∀ n, P17385871536196237436.a n = A033162 (n + 1)

end A033162

/-!
# A033163: Begins with (3, 5) and avoids 3-term arithmetic progressions.

The programs for A033163, the canonical program `A033163.P3512797110537312179` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033163 has offset 1).

The definition of A033163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033163.P5054415243997597865

`(∑[and(n, -n)^log2(3)]+n)/2+n%2+3`
-/

namespace A033163.P5054415243997597865
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2 + ((n % 2 + 3 : ℕ) : ℝ)

end

end A033163.P5054415243997597865

namespace A033163

/-- `(∑[and(n, -n)^log2(3)]+n)/2+n%2+3` -/
def P5054415243997597865.Spec : Prop :=
  ∀ n, P5054415243997597865.a n = (A033163 (n + 1) : ℝ)

end A033163

/-! ## A033163.P425990394944487532

`(∑[and(n, -n)^log2(3)]+n)/2+4-∑[(-1)^n]`
-/

namespace A033163.P425990394944487532
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2 + 4 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℝ)

end

end A033163.P425990394944487532

namespace A033163

/-- `(∑[and(n, -n)^log2(3)]+n)/2+4-∑[(-1)^n]` -/
def P425990394944487532.Spec : Prop :=
  ∀ n, P425990394944487532.a n = (A033163 (n + 1) : ℝ)

end A033163

/-! ## A033163.P3512797110537312179

`A033160(n+1)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A033163

/-- `A033160(n+1)+1` -/
def P3512797110537312179.Spec : Prop :=
  ∀ n, P3512797110537312179.a n = A033163 (n + 1)

theorem P3512797110537312179.correct : P3512797110537312179.Spec := by
  intro n
  simp only [A033163, Nat.add_sub_cancel]

end A033163

/-! ## A033163.P5704799771639193239

`A004793(n+1)+2`
-/

namespace A033163.P5704799771639193239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + 2

end

end A033163.P5704799771639193239

namespace A033163

/-- `A004793(n+1)+2` -/
def P5704799771639193239.Spec : Prop :=
  ∀ n, P5704799771639193239.a n = A033163 (n + 1)

theorem P5704799771639193239.correct : P5704799771639193239.Spec := by
  intro n
  simp only [A033163, Nat.add_sub_cancel, A033163.P5704799771639193239.a, A033163.P3512797110537312179.a, A004793, A004793.P14402439767548149062.a, A033160, A033160.P14903934844071324041.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033163

/-! ## A033163.P2322954222162184495

`A186776(n+1)+3`
-/

namespace A033163.P2322954222162184495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (n + 1) + 3

end

end A033163.P2322954222162184495

namespace A033163

/-- `A186776(n+1)+3` -/
def P2322954222162184495.Spec : Prop :=
  ∀ n, P2322954222162184495.a n = A033163 (n + 1)

theorem P2322954222162184495.correct : P2322954222162184495.Spec := by
  intro n
  simp only [A033163, Nat.add_sub_cancel, A033163.P2322954222162184495.a, A033163.P3512797110537312179.a, A033160, A033160.P14903934844071324041.a, A186776, A186776.P17009521900512411188.a, A004793, A004793.P14402439767548149062.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033163

/-! ## A033163.P8988655995768284962

`A033162(n+1)+n%2`
-/

namespace A033163.P8988655995768284962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033162 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A033163.P8988655995768284962

namespace A033163

/-- `A033162(n+1)+n%2` -/
def P8988655995768284962.Spec : Prop :=
  ∀ n, P8988655995768284962.a n = A033163 (n + 1)

end A033163

/-! ## A033163.P11623413651593190037

`A033164(n+1)-char[2*n]`
-/

namespace A033163.P11623413651593190037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033164 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A033163.P11623413651593190037

namespace A033163

/-- `A033164(n+1)-char[2*n]` -/
def P11623413651593190037.Spec : Prop :=
  ∀ n, P11623413651593190037.a n = A033163 (n + 1)

end A033163

/-! ## A033163.P5544545873466704165

`and(1, n)+A003278(n+1)+2`
-/

namespace A033163.P5544545873466704165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + (A003278 (n + 1) + 2)

end

end A033163.P5544545873466704165

namespace A033163

/-- `and(1, n)+A003278(n+1)+2` -/
def P5544545873466704165.Spec : Prop :=
  ∀ n, P5544545873466704165.a n = A033163 (n + 1)

end A033163

/-! ## A033163.P12660954979353076236

`and(1, n)+A005836(n+1)+3`
-/

namespace A033163.P12660954979353076236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + (A005836 (n + 1) + 3)

end

end A033163.P12660954979353076236

namespace A033163

/-- `and(1, n)+A005836(n+1)+3` -/
def P12660954979353076236.Spec : Prop :=
  ∀ n, P12660954979353076236.a n = A033163 (n + 1)

end A033163

/-! ## A033163.P17950365407522956896

`A010693(n)+A003278(n+1)`
-/

namespace A033163.P17950365407522956896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n + A003278 (n + 1)

end

end A033163.P17950365407522956896

namespace A033163

/-- `A010693(n)+A003278(n+1)` -/
def P17950365407522956896.Spec : Prop :=
  ∀ n, P17950365407522956896.a n = A033163 (n + 1)

end A033163

/-! ## A033163.P14902057211275244818

`A010702(n)+A005836(n+1)`
-/

namespace A033163.P14902057211275244818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 n + A005836 (n + 1)

end

end A033163.P14902057211275244818

namespace A033163

/-- `A010702(n)+A005836(n+1)` -/
def P14902057211275244818.Spec : Prop :=
  ∀ n, P14902057211275244818.a n = A033163 (n + 1)

end A033163

/-! ## A033163.P13187648853588962233

`A033159(n+1)+A000034(n)`
-/

namespace A033163.P13187648853588962233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (n + 1) + A000034 n

end

end A033163.P13187648853588962233

namespace A033163

/-- `A033159(n+1)+A000034(n)` -/
def P13187648853588962233.Spec : Prop :=
  ∀ n, P13187648853588962233.a n = A033163 (n + 1)

end A033163

/-! ## A033163.P3817976275707608900

`A033162(n+1)+A000035(n)`
-/

namespace A033163.P3817976275707608900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033162 (n + 1) + A000035 n

end

end A033163.P3817976275707608900

namespace A033163

/-- `A033162(n+1)+A000035(n)` -/
def P3817976275707608900.Spec : Prop :=
  ∀ n, P3817976275707608900.a n = A033163 (n + 1)

end A033163

/-! ## A033163.P9462525633483029145

`A102560(n)+A033161(n+1)`
-/

namespace A033163.P9462525633483029145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n + A033161 (n + 1)

end

end A033163.P9462525633483029145

namespace A033163

/-- `A102560(n)+A033161(n+1)` -/
def P9462525633483029145.Spec : Prop :=
  ∀ n, P9462525633483029145.a n = A033163 (n + 1)

end A033163

/-! ## A033163.P3519357741150284408

`A033162(n+1)+char[A005408(n)]`
-/

namespace A033163.P3519357741150284408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033162 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A033163.P3519357741150284408

namespace A033163

/-- `A033162(n+1)+char[A005408(n)]` -/
def P3519357741150284408.Spec : Prop :=
  ∀ n, P3519357741150284408.a n = A033163 (n + 1)

end A033163

/-! ## A033163.P13686617897028422797

`A003278(n+1)+A000034(n)+1`
-/

namespace A033163.P13686617897028422797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + (A000034 n + 1)

end

end A033163.P13686617897028422797

namespace A033163

/-- `A003278(n+1)+A000034(n)+1` -/
def P13686617897028422797.Spec : Prop :=
  ∀ n, P13686617897028422797.a n = A033163 (n + 1)

theorem P13686617897028422797.correct : P13686617897028422797.Spec := by
  intro n
  simp only [A033163, Nat.add_sub_cancel, A033163.P13686617897028422797.a, A033163.P3512797110537312179.a, A000034, A000034.P10773112074177680709.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, A033160, A033160.P14903934844071324041.a, A004793, A004793.P14402439767548149062.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033163

/-! ## A033163.P16016749651296513693

`A005836(n+1)+A010693(n)+1`
-/

namespace A033163.P16016749651296513693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + (A010693 n + 1)

end

end A033163.P16016749651296513693

namespace A033163

/-- `A005836(n+1)+A010693(n)+1` -/
def P16016749651296513693.Spec : Prop :=
  ∀ n, P16016749651296513693.a n = A033163 (n + 1)

end A033163

/-! ## A033163.P8992691268806149911

`A033159(n+1)+A000035(n)+1`
-/

namespace A033163.P8992691268806149911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (n + 1) + (A000035 n + 1)

end

end A033163.P8992691268806149911

namespace A033163

/-- `A033159(n+1)+A000035(n)+1` -/
def P8992691268806149911.Spec : Prop :=
  ∀ n, P8992691268806149911.a n = A033163 (n + 1)

end A033163

/-! ## A033163.P15341520183640475083

`A033157(n+1)+A102560(n)+1`
-/

namespace A033163.P15341520183640475083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033157 (n + 1) + (A102560 n + 1)

end

end A033163.P15341520183640475083

namespace A033163

/-- `A033157(n+1)+A102560(n)+1` -/
def P15341520183640475083.Spec : Prop :=
  ∀ n, P15341520183640475083.a n = A033163 (n + 1)

end A033163

/-! ## A033163.P4062866197221332498

`A003278(n+1)+A000035(n)+2`
-/

namespace A033163.P4062866197221332498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + (A000035 n + 2)

end

end A033163.P4062866197221332498

namespace A033163

/-- `A003278(n+1)+A000035(n)+2` -/
def P4062866197221332498.Spec : Prop :=
  ∀ n, P4062866197221332498.a n = A033163 (n + 1)

theorem P4062866197221332498.correct : P4062866197221332498.Spec := by
  intro n
  simp only [A033163, Nat.add_sub_cancel, A033163.P4062866197221332498.a, A033163.P3512797110537312179.a, A000035, A000035.P2023072528413494694.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, A033160, A033160.P14903934844071324041.a, A004793, A004793.P14402439767548149062.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033163

/-!
# A033164: Begins with (4, 5); avoids 3-term arithmetic progressions.

The programs for A033164, the canonical program `A033164.P14513936038222872281` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033164 has offset 1).

The definition of A033164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033164.P12847475779814949861

`(∑[and(n, -n)^log2(3)]+n)/2+4`
-/

namespace A033164.P12847475779814949861
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2 + 4

end

end A033164.P12847475779814949861

namespace A033164

/-- `(∑[and(n, -n)^log2(3)]+n)/2+4` -/
def P12847475779814949861.Spec : Prop :=
  ∀ n, P12847475779814949861.a n = (A033164 (n + 1) : ℝ)

end A033164

/-! ## A033164.P14513936038222872281

`∑[3*a(floor(n/2))-a(n-1)]` with `a(0)=4, a(1)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033164

/-- `∑[3*a(floor(n/2))-a(n-1)]` -/
def P14513936038222872281.Spec : Prop :=
  ∀ n, P14513936038222872281.a n = A033164 (n + 1)

theorem P14513936038222872281.correct : P14513936038222872281.Spec := by
  intro n
  simp only [A033164, Nat.add_sub_cancel]

end A033164

/-! ## A033164.P12628313592116729336

`2*a(n-1)+1-a(and(n, n-1))` with `a(0)=4`
-/

namespace A033164.P12628313592116729336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  2 * a (n - 1) + (1 - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A033164.P12628313592116729336

namespace A033164

/-- `2*a(n-1)+1-a(and(n, n-1))` -/
def P12628313592116729336.Spec : Prop :=
  ∀ n, P12628313592116729336.a n = A033164 (n + 1)

end A033164

/-! ## A033164.P11254016660459099763

`A033162(n+1)+1`
-/

namespace A033164.P11254016660459099763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033162 (n + 1) + 1

end

end A033164.P11254016660459099763

namespace A033164

/-- `A033162(n+1)+1` -/
def P11254016660459099763.Spec : Prop :=
  ∀ n, P11254016660459099763.a n = A033164 (n + 1)

end A033164

/-! ## A033164.P5728973060068866816

`A033159(n+1)+2`
-/

namespace A033164.P5728973060068866816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (n + 1) + 2

end

end A033164.P5728973060068866816

namespace A033164

/-- `A033159(n+1)+2` -/
def P5728973060068866816.Spec : Prop :=
  ∀ n, P5728973060068866816.a n = A033164 (n + 1)

end A033164

/-! ## A033164.P17255026572148290398

`A003278(n+1)+3`
-/

namespace A033164.P17255026572148290398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + 3

end

end A033164.P17255026572148290398

namespace A033164

/-- `A003278(n+1)+3` -/
def P17255026572148290398.Spec : Prop :=
  ∀ n, P17255026572148290398.a n = A033164 (n + 1)

end A033164

/-! ## A033164.P10311201175786006717

`4+A005836(n+1)`
-/

namespace A033164.P10311201175786006717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + A005836 (n + 1)

end

end A033164.P10311201175786006717

namespace A033164

/-- `4+A005836(n+1)` -/
def P10311201175786006717.Spec : Prop :=
  ∀ n, P10311201175786006717.a n = A033164 (n + 1)

end A033164

/-! ## A033164.P5468502787701556883

`A005823(n+1)/2+4`
-/

namespace A033164.P5468502787701556883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005823 (n + 1) : ℚ) / 2 + 4

end

end A033164.P5468502787701556883

namespace A033164

/-- `A005823(n+1)/2+4` -/
def P5468502787701556883.Spec : Prop :=
  ∀ n, P5468502787701556883.a n = (A033164 (n + 1) : ℚ)

end A033164

/-! ## A033164.P12078042920441903068

`A081601(n+1)/3+4`
-/

namespace A033164.P12078042920441903068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081601 (n + 1) : ℚ) / 3 + 4

end

end A033164.P12078042920441903068

namespace A033164

/-- `A081601(n+1)/3+4` -/
def P12078042920441903068.Spec : Prop :=
  ∀ n, P12078042920441903068.a n = (A033164 (n + 1) : ℚ)

end A033164

/-! ## A033164.P11805767790441837733

`A236313(n)+a(n-1)` with `a(0)=4`
-/

namespace A033164.P11805767790441837733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A236313 n + a (n - 1)

end

end A033164.P11805767790441837733

namespace A033164

/-- `A236313(n)+a(n-1)` -/
def P11805767790441837733.Spec : Prop :=
  ∀ n, P11805767790441837733.a n = A033164 (n + 1)

end A033164

/-! ## A033164.P12857357345327176789

`A033163(n+1)+char[2*n]`
-/

namespace A033164.P12857357345327176789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033163 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A033164.P12857357345327176789

namespace A033164

/-- `A033163(n+1)+char[2*n]` -/
def P12857357345327176789.Spec : Prop :=
  ∀ n, P12857357345327176789.a n = A033164 (n + 1)

end A033164

/-! ## A033164.P10756398938885662895

`A004793(n+1)+3-n%2`
-/

namespace A033164.P10756398938885662895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + (3 - ((n % 2 : ℕ) : ℤ))

end

end A033164.P10756398938885662895

namespace A033164

/-- `A004793(n+1)+3-n%2` -/
def P10756398938885662895.Spec : Prop :=
  ∀ n, P10756398938885662895.a n = A033164 (n + 1)

end A033164

/-! ## A033164.P4532365942117341024

`A059841(n)+A033163(n+1)`
-/

namespace A033164.P4532365942117341024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A033163 (n + 1)

end

end A033164.P4532365942117341024

namespace A033164

/-- `A059841(n)+A033163(n+1)` -/
def P4532365942117341024.Spec : Prop :=
  ∀ n, P4532365942117341024.a n = A033164 (n + 1)

end A033164

/-! ## A033164.P12894607335911577928

`A176059(n)+A004793(n+1)`
-/

namespace A033164.P12894607335911577928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n + A004793 (n + 1)

end

end A033164.P12894607335911577928

namespace A033164

/-- `A176059(n)+A004793(n+1)` -/
def P12894607335911577928.Spec : Prop :=
  ∀ n, P12894607335911577928.a n = A033164 (n + 1)

end A033164

/-! ## A033164.P147992015989826615

`A033160(n+1)+A059841(n)+1`
-/

namespace A033164.P147992015989826615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (n + 1) + (A059841 n + 1)

end

end A033164.P147992015989826615

namespace A033164

/-- `A033160(n+1)+A059841(n)+1` -/
def P147992015989826615.Spec : Prop :=
  ∀ n, P147992015989826615.a n = A033164 (n + 1)

end A033164

/-! ## A033164.P6901213033385254470

`A186776(n+1)+A176059(n)+1`
-/

namespace A033164.P6901213033385254470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (n + 1) + (A176059 n + 1)

end

end A033164.P6901213033385254470

namespace A033164

/-- `A186776(n+1)+A176059(n)+1` -/
def P6901213033385254470.Spec : Prop :=
  ∀ n, P6901213033385254470.a n = A033164 (n + 1)

end A033164

/-! ## A033164.P7490787781634840434

`A004793(n+1)+A059841(n)+2`
-/

namespace A033164.P7490787781634840434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + (A059841 n + 2)

end

end A033164.P7490787781634840434

namespace A033164

/-- `A004793(n+1)+A059841(n)+2` -/
def P7490787781634840434.Spec : Prop :=
  ∀ n, P7490787781634840434.a n = A033164 (n + 1)

end A033164

/-! ## A033164.P10085023806037604991

`A033160(n+1)+2-A000035(n)`
-/

namespace A033164.P10085023806037604991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (n + 1) + (2 - A000035 n)

end

end A033164.P10085023806037604991

namespace A033164

/-- `A033160(n+1)+2-A000035(n)` -/
def P10085023806037604991.Spec : Prop :=
  ∀ n, P10085023806037604991.a n = A033164 (n + 1)

end A033164

/-! ## A033164.P11088984412507227300

`A033160(n+1)+2/A000034(n)`
-/

namespace A033164.P11088984412507227300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033160 (n + 1) : ℚ) + 2 / (A000034 n : ℚ)

end

end A033164.P11088984412507227300

namespace A033164

/-- `A033160(n+1)+2/A000034(n)` -/
def P11088984412507227300.Spec : Prop :=
  ∀ n, P11088984412507227300.a n = (A033164 (n + 1) : ℚ)

end A033164

/-! ## A033164.P5384468366278525114

`A033160(n+1)+A000034(n+1)`
-/

namespace A033164.P5384468366278525114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (n + 1) + A000034 (n + 1)

end

end A033164.P5384468366278525114

namespace A033164

/-- `A033160(n+1)+A000034(n+1)` -/
def P5384468366278525114.Spec : Prop :=
  ∀ n, P5384468366278525114.a n = A033164 (n + 1)

end A033164

/-!
# A033165: First occurrence of n as a term in the continued fraction for zeta(3).

The programs for A033165, there is no canonical definition to state claims against.
-/

/-! ## A033165.P2324747308001325457

`1+A229057(n+1)`
-/

namespace A033165.P2324747308001325457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A229057 (n + 1)

end

end A033165.P2324747308001325457

/-!
# A033166: Incrementally largest terms in the continued fraction for zeta(3).

The programs for A033166, there is no canonical definition to state claims against.
-/

/-! ## A033166.P3005587612041576542

`record[A013631(n)]`
-/

namespace A033166.P3005587612041576542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033166.P3005587612041576542

/-! ## A033166.P2672646441933157343

`A013631(A229055(n+1))`
-/

namespace A033166.P2672646441933157343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013631 (A229055 (n + 1)).toNat

end

end A033166.P2672646441933157343

/-! ## A033166.P8104599105984200503

`A013631(A033167(n+1)-1)`
-/

namespace A033166.P8104599105984200503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013631 (A033167 (n + 1) - 1).toNat

end

end A033166.P8104599105984200503

/-!
# A033167: Positions of the incrementally largest terms in the continued fraction expansion of zeta(3), offset 1 variant.

The programs for A033167, there is no canonical definition to state claims against.
-/

/-! ## A033167.P17387406454120062153

`A229055(n+1)+1`
-/

namespace A033167.P17387406454120062153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229055 (n + 1) + 1

end

end A033167.P17387406454120062153

/-! ## A033167.P9802239030351926403

`A229057(A033166(n+1))+1`
-/

namespace A033167.P9802239030351926403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229057 (A033166 (n + 1)).toNat + 1

end

end A033167.P9802239030351926403

/-!
# A033170: Positive numbers having the same set of digits in base 6 and base 7.

The programs for A033170, there is no canonical definition to state claims against.
-/

/-! ## A033170.P10881396509721256335

`∑[A274709(A148019(n))]`
-/

namespace A033170.P10881396509721256335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274709 (A148019 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033170.P10881396509721256335

/-! ## A033170.P12159362149461288451

`record[A128495(∑[A173740(n)])]`
-/

namespace A033170.P12159362149461288451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173740 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128495 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033170.P12159362149461288451

/-! ## A033170.P6578785120851499703

`∑[∑{d}[A161492(A294410(n)), #]]`
-/

namespace A033170.P6578785120851499703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161492 (A294410 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033170.P6578785120851499703

/-!
# A033171: Number of days in n years (n=4 is the first leap year).

The programs for A033171, there is no canonical definition to state claims against.
-/

/-! ## A033171.P14759726023875539028

`A033173(n+1)-∑[n]%2`
-/

namespace A033171.P14759726023875539028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033173 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A033171.P14759726023875539028

/-! ## A033171.P18323783923433667024

`A033173(n+1)-char[A042963(n+1)]`
-/

namespace A033171.P18323783923433667024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033173 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A033171.P18323783923433667024

/-! ## A033171.P9815611245505481143

`∑[abs(Δ[A033174(n+1)])]`
-/

namespace A033171.P9815611245505481143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033174 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033171.P9815611245505481143

/-! ## A033171.P15353989447653805728

`∑[A000027(Δ[A033174(n+1)])]`
-/

namespace A033171.P15353989447653805728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033174 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033171.P15353989447653805728

/-! ## A033171.P1080834228892730820

`∑[A028310(Δ[A033174(n+1)])]`
-/

namespace A033171.P1080834228892730820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033174 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033171.P1080834228892730820

/-! ## A033171.P16030173389557689293

`∑[A033174(n+2)-A033174(n+1)]`
-/

namespace A033171.P16030173389557689293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033174 (n + 2) - A033174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033171.P16030173389557689293

/-! ## A033171.P18167256910806264753

`∑[abs(Δ[A033173(n+2)])]`
-/

namespace A033171.P18167256910806264753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033173 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033171.P18167256910806264753

/-! ## A033171.P3880062061712158352

`floor(A033172(2*(n+1))/2)`
-/

namespace A033171.P3880062061712158352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033172 (2 * (n + 1)) : ℚ) / 2⌋

end

end A033171.P3880062061712158352

/-! ## A033171.P11890122467980979303

`A033172(2*(n+1))-A033173(n+1)`
-/

namespace A033171.P11890122467980979303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033172 (2 * (n + 1)) - A033173 (n + 1)

end

end A033171.P11890122467980979303

/-! ## A033171.P4026072595756308066

`A033174(n+2)-(A011763(2*n+1)+1)`
-/

namespace A033171.P4026072595756308066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033174 (n + 2) - (A011763 (2 * n + 1) + 1)

end

end A033171.P4026072595756308066

/-!
# A033172: Number of days in n years (n=3 is the first leap year).

The programs for A033172, there is no canonical definition to state claims against.
-/

/-! ## A033172.P14212705575336104670

`A033174(n+1)-A133872(n)`
-/

namespace A033172.P14212705575336104670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033174 (n + 1) - A133872 n

end

end A033172.P14212705575336104670

/-! ## A033172.P5200723977462409759

`A033171(n+1)+char[A016825(n)]`
-/

namespace A033172.P5200723977462409759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033171 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A033172.P5200723977462409759

/-! ## A033172.P5359129131508865278

`A033173(n+1)-A000035(n*A133872(n))`
-/

namespace A033172.P5359129131508865278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033173 (n + 1) - A000035 ((n : ℤ) * A133872 n).toNat

end

end A033172.P5359129131508865278

/-! ## A033172.P5294527347467227932

`∑[abs(Δ[A033171(n+1)])]`
-/

namespace A033172.P5294527347467227932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033171 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033172.P5294527347467227932

/-! ## A033172.P12595781449609900736

`∑[A000027(Δ[A033171(n+1)])]`
-/

namespace A033172.P12595781449609900736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033171 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033172.P12595781449609900736

/-! ## A033172.P2812836244414949

`A033174(n+1)+A033171(n+2)-A033173(n+2)`
-/

namespace A033172.P2812836244414949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033174 (n + 1) + (A033171 (n + 2) - A033173 (n + 2))

end

end A033172.P2812836244414949

/-! ## A033172.P7117837529126939382

`∑[abs(Δ[A033174(n+2)])]`
-/

namespace A033172.P7117837529126939382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033174 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033172.P7117837529126939382

/-! ## A033172.P1845075746394850522

`∑[A000027(Δ[A033174(n+2)])]`
-/

namespace A033172.P1845075746394850522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033174 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033172.P1845075746394850522

/-! ## A033172.P17949147597245360565

`∑[A028310(Δ[A033174(n+2)])]`
-/

namespace A033172.P17949147597245360565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033174 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033172.P17949147597245360565

/-! ## A033172.P13929411749770246896

`A033171(n+1)+A000035(A064680(n))`
-/

namespace A033172.P13929411749770246896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033171 (n + 1) + A000035 (A064680 n).toNat

end

end A033172.P13929411749770246896

/-! ## A033172.P14119204108921324191

`A033173(2*(n+1))-A033174(n+1)`
-/

namespace A033172.P14119204108921324191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033173 (2 * (n + 1)) - A033174 (n + 1)

end

end A033172.P14119204108921324191

/-! ## A033172.P7908932717111050211

`A033174(2*(n+1))-A033174(n+1)`
-/

namespace A033172.P7908932717111050211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033174 (2 * (n + 1)) - A033174 (n + 1)

end

end A033172.P7908932717111050211

/-! ## A033172.P3455621184349167160

`A033173(n+1)-A000035(A064680(n+1))`
-/

namespace A033172.P3455621184349167160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033173 (n + 1) - A000035 (A064680 (n + 1)).toNat

end

end A033172.P3455621184349167160

/-! ## A033172.P1515529470559571451

`A033171(n+2)-A033171(A006519(2*n+1))`
-/

namespace A033172.P1515529470559571451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033171 (n + 2) - A033171 (A006519 (2 * n + 1)).toNat

end

end A033172.P1515529470559571451

/-! ## A033172.P3650913108427539269

`A033173(2*n+1)+A033171(n+2)-A033171(2*(n+1))`
-/

namespace A033172.P3650913108427539269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033173 (2 * n + 1) + (A033171 (n + 2) - A033171 (2 * (n + 1)))

end

end A033172.P3650913108427539269

/-! ## A033172.P17688689775676273163

`A033173(2*n+3)-A033173(n+2)`
-/

namespace A033172.P17688689775676273163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033173 (2 * n + 3) - A033173 (n + 2)

end

end A033172.P17688689775676273163

/-!
# A033173: Number of days in n years (n=2 is the first leap year).

The programs for A033173, there is no canonical definition to state claims against.
-/

/-! ## A033173.P8586457358866580699

`A033174(n+1)-A121262(n)`
-/

namespace A033173.P8586457358866580699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033174 (n + 1) - A121262 n

end

end A033173.P8586457358866580699

/-! ## A033173.P4782328776282870290

`A033172(n+1)+and(1, A000292(n))`
-/

namespace A033173.P4782328776282870290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033172 (n + 1) + Int.land 1 (A000292 n)

end

end A033173.P4782328776282870290

/-! ## A033173.P1325233327068876655

`A033174(n+1)-A133872(A133872(n)+n)`
-/

namespace A033173.P1325233327068876655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033174 (n + 1) - A133872 (A133872 n + (n : ℤ)).toNat

end

end A033173.P1325233327068876655

/-! ## A033173.P8189203811904842058

`∑[abs(Δ[A033172(n+1)])]`
-/

namespace A033173.P8189203811904842058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033172 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033173.P8189203811904842058

/-! ## A033173.P2531825131851034576

`∑[A000027(Δ[A033172(n+1)])]`
-/

namespace A033173.P2531825131851034576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033172 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033173.P2531825131851034576

/-! ## A033173.P5909687594716475231

`∑[A033172(n+2)-A033172(n+1)]`
-/

namespace A033173.P5909687594716475231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033172 (n + 2) - A033172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033173.P5909687594716475231

/-! ## A033173.P9978873671739461294

`A033172(n+1)+A033172(n+2)-A033171(n+2)`
-/

namespace A033173.P9978873671739461294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033172 (n + 1) + (A033172 (n + 2) - A033171 (n + 2))

end

end A033173.P9978873671739461294

/-! ## A033173.P12209150328885943339

`∑[abs(Δ[A033171(n+2)])]`
-/

namespace A033173.P12209150328885943339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033171 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033173.P12209150328885943339

/-! ## A033173.P6639928530179278998

`∑[A000027(Δ[A033171(n+2)])]`
-/

namespace A033173.P6639928530179278998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033171 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033173.P6639928530179278998

/-! ## A033173.P4633638917440943995

`ceil(A033171(2*(n+1))/2)`
-/

namespace A033173.P4633638917440943995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033171 (2 * (n + 1)) : ℚ) / 2⌉

end

end A033173.P4633638917440943995

/-! ## A033173.P10992160614712619992

`round(A033172(2*(n+1))/2)`
-/

namespace A033173.P10992160614712619992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A033172 (2 * (n + 1)) : ℚ) / 2)

end

end A033173.P10992160614712619992

/-! ## A033173.P5743518753337658256

`A033171(2*(n+1))-A033171(n+1)`
-/

namespace A033173.P5743518753337658256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033171 (2 * (n + 1)) - A033171 (n + 1)

end

end A033173.P5743518753337658256

/-! ## A033173.P9584166357041118787

`A033172(2*n+1)+A033172(n+2)-A033172(2*(n+1))`
-/

namespace A033173.P9584166357041118787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033172 (2 * n + 1) + (A033172 (n + 2) - A033172 (2 * (n + 1)))

end

end A033173.P9584166357041118787

/-! ## A033173.P1952617682863556092

`A033174(2*n+3)-A033174(n+2)`
-/

namespace A033173.P1952617682863556092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033174 (2 * n + 3) - A033174 (n + 2)

end

end A033173.P1952617682863556092

/-!
# A033174: Number of days in n years (n=1 is the first leap year).

The programs for A033174, there is no canonical definition to state claims against.
-/

/-! ## A033174.P16912365614308788356

`A121262(n)+A033173(n+1)`
-/

namespace A033174.P16912365614308788356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n + A033173 (n + 1)

end

end A033174.P16912365614308788356

/-! ## A033174.P14135023463886051440

`A133872(n)+A033172(n+1)`
-/

namespace A033174.P14135023463886051440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n + A033172 (n + 1)

end

end A033174.P14135023463886051440

/-! ## A033174.P10657748592196682798

`A033171(n+1)-A010815(A006519(n+1))`
-/

namespace A033174.P10657748592196682798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033171 (n + 1) - A010815 (A006519 (n + 1)).toNat

end

end A033174.P10657748592196682798

/-! ## A033174.P11192433860355335487

`A133872(A133872(n)+n)+A033173(n+1)`
-/

namespace A033174.P11192433860355335487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A133872 n + (n : ℤ)).toNat + A033173 (n + 1)

end

end A033174.P11192433860355335487

/-! ## A033174.P9674794733279304037

`∑[A033173(n+2)-A033173(n+1)]`
-/

namespace A033174.P9674794733279304037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033173 (n + 2) - A033173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033174.P9674794733279304037

/-! ## A033174.P15513336156408675677

`A033172(n+1)+A033173(n+2)-A033171(n+2)`
-/

namespace A033174.P15513336156408675677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033172 (n + 1) + (A033173 (n + 2) - A033171 (n + 2))

end

end A033174.P15513336156408675677

/-! ## A033174.P12083042923870159976

`A033173(n+1)+A033173(n+2)-A033172(n+2)`
-/

namespace A033174.P12083042923870159976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033173 (n + 1) + (A033173 (n + 2) - A033172 (n + 2))

end

end A033174.P12083042923870159976

/-! ## A033174.P12274065541258956168

`∑[abs(Δ[A033172(n+2)])]`
-/

namespace A033174.P12274065541258956168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033172 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033174.P12274065541258956168

/-! ## A033174.P2121858149003881984

`∑[A000027(Δ[A033172(n+2)])]`
-/

namespace A033174.P2121858149003881984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033172 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033174.P2121858149003881984

/-! ## A033174.P5736636821451055596

`A033173(2*(n+1))-A033172(n+1)`
-/

namespace A033174.P5736636821451055596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033173 (2 * (n + 1)) - A033172 (n + 1)

end

end A033174.P5736636821451055596

/-! ## A033174.P1524167441419750429

`A033173(2*n+1)+A033173(n+2)-A033171(2*(n+1))`
-/

namespace A033174.P1524167441419750429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033173 (2 * n + 1) + (A033173 (n + 2) - A033171 (2 * (n + 1)))

end

end A033174.P1524167441419750429

/-! ## A033174.P16172308770257076035

`A033172(2*n+3)-A033171(n+2)`
-/

namespace A033174.P16172308770257076035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033172 (2 * n + 3) - A033171 (n + 2)

end

end A033174.P16172308770257076035

/-! ## A033174.P6825830090400312623

`A033173(2*n+3)-A033171(n+2)`
-/

namespace A033174.P6825830090400312623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033173 (2 * n + 3) - A033171 (n + 2)

end

end A033174.P6825830090400312623

/-!
# A033175: n 3's followed by 1.

The programs for A033175, the canonical program `A033175.P4430678259805425953` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033175 has offset 0).

The definition of A033175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033175.P4633234565062800356

`(10^(n+1)-7)/3`
-/

namespace A033175.P4633234565062800356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 1) : ℤ) - 7 : ℚ) / 3

end

end A033175.P4633234565062800356

namespace A033175

/-- `(10^(n+1)-7)/3` -/
def P4633234565062800356.Spec : Prop :=
  ∀ n, P4633234565062800356.a n = (A033175 n : ℚ)

theorem P4633234565062800356.correct : P4633234565062800356.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A033175, Nat.add_sub_cancel, A033175.P4633234565062800356.a, A033175.P4430678259805425953.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A033175, Nat.add_sub_cancel, A033175.P4633234565062800356.a, A033175.P4430678259805425953.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A033175

/-! ## A033175.P4430678259805425953

`10*a(n-1)+21` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033175

/-- `10*a(n-1)+21` -/
def P4430678259805425953.Spec : Prop :=
  ∀ n, (P4430678259805425953.a n : ℤ) = A033175 n

theorem P4430678259805425953.correct : P4430678259805425953.Spec := by
  intro n
  simp only [A033175]

end A033175

/-! ## A033175.P2554946543867963621

`ogf((1+20x)/(1-11x+10x^2))`
-/

namespace A033175.P2554946543867963621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 20] [1, -11, 10] n

end

end A033175.P2554946543867963621

namespace A033175

/-- `ogf((1+20x)/(1-11x+10x^2))` -/
def P2554946543867963621.Spec : Prop :=
  ∀ n, P2554946543867963621.a n = A033175 n

end A033175

/-! ## A033175.P15006526549674644802

`∑[10*a(n-1)]` with `a(0)=1, a(1)=30`
-/

namespace A033175.P15006526549674644802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 30] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033175.P15006526549674644802

namespace A033175

/-- `∑[10*a(n-1)]` -/
def P15006526549674644802.Spec : Prop :=
  ∀ n, (P15006526549674644802.a n : ℤ) = A033175 n

end A033175

/-! ## A033175.P5588145424710229941

`xor(1, 10*floor(10^n/3))`
-/

namespace A033175.P5588145424710229941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (10 * ⌊(10 ^ n : ℚ) / 3⌋)

end

end A033175.P5588145424710229941

namespace A033175

/-- `xor(1, 10*floor(10^n/3))` -/
def P5588145424710229941.Spec : Prop :=
  ∀ n, P5588145424710229941.a n = A033175 n

end A033175

/-! ## A033175.P10856842325089017526

`ceil(xor(1, 10*(10^n-1))/3)`
-/

namespace A033175.P10856842325089017526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 1 (10 * ((10 ^ n : ℤ) - 1)) : ℚ) / 3⌉

end

end A033175.P10856842325089017526

namespace A033175

/-- `ceil(xor(1, 10*(10^n-1))/3)` -/
def P10856842325089017526.Spec : Prop :=
  ∀ n, P10856842325089017526.a n = A033175 n

end A033175

/-! ## A033175.P3909293242624437661

`ceil(record[10^abs(1-n)-9]/3)`
-/

namespace A033175.P3909293242624437661
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 3⌉

end

end A033175.P3909293242624437661

namespace A033175

/-- `ceil(record[10^abs(1-n)-9]/3)` -/
def P3909293242624437661.Spec : Prop :=
  ∀ n, P3909293242624437661.a n = A033175 n

end A033175

/-! ## A033175.P247567808552019884

`A323639(n+1)-1`
-/

namespace A033175.P247567808552019884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323639 (n + 1) - 1

end

end A033175.P247567808552019884

namespace A033175

/-- `A323639(n+1)-1` -/
def P247567808552019884.Spec : Prop :=
  ∀ n, P247567808552019884.a n = A033175 n

end A033175

/-! ## A033175.P1628920738812262752

`A002277(n+1)-2`
-/

namespace A033175.P1628920738812262752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 (n + 1) - 2

end

end A033175.P1628920738812262752

namespace A033175

/-- `A002277(n+1)-2` -/
def P1628920738812262752.Spec : Prop :=
  ∀ n, P1628920738812262752.a n = A033175 n

end A033175

/-! ## A033175.P3804694750864848134

`A093137(n+1)-3`
-/

namespace A033175.P3804694750864848134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 (n + 1) - 3

end

end A033175.P3804694750864848134

namespace A033175

/-- `A093137(n+1)-3` -/
def P3804694750864848134.Spec : Prop :=
  ∀ n, P3804694750864848134.a n = A033175 n

end A033175

/-! ## A033175.P3343570141361508768

`3*A105279(n)+1`
-/

namespace A033175.P3343570141361508768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A105279 n + 1

end

end A033175.P3343570141361508768

namespace A033175

/-- `3*A105279(n)+1` -/
def P3343570141361508768.Spec : Prop :=
  ∀ n, P3343570141361508768.a n = A033175 n

end A033175

/-! ## A033175.P1083030869900548744

`A133473(n+1)-4`
-/

namespace A033175.P1083030869900548744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133473 (n + 1) - 4

end

end A033175.P1083030869900548744

namespace A033175

/-- `A133473(n+1)-4` -/
def P1083030869900548744.Spec : Prop :=
  ∀ n, P1083030869900548744.a n = A033175 n

end A033175

/-! ## A033175.P9828350912293202120

`2*A246057(n)-1`
-/

namespace A033175.P9828350912293202120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246057 n - 1

end

end A033175.P9828350912293202120

namespace A033175

/-- `2*A246057(n)-1` -/
def P9828350912293202120.Spec : Prop :=
  ∀ n, P9828350912293202120.a n = A033175 n

end A033175

/-! ## A033175.P17493058050527523995

`A124167(n)/3+1`
-/

namespace A033175.P17493058050527523995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124167 n : ℚ) / 3 + 1

end

end A033175.P17493058050527523995

namespace A033175

/-- `A124167(n)/3+1` -/
def P17493058050527523995.Spec : Prop :=
  ∀ n, P17493058050527523995.a n = (A033175 n : ℚ)

theorem P17493058050527523995.correct : P17493058050527523995.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A033175, Nat.add_sub_cancel, A033175.P17493058050527523995.a, A033175.P4430678259805425953.a, A124167, A124167.P13896893363234218032.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A033175, Nat.add_sub_cancel, A033175.P17493058050527523995.a, A033175.P4430678259805425953.a, A124167, A124167.P13896893363234218032.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A033175

/-! ## A033175.P12448951569593786792

`5*A002280(n)+1`
-/

namespace A033175.P12448951569593786792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A002280 n + 1

end

end A033175.P12448951569593786792

namespace A033175

/-- `5*A002280(n)+1` -/
def P12448951569593786792.Spec : Prop :=
  ∀ n, P12448951569593786792.a n = A033175 n

end A033175

/-! ## A033175.P3608643449022013917

`2*A126109(n)-3`
-/

namespace A033175.P3608643449022013917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126109 n - 3

end

end A033175.P3608643449022013917

namespace A033175

/-- `2*A126109(n)-3` -/
def P3608643449022013917.Spec : Prop :=
  ∀ n, P3608643449022013917.a n = A033175 n

end A033175

/-! ## A033175.P4675011353760338601

`A173766(n+1)-6`
-/

namespace A033175.P4675011353760338601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173766 (n + 1) - 6

end

end A033175.P4675011353760338601

namespace A033175

/-- `A173766(n+1)-6` -/
def P4675011353760338601.Spec : Prop :=
  ∀ n, P4675011353760338601.a n = A033175 n

end A033175

/-! ## A033175.P16180221210102911857

`A173764(n+1)-8`
-/

namespace A033175.P16180221210102911857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173764 (n + 1) - 8

end

end A033175.P16180221210102911857

namespace A033175

/-- `A173764(n+1)-8` -/
def P16180221210102911857.Spec : Prop :=
  ∀ n, P16180221210102911857.a n = A033175 n

end A033175

/-! ## A033175.P7420114731433421264

`A096483(2*(n+1))-2`
-/

namespace A033175.P7420114731433421264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096483 (2 * (n + 1)) - 2

end

end A033175.P7420114731433421264

namespace A033175

/-- `A096483(2*(n+1))-2` -/
def P7420114731433421264.Spec : Prop :=
  ∀ n, P7420114731433421264.a n = A033175 n

end A033175

/-! ## A033175.P4382261686561003654

`3*A000042(n+1)-2`
-/

namespace A033175.P4382261686561003654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000042 (n + 1) - 2

end

end A033175.P4382261686561003654

namespace A033175

/-- `3*A000042(n+1)-2` -/
def P4382261686561003654.Spec : Prop :=
  ∀ n, P4382261686561003654.a n = A033175 n

end A033175

/-!
# A033178: Number of multisets of n positive integers with equal sum and product.

The programs for A033178, there is no canonical definition to state claims against.
-/

/-! ## A033178.P5520522110947249485

`Δ[A360971(n+2)]-1`
-/

namespace A033178.P5520522110947249485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360971 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A033178.P5520522110947249485

/-! ## A033178.P13096385908851240701

`A008683(A065091(n+1))+Δ[A360971(n+2)]`
-/

namespace A033178.P13096385908851240701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360971 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A065091 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A033178.P13096385908851240701

/-! ## A033178.P11829609301616005322

`A106470(A319101(n+1))+Δ[A360971(n+2)]`
-/

namespace A033178.P11829609301616005322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360971 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106470 (A319101 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A033178.P11829609301616005322

/-! ## A033178.P587978998591815002

`A008683(A006093(n+1)+1)+Δ[A360971(n+2)]`
-/

namespace A033178.P587978998591815002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360971 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006093 (n + 1) + 1).toNat + (f1 (n + 1) - f1 n)

end

end A033178.P587978998591815002

/-! ## A033178.P10596450431529313885

`A076479(A006093(n+1)+1)+Δ[A360971(n+2)]`
-/

namespace A033178.P10596450431529313885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360971 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (A006093 (n + 1) + 1).toNat + (f1 (n + 1) - f1 n)

end

end A033178.P10596450431529313885

/-! ## A033178.P17795272851854308803

`A008683(A140039(n+1))+Δ[A360971(n+2)]`
-/

namespace A033178.P17795272851854308803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360971 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A140039 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A033178.P17795272851854308803

/-!
# A033179: Numbers k such that exactly one multiset of k positive integers has equal sum and product.

The programs for A033179, there is no canonical definition to state claims against.
-/

/-! ## A033179.P14247290948895577705

`eq[1, A033178(n+2)]+2`
-/

namespace A033179.P14247290948895577705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033178 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A033179.P14247290948895577705

/-! ## A033179.P9273924777067191266

`eq[2*n, A104173(abs(1-n)+1)]`
-/

namespace A033179.P9273924777067191266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104173 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033179.P9273924777067191266

/-! ## A033179.P7623255280502861841

`A299438(A109787(n))`
-/

namespace A033179.P7623255280502861841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299438 (A109787 n).toNat

end

end A033179.P7623255280502861841

/-! ## A033179.P4829076494152218143

`A299438(∑[A373905(n)])`
-/

namespace A033179.P4829076494152218143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299438 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033179.P4829076494152218143

/-!
# A033180: Numbers k such that k! contains k as a string of digits.

The programs for A033180, there is no canonical definition to state claims against.
-/

/-! ## A033180.P14359451557595495849

`lt[0, A067109(n)]`
-/

namespace A033180.P14359451557595495849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A033180.P14359451557595495849

/-!
# A033181: Absolute Euler pseudoprimes: odd composite numbers n such that a^((n-1)/2) == +-1 (mod n) for every a coprime to n.

The programs for A033181, there is no canonical definition to state claims against.
-/

/-! ## A033181.P7147695212416633415

`A306338(lt[A143038(n), A116550(n+1)])`
-/

namespace A033181.P7147695212416633415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306338 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A033181.P7147695212416633415

/-!
# A033182: Number of pairs (p,q) such that 5*p + 6*q = n.

The programs for A033182, the canonical program `A033182.P17471725555445640497` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033182 has offset 0).

The definition of A033182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033182.P17471725555445640497

`floor(n/5)-floor((n-1)/6)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033182

/-- `floor(n/5)-floor((n-1)/6)` -/
def P17471725555445640497.Spec : Prop :=
  ∀ n, P17471725555445640497.a n = A033182 n

theorem P17471725555445640497.correct : P17471725555445640497.Spec := by
  intro n
  simp only [A033182]

end A033182

/-! ## A033182.P7415482250371831263

`A008615(A058207(n+1)+A049347(n))`
-/

namespace A033182.P7415482250371831263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A058207 (n + 1) + A049347 n).toNat

end

end A033182.P7415482250371831263

namespace A033182

/-- `A008615(A058207(n+1)+A049347(n))` -/
def P7415482250371831263.Spec : Prop :=
  ∀ n, P7415482250371831263.a n = A033182 n

end A033182

/-! ## A033182.P13726044497083281748

`A008616(A005408(n+2)%A008620(n+2))`
-/

namespace A033182.P13726044497083281748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.tmod (A005408 (n + 2)) (A008620 (n + 2))).toNat

end

end A033182.P13726044497083281748

namespace A033182

/-- `A008616(A005408(n+2)%A008620(n+2))` -/
def P13726044497083281748.Spec : Prop :=
  ∀ n, P13726044497083281748.a n = A033182 n

end A033182

/-! ## A033182.P15689756577518202602

`Δ[A130520(n+4)-A174709(n+4)]`
-/

namespace A033182.P15689756577518202602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (n + 4) - A174709 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033182.P15689756577518202602

namespace A033182

/-- `Δ[A130520(n+4)-A174709(n+4)]` -/
def P15689756577518202602.Spec : Prop :=
  ∀ n, P15689756577518202602.a n = A033182 n

end A033182

/-! ## A033182.P16764738011632684978

`Δ[A025812(2*n+3)]`
-/

namespace A033182.P16764738011632684978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025812 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033182.P16764738011632684978

namespace A033182

/-- `Δ[A025812(2*n+3)]` -/
def P16764738011632684978.Spec : Prop :=
  ∀ n, P16764738011632684978.a n = A033182 n

end A033182

/-! ## A033182.P10074059332490808656

`Δ[A029149(2*n+3)-A029149(2*n)]`
-/

namespace A033182.P10074059332490808656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029149 (2 * n + 3) - A029149 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033182.P10074059332490808656

namespace A033182

/-- `Δ[A029149(2*n+3)-A029149(2*n)]` -/
def P10074059332490808656.Spec : Prop :=
  ∀ n, P10074059332490808656.a n = A033182 n

end A033182

/-! ## A033182.P13820276973130181100

`A000194((A025864(2*n+1)-A025864(2*n))²)`
-/

namespace A033182.P13820276973130181100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((A025864 (2 * n + 1) - A025864 (2 * n)) ^ 2).toNat

end

end A033182.P13820276973130181100

namespace A033182

/-- `A000194((A025864(2*n+1)-A025864(2*n))²)` -/
def P13820276973130181100.Spec : Prop :=
  ∀ n, P13820276973130181100.a n = A033182 n

end A033182

/-!
# A033183: a(n) = number of pairs (p,q) such that 4*p + 9*q = n.

The programs for A033183, the canonical program `A033183.P3548296153277958657` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033183 has offset 0).

The definition of A033183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033183.P3548296153277958657

`A008618(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033183

/-- `A008618(n)-a(n-2)` -/
def P3548296153277958657.Spec : Prop :=
  ∀ n, P3548296153277958657.a n = A033183 n

theorem P3548296153277958657.correct : P3548296153277958657.Spec := by
  intro n
  simp only [A033183]

end A033183

/-! ## A033183.P1521302819893838834

`A008615(A008612(n)+char[2*n])`
-/

namespace A033183.P1521302819893838834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A008612 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A033183.P1521302819893838834

namespace A033183

/-- `A008615(A008612(n)+char[2*n])` -/
def P1521302819893838834.Spec : Prop :=
  ∀ n, P1521302819893838834.a n = A033183 n

end A033183

/-! ## A033183.P6649790034605975799

`A008621(n)-A002264(2-A002264(n)+n)`
-/

namespace A033183.P6649790034605975799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n - A002264 (2 - A002264 n + (n : ℤ)).toNat

end

end A033183.P6649790034605975799

namespace A033183

/-- `A008621(n)-A002264(2-A002264(n)+n)` -/
def P6649790034605975799.Spec : Prop :=
  ∀ n, P6649790034605975799.a n = A033183 n

end A033183

/-! ## A033183.P9587363976755948207

`A008621(n)-A002264(2-(A002264(n)-n))`
-/

namespace A033183.P9587363976755948207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n - A002264 (2 - (A002264 n - (n : ℤ))).toNat

end

end A033183.P9587363976755948207

namespace A033183

/-- `A008621(n)-A002264(2-(A002264(n)-n))` -/
def P9587363976755948207.Spec : Prop :=
  ∀ n, P9587363976755948207.a n = A033183 n

end A033183

/-! ## A033183.P14417401147057077557

`A008615(Δ[A008611(n+1)+a(n-2)])` with `a(0)=1, a(1)=3`
-/

namespace A033183.P14417401147057077557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  A008611 (n + 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (n + 1) - f1 n).toNat

end

end A033183.P14417401147057077557

namespace A033183

/-- `A008615(Δ[A008611(n+1)+a(n-2)])` -/
def P14417401147057077557.Spec : Prop :=
  ∀ n, P14417401147057077557.a n = A033183 n

end A033183

/-! ## A033183.P5986203025086824139

`A008615(A103221(n)+Δ[A103221(n+1)])`
-/

namespace A033183.P5986203025086824139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A103221 n + (f1 (n + 1) - f1 n)).toNat

end

end A033183.P5986203025086824139

namespace A033183

/-- `A008615(A103221(n)+Δ[A103221(n+1)])` -/
def P5986203025086824139.Spec : Prop :=
  ∀ n, P5986203025086824139.a n = A033183 n

end A033183

/-! ## A033183.P11409519836653754459

`A025920(2*n+1)+A025920(2*n)-A025874(2*n+1)`
-/

namespace A033183.P11409519836653754459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025920 (2 * n + 1) + (A025920 (2 * n) - A025874 (2 * n + 1))

end

end A033183.P11409519836653754459

namespace A033183

/-- `A025920(2*n+1)+A025920(2*n)-A025874(2*n+1)` -/
def P11409519836653754459.Spec : Prop :=
  ∀ n, P11409519836653754459.a n = A033183 n

end A033183

/-! ## A033183.P11914857864272792859

`A029219(2*n+1)+A025920(2*n)-A029190(2*n+1)`
-/

namespace A033183.P11914857864272792859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029219 (2 * n + 1) + (A025920 (2 * n) - A029190 (2 * n + 1))

end

end A033183.P11914857864272792859

namespace A033183

/-- `A029219(2*n+1)+A025920(2*n)-A029190(2*n+1)` -/
def P11914857864272792859.Spec : Prop :=
  ∀ n, P11914857864272792859.a n = A033183 n

end A033183

/-! ## A033183.P5883827677480194562

`A025902(2*n)-A025902(2*n+3)`
-/

namespace A033183.P5883827677480194562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 (2 * n) - A025902 (2 * n + 3)

end

end A033183.P5883827677480194562

namespace A033183

/-- `A025902(2*n)-A025902(2*n+3)` -/
def P5883827677480194562.Spec : Prop :=
  ∀ n, P5883827677480194562.a n = A033183 n

end A033183

/-!
# A033184: Catalan triangle A009766 transposed.

The programs for A033184, the canonical program `A033184.P1077807619147989473` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033184 has offset 1).

The definition of A033184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033184.P18200999964535526863

`abs(A171567(n))`
-/

namespace A033184.P18200999964535526863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171567 n|

end

end A033184.P18200999964535526863

namespace A033184

/-- `abs(A171567(n))` -/
def P18200999964535526863.Spec : Prop :=
  ∀ n, P18200999964535526863.a n = A033184 (n + 1)

end A033184

/-! ## A033184.P12550581895547049664

`A156197(n)-A009766(n)`
-/

namespace A033184.P12550581895547049664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156197 n - A009766 n

end

end A033184.P12550581895547049664

namespace A033184

/-- `A156197(n)-A009766(n)` -/
def P12550581895547049664.Spec : Prop :=
  ∀ n, P12550581895547049664.a n = A033184 (n + 1)

end A033184

/-! ## A033184.P11844800982446365584

`A097807(n)*A171567(n)`
-/

namespace A033184.P11844800982446365584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A171567 n

end

end A033184.P11844800982446365584

namespace A033184

/-- `A097807(n)*A171567(n)` -/
def P11844800982446365584.Spec : Prop :=
  ∀ n, P11844800982446365584.a n = A033184 (n + 1)

end A033184

/-! ## A033184.P16408552883922762427

`gcd(A000038(n), A171567(n))`
-/

namespace A033184.P16408552883922762427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A171567 n)

end

end A033184.P16408552883922762427

namespace A033184

/-- `gcd(A000038(n), A171567(n))` -/
def P16408552883922762427.Spec : Prop :=
  ∀ n, (P16408552883922762427.a n : ℤ) = A033184 (n + 1)

end A033184

/-! ## A033184.P11206378520062677775

`lcm(A020985(n), A171567(n))`
-/

namespace A033184.P11206378520062677775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A171567 n)

end

end A033184.P11206378520062677775

namespace A033184

/-- `lcm(A020985(n), A171567(n))` -/
def P11206378520062677775.Spec : Prop :=
  ∀ n, (P11206378520062677775.a n : ℤ) = A033184 (n + 1)

end A033184

/-! ## A033184.P11884330813918117348

`2*A092392(n)-A176992(n)`
-/

namespace A033184.P11884330813918117348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092392 n - A176992 n

end

end A033184.P11884330813918117348

namespace A033184

/-- `2*A092392(n)-A176992(n)` -/
def P11884330813918117348.Spec : Prop :=
  ∀ n, P11884330813918117348.a n = A033184 (n + 1)

theorem P11884330813918117348.correct : P11884330813918117348.Spec := by
  intro n
  simp only [A033184, Nat.add_sub_cancel, A033184.P11884330813918117348.a, A033184.P1077807619147989473.a, A008315, A008315.P15103667333557069867.a, A082156, A082156.P1891690113207071663.a, A092392, A092392.P2058426022526125338.a, A176992, A176992.P8811251635075281909.a, A002620, A002620.P9002536657626793813.a, A004736, A004736.P10337537277358081527.a, A014462, A014462.P14691259310245244798.a, A034868, A034868.P12965043593595847904.a, A046899, A046899.P13814988241420676234.a, A061579, A061579.P7462537595056690109.a, A128076, A128076.P748054847711115254.a, A000217, A000217.P10269402890581615239.a, A000267, A000267.P8737011026442136894.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A051162, A051162.P14261216125704105833.a, A055086, A055086.P18168198331367643999.a, A055087, A055087.P17964067358640094815.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A033184

/-! ## A033184.P9998451925765994376

`A104259(n)/A154930(n)*A171567(n)`
-/

namespace A033184.P9998451925765994376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104259 n : ℚ) / (A154930 n : ℚ) * (A171567 n : ℚ)

end

end A033184.P9998451925765994376

namespace A033184

/-- `A104259(n)/A154930(n)*A171567(n)` -/
def P9998451925765994376.Spec : Prop :=
  ∀ n, P9998451925765994376.a n = (A033184 (n + 1) : ℚ)

end A033184

/-! ## A033184.P865490790957553633

`2*A092392(n)-A092392(A014132(n+1))`
-/

namespace A033184.P865490790957553633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092392 n - A092392 (A014132 (n + 1)).toNat

end

end A033184.P865490790957553633

namespace A033184

/-- `2*A092392(n)-A092392(A014132(n+1))` -/
def P865490790957553633.Spec : Prop :=
  ∀ n, P865490790957553633.a n = A033184 (n + 1)

end A033184

/-! ## A033184.P4776044728227951392

`A106566(comp[∑[n]])`
-/

namespace A033184.P4776044728227951392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A033184.P4776044728227951392

namespace A033184

/-- `A106566(comp[∑[n]])` -/
def P4776044728227951392.Spec : Prop :=
  ∀ n, P4776044728227951392.a n = A033184 (n + 1)

end A033184

/-! ## A033184.P15420541291024388804

`A009766(A061579(n))`
-/

namespace A033184.P15420541291024388804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A061579 n).toNat

end

end A033184.P15420541291024388804

namespace A033184

/-- `A009766(A061579(n))` -/
def P15420541291024388804.Spec : Prop :=
  ∀ n, P15420541291024388804.a n = A033184 (n + 1)

end A033184

/-! ## A033184.P594555336583025917

`A009766(A038722(n+1)-1)`
-/

namespace A033184.P594555336583025917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A038722 (n + 1) - 1).toNat

end

end A033184.P594555336583025917

namespace A033184

/-- `A009766(A038722(n+1)-1)` -/
def P594555336583025917.Spec : Prop :=
  ∀ n, P594555336583025917.a n = A033184 (n + 1)

end A033184

/-! ## A033184.P12105928657818908971

`A009766(A038722(n+2))`
-/

namespace A033184.P12105928657818908971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A038722 (n + 2)).toNat

end

end A033184.P12105928657818908971

namespace A033184

/-- `A009766(A038722(n+2))` -/
def P12105928657818908971.Spec : Prop :=
  ∀ n, P12105928657818908971.a n = A033184 (n + 1)

end A033184

/-! ## A033184.P16010405826926244145

`A059365(comp[∑[n]])`
-/

namespace A033184.P16010405826926244145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A033184.P16010405826926244145

namespace A033184

/-- `A059365(comp[∑[n]])` -/
def P16010405826926244145.Spec : Prop :=
  ∀ n, P16010405826926244145.a n = A033184 (n + 1)

end A033184

/-! ## A033184.P2270087219822930308

`abs(A099039(∑[A035214(n)]))`
-/

namespace A033184.P2270087219822930308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099039 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A033184.P2270087219822930308

namespace A033184

/-- `abs(A099039(∑[A035214(n)]))` -/
def P2270087219822930308.Spec : Prop :=
  ∀ n, P2270087219822930308.a n = A033184 (n + 1)

end A033184

/-! ## A033184.P11236867819837736036

`A097807(n)*A099039(A014132(n+1))`
-/

namespace A033184.P11236867819837736036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A099039 (A014132 (n + 1)).toNat

end

end A033184.P11236867819837736036

namespace A033184

/-- `A097807(n)*A099039(A014132(n+1))` -/
def P11236867819837736036.Spec : Prop :=
  ∀ n, P11236867819837736036.a n = A033184 (n + 1)

end A033184

/-! ## A033184.P6785892919490455001

`A104684(n)/A135278(n)`
-/

namespace A033184.P6785892919490455001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104684 n : ℚ) / (A135278 n : ℚ)

end

end A033184.P6785892919490455001

namespace A033184

/-- `A104684(n)/A135278(n)` -/
def P6785892919490455001.Spec : Prop :=
  ∀ n, P6785892919490455001.a n = (A033184 (n + 1) : ℚ)

end A033184

/-! ## A033184.P1077807619147989473

`A008315(A082156(n+1)-1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A033184

/-- `A008315(A082156(n+1)-1)` -/
def P1077807619147989473.Spec : Prop :=
  ∀ n, P1077807619147989473.a n = A033184 (n + 1)

theorem P1077807619147989473.correct : P1077807619147989473.Spec := by
  intro n
  simp only [A033184, Nat.add_sub_cancel]

end A033184

/-! ## A033184.P12733272112544534337

`A119274(n)/A173333(n+1)`
-/

namespace A033184.P12733272112544534337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119274 n : ℚ) / (A173333 (n + 1) : ℚ)

end

end A033184.P12733272112544534337

namespace A033184

/-- `A119274(n)/A173333(n+1)` -/
def P12733272112544534337.Spec : Prop :=
  ∀ n, P12733272112544534337.a n = (A033184 (n + 1) : ℚ)

end A033184

/-! ## A033184.P17889591182132307026

`2*A167772(n)-A237619(n)`
-/

namespace A033184.P17889591182132307026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167772 n - A237619 n

end

end A033184.P17889591182132307026

namespace A033184

/-- `2*A167772(n)-A237619(n)` -/
def P17889591182132307026.Spec : Prop :=
  ∀ n, P17889591182132307026.a n = A033184 (n + 1)

end A033184

/-! ## A033184.P7685722238385612055

`2*A237619(A014132(n+1))-A237619(n)`
-/

namespace A033184.P7685722238385612055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237619 (A014132 (n + 1)).toNat - A237619 n

end

end A033184.P7685722238385612055

namespace A033184

/-- `2*A237619(A014132(n+1))-A237619(n)` -/
def P7685722238385612055.Spec : Prop :=
  ∀ n, P7685722238385612055.a n = A033184 (n + 1)

end A033184

/-!
# A033185: Rooted tree triangle read by rows: a(n,k) = number of forests with n nodes and k rooted trees.

The programs for A033185, there is no canonical definition to state claims against.
-/

/-! ## A033185.P18031444927785458353

`A106235(n+1)+A106234(n+1)`
-/

namespace A033185.P18031444927785458353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106235 (n + 1) + A106234 (n + 1)

end

end A033185.P18031444927785458353

/-! ## A033185.P15044290697562420120

`A106234(A080036(n+1))`
-/

namespace A033185.P15044290697562420120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A080036 (n + 1)).toNat

end

end A033185.P15044290697562420120

/-! ## A033185.P10414349256700903700

`A106234(A014132(n+1)+1)`
-/

namespace A033185.P10414349256700903700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A014132 (n + 1) + 1).toNat

end

end A033185.P10414349256700903700

/-! ## A033185.P16556828490790987821

`A106234(A007401(n+1)+2)`
-/

namespace A033185.P16556828490790987821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A007401 (n + 1) + 2).toNat

end

end A033185.P16556828490790987821

/-! ## A033185.P13037468984690883505

`A106234(A003057(n+2)+1+n)`
-/

namespace A033185.P13037468984690883505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A003057 (n + 2) + 1 + (n : ℤ)).toNat

end

end A033185.P13037468984690883505

/-! ## A033185.P16512550827502501269

`filter[A106234(n+2), A276398(#)]`
-/

namespace A033185.P16512550827502501269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A033185.P16512550827502501269

/-!
# A033187: 

The programs for A033187, there is no canonical definition to state claims against.
-/

/-! ## A033187.P15278662308585730603

`(n!-1)!`
-/

namespace A033187.P15278662308585730603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((Nat.factorial n : ℤ) - 1).toNat

end

end A033187.P15278662308585730603

/-!
# A033188: Minimal difference of any increasing arithmetic progression of n primes.

The programs for A033188, there is no canonical definition to state claims against.
-/

/-! ## A033188.P13870441092121600442

`A133276(A133263(n))-A033189(n+1)`
-/

namespace A033188.P13870441092121600442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133276 (A133263 n).toNat - A033189 (n + 1)

end

end A033188.P13870441092121600442

/-! ## A033188.P14131636741859848929

`A133276(A133263(n))-A133276(∑[n]+1)`
-/

namespace A033188.P14131636741859848929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133276 (A133263 n).toNat - A133276 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A033188.P14131636741859848929

/-! ## A033188.P1666439865311853410

`A093364(n+1)/A290104(A274594(n+2))`
-/

namespace A033188.P1666439865311853410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093364 (n + 1) : ℚ) / (A290104 (A274594 (n + 2)).toNat : ℚ)

end

end A033188.P1666439865311853410

/-! ## A033188.P16512979665763930749

`A093364(n+1)%A112039(A030014(n+1))`
-/

namespace A033188.P16512979665763930749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093364 (n + 1)) (A112039 (A030014 (n + 1)).toNat)

end

end A033188.P16512979665763930749

/-!
# A033189: Smallest first term of arithmetic progression of n primes with difference A033188(n).

The programs for A033189, there is no canonical definition to state claims against.
-/

/-! ## A033189.P14527117018859588373

`A113872(n+1)-n*A033188(n+1)`
-/

namespace A033189.P14527117018859588373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113872 (n + 1) - (n : ℤ) * A033188 (n + 1)

end

end A033189.P14527117018859588373

/-! ## A033189.P12886178331519181646

`A113872(n+1)+A354743(n+1)-A354744(n+1)`
-/

namespace A033189.P12886178331519181646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113872 (n + 1) + (A354743 (n + 1) - A354744 (n + 1))

end

end A033189.P12886178331519181646

/-! ## A033189.P16361693296230682373

`A354743(A296134(n+1)+n)`
-/

namespace A033189.P16361693296230682373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354743 (A296134 (n + 1) + (n : ℤ)).toNat

end

end A033189.P16361693296230682373

/-! ## A033189.P11060777917305844990

`A133276(∑[n]+1)`
-/

namespace A033189.P11060777917305844990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133276 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A033189.P11060777917305844990

/-! ## A033189.P12460871507440369684

`A133276(A000124(n))+char[11]`
-/

namespace A033189.P12460871507440369684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133276 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A033189.P12460871507440369684

/-!
# A033190: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(Fibonacci(k)+1,2).

The programs for A033190, the canonical program `A033190.P6183087157308840805` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033190 has offset 0).

The definition of A033190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033190.P6183087157308840805

`8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=9, a(4)=28`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033190

/-- `8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` -/
def P6183087157308840805.Spec : Prop :=
  ∀ n, P6183087157308840805.a n = A033190 n

theorem P6183087157308840805.correct : P6183087157308840805.Spec := by
  intro n
  simp only [A033190]

end A033190

/-! ## A033190.P14584456345584643896

`Δ[A033191(n)]`
-/

namespace A033190.P14584456345584643896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033190.P14584456345584643896

namespace A033190

/-- `Δ[A033191(n)]` -/
def P14584456345584643896.Spec : Prop :=
  ∀ n, P14584456345584643896.a n = A033190 n

end A033190

/-! ## A033190.P5898271389955015642

`A033191(n+1)-A033191(n)`
-/

namespace A033190.P5898271389955015642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033191 (n + 1) - A033191 n

end

end A033190.P5898271389955015642

namespace A033190

/-- `A033191(n+1)-A033191(n)` -/
def P5898271389955015642.Spec : Prop :=
  ∀ n, P5898271389955015642.a n = A033190 n

end A033190

/-! ## A033190.P2513779972001014688

`A001906(n)+A206947(n)/2`
-/

namespace A033190.P2513779972001014688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001906 n : ℚ) + (A206947 n : ℚ) / 2

end

end A033190.P2513779972001014688

namespace A033190

/-- `A001906(n)+A206947(n)/2` -/
def P2513779972001014688.Spec : Prop :=
  ∀ n, P2513779972001014688.a n = (A033190 n : ℚ)

end A033190

/-! ## A033190.P128077128722334952

`∑[A033193(n)]-A033193(n)`
-/

namespace A033190.P128077128722334952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033193 n

end

end A033190.P128077128722334952

namespace A033190

/-- `∑[A033193(n)]-A033193(n)` -/
def P128077128722334952.Spec : Prop :=
  ∀ n, P128077128722334952.a n = A033190 n

end A033190

/-! ## A033190.P14809616086595689087

`A094667(n+1)+A094865(n)-A136775(n+1)`
-/

namespace A033190.P14809616086595689087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094667 (n + 1) + (A094865 n - A136775 (n + 1))

end

end A033190.P14809616086595689087

namespace A033190

/-- `A094667(n+1)+A094865(n)-A136775(n+1)` -/
def P14809616086595689087.Spec : Prop :=
  ∀ n, P14809616086595689087.a n = A033190 n

end A033190

/-! ## A033190.P14783767647416161724

`Δ[A080934(A051936(n+9))]`
-/

namespace A033190.P14783767647416161724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A051936 (n + 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033190.P14783767647416161724

namespace A033190

/-- `Δ[A080934(A051936(n+9))]` -/
def P14783767647416161724.Spec : Prop :=
  ∀ n, P14783767647416161724.a n = A033190 n

end A033190

/-! ## A033190.P9418436771490540181

`Δ[A080934(A052905(n+6)-4)]`
-/

namespace A033190.P9418436771490540181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A052905 (n + 6) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033190.P9418436771490540181

namespace A033190

/-- `Δ[A080934(A052905(n+6)-4)]` -/
def P9418436771490540181.Spec : Prop :=
  ∀ n, P9418436771490540181.a n = A033190 n

end A033190

/-! ## A033190.P14737330865202407376

`Δ[A080934(A000217(n+9)-9)]`
-/

namespace A033190.P14737330865202407376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A000217 (n + 9) - 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033190.P14737330865202407376

namespace A033190

/-- `Δ[A080934(A000217(n+9)-9)]` -/
def P14737330865202407376.Spec : Prop :=
  ∀ n, P14737330865202407376.a n = A033190 n

end A033190

/-! ## A033190.P14610655726382121135

`Δ[A080934(A133263(n+9)-11)]`
-/

namespace A033190.P14610655726382121135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A133263 (n + 9) - 11).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033190.P14610655726382121135

namespace A033190

/-- `Δ[A080934(A133263(n+9)-11)]` -/
def P14610655726382121135.Spec : Prop :=
  ∀ n, P14610655726382121135.a n = A033190 n

end A033190

/-!
# A033191: Binomial transform of [ 1, 0, 1, 1, 3, 6, 15, 36, 91, 231, 595, ... ], which is essentially binomial(Fibonacci(k) + 1, 2).

The programs for A033191, the canonical program `A033191.P3387221971966697321` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033191 has offset 0).

The definition of A033191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033191.P3387221971966697321

`8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=14`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033191

/-- `8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` -/
def P3387221971966697321.Spec : Prop :=
  ∀ n, P3387221971966697321.a n = A033191 n

theorem P3387221971966697321.correct : P3387221971966697321.Spec := by
  intro n
  simp only [A033191]

end A033191

/-! ## A033191.P17331776418357204584

`∑[A033190(abs(1-n))]`
-/

namespace A033191.P17331776418357204584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033191.P17331776418357204584

namespace A033191

/-- `∑[A033190(abs(1-n))]` -/
def P17331776418357204584.Spec : Prop :=
  ∀ n, P17331776418357204584.a n = A033191 n

end A033191

/-! ## A033191.P2599980290596729586

`A033190(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A033191.P2599980290596729586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033190 (n - 1) + a (n - 1)

end

end A033191.P2599980290596729586

namespace A033191

/-- `A033190(n-1)+a(n-1)` -/
def P2599980290596729586.Spec : Prop :=
  ∀ n, P2599980290596729586.a n = A033191 n

end A033191

/-! ## A033191.P17680295237349095544

`∑[A033190(n)]+1-A033190(n)`
-/

namespace A033191.P17680295237349095544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A033190 n)

end

end A033191.P17680295237349095544

namespace A033191

/-- `∑[A033190(n)]+1-A033190(n)` -/
def P17680295237349095544.Spec : Prop :=
  ∀ n, P17680295237349095544.a n = A033191 n

end A033191

/-! ## A033191.P7077928171942707866

`A080934(A051936(n+9))`
-/

namespace A033191.P7077928171942707866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A051936 (n + 9)).toNat

end

end A033191.P7077928171942707866

namespace A033191

/-- `A080934(A051936(n+9))` -/
def P7077928171942707866.Spec : Prop :=
  ∀ n, P7077928171942707866.a n = A033191 n

end A033191

/-! ## A033191.P4524578282746181496

`A080934(A052905(n+6)-4)`
-/

namespace A033191.P4524578282746181496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A052905 (n + 6) - 4).toNat

end

end A033191.P4524578282746181496

namespace A033191

/-- `A080934(A052905(n+6)-4)` -/
def P4524578282746181496.Spec : Prop :=
  ∀ n, P4524578282746181496.a n = A033191 n

end A033191

/-! ## A033191.P15456636137791233187

`A080934(A000217(n+9)-9)`
-/

namespace A033191.P15456636137791233187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A000217 (n + 9) - 9).toNat

end

end A033191.P15456636137791233187

namespace A033191

/-- `A080934(A000217(n+9)-9)` -/
def P15456636137791233187.Spec : Prop :=
  ∀ n, P15456636137791233187.a n = A033191 n

end A033191

/-! ## A033191.P533868199805155380

`A080934(A133263(n+9)-11)`
-/

namespace A033191.P533868199805155380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A133263 (n + 9) - 11).toNat

end

end A033191.P533868199805155380

namespace A033191

/-- `A080934(A133263(n+9)-11)` -/
def P533868199805155380.Spec : Prop :=
  ∀ n, P533868199805155380.a n = A033191 n

end A033191

/-! ## A033191.P1868325718399566840

`A217593(∑[4*n])`
-/

namespace A033191.P1868325718399566840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217593 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033191.P1868325718399566840

namespace A033191

/-- `A217593(∑[4*n])` -/
def P1868325718399566840.Spec : Prop :=
  ∀ n, P1868325718399566840.a n = A033191 n

end A033191

/-!
# A033192: a(n) = binomial(Fibonacci(n) + 1, 2).

The programs for A033192, the canonical program `A033192.P12903176854544795020` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033192 has offset 0).

The definition of A033192 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032441, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033192.P12903176854544795020

`A032441(n)-1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033192

/-- `A032441(n)-1` -/
def P12903176854544795020.Spec : Prop :=
  ∀ n, P12903176854544795020.a n = A033192 n

theorem P12903176854544795020.correct : P12903176854544795020.Spec := by
  intro n
  simp only [A033192]

end A033192

/-! ## A033192.P10559294724978855030

`A005207(n)-a(n-1)` with `a(0)=0`
-/

namespace A033192.P10559294724978855030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005207 n - a (n - 1)

end

end A033192.P10559294724978855030

namespace A033192

/-- `A005207(n)-a(n-1)` -/
def P10559294724978855030.Spec : Prop :=
  ∀ n, P10559294724978855030.a n = A033192 n

end A033192

/-! ## A033192.P11648971241578869594

`A191797(n)+A000045(n)`
-/

namespace A033192.P11648971241578869594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 n + A000045 n

end

end A033192.P11648971241578869594

namespace A033192

/-- `A191797(n)+A000045(n)` -/
def P11648971241578869594.Spec : Prop :=
  ∀ n, P11648971241578869594.a n = A033192 n

end A033192

/-! ## A033192.P16582244555893785796

`A104220(n)*A173173(n)`
-/

namespace A033192.P16582244555893785796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104220 n * A173173 n

end

end A033192.P16582244555893785796

namespace A033192

/-- `A104220(n)*A173173(n)` -/
def P16582244555893785796.Spec : Prop :=
  ∀ n, P16582244555893785796.a n = A033192 n

end A033192

/-! ## A033192.P3253791617548836902

`A191797(n)+abs(A236191(n))`
-/

namespace A033192.P3253791617548836902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 n + |A236191 n|

end

end A033192.P3253791617548836902

namespace A033192

/-- `A191797(n)+abs(A236191(n))` -/
def P3253791617548836902.Spec : Prop :=
  ∀ n, P3253791617548836902.a n = A033192 n

end A033192

/-! ## A033192.P888274990479804510

`A001611(n)+A191797(n)-1`
-/

namespace A033192.P888274990479804510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A191797 n - 1)

end

end A033192.P888274990479804510

namespace A033192

/-- `A001611(n)+A191797(n)-1` -/
def P888274990479804510.Spec : Prop :=
  ∀ n, P888274990479804510.a n = A033192 n

end A033192

/-! ## A033192.P16995106412853108828

`(A104221(n)+1)*A173173(n)`
-/

namespace A033192.P16995106412853108828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A104221 n + 1) * A173173 n

end

end A033192.P16995106412853108828

namespace A033192

/-- `(A104221(n)+1)*A173173(n)` -/
def P16995106412853108828.Spec : Prop :=
  ∀ n, P16995106412853108828.a n = A033192 n

end A033192

/-! ## A033192.P5552672689965245472

`A191797(n)+A103609(2*n)`
-/

namespace A033192.P5552672689965245472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 n + A103609 (2 * n)

end

end A033192.P5552672689965245472

namespace A033192

/-- `A191797(n)+A103609(2*n)` -/
def P5552672689965245472.Spec : Prop :=
  ∀ n, P5552672689965245472.a n = A033192 n

end A033192

/-! ## A033192.P24947972801170677

`A000045(n)/2*A001611(n)`
-/

namespace A033192.P24947972801170677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 2 * (A001611 n : ℚ)

end

end A033192.P24947972801170677

namespace A033192

/-- `A000045(n)/2*A001611(n)` -/
def P24947972801170677.Spec : Prop :=
  ∀ n, P24947972801170677.a n = (A033192 n : ℚ)

end A033192

/-! ## A033192.P10608813496812651709

`A001611(n)/6*A022086(n)`
-/

namespace A033192.P10608813496812651709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001611 n : ℚ) / 6 * (A022086 n : ℚ)

end

end A033192.P10608813496812651709

namespace A033192

/-- `A001611(n)/6*A022086(n)` -/
def P10608813496812651709.Spec : Prop :=
  ∀ n, P10608813496812651709.a n = (A033192 n : ℚ)

end A033192

/-! ## A033192.P2428359367239380360

`abs(A001611(n)/2*A236191(n))`
-/

namespace A033192.P2428359367239380360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A001611 n : ℚ) / 2 * (A236191 n : ℚ)|

end

end A033192.P2428359367239380360

namespace A033192

/-- `abs(A001611(n)/2*A236191(n))` -/
def P2428359367239380360.Spec : Prop :=
  ∀ n, P2428359367239380360.a n = (A033192 n : ℚ)

end A033192

/-! ## A033192.P1071047833461097870

`A191797(n)+Δ[A000071(n+1)]`
-/

namespace A033192.P1071047833461097870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 n + (f1 (n + 1) - f1 n)

end

end A033192.P1071047833461097870

namespace A033192

/-- `A191797(n)+Δ[A000071(n+1)]` -/
def P1071047833461097870.Spec : Prop :=
  ∀ n, P1071047833461097870.a n = A033192 n

end A033192

/-! ## A033192.P12943715585106093365

`A000045(n)/2*Δ[A081659(n)]`
-/

namespace A033192.P12943715585106093365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A033192.P12943715585106093365

namespace A033192

/-- `A000045(n)/2*Δ[A081659(n)]` -/
def P12943715585106093365.Spec : Prop :=
  ∀ n, P12943715585106093365.a n = (A033192 n : ℚ)

end A033192

/-! ## A033192.P16659959964243031093

`Δ[A000071(n+1)/2]*A001611(n)`
-/

namespace A033192.P16659959964243031093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A001611 n : ℚ)

end

end A033192.P16659959964243031093

namespace A033192

/-- `Δ[A000071(n+1)/2]*A001611(n)` -/
def P16659959964243031093.Spec : Prop :=
  ∀ n, P16659959964243031093.a n = (A033192 n : ℚ)

end A033192

/-! ## A033192.P4062350419753498251

`A247309(A055562(n))+A191797(n)`
-/

namespace A033192.P4062350419753498251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 (A055562 n).toNat + A191797 n

end

end A033192.P4062350419753498251

namespace A033192

/-- `A247309(A055562(n))+A191797(n)` -/
def P4062350419753498251.Spec : Prop :=
  ∀ n, P4062350419753498251.a n = A033192 n

end A033192

/-! ## A033192.P11454719956183256304

`A004398(n+1)+A191797(n)-A004397(n+1)`
-/

namespace A033192.P11454719956183256304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004398 (n + 1) + (A191797 n - A004397 (n + 1))

end

end A033192.P11454719956183256304

namespace A033192

/-- `A004398(n+1)+A191797(n)-A004397(n+1)` -/
def P11454719956183256304.Spec : Prop :=
  ∀ n, P11454719956183256304.a n = A033192 n

end A033192

/-! ## A033192.P12119338361401549862

`A000071(n+2)+A191797(n)-A000071(n+1)`
-/

namespace A033192.P12119338361401549862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (A191797 n - A000071 (n + 1))

end

end A033192.P12119338361401549862

namespace A033192

/-- `A000071(n+2)+A191797(n)-A000071(n+1)` -/
def P12119338361401549862.Spec : Prop :=
  ∀ n, P12119338361401549862.a n = A033192 n

end A033192

/-! ## A033192.P7616070069988353574

`A059727(n)/2`
-/

namespace A033192.P7616070069988353574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059727 n : ℚ) / 2

end

end A033192.P7616070069988353574

namespace A033192

/-- `A059727(n)/2` -/
def P7616070069988353574.Spec : Prop :=
  ∀ n, P7616070069988353574.a n = (A033192 n : ℚ)

end A033192

/-! ## A033192.P7910586282177497137

`A382608(n)/4`
-/

namespace A033192.P7910586282177497137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382608 n : ℚ) / 4

end

end A033192.P7910586282177497137

namespace A033192

/-- `A382608(n)/4` -/
def P7910586282177497137.Spec : Prop :=
  ∀ n, P7910586282177497137.a n = (A033192 n : ℚ)

theorem P7910586282177497137.correct : P7910586282177497137.Spec := by
  intro n
  simp only [A033192, Nat.add_sub_cancel, A033192.P7910586282177497137.a, A033192.P12903176854544795020.a, A032441, A032441.P12702803524669002420.a, A382608, A382608.P10117561399595849934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033192

/-! ## A033192.P11309478808401333133

`C(A001611(n), 2)`
-/

namespace A033192.P11309478808401333133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001611 n).toNat 2

end

end A033192.P11309478808401333133

namespace A033192

/-- `C(A001611(n), 2)` -/
def P11309478808401333133.Spec : Prop :=
  ∀ n, (P11309478808401333133.a n : ℤ) = A033192 n

end A033192

/-!
# A033193: Binomial transform of A033192.

The programs for A033193, the canonical program `A033193.P9077619747370793281` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033193 has offset 0).

The definition of A033193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033193.P9077619747370793281

`Δ[A033190(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033193

/-- `Δ[A033190(n)]` -/
def P9077619747370793281.Spec : Prop :=
  ∀ n, P9077619747370793281.a n = A033193 n

theorem P9077619747370793281.correct : P9077619747370793281.Spec := by
  intro n
  simp only [A033193]

end A033193

/-! ## A033193.P12456902720898075233

`Δ[Δ[A033191(n)]]`
-/

namespace A033193.P12456902720898075233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033191 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033193.P12456902720898075233

namespace A033193

/-- `Δ[Δ[A033191(n)]]` -/
def P12456902720898075233.Spec : Prop :=
  ∀ n, P12456902720898075233.a n = A033193 n

end A033193

/-! ## A033193.P11289742571745228628

`A147748(n)-A094865(n)`
-/

namespace A033193.P11289742571745228628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147748 n - A094865 n

end

end A033193.P11289742571745228628

namespace A033193

/-- `A147748(n)-A094865(n)` -/
def P11289742571745228628.Spec : Prop :=
  ∀ n, P11289742571745228628.a n = A033193 n

end A033193

/-! ## A033193.P4518367346346785275

`A033190(n+1)-A033190(n)`
-/

namespace A033193.P4518367346346785275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 (n + 1) - A033190 n

end

end A033193.P4518367346346785275

namespace A033193

/-- `A033190(n+1)-A033190(n)` -/
def P4518367346346785275.Spec : Prop :=
  ∀ n, P4518367346346785275.a n = A033193 n

theorem P4518367346346785275.correct : P4518367346346785275.Spec := by
  intro n
  simp only [A033193, Nat.add_sub_cancel, A033193.P4518367346346785275.a, A033193.P9077619747370793281.f1, A033193.P9077619747370793281.a, SequenceMachineLib.memo_apply]

end A033193

/-! ## A033193.P8043871331149936962

`A178381(2*n)-A094865(n)`
-/

namespace A033193.P8043871331149936962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (2 * n) - A094865 n

end

end A033193.P8043871331149936962

namespace A033193

/-- `A178381(2*n)-A094865(n)` -/
def P8043871331149936962.Spec : Prop :=
  ∀ n, P8043871331149936962.a n = A033193 n

end A033193

/-! ## A033193.P3539946611731651884

`Δ[A001906(n)+A206947(n)/2]`
-/

namespace A033193.P3539946611731651884
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001906 n : ℚ) + (A206947 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033193.P3539946611731651884

namespace A033193

/-- `Δ[A001906(n)+A206947(n)/2]` -/
def P3539946611731651884.Spec : Prop :=
  ∀ n, P3539946611731651884.a n = (A033193 n : ℚ)

end A033193

/-! ## A033193.P5298995770578630882

`A001519(n+1)+A147748(n)-A033191(n+1)`
-/

namespace A033193.P5298995770578630882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + (A147748 n - A033191 (n + 1))

end

end A033193.P5298995770578630882

namespace A033193

/-- `A001519(n+1)+A147748(n)-A033191(n+1)` -/
def P5298995770578630882.Spec : Prop :=
  ∀ n, P5298995770578630882.a n = A033193 n

end A033193

/-! ## A033193.P13058665098012999053

`Δ[Δ[A080934(A000217(n+9)-9)]]`
-/

namespace A033193.P13058665098012999053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A000217 (n + 9) - 9).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033193.P13058665098012999053

namespace A033193

/-- `Δ[Δ[A080934(A000217(n+9)-9)]]` -/
def P13058665098012999053.Spec : Prop :=
  ∀ n, P13058665098012999053.a n = A033193 n

end A033193

/-!
# A033194: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite GOO (Goosecreekite) starting with a T2 atom.

The programs for A033194, there is no canonical definition to state claims against.
-/

/-! ## A033194.P3771939162286614583

`A362646(n)+A204892(A055275(n))`
-/

namespace A033194.P3771939162286614583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362646 n + A204892 (A055275 n).toNat

end

end A033194.P3771939162286614583

/-!
# A033196: a(n) = n^3 * Product_{p|n, p prime} (1 + 1/p).

The programs for A033196, the canonical program `A033196.P14820134467086878798` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033196 has offset 1).

The definition of A033196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033196.P6038879092835604649

`(n+1)*A000082(n+1)`
-/

namespace A033196.P6038879092835604649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000082 (n + 1)

end

end A033196.P6038879092835604649

namespace A033196

/-- `(n+1)*A000082(n+1)` -/
def P6038879092835604649.Spec : Prop :=
  ∀ n, P6038879092835604649.a n = A033196 (n + 1)

end A033196

/-! ## A033196.P14820134467086878798

`(n+1)²*A001615(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033196

/-- `(n+1)²*A001615(n+1)` -/
def P14820134467086878798.Spec : Prop :=
  ∀ n, P14820134467086878798.a n = A033196 (n + 1)

theorem P14820134467086878798.correct : P14820134467086878798.Spec := by
  intro n
  simp only [A033196, Nat.add_sub_cancel]

end A033196

/-! ## A033196.P16708065534656882367

`A001615((n+1)^3)`
-/

namespace A033196.P16708065534656882367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 ((n + 1) ^ 3)

end

end A033196.P16708065534656882367

namespace A033196

/-- `A001615((n+1)^3)` -/
def P16708065534656882367.Spec : Prop :=
  ∀ n, P16708065534656882367.a n = A033196 (n + 1)

end A033196

/-! ## A033196.P9632408554275482474

`(n+1)*∑{d}[∏{p}[n+1, #], (n+1)²/#]`
-/

namespace A033196.P9632408554275482474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), ((n + 1) ^ 2 : ℚ) / (d : ℚ))

end

end A033196.P9632408554275482474

namespace A033196

/-- `(n+1)*∑{d}[∏{p}[n+1, #], (n+1)²/#]` -/
def P9632408554275482474.Spec : Prop :=
  ∀ n, P9632408554275482474.a n = (A033196 (n + 1) : ℚ)

end A033196

/-! ## A033196.P14940745928078337146

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1]*(n+1)²`
-/

namespace A033196.P14940745928078337146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℚ) * ((n + 1) ^ 2 : ℚ)

end

end A033196.P14940745928078337146

namespace A033196

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1]*(n+1)²` -/
def P14940745928078337146.Spec : Prop :=
  ∀ n, P14940745928078337146.a n = (A033196 (n + 1) : ℚ)

end A033196

/-! ## A033196.P14614499412263167765

`A102631(n+1)*A181797(n+1)`
-/

namespace A033196.P14614499412263167765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (n + 1) * A181797 (n + 1)

end

end A033196.P14614499412263167765

namespace A033196

/-- `A102631(n+1)*A181797(n+1)` -/
def P14614499412263167765.Spec : Prop :=
  ∀ n, P14614499412263167765.a n = A033196 (n + 1)

end A033196

/-! ## A033196.P8059676084934632393

`A000082(n+1)²/A001615(n+1)`
-/

namespace A033196.P8059676084934632393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) ^ 2 : ℚ) / (A001615 (n + 1) : ℚ)

end

end A033196.P8059676084934632393

namespace A033196

/-- `A000082(n+1)²/A001615(n+1)` -/
def P8059676084934632393.Spec : Prop :=
  ∀ n, P8059676084934632393.a n = (A033196 (n + 1) : ℚ)

end A033196

/-! ## A033196.P9937364175250478525

`A001615(n+1)/(1/A000027(n+1))²`
-/

namespace A033196.P9937364175250478525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (1 / (A000027 (n + 1) : ℚ)) ^ 2

end

end A033196.P9937364175250478525

namespace A033196

/-- `A001615(n+1)/(1/A000027(n+1))²` -/
def P9937364175250478525.Spec : Prop :=
  ∀ n, P9937364175250478525.a n = (A033196 (n + 1) : ℚ)

end A033196

/-! ## A033196.P8900075509976083287

`A001615(n+1)/(1/A001478(n+1))²`
-/

namespace A033196.P8900075509976083287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (1 / (A001478 (n + 1) : ℚ)) ^ 2

end

end A033196.P8900075509976083287

namespace A033196

/-- `A001615(n+1)/(1/A001478(n+1))²` -/
def P8900075509976083287.Spec : Prop :=
  ∀ n, P8900075509976083287.a n = (A033196 (n + 1) : ℚ)

end A033196

/-! ## A033196.P8453189868511800646

`∑{d}[n+1, A000056(#)*A181797((n+1)/#)]`
-/

namespace A033196.P8453189868511800646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A181797 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A033196.P8453189868511800646

namespace A033196

/-- `∑{d}[n+1, A000056(#)*A181797((n+1)/#)]` -/
def P8453189868511800646.Spec : Prop :=
  ∀ n, P8453189868511800646.a n = A033196 (n + 1)

end A033196

/-! ## A033196.P4680933580454492973

`∑{d}[n+1, A059376(#)*A351265((n+1)/#)]`
-/

namespace A033196.P4680933580454492973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059376 d * A351265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A033196.P4680933580454492973

namespace A033196

/-- `∑{d}[n+1, A059376(#)*A351265((n+1)/#)]` -/
def P4680933580454492973.Spec : Prop :=
  ∀ n, P4680933580454492973.a n = A033196 (n + 1)

end A033196

/-! ## A033196.P13804566364287467368

`A003557(n+1)*A048250(n+1)*(n+1)²`
-/

namespace A033196.P13804566364287467368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A048250 (n + 1) * ((n + 1) ^ 2 : ℤ)

end

end A033196.P13804566364287467368

namespace A033196

/-- `A003557(n+1)*A048250(n+1)*(n+1)²` -/
def P13804566364287467368.Spec : Prop :=
  ∀ n, P13804566364287467368.a n = A033196 (n + 1)

end A033196

/-! ## A033196.P6255547235465452576

`(n+1)/A000010(n+1)²*A000252(n+1)`
-/

namespace A033196.P6255547235465452576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (n + 1) ^ 2 : ℚ) * (A000252 (n + 1) : ℚ)

end

end A033196.P6255547235465452576

namespace A033196

/-- `(n+1)/A000010(n+1)²*A000252(n+1)` -/
def P6255547235465452576.Spec : Prop :=
  ∀ n, P6255547235465452576.a n = (A033196 (n + 1) : ℚ)

end A033196

/-! ## A033196.P15055015985667548700

`(n+1)²/A000010(n+1)*A007434(n+1)`
-/

namespace A033196.P15055015985667548700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A000010 (n + 1) : ℚ) * (A007434 (n + 1) : ℚ)

end

end A033196.P15055015985667548700

namespace A033196

/-- `(n+1)²/A000010(n+1)*A007434(n+1)` -/
def P15055015985667548700.Spec : Prop :=
  ∀ n, P15055015985667548700.a n = (A033196 (n + 1) : ℚ)

end A033196

/-! ## A033196.P13177776800236333176

`A000027(A001615(n+1))*A000290(n+1)`
-/

namespace A033196.P13177776800236333176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001615 (n + 1)).toNat * A000290 (n + 1)

end

end A033196.P13177776800236333176

namespace A033196

/-- `A000027(A001615(n+1))*A000290(n+1)` -/
def P13177776800236333176.Spec : Prop :=
  ∀ n, P13177776800236333176.a n = A033196 (n + 1)

end A033196

/-! ## A033196.P13229910953695322245

`A001615(n+1)*A003557(n+1)*A064549(n+1)`
-/

namespace A033196.P13229910953695322245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A003557 (n + 1) * A064549 (n + 1)

end

end A033196.P13229910953695322245

namespace A033196

/-- `A001615(n+1)*A003557(n+1)*A064549(n+1)` -/
def P13229910953695322245.Spec : Prop :=
  ∀ n, P13229910953695322245.a n = A033196 (n + 1)

end A033196

/-! ## A033196.P719696829894054661

`A001615(n+1)*A061019(n+1)*A061019(n+1)`
-/

namespace A033196.P719696829894054661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A061019 (n + 1) * A061019 (n + 1)

end

end A033196.P719696829894054661

namespace A033196

/-- `A001615(n+1)*A061019(n+1)*A061019(n+1)` -/
def P719696829894054661.Spec : Prop :=
  ∀ n, P719696829894054661.a n = A033196 (n + 1)

end A033196

/-! ## A033196.P7717639238150683042

`A001615(n+1)*A111701(n+1)*A114562(n+1)`
-/

namespace A033196.P7717639238150683042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A111701 (n + 1) * A114562 (n + 1)

end

end A033196.P7717639238150683042

namespace A033196

/-- `A001615(n+1)*A111701(n+1)*A114562(n+1)` -/
def P7717639238150683042.Spec : Prop :=
  ∀ n, P7717639238150683042.a n = A033196 (n + 1)

end A033196

/-! ## A033196.P3617261260724238188

`A001615(n+1)/A008833(n+1)*A059479(n+1)`
-/

namespace A033196.P3617261260724238188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A008833 (n + 1) : ℚ) * (A059479 (n + 1) : ℚ)

end

end A033196.P3617261260724238188

namespace A033196

/-- `A001615(n+1)/A008833(n+1)*A059479(n+1)` -/
def P3617261260724238188.Spec : Prop :=
  ∀ n, P3617261260724238188.a n = (A033196 (n + 1) : ℚ)

end A033196

/-! ## A033196.P1373766082860627079

`A000056(n+1)/A000252(n+1)*A379833(n+1)`
-/

namespace A033196.P1373766082860627079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A000252 (n + 1) : ℚ) * (A379833 (n + 1) : ℚ)

end

end A033196.P1373766082860627079

namespace A033196

/-- `A000056(n+1)/A000252(n+1)*A379833(n+1)` -/
def P1373766082860627079.Spec : Prop :=
  ∀ n, P1373766082860627079.a n = (A033196 (n + 1) : ℚ)

end A033196

/-!
# A033197: Discriminants of quadratic number fields Q(sqrt -n) for n squarefree.

The programs for A033197, the canonical program `A033197.P13571610583292348820` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033197 has offset 1).

The definition of A033197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033197.P8120482945523159363

`-A204993(comp[A105570(n)])`
-/

namespace A033197.P8120482945523159363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A204993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A033197.P8120482945523159363

namespace A033197

/-- `-A204993(comp[A105570(n)])` -/
def P8120482945523159363.Spec : Prop :=
  ∀ n, P8120482945523159363.a n = A033197 (n + 1)

end A033197

/-! ## A033197.P13571610583292348820

`-A204993(record[A007913(n+1)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A033197

/-- `-A204993(record[A007913(n+1)])` -/
def P13571610583292348820.Spec : Prop :=
  ∀ n, P13571610583292348820.a n = A033197 (n + 1)

theorem P13571610583292348820.correct : P13571610583292348820.Spec := by
  intro n
  simp only [A033197, Nat.add_sub_cancel]

end A033197

/-! ## A033197.P13737275356801177377

`A000007(n+3)-A204993(A005117(n+1))`
-/

namespace A033197.P13737275356801177377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 3) - A204993 (A005117 (n + 1)).toNat

end

end A033197.P13737275356801177377

namespace A033197

/-- `A000007(n+3)-A204993(A005117(n+1))` -/
def P13737275356801177377.Spec : Prop :=
  ∀ n, P13737275356801177377.a n = A033197 (n + 1)

end A033197

/-! ## A033197.P2551672282047317710

`-A204993(eq[A001222(n+1), A001221(n+1)]+1)`
-/

namespace A033197.P2551672282047317710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A204993 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A033197.P2551672282047317710

namespace A033197

/-- `-A204993(eq[A001222(n+1), A001221(n+1)]+1)` -/
def P2551672282047317710.Spec : Prop :=
  ∀ n, P2551672282047317710.a n = A033197 (n + 1)

end A033197

/-! ## A033197.P8678073949624765499

`A185014(3*n+2)-A204993(A005117(n+1))`
-/

namespace A033197.P8678073949624765499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 (3 * n + 2) - A204993 (A005117 (n + 1)).toNat

end

end A033197.P8678073949624765499

namespace A033197

/-- `A185014(3*n+2)-A204993(A005117(n+1))` -/
def P8678073949624765499.Spec : Prop :=
  ∀ n, P8678073949624765499.a n = A033197 (n + 1)

end A033197

/-!
# A033198: Discriminants of real quadratic number fields.

The programs for A033198, the canonical program `A033198.P5089609670144749707` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033198 has offset 1).

The definition of A033198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6082 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033198.P5089609670144749707

`A037449(A144338(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A033198

/-- `A037449(A144338(n+1))` -/
def P5089609670144749707.Spec : Prop :=
  ∀ n, P5089609670144749707.a n = A033198 (n + 1)

theorem P5089609670144749707.correct : P5089609670144749707.Spec := by
  intro n
  simp only [A033198, Nat.add_sub_cancel]

end A033198

/-! ## A033198.P13777882224259488788

`A037449(A005117(n+2))`
-/

namespace A033198.P13777882224259488788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A005117 (n + 2)).toNat

end

end A033198.P13777882224259488788

namespace A033198

/-- `A037449(A005117(n+2))` -/
def P13777882224259488788.Spec : Prop :=
  ∀ n, P13777882224259488788.a n = A033198 (n + 1)

end A033198

/-! ## A033198.P17913512540579179911

`A037449(eq[0, A087049(n)])`
-/

namespace A033198.P17913512540579179911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033198.P17913512540579179911

namespace A033198

/-- `A037449(eq[0, A087049(n)])` -/
def P17913512540579179911.Spec : Prop :=
  ∀ n, P17913512540579179911.a n = A033198 (n + 1)

end A033198

/-! ## A033198.P8309710932074426394

`A037449(record[A007913(n+2)])`
-/

namespace A033198.P8309710932074426394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033198.P8309710932074426394

namespace A033198

/-- `A037449(record[A007913(n+2)])` -/
def P8309710932074426394.Spec : Prop :=
  ∀ n, P8309710932074426394.a n = A033198 (n + 1)

end A033198

/-! ## A033198.P9319750977325526245

`A037449(record[A007947(n+2)])`
-/

namespace A033198.P9319750977325526245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033198.P9319750977325526245

namespace A033198

/-- `A037449(record[A007947(n+2)])` -/
def P9319750977325526245.Spec : Prop :=
  ∀ n, P9319750977325526245.a n = A033198 (n + 1)

end A033198

/-! ## A033198.P5097203039033156766

`A037449(record[A019554(n+2)])`
-/

namespace A033198.P5097203039033156766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033198.P5097203039033156766

namespace A033198

/-- `A037449(record[A019554(n+2)])` -/
def P5097203039033156766.Spec : Prop :=
  ∀ n, P5097203039033156766.a n = A033198 (n + 1)

end A033198

/-! ## A033198.P519953377033633090

`A037449(record[A055231(n+2)])`
-/

namespace A033198.P519953377033633090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033198.P519953377033633090

namespace A033198

/-- `A037449(record[A055231(n+2)])` -/
def P519953377033633090.Spec : Prop :=
  ∀ n, P519953377033633090.a n = A033198 (n + 1)

end A033198

/-! ## A033198.P622628846832958848

`A037449(record[A066069(n+2)])`
-/

namespace A033198.P622628846832958848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066069 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033198.P622628846832958848

namespace A033198

/-- `A037449(record[A066069(n+2)])` -/
def P622628846832958848.Spec : Prop :=
  ∀ n, P622628846832958848.a n = A033198 (n + 1)

end A033198

/-! ## A033198.P6533837670282869714

`filter[A065171(n+2), A290098(#)]`
-/

namespace A033198.P6533837670282869714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065171 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A033198.P6533837670282869714

namespace A033198

/-- `filter[A065171(n+2), A290098(#)]` -/
def P6533837670282869714.Spec : Prop :=
  ∀ n, P6533837670282869714.a n = A033198 (n + 1)

end A033198

/-! ## A033198.P18254601039868214578

`filter[A247555(n+2), A290098(#)]`
-/

namespace A033198.P18254601039868214578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A033198.P18254601039868214578

namespace A033198

/-- `filter[A247555(n+2), A290098(#)]` -/
def P18254601039868214578.Spec : Prop :=
  ∀ n, P18254601039868214578.a n = A033198 (n + 1)

end A033198

/-! ## A033198.P17107302446836506018

`A037449(A133466(n+2))`
-/

namespace A033198.P17107302446836506018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A133466 (n + 2)).toNat

end

end A033198.P17107302446836506018

namespace A033198

/-- `A037449(A133466(n+2))` -/
def P17107302446836506018.Spec : Prop :=
  ∀ n, P17107302446836506018.a n = A033198 (n + 1)

end A033198

/-! ## A033198.P17059563876357142732

`A037449(abs(A033197(n+2)))`
-/

namespace A033198.P17059563876357142732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 |A033197 (n + 2)|.toNat

end

end A033198.P17059563876357142732

namespace A033198

/-- `A037449(abs(A033197(n+2)))` -/
def P17059563876357142732.Spec : Prop :=
  ∀ n, P17059563876357142732.a n = A033198 (n + 1)

end A033198

/-! ## A033198.P1523121950564525339

`A037449(-A033197(n+2))`
-/

namespace A033198.P1523121950564525339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (-A033197 (n + 2)).toNat

end

end A033198.P1523121950564525339

namespace A033198

/-- `A037449(-A033197(n+2))` -/
def P1523121950564525339.Spec : Prop :=
  ∀ n, P1523121950564525339.a n = A033198 (n + 1)

end A033198

/-! ## A033198.P1498415630198025828

`A037449(A195085(n+2))`
-/

namespace A033198.P1498415630198025828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A195085 (n + 2)).toNat

end

end A033198.P1498415630198025828

namespace A033198

/-- `A037449(A195085(n+2))` -/
def P1498415630198025828.Spec : Prop :=
  ∀ n, P1498415630198025828.a n = A033198 (n + 1)

end A033198

/-!
# A033199: Primes of form x^2+6*y^2.

The programs for A033199, the canonical program `A033199.P10240645453124002133` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033199 has offset 1).

The definition of A033199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033199.P10240645453124002133

`p?[a(n-2)+24]` with `a(0)=7, a(1)=25`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033199

/-- `p?[a(n-2)+24]` -/
def P10240645453124002133.Spec : Prop :=
  ∀ n, (P10240645453124002133.a n : ℤ) = A033199 (n + 1)

theorem P10240645453124002133.correct : P10240645453124002133.Spec := by
  intro n
  simp only [A033199, Nat.add_sub_cancel]

end A033199

/-! ## A033199.P17240947210925896951

`p?[ogf((x+2x^2+x^3+8x^4)/(1-2x+2x^2-2x^3+x^4))]`
-/

namespace A033199.P17240947210925896951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 1, 8] [1, -2, 2, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033199.P17240947210925896951

namespace A033199

/-- `p?[ogf((x+2x^2+x^3+8x^4)/(1-2x+2x^2-2x^3+x^4))]` -/
def P17240947210925896951.Spec : Prop :=
  ∀ n, P17240947210925896951.a n = A033199 (n + 1)

end A033199

/-! ## A033199.P2355225575836255464

`p?[or(4, n+3)+2*n]`
-/

namespace A033199.P2355225575836255464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (n + 3) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033199.P2355225575836255464

namespace A033199

/-- `p?[or(4, n+3)+2*n]` -/
def P2355225575836255464.Spec : Prop :=
  ∀ n, (P2355225575836255464.a n : ℤ) = A033199 (n + 1)

end A033199

/-! ## A033199.P12510062308073211706

`∩[A001132(n+1), A002476(n+1)]`
-/

namespace A033199.P12510062308073211706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033199.P12510062308073211706

namespace A033199

/-- `∩[A001132(n+1), A002476(n+1)]` -/
def P12510062308073211706.Spec : Prop :=
  ∀ n, (P12510062308073211706.a n : ℤ) = A033199 (n + 1)

end A033199

/-! ## A033199.P6756014927957886453

`∩[A002476(n+1), A038873(n+1)]`
-/

namespace A033199.P6756014927957886453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033199.P6756014927957886453

namespace A033199

/-- `∩[A002476(n+1), A038873(n+1)]` -/
def P6756014927957886453.Spec : Prop :=
  ∀ n, (P6756014927957886453.a n : ℤ) = A033199 (n + 1)

end A033199

/-! ## A033199.P11518992311182602876

`∩[A097958(n+1), A002476(n+1)]`
-/

namespace A033199.P11518992311182602876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033199.P11518992311182602876

namespace A033199

/-- `∩[A097958(n+1), A002476(n+1)]` -/
def P11518992311182602876.Spec : Prop :=
  ∀ n, (P11518992311182602876.a n : ℤ) = A033199 (n + 1)

end A033199

/-! ## A033199.P11384004069664496011

`∩[A001132(n+1), A007645(n+1)]`
-/

namespace A033199.P11384004069664496011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033199.P11384004069664496011

namespace A033199

/-- `∩[A001132(n+1), A007645(n+1)]` -/
def P11384004069664496011.Spec : Prop :=
  ∀ n, (P11384004069664496011.a n : ℤ) = A033199 (n + 1)

end A033199

/-! ## A033199.P10253305857440008066

`∩[A001132(n+1), A045331(n+1)]`
-/

namespace A033199.P10253305857440008066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033199.P10253305857440008066

namespace A033199

/-- `∩[A001132(n+1), A045331(n+1)]` -/
def P10253305857440008066.Spec : Prop :=
  ∀ n, (P10253305857440008066.a n : ℤ) = A033199 (n + 1)

end A033199

/-! ## A033199.P2841709212361929069

`∩[A001132(n+1), A045375(n+1)]`
-/

namespace A033199.P2841709212361929069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033199.P2841709212361929069

namespace A033199

/-- `∩[A001132(n+1), A045375(n+1)]` -/
def P2841709212361929069.Spec : Prop :=
  ∀ n, (P2841709212361929069.a n : ℤ) = A033199 (n + 1)

end A033199

/-! ## A033199.P16025891273857041618

`∩[A007645(n+1), A038873(n+1)]`
-/

namespace A033199.P16025891273857041618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033199.P16025891273857041618

namespace A033199

/-- `∩[A007645(n+1), A038873(n+1)]` -/
def P16025891273857041618.Spec : Prop :=
  ∀ n, (P16025891273857041618.a n : ℤ) = A033199 (n + 1)

end A033199

/-! ## A033199.P5655533742492376877

`∩[A123365(n+1), A001132(n+1)]`
-/

namespace A033199.P5655533742492376877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033199.P5655533742492376877

namespace A033199

/-- `∩[A123365(n+1), A001132(n+1)]` -/
def P5655533742492376877.Spec : Prop :=
  ∀ n, (P5655533742492376877.a n : ℤ) = A033199 (n + 1)

end A033199

/-! ## A033199.P8855656302524797233

`∩[A001132(n+1), A296924(n+1)]`
-/

namespace A033199.P8855656302524797233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033199.P8855656302524797233

namespace A033199

/-- `∩[A001132(n+1), A296924(n+1)]` -/
def P8855656302524797233.Spec : Prop :=
  ∀ n, (P8855656302524797233.a n : ℤ) = A033199 (n + 1)

end A033199

/-! ## A033199.P14619128891547278569

`∩[A055664(n+1), A001132(n+1)]`
-/

namespace A033199.P14619128891547278569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033199.P14619128891547278569

namespace A033199

/-- `∩[A055664(n+1), A001132(n+1)]` -/
def P14619128891547278569.Spec : Prop :=
  ∀ n, (P14619128891547278569.a n : ℤ) = A033199 (n + 1)

end A033199

/-! ## A033199.P12044218664298524779

`p?[A155712(n+1)]`
-/

namespace A033199.P12044218664298524779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033199.P12044218664298524779

namespace A033199

/-- `p?[A155712(n+1)]` -/
def P12044218664298524779.Spec : Prop :=
  ∀ n, P12044218664298524779.a n = A033199 (n + 1)

end A033199

/-! ## A033199.P2742570236224621784

`p?[A390498(n+1)]`
-/

namespace A033199.P2742570236224621784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033199.P2742570236224621784

namespace A033199

/-- `p?[A390498(n+1)]` -/
def P2742570236224621784.Spec : Prop :=
  ∀ n, P2742570236224621784.a n = A033199 (n + 1)

end A033199

/-! ## A033199.P1698194890988502106

`∩[A155712(n+1), A380468(n+1)]`
-/

namespace A033199.P1698194890988502106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033199.P1698194890988502106

namespace A033199

/-- `∩[A155712(n+1), A380468(n+1)]` -/
def P1698194890988502106.Spec : Prop :=
  ∀ n, (P1698194890988502106.a n : ℤ) = A033199 (n + 1)

end A033199

/-! ## A033199.P10766069491938272420

`filter[A001132(n+1), A070563(#)]`
-/

namespace A033199.P10766069491938272420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A033199.P10766069491938272420

namespace A033199

/-- `filter[A001132(n+1), A070563(#)]` -/
def P10766069491938272420.Spec : Prop :=
  ∀ n, P10766069491938272420.a n = A033199 (n + 1)

end A033199

/-! ## A033199.P15144610819116907750

`filter[A038873(n+1), A070563(#)]`
-/

namespace A033199.P15144610819116907750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A033199.P15144610819116907750

namespace A033199

/-- `filter[A038873(n+1), A070563(#)]` -/
def P15144610819116907750.Spec : Prop :=
  ∀ n, P15144610819116907750.a n = A033199 (n + 1)

end A033199

/-! ## A033199.P7259225431004138793

`filter[A097958(n+1), A070563(#)]`
-/

namespace A033199.P7259225431004138793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A033199.P7259225431004138793

namespace A033199

/-- `filter[A097958(n+1), A070563(#)]` -/
def P7259225431004138793.Spec : Prop :=
  ∀ n, P7259225431004138793.a n = A033199 (n + 1)

end A033199

/-! ## A033199.P7932472347473576034

`filter[A157437(n+1), A070563(#)]`
-/

namespace A033199.P7932472347473576034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A033199.P7932472347473576034

namespace A033199

/-- `filter[A157437(n+1), A070563(#)]` -/
def P7932472347473576034.Spec : Prop :=
  ∀ n, P7932472347473576034.a n = A033199 (n + 1)

end A033199

