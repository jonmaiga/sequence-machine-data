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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A160600: Numbers k such that 3*(2k)^(2k)+1 is prime.

The programs for A160600, there is no canonical definition to state claims against.
-/

/-! ## A160600.P15442921286532528536

`A244986(A039023(n+1))`
-/

namespace A160600.P15442921286532528536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244986 (A039023 (n + 1)).toNat

end

end A160600.P15442921286532528536

/-!
# A160601: Numerator of Laguerre(n, -9).

The programs for A160601, there is no canonical definition to state claims against.
-/

/-! ## A160601.P14911526543969954191

`A160602(n)/A000142(n)*A289215(n)`
-/

namespace A160601.P14911526543969954191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160602 n : ℚ) / (A000142 n : ℚ) * (A289215 n : ℚ)

end

end A160601.P14911526543969954191

/-!
# A160602: Denominator of Laguerre(n, -9).

The programs for A160602, there is no canonical definition to state claims against.
-/

/-! ## A160602.P2450847635177724966

`A000142(n)/A289215(n)*A160601(n)`
-/

namespace A160602.P2450847635177724966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A289215 n : ℚ) * (A160601 n : ℚ)

end

end A160602.P2450847635177724966

/-! ## A160602.P10030279353724941851

`A006519(A160626(n))*A160632(n)`
-/

namespace A160602.P10030279353724941851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A160626 n).toNat * A160632 n

end

end A160602.P10030279353724941851

/-! ## A160602.P18183356411540014507

`A006519(A160610(n))*A160632(n)`
-/

namespace A160602.P18183356411540014507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A160610 n).toNat * A160632 n

end

end A160602.P18183356411540014507

/-! ## A160602.P15642718217965395101

`A006519(A160634(n))*A160632(n)`
-/

namespace A160602.P15642718217965395101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A160634 n).toNat * A160632 n

end

end A160602.P15642718217965395101

/-!
# A160603: Numerator of Laguerre(n, -8).

The programs for A160603, there is no canonical definition to state claims against.
-/

/-! ## A160603.P5836318380999103401

`A160604(n)/A000142(n)*A289214(n)`
-/

namespace A160603.P5836318380999103401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160604 n : ℚ) / (A000142 n : ℚ) * (A289214 n : ℚ)

end

end A160603.P5836318380999103401

/-! ## A160603.P13122322522266111873

`A000265(A289214(n)/A240783(n+1))`
-/

namespace A160603.P13122322522266111873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A289214 n : ℚ) / (A240783 (n + 1) : ℚ))).toNat

end

end A160603.P13122322522266111873

/-!
# A160604: Denominator of Laguerre(n, -8).

The programs for A160604, there is no canonical definition to state claims against.
-/

/-! ## A160604.P1621579119296391686

`A000142(n)/A289214(n)*A160603(n)`
-/

namespace A160604.P1621579119296391686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A289214 n : ℚ) * (A160603 n : ℚ)

end

end A160604.P1621579119296391686

/-! ## A160604.P616510782480664558

`A365296(A160616(n))`
-/

namespace A160604.P616510782480664558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (A160616 n).toNat

end

end A160604.P616510782480664558

/-! ## A160604.P10310385587504899273

`A160616(n)/A178334(A321655(n))`
-/

namespace A160604.P10310385587504899273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160616 n : ℚ) / (A178334 (A321655 n).toNat : ℚ)

end

end A160604.P10310385587504899273

/-! ## A160604.P14458576026660402387

`A160616(n)%A100143(A045920(n+1))`
-/

namespace A160604.P14458576026660402387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160616 n) (A100143 (A045920 (n + 1)).toNat)

end

end A160604.P14458576026660402387

/-! ## A160604.P8519958742958116577

`A000265(A160616(n))%A344702(n+1)`
-/

namespace A160604.P8519958742958116577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A160616 n).toNat) (A344702 (n + 1))

end

end A160604.P8519958742958116577

/-!
# A160605: Numerator of Laguerre(n, -7).

The programs for A160605, there is no canonical definition to state claims against.
-/

/-! ## A160605.P5179707508731998207

`lcm(A000142(n), A289213(n))/A000142(n)`
-/

namespace A160605.P5179707508731998207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000142 n) (A289213 n) : ℚ) / (A000142 n : ℚ)

end

end A160605.P5179707508731998207

/-! ## A160605.P11679898574248805367

`A289213(n)/gcd(A259089(2*n), A289213(n))`
-/

namespace A160605.P11679898574248805367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289213 n : ℚ) / (Int.gcd (A259089 (2 * n)) (A289213 n) : ℚ)

end

end A160605.P11679898574248805367

/-!
# A160606: Denominator of Laguerre(n, -7).

The programs for A160606, there is no canonical definition to state claims against.
-/

/-! ## A160606.P16715394993083087019

`lcm(A000142(n), A289213(n))/A289213(n)`
-/

namespace A160606.P16715394993083087019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000142 n) (A289213 n) : ℚ) / (A289213 n : ℚ)

end

end A160606.P16715394993083087019

/-! ## A160606.P3016815375600065774

`gcd(A114258(n+2), A133942(A029964(n+1)))`
-/

namespace A160606.P3016815375600065774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114258 (n + 2)) (A133942 (A029964 (n + 1)).toNat)

end

end A160606.P3016815375600065774

/-!
# A160607: Numerator of Laguerre(n, -6).

The programs for A160607, there is no canonical definition to state claims against.
-/

/-! ## A160607.P3342004985726470974

`A160608(n)/A000142(n)*A289212(n)`
-/

namespace A160607.P3342004985726470974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160608 n : ℚ) / (A000142 n : ℚ) * (A289212 n : ℚ)

end

end A160607.P3342004985726470974

/-! ## A160607.P18107893887245807489

`A289212(n)/A065331(n!)`
-/

namespace A160607.P18107893887245807489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289212 n : ℚ) / (A065331 (Nat.factorial n) : ℚ)

end

end A160607.P18107893887245807489

/-! ## A160607.P13388853832921912068

`A289212(n)/A065331(A000142(n))`
-/

namespace A160607.P13388853832921912068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289212 n : ℚ) / (A065331 (A000142 n).toNat : ℚ)

end

end A160607.P13388853832921912068

/-! ## A160607.P14561554088412583869

`A289192(A000124(n+7)-8)/A065331(A000142(n))`
-/

namespace A160607.P14561554088412583869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289192 (A000124 (n + 7) - 8).toNat : ℚ) / (A065331 (A000142 n).toNat : ℚ)

end

end A160607.P14561554088412583869

/-!
# A160608: Denominator of Laguerre(n, -6).

The programs for A160608, there is no canonical definition to state claims against.
-/

/-! ## A160608.P11432112022857732421

`A000142(n)/A289212(n)*A160607(n)`
-/

namespace A160608.P11432112022857732421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A289212 n : ℚ) * (A160607 n : ℚ)

end

end A160608.P11432112022857732421

/-! ## A160608.P189810779845736404

`gcd(A160632(A057653(n+1)), A160639(n))`
-/

namespace A160608.P189810779845736404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160632 (A057653 (n + 1)).toNat) (A160639 n)

end

end A160608.P189810779845736404

/-! ## A160608.P12326671004306316751

`A000027(gcd(A160639(n)², A160641(n)))`
-/

namespace A160608.P12326671004306316751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (A160639 n ^ 2) (A160641 n))

end

end A160608.P12326671004306316751

/-! ## A160608.P14555649111074577130

`gcd(A160626(A077168(n)), A160639(n))`
-/

namespace A160608.P14555649111074577130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160626 (A077168 n).toNat) (A160639 n)

end

end A160608.P14555649111074577130

/-! ## A160608.P2650872446487563815

`gcd(A000027(A160639(n)), A160555(n))`
-/

namespace A160608.P2650872446487563815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A160639 n).toNat) (A160555 n)

end

end A160608.P2650872446487563815

/-!
# A160609: Numerator of Laguerre(n, -5).

The programs for A160609, there is no canonical definition to state claims against.
-/

/-! ## A160609.P3689021082293605898

`A160610(n)/A000142(n)*A289211(n)`
-/

namespace A160609.P3689021082293605898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160610 n : ℚ) / (A000142 n : ℚ) * (A289211 n : ℚ)

end

end A160609.P3689021082293605898

/-!
# A160610: Denominator of Laguerre(n, -5).

The programs for A160610, there is no canonical definition to state claims against.
-/

/-! ## A160610.P8284269454718293283

`A000142(n)/A289211(n)*A160609(n)`
-/

namespace A160610.P8284269454718293283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A289211 n : ℚ) * (A160609 n : ℚ)

end

end A160610.P8284269454718293283

/-! ## A160610.P5527641233537206513

`gcd(eq[1, A342510(n)]², n!)`
-/

namespace A160610.P5527641233537206513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342510 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2) (Nat.factorial n)

end

end A160610.P5527641233537206513

/-! ## A160610.P893287894141631927

`A103360(A026397(n))`
-/

namespace A160610.P893287894141631927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103360 (A026397 n).toNat

end

end A160610.P893287894141631927

/-!
# A160611: Numerator of Laguerre(n, -4).

The programs for A160611, there is no canonical definition to state claims against.
-/

/-! ## A160611.P16219248279972258753

`A160612(n)/A000142(n)*A289147(n)`
-/

namespace A160611.P16219248279972258753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160612 n : ℚ) / (A000142 n : ℚ) * (A289147 n : ℚ)

end

end A160611.P16219248279972258753

/-! ## A160611.P16569844576556115310

`A289147(n)/gcd(A000165(n), A289147(n))`
-/

namespace A160611.P16569844576556115310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289147 n : ℚ) / (Int.gcd (A000165 n) (A289147 n) : ℚ)

end

end A160611.P16569844576556115310

/-! ## A160611.P14419860724435810409

`A000265(A289147(n)/A325831(n))`
-/

namespace A160611.P14419860724435810409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A289147 n : ℚ) / (A325831 n : ℚ))).toNat

end

end A160611.P14419860724435810409

/-!
# A160612: Denominator of Laguerre(n, -4).

The programs for A160612, there is no canonical definition to state claims against.
-/

/-! ## A160612.P7218977893971709591

`n!/A289147(n)*A160611(n)`
-/

namespace A160612.P7218977893971709591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A289147 n : ℚ) * (A160611 n : ℚ)

end

end A160612.P7218977893971709591

/-! ## A160612.P15695059398514967169

`A000142(n)/A289147(n)*A160611(n)`
-/

namespace A160612.P15695059398514967169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A289147 n : ℚ) * (A160611 n : ℚ)

end

end A160612.P15695059398514967169

/-! ## A160612.P15592535274111334416

`n!/gcd(A000165(n), A289147(n))`
-/

namespace A160612.P15592535274111334416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Int.gcd (A000165 n) (A289147 n) : ℚ)

end

end A160612.P15592535274111334416

/-! ## A160612.P1168361740218249506

`A049606(n)/A060904(A233682(n+1))`
-/

namespace A160612.P1168361740218249506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049606 n : ℚ) / (A060904 (A233682 (n + 1)).toNat : ℚ)

end

end A160612.P1168361740218249506

/-! ## A160612.P10571569390467922356

`gcd(A000217(A248592(n+1)), A353584(2*(n+1)))`
-/

namespace A160612.P10571569390467922356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A248592 (n + 1)).toNat) (A353584 (2 * (n + 1)))

end

end A160612.P10571569390467922356

/-!
# A160613: Numerator of Laguerre(n, -3).

The programs for A160613, there is no canonical definition to state claims against.
-/

/-! ## A160613.P8658008436053713519

`A277382(n)/gcd(A000142(n), A277382(n))`
-/

namespace A160613.P8658008436053713519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277382 n : ℚ) / (Int.gcd (A000142 n) (A277382 n) : ℚ)

end

end A160613.P8658008436053713519

/-! ## A160613.P17746648333734028167

`A327498(A277382(n)/A058071(n))`
-/

namespace A160613.P17746648333734028167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (SequenceMachineLib.roundAway ((A277382 n : ℚ) / (A058071 n : ℚ))).toNat

end

end A160613.P17746648333734028167

/-!
# A160614: Denominator of Laguerre(n, -3).

The programs for A160614, there is no canonical definition to state claims against.
-/

/-! ## A160614.P11621789286369251786

`A000142(n)/gcd(A000142(n), A277382(n))`
-/

namespace A160614.P11621789286369251786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A277382 n) : ℚ)

end

end A160614.P11621789286369251786

/-! ## A160614.P14191440721578799295

`A038502(A059787(n+2)*A119619(n+1))`
-/

namespace A160614.P14191440721578799295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A059787 (n + 2) * A119619 (n + 1)).toNat

end

end A160614.P14191440721578799295

/-! ## A160614.P5664694129369502425

`gcd(A119619(n+1), A334037(A163249(n+1)))`
-/

namespace A160614.P5664694129369502425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119619 (n + 1)) (A334037 (A163249 (n + 1)).toNat)

end

end A160614.P5664694129369502425

/-! ## A160614.P655218873846921838

`A038502(A119619(n+1)*A350103(3*n+4))`
-/

namespace A160614.P655218873846921838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A119619 (n + 1) * A350103 (3 * n + 4)).toNat

end

end A160614.P655218873846921838

/-!
# A160615: Numerator of Laguerre(n, -2).

The programs for A160615, there is no canonical definition to state claims against.
-/

/-! ## A160615.P1672461643004546219

`A087912(n)/A000142(n)*A160616(n)`
-/

namespace A160615.P1672461643004546219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087912 n : ℚ) / (A000142 n : ℚ) * (A160616 n : ℚ)

end

end A160615.P1672461643004546219

/-! ## A160615.P8550254613975370138

`A000265(A087912(n))/A067402(n)`
-/

namespace A160615.P8550254613975370138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (A087912 n).toNat : ℚ) / (A067402 n : ℚ)

end

end A160615.P8550254613975370138

/-! ## A160615.P1872933279875583244

`A000265(A087912(n))/A082039(n)`
-/

namespace A160615.P1872933279875583244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (A087912 n).toNat : ℚ) / (A082039 n : ℚ)

end

end A160615.P1872933279875583244

/-!
# A160616: Denominator of Laguerre(n, -2).

The programs for A160616, there is no canonical definition to state claims against.
-/

/-! ## A160616.P11201671209797866124

`A000142(n)/A087912(n)*A160615(n)`
-/

namespace A160616.P11201671209797866124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A087912 n : ℚ) * (A160615 n : ℚ)

end

end A160616.P11201671209797866124

/-! ## A160616.P7269411248158251269

`(A038507(n)-1)/A087912(n)*A160615(n)`
-/

namespace A160616.P7269411248158251269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038507 n - 1 : ℚ) / (A087912 n : ℚ) * (A160615 n : ℚ)

end

end A160616.P7269411248158251269

/-! ## A160616.P6079173300415684659

`A160604(n)*A178334(A321655(n))`
-/

namespace A160616.P6079173300415684659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160604 n * A178334 (A321655 n).toNat

end

end A160616.P6079173300415684659

/-! ## A160616.P7760704422494904181

`gcd(A160586(n), A305548(A160604(n)))`
-/

namespace A160616.P7760704422494904181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160586 n) (A305548 (A160604 n).toNat)

end

end A160616.P7760704422494904181

/-! ## A160616.P16524208524011897742

`A112961(A329602(3*n+2))*A160604(n)`
-/

namespace A160616.P16524208524011897742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112961 (A329602 (3 * n + 2)).toNat * A160604 n

end

end A160616.P16524208524011897742

/-!
# A160617: Numerator of Laguerre(n, -1).

The programs for A160617, there is no canonical definition to state claims against.
-/

/-! ## A160617.P17312319374879519956

`A002720(n)/A000142(n)*A160618(n)`
-/

namespace A160617.P17312319374879519956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002720 n : ℚ) / (A000142 n : ℚ) * (A160618 n : ℚ)

end

end A160617.P17312319374879519956

/-! ## A160617.P2461101950294540965

`A002720(n)/gcd(A002720(n), A130744(n))`
-/

namespace A160617.P2461101950294540965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002720 n : ℚ) / (Int.gcd (A002720 n) (A130744 n) : ℚ)

end

end A160617.P2461101950294540965

/-! ## A160617.P7486184127655755168

`lcm(A002720(n), A002868(n))/A002868(n)`
-/

namespace A160617.P7486184127655755168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002720 n) (A002868 n) : ℚ) / (A002868 n : ℚ)

end

end A160617.P7486184127655755168

/-! ## A160617.P9750002652614039357

`A002720(n)/A040001(A000166(n))`
-/

namespace A160617.P9750002652614039357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002720 n : ℚ) / (A040001 (A000166 n).toNat : ℚ)

end

end A160617.P9750002652614039357

/-! ## A160617.P9843210397351306255

`A002720(n)/A060130(A001710(n))`
-/

namespace A160617.P9843210397351306255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002720 n : ℚ) / (A060130 (A001710 n).toNat : ℚ)

end

end A160617.P9843210397351306255

/-!
# A160618: Denominator of Laguerre(n, -1).

The programs for A160618, there is no canonical definition to state claims against.
-/

/-! ## A160618.P16628679621487206962

`n!/gcd(A002720(n), A130744(n))`
-/

namespace A160618.P16628679621487206962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Int.gcd (A002720 n) (A130744 n) : ℚ)

end

end A160618.P16628679621487206962

/-! ## A160618.P11823956227579083045

`A000142(n)/A002720(n)*A160617(n)`
-/

namespace A160618.P11823956227579083045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A002720 n : ℚ) * (A160617 n : ℚ)

end

end A160618.P11823956227579083045

/-! ## A160618.P16144371985205114665

`lcm(A214340(n), A279335(n))`
-/

namespace A160618.P16144371985205114665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A214340 n) (A279335 n)

end

end A160618.P16144371985205114665

/-! ## A160618.P2336831118484042440

`A279335(A187829(n+1)-1)`
-/

namespace A160618.P2336831118484042440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279335 (A187829 (n + 1) - 1).toNat

end

end A160618.P2336831118484042440

/-! ## A160618.P4094204602555820660

`A279335(n)+A010054(A246119(n))`
-/

namespace A160618.P4094204602555820660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279335 n + A010054 (A246119 n).toNat

end

end A160618.P4094204602555820660

/-!
# A160619: a(n) = Sum_{d|n} phi(n/d)*2^(d+1), with a(0) = 0.

The programs for A160619, the canonical program `A160619.P17256148265937716064` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160619 has offset 0).

The definition of A160619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160619.P17256148265937716064

`2*A053635(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A160619

/-- `2*A053635(n)` -/
def P17256148265937716064.Spec : Prop :=
  ∀ n, P17256148265937716064.a n = A160619 n

theorem P17256148265937716064.correct : P17256148265937716064.Spec := by
  intro n
  simp only [A160619]

end A160619

/-! ## A160619.P13411060385148091390

`2*n*A000031(n)`
-/

namespace A160619.P13411060385148091390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A000031 n)

end

end A160619.P13411060385148091390

namespace A160619

/-- `2*n*A000031(n)` -/
def P13411060385148091390.Spec : Prop :=
  ∀ n, P13411060385148091390.a n = A160619 n

end A160619

/-! ## A160619.P5693422402297009716

`2*n*(A052823(n)+2)`
-/

namespace A160619.P5693422402297009716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (A052823 n + 2))

end

end A160619.P5693422402297009716

namespace A160619

/-- `2*n*(A052823(n)+2)` -/
def P5693422402297009716.Spec : Prop :=
  ∀ n, P5693422402297009716.a n = A160619 n

end A160619

/-! ## A160619.P4231816533106445726

`2*∑{d}[n, n*A001037(#)]`
-/

namespace A160619.P4231816533106445726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A001037 d)

end

end A160619.P4231816533106445726

namespace A160619

/-- `2*∑{d}[n, n*A001037(#)]` -/
def P4231816533106445726.Spec : Prop :=
  ∀ n, P4231816533106445726.a n = A160619 n

end A160619

/-! ## A160619.P13607661934428253748

`2*n*(Δ[A052825(n)]+1)`
-/

namespace A160619.P13607661934428253748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (f1 (n + 1) - f1 n + 1))

end

end A160619.P13607661934428253748

namespace A160619

/-- `2*n*(Δ[A052825(n)]+1)` -/
def P13607661934428253748.Spec : Prop :=
  ∀ n, P13607661934428253748.a n = A160619 n

end A160619

/-! ## A160619.P7355893802481066044

`A000031(n)*A005843(n)`
-/

namespace A160619.P7355893802481066044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n * A005843 n

end

end A160619.P7355893802481066044

namespace A160619

/-- `A000031(n)*A005843(n)` -/
def P7355893802481066044.Spec : Prop :=
  ∀ n, P7355893802481066044.a n = A160619 n

end A160619

/-! ## A160619.P8505448471131881797

`(A059076(n)+A000029(n))*2*n`
-/

namespace A160619.P8505448471131881797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059076 n + A000029 n) * (2 * n : ℤ)

end

end A160619.P8505448471131881797

namespace A160619

/-- `(A059076(n)+A000029(n))*2*n` -/
def P8505448471131881797.Spec : Prop :=
  ∀ n, P8505448471131881797.a n = A160619 n

end A160619

/-! ## A160619.P9766266756840871671

`A053635(A005843(n)/2)+A053635(n)`
-/

namespace A160619.P9766266756840871671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053635 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A053635 n

end

end A160619.P9766266756840871671

namespace A160619

/-- `A053635(A005843(n)/2)+A053635(n)` -/
def P9766266756840871671.Spec : Prop :=
  ∀ n, P9766266756840871671.a n = A160619 n

end A160619

/-! ## A160619.P13106759762634690672

`A053635(A005843(n)-n)+A053635(n)`
-/

namespace A160619.P13106759762634690672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053635 (A005843 n - (n : ℤ)).toNat + A053635 n

end

end A160619.P13106759762634690672

namespace A160619

/-- `A053635(A005843(n)-n)+A053635(n)` -/
def P13106759762634690672.Spec : Prop :=
  ∀ n, P13106759762634690672.a n = A160619 n

end A160619

/-! ## A160619.P5301440886464482788

`A053635(gcd(n, A053635(n)))+A053635(n)`
-/

namespace A160619.P5301440886464482788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053635 (Int.gcd (n : ℤ) (A053635 n)) + A053635 n

end

end A160619.P5301440886464482788

namespace A160619

/-- `A053635(gcd(n, A053635(n)))+A053635(n)` -/
def P5301440886464482788.Spec : Prop :=
  ∀ n, P5301440886464482788.a n = A160619 n

end A160619

/-! ## A160619.P9393555102593356746

`2*n*A052313(∑[n])`
-/

namespace A160619.P9393555102593356746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A052313 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160619.P9393555102593356746

namespace A160619

/-- `2*n*A052313(∑[n])` -/
def P9393555102593356746.Spec : Prop :=
  ∀ n, P9393555102593356746.a n = A160619 n

end A160619

/-!
# A160620: a(n) = Sum_{d|n} phi(n/d)^2*2^d.

The programs for A160620, there is no canonical definition to state claims against.
-/

/-! ## A160620.P3034050858766211066

`A161217(n)/2`
-/

namespace A160620.P3034050858766211066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161217 n : ℚ) / 2

end

end A160620.P3034050858766211066

/-! ## A160620.P1873879088977946007

`2^A008683(A006450(n+1))*A161217(n)`
-/

namespace A160620.P1873879088977946007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) * (A161217 n : ℚ)

end

end A160620.P1873879088977946007

/-! ## A160620.P7566812936026548200

`A014682(A161217(n))`
-/

namespace A160620.P7566812936026548200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A161217 n).toNat

end

end A160620.P7566812936026548200

/-! ## A160620.P15500253357236920019

`A273943(lcm(2, A161217(n)))`
-/

namespace A160620.P15500253357236920019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A161217 n))

end

end A160620.P15500253357236920019

/-! ## A160620.P14627396223188690612

`A007318(and(1, -n))*A273943(A161217(n))`
-/

namespace A160620.P14627396223188690612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A273943 (A161217 n).toNat

end

end A160620.P14627396223188690612

/-!
# A160621: Numerator of Laguerre(n, 1).

The programs for A160621, there is no canonical definition to state claims against.
-/

/-! ## A160621.P18417883061292034917

`A009940(n)/A000142(n)*A160622(n)`
-/

namespace A160621.P18417883061292034917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009940 n : ℚ) / (A000142 n : ℚ) * (A160622 n : ℚ)

end

end A160621.P18417883061292034917

/-! ## A160621.P15113283396013520697

`A009940(n)/gcd(A000142(n), A087860(n))`
-/

namespace A160621.P15113283396013520697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009940 n : ℚ) / (Int.gcd (A000142 n) (A087860 n) : ℚ)

end

end A160621.P15113283396013520697

/-! ## A160621.P15505536361916736274

`A009940(n)/gcd(A009940(n), A061711(n))`
-/

namespace A160621.P15505536361916736274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009940 n : ℚ) / (Int.gcd (A009940 n) (A061711 n) : ℚ)

end

end A160621.P15505536361916736274

/-!
# A160622: Denominator of Laguerre(n, 1).

The programs for A160622, there is no canonical definition to state claims against.
-/

/-! ## A160622.P13667902732387311764

`A000142(n)/gcd(A000142(n), A009940(n))`
-/

namespace A160622.P13667902732387311764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A009940 n) : ℚ)

end

end A160622.P13667902732387311764

/-! ## A160622.P10544883111835234236

`A006882(n)*A344678(A360892(n))`
-/

namespace A160622.P10544883111835234236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n * A344678 (A360892 n).toNat

end

end A160622.P10544883111835234236

/-! ## A160622.P15169097686099264252

`A028310(A301737(n))/A000377(n)`
-/

namespace A160622.P15169097686099264252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (A301737 n).toNat : ℚ) / (A000377 n : ℚ)

end

end A160622.P15169097686099264252

/-! ## A160622.P9387926027719023310

`lcm(A129108(n), A336351(A000837(n)))`
-/

namespace A160622.P9387926027719023310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129108 n) (A336351 (A000837 n).toNat)

end

end A160622.P9387926027719023310

/-!
# A160623: Numerator of Laguerre(n, 2).

The programs for A160623, there is no canonical definition to state claims against.
-/

/-! ## A160623.P11348830255555353684

`A160624(n)/A000142(n)*A295382(n)`
-/

namespace A160623.P11348830255555353684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160624 n : ℚ) / (A000142 n : ℚ) * (A295382 n : ℚ)

end

end A160623.P11348830255555353684

/-! ## A160623.P7842569853779065862

`A295382(n)/A006519(A060818(n))`
-/

namespace A160623.P7842569853779065862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295382 n : ℚ) / (A006519 (A060818 n).toNat : ℚ)

end

end A160623.P7842569853779065862

/-! ## A160623.P10139833521510173116

`A295381(∑[n+3])/A006519(A060818(n))`
-/

namespace A160623.P10139833521510173116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295381 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A006519 (A060818 n).toNat : ℚ)

end

end A160623.P10139833521510173116

/-! ## A160623.P15088572787354787112

`A295382(n)/A006519(A000142(n))`
-/

namespace A160623.P15088572787354787112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295382 n : ℚ) / (A006519 (A000142 n).toNat : ℚ)

end

end A160623.P15088572787354787112

/-!
# A160624: Denominator of Laguerre(n, 2).

The programs for A160624, there is no canonical definition to state claims against.
-/

/-! ## A160624.P12590289328846619700

`A049606(n)/gcd(A049606(n), A295382(n))`
-/

namespace A160624.P12590289328846619700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049606 n : ℚ) / (Int.gcd (A049606 n) (A295382 n) : ℚ)

end

end A160624.P12590289328846619700

/-! ## A160624.P11793467269745269240

`A000142(n)/A295382(n)*A160623(n)`
-/

namespace A160624.P11793467269745269240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A295382 n : ℚ) * (A160623 n : ℚ)

end

end A160624.P11793467269745269240

/-! ## A160624.P14749455370923801268

`A049606(n)/A139337(A184955(n))`
-/

namespace A160624.P14749455370923801268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049606 n : ℚ) / (A139337 (A184955 n).toNat : ℚ)

end

end A160624.P14749455370923801268

/-!
# A160626: Denominator of Laguerre(n, 3).

The programs for A160626, there is no canonical definition to state claims against.
-/

/-! ## A160626.P5473619884910639797

`A212307(n)/A082061(A282119(n))`
-/

namespace A160626.P5473619884910639797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212307 n : ℚ) / (A082061 (A282119 n).toNat : ℚ)

end

end A160626.P5473619884910639797

/-! ## A160626.P13892212198900524653

`lcm(A000265(A160608(n)), A160602(n))`
-/

namespace A160626.P13892212198900524653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A160608 n).toNat) (A160602 n)

end

end A160626.P13892212198900524653

/-! ## A160626.P1946646475307805771

`lcm(A000027(A160602(n)), A160614(n))`
-/

namespace A160626.P1946646475307805771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (A160602 n).toNat) (A160614 n)

end

end A160626.P1946646475307805771

/-! ## A160626.P8006496596078742779

`A000027(A212307(n))/A160602(A082061(n+1))`
-/

namespace A160626.P8006496596078742779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A212307 n).toNat : ℚ) / (A160602 (A082061 (n + 1)).toNat : ℚ)

end

end A160626.P8006496596078742779

/-! ## A160626.P18307897826451551764

`A212307(n)/A216915(A052905(n)/A216915(n+1))`
-/

namespace A160626.P18307897826451551764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212307 n : ℚ) / (A216915 (SequenceMachineLib.roundAway ((A052905 n : ℚ) / (A216915 (n + 1) : ℚ))).toNat : ℚ)

end

end A160626.P18307897826451551764

/-!
# A160628: Denominator of Laguerre(n, 4).

The programs for A160628, there is no canonical definition to state claims against.
-/

/-! ## A160628.P13675573770977771956

`A000265(A000142(n)/A118263(n))`
-/

namespace A160628.P13675573770977771956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A000142 n : ℚ) / (A118263 n : ℚ))).toNat

end

end A160628.P13675573770977771956

/-! ## A160628.P15778998345307726721

`A000265(A160586(n)/A035607(n))`
-/

namespace A160628.P15778998345307726721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A160586 n : ℚ) / (A035607 n : ℚ))).toNat

end

end A160628.P15778998345307726721

/-! ## A160628.P14297005314409078616

`A000265(A160586(n)/A066715(n))`
-/

namespace A160628.P14297005314409078616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A160586 n : ℚ) / (A066715 n : ℚ))).toNat

end

end A160628.P14297005314409078616

/-! ## A160628.P16668487012738141706

`A000265(A160586(n)/A193592(n))`
-/

namespace A160628.P16668487012738141706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A160586 n : ℚ) / (A193592 n : ℚ))).toNat

end

end A160628.P16668487012738141706

/-! ## A160628.P4475203209251789521

`A028234(A049606(n)*A074592(n+1))`
-/

namespace A160628.P4475203209251789521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A049606 n * A074592 (n + 1)).toNat

end

end A160628.P4475203209251789521

/-!
# A160630: Denominator of Laguerre(n, 5).

The programs for A160630, there is no canonical definition to state claims against.
-/

/-! ## A160630.P15169465890786831714

`lcm(A055975(A160586(n)), A160589(n))`
-/

namespace A160630.P15169465890786831714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055975 (A160586 n).toNat) (A160589 n)

end

end A160630.P15169465890786831714

/-! ## A160630.P11515289577224974057

`A263714(A148663(n))`
-/

namespace A160630.P11515289577224974057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263714 (A148663 n).toNat

end

end A160630.P11515289577224974057

/-! ## A160630.P873129414054199695

`A246465(A151448(n+1))`
-/

namespace A160630.P873129414054199695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246465 (A151448 (n + 1)).toNat

end

end A160630.P873129414054199695

/-!
# A160632: Denominator of Laguerre(n, 6).

The programs for A160632, there is no canonical definition to state claims against.
-/

/-! ## A160632.P4440914984251321988

`gcd(record[A355567(n)], A160602(n))`
-/

namespace A160632.P4440914984251321988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A160602 n)

end

end A160632.P4440914984251321988

/-! ## A160632.P16861654116429795490

`A000265(A160602(n))`
-/

namespace A160632.P16861654116429795490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A160602 n).toNat

end

end A160632.P16861654116429795490

/-! ## A160632.P7536065548610913370

`A171435(2*A160602(n))`
-/

namespace A160632.P7536065548610913370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A160602 n).toNat

end

end A160632.P7536065548610913370

/-! ## A160632.P17953629225678949489

`A171435(lcm(2, A160602(n)))`
-/

namespace A160632.P17953629225678949489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (Int.lcm 2 (A160602 n))

end

end A160632.P17953629225678949489

/-! ## A160632.P3802984696744280956

`A171435(ceil(A160602(n)/2))`
-/

namespace A160632.P3802984696744280956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 ⌈(A160602 n : ℚ) / 2⌉.toNat

end

end A160632.P3802984696744280956

/-!
# A160634: Denominator of Laguerre(n, 7).

The programs for A160634, there is no canonical definition to state claims against.
-/

/-! ## A160634.P8068184673735343876

`A000142(n)/A093557(A097332(n))`
-/

namespace A160634.P8068184673735343876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A093557 (A097332 n).toNat : ℚ)

end

end A160634.P8068184673735343876

/-! ## A160634.P4997604481156633207

`n!/A169989(n²)`
-/

namespace A160634.P4997604481156633207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A169989 (n ^ 2) : ℚ)

end

end A160634.P4997604481156633207

/-! ## A160634.P8050002000516955353

`n!/A014963(a(n-1)²)` with `a(0)=1`
-/

namespace A160634.P8050002000516955353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial n : ℚ) / (A014963 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)).toNat : ℚ)

end

end A160634.P8050002000516955353

/-!
# A160636: Hankel transform of A114464.

The programs for A160636, there is no canonical definition to state claims against.
-/

/-! ## A160636.P6688288900756125040

`A134185(n+1)/A000079(n+1)`
-/

namespace A160636.P6688288900756125040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134185 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A160636.P6688288900756125040

/-! ## A160636.P11726224948877715826

`A134185(n+1)/(A045621(n+1)+A001405(n+1))`
-/

namespace A160636.P11726224948877715826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134185 (n + 1) : ℚ) / (A045621 (n + 1) + A001405 (n + 1) : ℚ)

end

end A160636.P11726224948877715826

/-! ## A160636.P12905131867978652482

`A006462(n)^A256158(A006482(n+1))`
-/

namespace A160636.P12905131867978652482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006462 n : ℚ) ^ (A256158 (A006482 (n + 1)).toNat : ℤ)

end

end A160636.P12905131867978652482

/-!
# A160637: Hankel transform of A114464(n+1).

The programs for A160637, the canonical program `A160637.P3818900873539354450` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160637 has offset 0).

The definition of A160637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160637.P3818900873539354450

`(-2)^A011848(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A160637

/-- `(-2)^A011848(n+1)` -/
def P3818900873539354450.Spec : Prop :=
  ∀ n, P3818900873539354450.a n = (A160637 n : ℚ)

end A160637

/-! ## A160637.P15093480463427515161

`(-2)^floor(∑[n/2])`
-/

namespace A160637.P15093480463427515161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ : ℤ)

end

end A160637.P15093480463427515161

namespace A160637

/-- `(-2)^floor(∑[n/2])` -/
def P15093480463427515161.Spec : Prop :=
  ∀ n, P15093480463427515161.a n = (A160637 n : ℚ)

end A160637

/-! ## A160637.P13472550883333968839

`∏[∏[-(a(n-2)+1)]]` with `a(0)=1, a(1)=1`
-/

namespace A160637.P13472550883333968839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  -(f2 (n - 2) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A160637.P13472550883333968839

namespace A160637

/-- `∏[∏[-(a(n-2)+1)]]` -/
def P13472550883333968839.Spec : Prop :=
  ∀ n, P13472550883333968839.a n = A160637 n

end A160637

/-! ## A160637.P1697730715677103102

`∏[∏[-2/a(n-2)]]` with `a(0)=1, a(1)=1`
-/

namespace A160637.P1697730715677103102
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  -(2 / f2 (n - 2))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A160637.P1697730715677103102

namespace A160637

/-- `∏[∏[-2/a(n-2)]]` -/
def P1697730715677103102.Spec : Prop :=
  ∀ n, P1697730715677103102.a n = (A160637 n : ℚ)

end A160637

/-! ## A160637.P6834847642189248710

`∏[∏[a(n-2)²-3]]` with `a(0)=1, a(1)=1`
-/

namespace A160637.P6834847642189248710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 2) ^ 2 - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A160637.P6834847642189248710

namespace A160637

/-- `∏[∏[a(n-2)²-3]]` -/
def P6834847642189248710.Spec : Prop :=
  ∀ n, P6834847642189248710.a n = A160637 n

end A160637

/-!
# A160638: Bit-reversed 8-bit binary numbers.

The programs for A160638, the canonical program `A160638.P1424337119483227896` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160638 has offset 0).

The definition of A160638 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160638.P1424337119483227896

`floor(A030101(n+256)/2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160638

/-- `floor(A030101(n+256)/2)` -/
def P1424337119483227896.Spec : Prop :=
  ∀ n, P1424337119483227896.a n = A160638 n

theorem P1424337119483227896.correct : P1424337119483227896.Spec := by
  intro n
  simp only [A160638]

end A160638

/-! ## A160638.P4206439457236980616

`A217557(n)+n`
-/

namespace A160638.P4206439457236980616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217557 n + (n : ℤ)

end

end A160638.P4206439457236980616

namespace A160638

/-- `A217557(n)+n` -/
def P4206439457236980616.Spec : Prop :=
  ∀ n, P4206439457236980616.a n = A160638 n

end A160638

/-! ## A160638.P2037094643977906742

`A020705(n)-(4-A217557(n))`
-/

namespace A160638.P2037094643977906742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n - (4 - A217557 n)

end

end A160638.P2037094643977906742

namespace A160638

/-- `A020705(n)-(4-A217557(n))` -/
def P2037094643977906742.Spec : Prop :=
  ∀ n, P2037094643977906742.a n = A160638 n

end A160638

/-! ## A160638.P3147390273133960604

`A005843(n)-(n-A217557(n))`
-/

namespace A160638.P3147390273133960604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A217557 n)

end

end A160638.P3147390273133960604

namespace A160638

/-- `A005843(n)-(n-A217557(n))` -/
def P3147390273133960604.Spec : Prop :=
  ∀ n, P3147390273133960604.a n = A160638 n

end A160638

/-! ## A160638.P16385999332827954595

`record[A014681(n)]-(n-A217557(n))`
-/

namespace A160638.P16385999332827954595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - A217557 n)

end

end A160638.P16385999332827954595

namespace A160638

/-- `record[A014681(n)]-(n-A217557(n))` -/
def P16385999332827954595.Spec : Prop :=
  ∀ n, P16385999332827954595.a n = A160638 n

end A160638

/-! ## A160638.P8665758855324987371

`n-(A046784(A000120(n))-A217557(n))`
-/

namespace A160638.P8665758855324987371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A046784 (A000120 n).toNat - A217557 n)

end

end A160638.P8665758855324987371

namespace A160638

/-- `n-(A046784(A000120(n))-A217557(n))` -/
def P8665758855324987371.Spec : Prop :=
  ∀ n, P8665758855324987371.a n = A160638 n

end A160638

/-! ## A160638.P10400134833295028478

`A217589(A152691(n))/4`
-/

namespace A160638.P10400134833295028478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217589 (A152691 n).toNat : ℚ) / 4

end

end A160638.P10400134833295028478

namespace A160638

/-- `A217589(A152691(n))/4` -/
def P10400134833295028478.Spec : Prop :=
  ∀ n, P10400134833295028478.a n = (A160638 n : ℚ)

end A160638

/-! ## A160638.P14436298883627761972

`A217558(A126006(A057300(n)))`
-/

namespace A160638.P14436298883627761972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (A126006 (A057300 n).toNat).toNat

end

end A160638.P14436298883627761972

namespace A160638

/-- `A217558(A126006(A057300(n)))` -/
def P14436298883627761972.Spec : Prop :=
  ∀ n, P14436298883627761972.a n = A160638 n

end A160638

/-!
# A160639: Denominator of Laguerre(n, 8).

The programs for A160639, there is no canonical definition to state claims against.
-/

/-! ## A160639.P13874742709180363780

`gcd(n!, A339901(A153893(n)))`
-/

namespace A160639.P13874742709180363780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A339901 (A153893 n).toNat)

end

end A160639.P13874742709180363780

/-! ## A160639.P5754721617132963362

`gcd(A052651(A114583(n)), A160624(n))`
-/

namespace A160639.P5754721617132963362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052651 (A114583 n).toNat) (A160624 n)

end

end A160639.P5754721617132963362

/-! ## A160639.P4564159728117379739

`gcd(A339901(A153893(n))², A000142(n))`
-/

namespace A160639.P4564159728117379739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A339901 (A153893 n).toNat ^ 2) (A000142 n)

end

end A160639.P4564159728117379739

/-! ## A160639.P11505227322399383853

`A097272(A046983(n))`
-/

namespace A160639.P11505227322399383853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (A046983 n).toNat

end

end A160639.P11505227322399383853

/-! ## A160639.P827105528866838892

`gcd(A025487(A011782(n+4)), A049606(n))`
-/

namespace A160639.P827105528866838892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025487 (A011782 (n + 4)).toNat) (A049606 n)

end

end A160639.P827105528866838892

/-!
# A160641: Denominator of Laguerre(n, 9).

The programs for A160641, there is no canonical definition to state claims against.
-/

/-! ## A160641.P6770838583212939899

`A324744(A052964(n))%A332275(2*(n+2))`
-/

namespace A160641.P6770838583212939899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324744 (A052964 n).toNat) (A332275 (2 * (n + 2)))

end

end A160641.P6770838583212939899

/-!
# A160643: Bisect A053445 then calculate the first differences of the resulting sequence.

The programs for A160643, there is no canonical definition to state claims against.
-/

/-! ## A160643.P2161247284831526093

`Δ[A161921(abs(1-n))]`
-/

namespace A160643.P2161247284831526093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161921 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160643.P2161247284831526093

/-! ## A160643.P15317948187912969268

`Δ[A182747(n)%A182746(n)]`
-/

namespace A160643.P15317948187912969268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182747 n) (A182746 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160643.P15317948187912969268

/-! ## A160643.P5805777661854960044

`A161921(n)-A161921(abs(1-n))`
-/

namespace A160643.P5805777661854960044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161921 n - A161921 |1 - (n : ℤ)|.toNat

end

end A160643.P5805777661854960044

/-! ## A160643.P10473400967900804331

`Δ[A083751(2*n+1)-A002865(2*n)]`
-/

namespace A160643.P10473400967900804331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (2 * n + 1) - A002865 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160643.P10473400967900804331

/-! ## A160643.P2072587299377537101

`Δ[A232697(2*n+1)-A232697(2*n)]`
-/

namespace A160643.P2072587299377537101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 (2 * n + 1) - A232697 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160643.P2072587299377537101

/-! ## A160643.P120502453425653456

`Δ[A002865(2*n+1)%A002865(2*n)]`
-/

namespace A160643.P120502453425653456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002865 (2 * n + 1)) (A002865 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160643.P120502453425653456

/-! ## A160643.P5039379970103552330

`A165652(2*n+3)-A165652(2*(n+1))`
-/

namespace A160643.P5039379970103552330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165652 (2 * n + 3) - A165652 (2 * (n + 1))

end

end A160643.P5039379970103552330

/-! ## A160643.P12106605291417599487

`A008483(2*n+3)-A008483(A114637(2*n+1))`
-/

namespace A160643.P12106605291417599487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (2 * n + 3) - A008483 (A114637 (2 * n + 1)).toNat

end

end A160643.P12106605291417599487

/-!
# A160644: First of two sequences bisecting the second differences of the partition numbers (see A053445).

The programs for A160644, there is no canonical definition to state claims against.
-/

/-! ## A160644.P16042763495646952259

`A053445(2*n)`
-/

namespace A160644.P16042763495646952259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 (2 * n)

end

end A160644.P16042763495646952259

/-! ## A160644.P11898321676828007452

`A160646(n)+a(n-1)` with `a(0)=1`
-/

namespace A160644.P11898321676828007452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160646 n + a (n - 1)

end

end A160644.P11898321676828007452

/-! ## A160644.P10876900183170079570

`A182746(n+1)-A182747(n)`
-/

namespace A160644.P10876900183170079570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182746 (n + 1) - A182747 n

end

end A160644.P10876900183170079570

/-! ## A160644.P15766523046602027253

`A161921(n)-A072380(2*n)`
-/

namespace A160644.P15766523046602027253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161921 n - A072380 (2 * n)

end

end A160644.P15766523046602027253

/-! ## A160644.P7189666474690137923

`A058696(n)-A117989(2*n+1)`
-/

namespace A160644.P7189666474690137923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A117989 (2 * n + 1)

end

end A160644.P7189666474690137923

/-! ## A160644.P4161609397533718547

`A002865(2*(n+1))-A182747(n)`
-/

namespace A160644.P4161609397533718547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * (n + 1)) - A182747 n

end

end A160644.P4161609397533718547

/-! ## A160644.P15675317387247627046

`A182746(n+1)-A002865(2*n+1)`
-/

namespace A160644.P15675317387247627046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182746 (n + 1) - A002865 (2 * n + 1)

end

end A160644.P15675317387247627046

/-! ## A160644.P13681189527081897752

`A000041(2*n)-A117989(2*n+1)`
-/

namespace A160644.P13681189527081897752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A117989 (2 * n + 1)

end

end A160644.P13681189527081897752

/-! ## A160644.P11311403006180508222

`Δ[A087787(2*n)]-A002865(2*n+1)`
-/

namespace A160644.P11311403006180508222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002865 (2 * n + 1)

end

end A160644.P11311403006180508222

/-! ## A160644.P10788261747910149317

`A002865(2*(n+1))-A002865(2*n+1)`
-/

namespace A160644.P10788261747910149317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * (n + 1)) - A002865 (2 * n + 1)

end

end A160644.P10788261747910149317

/-! ## A160644.P9282767413979249088

`A117298(2*(n+1))-A117995(2*n+1)`
-/

namespace A160644.P9282767413979249088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117298 (2 * (n + 1)) - A117995 (2 * n + 1)

end

end A160644.P9282767413979249088

/-! ## A160644.P3778077900897115284

`A232697(2*(n+1))-A232697(2*n+1)`
-/

namespace A160644.P3778077900897115284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 (2 * (n + 1)) - A232697 (2 * n + 1)

end

end A160644.P3778077900897115284

/-! ## A160644.P13794240070407532968

`A187219(2*(n+1))-A085811(2*(n+2))`
-/

namespace A160644.P13794240070407532968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (2 * (n + 1)) - A085811 (2 * (n + 2))

end

end A160644.P13794240070407532968

/-! ## A160644.P7364038483738824532

`A117298(2*(n+1))+1-A117298(2*n+1)`
-/

namespace A160644.P7364038483738824532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117298 (2 * (n + 1)) + (1 - A117298 (2 * n + 1))

end

end A160644.P7364038483738824532

/-! ## A160644.P3258732202332574720

`A117995(2*(n+1))+1-A117995(2*n+1)`
-/

namespace A160644.P3258732202332574720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117995 (2 * (n + 1)) + (1 - A117995 (2 * n + 1))

end

end A160644.P3258732202332574720

/-! ## A160644.P16623347441231495515

`A083751(2*(n+1))+A000041(2*n)-A000065(2*n+1)`
-/

namespace A160644.P16623347441231495515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (2 * (n + 1)) + (A000041 (2 * n) - A000065 (2 * n + 1))

end

end A160644.P16623347441231495515

/-! ## A160644.P3551550096621379714

`A187219(2*(n+1))+A000041(2*n)-A000041(2*n+1)`
-/

namespace A160644.P3551550096621379714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (2 * (n + 1)) + (A000041 (2 * n) - A000041 (2 * n + 1))

end

end A160644.P3551550096621379714

/-! ## A160644.P8489425012546826516

`A187219(2*(n+1))+A000065(2*n)-A000065(2*n+1)`
-/

namespace A160644.P8489425012546826516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (2 * (n + 1)) + (A000065 (2 * n) - A000065 (2 * n + 1))

end

end A160644.P8489425012546826516

/-! ## A160644.P8117467414995173998

`A135528(2*n+1)+A187219(2*(n+1))-A187219(2*n+1)`
-/

namespace A160644.P8117467414995173998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (2 * n + 1) + (A187219 (2 * (n + 1)) - A187219 (2 * n + 1))

end

end A160644.P8117467414995173998

/-! ## A160644.P14675056980844712741

`A326956(2*n+1)+A187219(2*(n+1))-A187219(2*n+1)`
-/

namespace A160644.P14675056980844712741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326956 (2 * n + 1) + (A187219 (2 * (n + 1)) - A187219 (2 * n + 1))

end

end A160644.P14675056980844712741

/-!
# A160646: First differences of A160644.

The programs for A160646, there is no canonical definition to state claims against.
-/

/-! ## A160646.P250715508213940710

`∑[A160648(n+1)]`
-/

namespace A160646.P250715508213940710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160646.P250715508213940710

/-! ## A160646.P14669402834272798540

`Δ[A053445(2*n)]`
-/

namespace A160646.P14669402834272798540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160646.P14669402834272798540

/-! ## A160646.P8015432469684808776

`Δ[A182746(n+1)-A182747(n)]`
-/

namespace A160646.P8015432469684808776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182746 (n + 1) - A182747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160646.P8015432469684808776

/-! ## A160646.P6811367663612558554

`A072380(2*n+1)+A072380(2*n)`
-/

namespace A160646.P6811367663612558554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072380 (2 * n + 1) + A072380 (2 * n)

end

end A160646.P6811367663612558554

/-! ## A160646.P807768776455420140

`A053445(2*(n+1))-A053445(2*n)`
-/

namespace A160646.P807768776455420140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 (2 * (n + 1)) - A053445 (2 * n)

end

end A160646.P807768776455420140

/-! ## A160646.P5564864405004598739

`Δ[Δ[A087787(2*n)]-A002865(2*n+1)]`
-/

namespace A160646.P5564864405004598739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A002865 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160646.P5564864405004598739

/-! ## A160646.P17047546709113269131

`Δ[A083751(2*(n+1))-A002865(2*n+1)]`
-/

namespace A160646.P17047546709113269131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (2 * (n + 1)) - A002865 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160646.P17047546709113269131

/-! ## A160646.P12569299200542947012

`Δ[A117298(2*(n+1))-A117298(2*n+1)]`
-/

namespace A160646.P12569299200542947012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117298 (2 * (n + 1)) - A117298 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160646.P12569299200542947012

/-! ## A160646.P16849327422620434784

`Δ[A117995(2*(n+1))-A117995(2*n+1)]`
-/

namespace A160646.P16849327422620434784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117995 (2 * (n + 1)) - A117995 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160646.P16849327422620434784

/-! ## A160646.P3071524165716719385

`Δ[A085811(2*n+5)-A002865(2*n+1)]`
-/

namespace A160646.P3071524165716719385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (2 * n + 5) - A002865 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160646.P3071524165716719385

/-! ## A160646.P11924813021659170705

`A026796(2*n+7)-A026796(A020715(2*n))`
-/

namespace A160646.P11924813021659170705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (2 * n + 7) - A026796 (A020715 (2 * n)).toNat

end

end A160646.P11924813021659170705

/-! ## A160646.P14705186436914689786

`Δ[A160644(n+1)]`
-/

namespace A160646.P14705186436914689786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160646.P14705186436914689786

/-! ## A160646.P3899490116226755158

`A160644(n+2)-A160644(n+1)`
-/

namespace A160646.P3899490116226755158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160644 (n + 2) - A160644 (n + 1)

end

end A160646.P3899490116226755158

/-! ## A160646.P2435737750911275018

`A002865(2*n+1)-A096373(2*n+1)`
-/

namespace A160646.P2435737750911275018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1) - A096373 (2 * n + 1)

end

end A160646.P2435737750911275018

/-! ## A160646.P6136698481647799466

`A117995(2*n+1)-A096373(2*n+1)`
-/

namespace A160646.P6136698481647799466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117995 (2 * n + 1) - A096373 (2 * n + 1)

end

end A160646.P6136698481647799466

/-! ## A160646.P11699352677856267927

`A000041(2*n+1)-(A096373(2*n+1)+A000041(2*n))`
-/

namespace A160646.P11699352677856267927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) - (A096373 (2 * n + 1) + A000041 (2 * n))

end

end A160646.P11699352677856267927

/-!
# A160647: Self-convolution of sequence A001402.

The programs for A160647, there is no canonical definition to state claims against.
-/

/-! ## A160647.P14320453415701876452

`A117488(A217397(n+1)-2)`
-/

namespace A160647.P14320453415701876452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117488 (A217397 (n + 1) - 2).toNat

end

end A160647.P14320453415701876452

/-! ## A160647.P3121667852665587278

`∑[A306202(A122129(2*n))]`
-/

namespace A160647.P3121667852665587278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (A122129 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160647.P3121667852665587278

/-! ## A160647.P1690322472643435006

`A117488(A034067(n+1)+10)`
-/

namespace A160647.P1690322472643435006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117488 (A034067 (n + 1) + 10).toNat

end

end A160647.P1690322472643435006

/-! ## A160647.P12757720977676076275

`A103924(n)+A056975(A121941(n))`
-/

namespace A160647.P12757720977676076275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103924 n + A056975 (A121941 n).toNat

end

end A160647.P12757720977676076275

/-! ## A160647.P3858168543543351289

`A103925(n)-A213727(A005506(n))`
-/

namespace A160647.P3858168543543351289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103925 n - A213727 (A005506 n).toNat

end

end A160647.P3858168543543351289

/-!
# A160648: Second differences of sequence A160644.

The programs for A160648, there is no canonical definition to state claims against.
-/

/-! ## A160648.P5828354795462352111

`Δ[A160646(A065033(2*n))]`
-/

namespace A160648.P5828354795462352111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160646 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160648.P5828354795462352111

/-! ## A160648.P10748268969654257296

`Δ[A160646(A123108(2*n))]`
-/

namespace A160648.P10748268969654257296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160646 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160648.P10748268969654257296

/-! ## A160648.P13712082499544652872

`Δ[A160646(A000007(n)+n)]`
-/

namespace A160648.P13712082499544652872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160646 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160648.P13712082499544652872

/-! ## A160648.P7740902882591920294

`Δ[A160646(gcd(n, A008706(n)))]`
-/

namespace A160648.P7740902882591920294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160646 (Int.gcd (n : ℤ) (A008706 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160648.P7740902882591920294

/-! ## A160648.P247051667327303031

`Δ[Δ[A002865(2*n)]-A008483(2*n+1)]`
-/

namespace A160648.P247051667327303031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A008483 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160648.P247051667327303031

/-! ## A160648.P7994573189671113356

`Δ[Δ[A002865(2*n)-A085811(2*(n+1))]]`
-/

namespace A160648.P7994573189671113356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n) - A085811 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160648.P7994573189671113356

/-! ## A160648.P13083008652220070306

`Δ[A160646(A008619(A004273(n)))]`
-/

namespace A160648.P13083008652220070306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160646 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160648.P13083008652220070306

/-! ## A160648.P9708641212560347401

`A160646(n+1)-A160646(A028310(n))`
-/

namespace A160648.P9708641212560347401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160646 (n + 1) - A160646 (A028310 n).toNat

end

end A160648.P9708641212560347401

/-! ## A160648.P16482995606016973117

`A160646(n+1)-A160646(A065033(2*n))`
-/

namespace A160648.P16482995606016973117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160646 (n + 1) - A160646 (A065033 (2 * n)).toNat

end

end A160648.P16482995606016973117

/-! ## A160648.P10088329233622059431

`A160646(n+1)-A160646(A000007(n)+n)`
-/

namespace A160648.P10088329233622059431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160646 (n + 1) - A160646 (A000007 n + (n : ℤ)).toNat

end

end A160648.P10088329233622059431

/-! ## A160648.P12990474776107051288

`Δ[A160646(A007318(A000124(n)))]`
-/

namespace A160648.P12990474776107051288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160646 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160648.P12990474776107051288

/-! ## A160648.P17909024967453055532

`A160646(n+1)-A160646(A003056(A000124(n)))`
-/

namespace A160648.P17909024967453055532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160646 (n + 1) - A160646 (A003056 (A000124 n).toNat).toNat

end

end A160648.P17909024967453055532

/-!
# A160649: a(1)=2. a(n) = a(n-1) + A001222(a(n-1)); where A001222(m) is the sum of prime-factorization exponents of m (or, A001222(m) is the number of primes dividing m, with multiplicity).

The programs for A160649, the canonical program `A160649.P10811897256464060766` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160649 has offset 1).

The definition of A160649 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160649.P10811897256464060766

`a(n-1)+A001222(a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A160649

/-- `a(n-1)+A001222(a(n-1))` -/
def P10811897256464060766.Spec : Prop :=
  ∀ n, P10811897256464060766.a n = A160649 (n + 1)

theorem P10811897256464060766.correct : P10811897256464060766.Spec := by
  intro n
  simp only [A160649, Nat.add_sub_cancel]

end A160649

/-! ## A160649.P13441300515626737042

`A160650(n)+a(n-1)` with `a(0)=2`
-/

namespace A160649.P13441300515626737042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A160650 n + a (n - 1)

end

end A160649.P13441300515626737042

namespace A160649

/-- `A160650(n)+a(n-1)` -/
def P13441300515626737042.Spec : Prop :=
  ∀ n, P13441300515626737042.a n = A160649 (n + 1)

end A160649

/-! ## A160649.P14465167540357509177

`A001222(2*a(n-1))-(1-a(n-1))` with `a(0)=2`
-/

namespace A160649.P14465167540357509177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001222 (2 * a (n - 1)).toNat - (1 - a (n - 1))

end

end A160649.P14465167540357509177

namespace A160649

/-- `A001222(2*a(n-1))-(1-a(n-1))` -/
def P14465167540357509177.Spec : Prop :=
  ∀ n, P14465167540357509177.a n = A160649 (n + 1)

end A160649

/-! ## A160649.P13380307844924355421

`∑[A160650(n+1)]+2-A160650(n+1)`
-/

namespace A160649.P13380307844924355421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A160650 (n + 1))

end

end A160649.P13380307844924355421

namespace A160649

/-- `∑[A160650(n+1)]+2-A160650(n+1)` -/
def P13380307844924355421.Spec : Prop :=
  ∀ n, P13380307844924355421.a n = A160649 (n + 1)

end A160649

/-! ## A160649.P11683129647177571844

`A064800(a(n-1))` with `a(0)=2`
-/

namespace A160649.P11683129647177571844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A064800 (a (n - 1)).toNat

end

end A160649.P11683129647177571844

namespace A160649

/-- `A064800(a(n-1))` -/
def P11683129647177571844.Spec : Prop :=
  ∀ n, P11683129647177571844.a n = A160649 (n + 1)

end A160649

/-! ## A160649.P13036082954068484663

`A222312(a(n-1))+1` with `a(0)=2`
-/

namespace A160649.P13036082954068484663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A222312 (a (n - 1)).toNat + 1

end

end A160649.P13036082954068484663

namespace A160649

/-- `A222312(a(n-1))+1` -/
def P13036082954068484663.Spec : Prop :=
  ∀ n, P13036082954068484663.a n = A160649 (n + 1)

end A160649

/-! ## A160649.P14270150660754278097

`A086436(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A160649.P14270150660754278097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A086436 (a (n - 1)).toNat + a (n - 1)

end

end A160649.P14270150660754278097

namespace A160649

/-- `A086436(a(n-1))+a(n-1)` -/
def P14270150660754278097.Spec : Prop :=
  ∀ n, P14270150660754278097.a n = A160649 (n + 1)

end A160649

/-! ## A160649.P14412136730094486062

`a(n-1)+A073093(a(n-1))-1` with `a(0)=2`
-/

namespace A160649.P14412136730094486062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A073093 (a (n - 1)).toNat - 1)

end

end A160649.P14412136730094486062

namespace A160649

/-- `a(n-1)+A073093(a(n-1))-1` -/
def P14412136730094486062.Spec : Prop :=
  ∀ n, P14412136730094486062.a n = A160649 (n + 1)

end A160649

/-! ## A160649.P5842150076842202376

`2*a(n-1)-A069345(a(n-1))` with `a(0)=2`
-/

namespace A160649.P5842150076842202376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - A069345 (a (n - 1)).toNat

end

end A160649.P5842150076842202376

namespace A160649

/-- `2*a(n-1)-A069345(a(n-1))` -/
def P5842150076842202376.Spec : Prop :=
  ∀ n, P5842150076842202376.a n = A160649 (n + 1)

end A160649

/-! ## A160649.P4793027517866193920

`eq[1, A375508(n+1)]+2`
-/

namespace A160649.P4793027517866193920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A160649.P4793027517866193920

namespace A160649

/-- `eq[1, A375508(n+1)]+2` -/
def P4793027517866193920.Spec : Prop :=
  ∀ n, (P4793027517866193920.a n : ℤ) = A160649 (n + 1)

end A160649

/-! ## A160649.P16288120736620685138

`record[A064800(a(A075795(n+1)))]` with `a(0)=2`
-/

namespace A160649.P16288120736620685138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A064800 (f1 (A075795 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160649.P16288120736620685138

namespace A160649

/-- `record[A064800(a(A075795(n+1)))]` -/
def P16288120736620685138.Spec : Prop :=
  ∀ n, P16288120736620685138.a n = A160649 (n + 1)

end A160649

/-! ## A160649.P12623149436975010729

`A222312(2*a(n-1))-a(n-1)` with `a(0)=2`
-/

namespace A160649.P12623149436975010729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A222312 (2 * a (n - 1)).toNat - a (n - 1)

end

end A160649.P12623149436975010729

namespace A160649

/-- `A222312(2*a(n-1))-a(n-1)` -/
def P12623149436975010729.Spec : Prop :=
  ∀ n, P12623149436975010729.a n = A160649 (n + 1)

end A160649

/-!
# A160650: a(n) = A001222(A160649(n)) = A160649(n+1) - A160649(n); where A001222(m) is the sum of prime-factorization exponents of m (or, A001222(m) is the number of primes dividing m, counted with multiplicity).

The programs for A160650, the canonical program `A160650.P1545316791043545642` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160650 has offset 1).

The definition of A160650 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160649, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160650.P11144531466376676981

`A001222(A160649(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160650.P11144531466376676981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A160649 (n + 1)).toNat

end

end A160650.P11144531466376676981

namespace A160650

/-- `A001222(A160649(n+1))` -/
def P11144531466376676981.Spec : Prop :=
  ∀ n, P11144531466376676981.a n = A160650 (n + 1)

end A160650

/-! ## A160650.P1545316791043545642

`A160649(n+2)-A160649(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A160650

/-- `A160649(n+2)-A160649(n+1)` -/
def P1545316791043545642.Spec : Prop :=
  ∀ n, P1545316791043545642.a n = A160650 (n + 1)

theorem P1545316791043545642.correct : P1545316791043545642.Spec := by
  intro n
  simp only [A160650, Nat.add_sub_cancel]

end A160650

/-! ## A160650.P14216369608554713745

`Δ[A001222(a(n-1))+a(n-1)]` with `a(0)=2`
-/

namespace A160650.P14216369608554713745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A001222 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160650.P14216369608554713745

namespace A160650

/-- `Δ[A001222(a(n-1))+a(n-1)]` -/
def P14216369608554713745.Spec : Prop :=
  ∀ n, P14216369608554713745.a n = A160650 (n + 1)

end A160650

/-! ## A160650.P7800919768196785087

`∑{e}[A222312(a(n-1))+1, #]` with `a(0)=2`
-/

namespace A160650.P7800919768196785087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A222312 (f1 (n - 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A160650.P7800919768196785087

namespace A160650

/-- `∑{e}[A222312(a(n-1))+1, #]` -/
def P7800919768196785087.Spec : Prop :=
  ∀ n, (P7800919768196785087.a n : ℤ) = A160650 (n + 1)

end A160650

/-! ## A160650.P8438520684020837483

`Δ[A064800(a(n-1))]` with `a(0)=2`
-/

namespace A160650.P8438520684020837483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A064800 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160650.P8438520684020837483

namespace A160650

/-- `Δ[A064800(a(n-1))]` -/
def P8438520684020837483.Spec : Prop :=
  ∀ n, P8438520684020837483.a n = A160650 (n + 1)

end A160650

/-! ## A160650.P7218265297000920678

`Δ[A222312(a(n-1)+1)]` with `a(0)=1`
-/

namespace A160650.P7218265297000920678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A222312 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160650.P7218265297000920678

namespace A160650

/-- `Δ[A222312(a(n-1)+1)]` -/
def P7218265297000920678.Spec : Prop :=
  ∀ n, P7218265297000920678.a n = A160650 (n + 1)

end A160650

/-!
# A160651: a(n) is the number of triangular nonnegative integers that are each equal to n(n+1)/2 - m(m+1)/2, for some m's where 0 <= m <= n.

The programs for A160651, the canonical program `A160651.P14045430326735677047` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160651 has offset 0).

The definition of A160651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160651.P14688665961270794922

`A000005(A278244(n))`
-/

namespace A160651.P14688665961270794922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278244 n).toNat

end

end A160651.P14688665961270794922

namespace A160651

/-- `A000005(A278244(n))` -/
def P14688665961270794922.Spec : Prop :=
  ∀ n, P14688665961270794922.a n = A160651 n

end A160651

/-! ## A160651.P16852125842839675247

`A028949(n+2)-2`
-/

namespace A160651.P16852125842839675247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028949 (n + 2) - 2

end

end A160651.P16852125842839675247

namespace A160651

/-- `A028949(n+2)-2` -/
def P16852125842839675247.Spec : Prop :=
  ∀ n, P16852125842839675247.a n = A160651 n

end A160651

/-! ## A160651.P2470529111426211229

`A023444(A028949(n+2))`
-/

namespace A160651.P2470529111426211229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A028949 (n + 2)).toNat

end

end A160651.P2470529111426211229

namespace A160651

/-- `A023444(A028949(n+2))` -/
def P2470529111426211229.Spec : Prop :=
  ∀ n, P2470529111426211229.a n = A160651 n

end A160651

/-! ## A160651.P14045430326735677047

`A147810(Δ[n²])`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A160651

/-- `A147810(Δ[n²])` -/
def P14045430326735677047.Spec : Prop :=
  ∀ n, P14045430326735677047.a n = A160651 n

theorem P14045430326735677047.correct : P14045430326735677047.Spec := by
  intro n
  simp only [A160651]

end A160651

/-! ## A160651.P2505093200199930053

`A147809(Δ[n²])+1`
-/

namespace A160651.P2505093200199930053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A160651.P2505093200199930053

namespace A160651

/-- `A147809(Δ[n²])+1` -/
def P2505093200199930053.Spec : Prop :=
  ∀ n, P2505093200199930053.a n = A160651 n

end A160651

/-! ## A160651.P17989601416909089123

`A193432(Δ[n²])/2`
-/

namespace A160651.P17989601416909089123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193432 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A160651.P17989601416909089123

namespace A160651

/-- `A193432(Δ[n²])/2` -/
def P17989601416909089123.Spec : Prop :=
  ∀ n, P17989601416909089123.a n = (A160651 n : ℚ)

end A160651

/-! ## A160651.P2545878931954224861

`A333167(2*n+1)/4`
-/

namespace A160651.P2545878931954224861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333167 (2 * n + 1) : ℚ) / 4

end

end A160651.P2545878931954224861

namespace A160651

/-- `A333167(2*n+1)/4` -/
def P2545878931954224861.Spec : Prop :=
  ∀ n, P2545878931954224861.a n = (A160651 n : ℚ)

end A160651

/-! ## A160651.P4897406243267125167

`A000005(A278162(2*n+1))/2`
-/

namespace A160651.P4897406243267125167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A278162 (2 * n + 1)).toNat : ℚ) / 2

end

end A160651.P4897406243267125167

namespace A160651

/-- `A000005(A278162(2*n+1))/2` -/
def P4897406243267125167.Spec : Prop :=
  ∀ n, P4897406243267125167.a n = (A160651 n : ℚ)

end A160651

/-! ## A160651.P9711981118420241680

`filter[A147810(2*n+1), A022932(#)]`
-/

namespace A160651.P9711981118420241680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A160651.P9711981118420241680

namespace A160651

/-- `filter[A147810(2*n+1), A022932(#)]` -/
def P9711981118420241680.Spec : Prop :=
  ∀ n, P9711981118420241680.a n = A160651 n

end A160651

/-! ## A160651.P15556692661522139831

`filter[A147810(2*n+1), A071374(#)]`
-/

namespace A160651.P15556692661522139831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A160651.P15556692661522139831

namespace A160651

/-- `filter[A147810(2*n+1), A071374(#)]` -/
def P15556692661522139831.Spec : Prop :=
  ∀ n, P15556692661522139831.a n = A160651 n

end A160651

/-! ## A160651.P4717032581900265909

`filter[A147810(2*n+1), A086299(#)]`
-/

namespace A160651.P4717032581900265909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A160651.P4717032581900265909

namespace A160651

/-- `filter[A147810(2*n+1), A086299(#)]` -/
def P4717032581900265909.Spec : Prop :=
  ∀ n, P4717032581900265909.a n = A160651 n

end A160651

/-! ## A160651.P5780549346178250258

`filter[A147810(2*n+1), A102609(#)]`
-/

namespace A160651.P5780549346178250258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A160651.P5780549346178250258

namespace A160651

/-- `filter[A147810(2*n+1), A102609(#)]` -/
def P5780549346178250258.Spec : Prop :=
  ∀ n, P5780549346178250258.a n = A160651 n

end A160651

/-! ## A160651.P15139704104094521394

`A049720(2*n+1)-A000603(2*n+1)`
-/

namespace A160651.P15139704104094521394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049720 (2 * n + 1) - A000603 (2 * n + 1)

end

end A160651.P15139704104094521394

namespace A160651

/-- `A049720(2*n+1)-A000603(2*n+1)` -/
def P15139704104094521394.Spec : Prop :=
  ∀ n, P15139704104094521394.a n = A160651 n

end A160651

/-! ## A160651.P15971233949361271544

`∏{e}[∑[4*n]+1, #+1]`
-/

namespace A160651.P15971233949361271544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A160651.P15971233949361271544

namespace A160651

/-- `∏{e}[∑[4*n]+1, #+1]` -/
def P15971233949361271544.Spec : Prop :=
  ∀ n, (P15971233949361271544.a n : ℤ) = A160651 n

end A160651

/-! ## A160651.P16493697508812069888

`∑{d}[(2*n+1)²+1, val(#, 2)]`
-/

namespace A160651.P16493697508812069888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation d 2

end

end A160651.P16493697508812069888

namespace A160651

/-- `∑{d}[(2*n+1)²+1, val(#, 2)]` -/
def P16493697508812069888.Spec : Prop :=
  ∀ n, (P16493697508812069888.a n : ℤ) = A160651 n

end A160651

/-! ## A160651.P8862023521628935906

`∑{d}[(2*n+1)²+1, and(1, #)]`
-/

namespace A160651.P8862023521628935906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d

end

end A160651.P8862023521628935906

namespace A160651

/-- `∑{d}[(2*n+1)²+1, and(1, #)]` -/
def P8862023521628935906.Spec : Prop :=
  ∀ n, (P8862023521628935906.a n : ℤ) = A160651 n

end A160651

/-! ## A160651.P9554945740327691918

`∏{e}[(2*n+1)²+1, #+1]/2`
-/

namespace A160651.P9554945740327691918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2

end

end A160651.P9554945740327691918

namespace A160651

/-- `∏{e}[(2*n+1)²+1, #+1]/2` -/
def P9554945740327691918.Spec : Prop :=
  ∀ n, P9554945740327691918.a n = (A160651 n : ℚ)

end A160651

/-! ## A160651.P3334129536454009603

`val(∏{d}[(2*n+1)²+1, #], 2)`
-/

namespace A160651.P3334129536454009603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ d ∈ Nat.divisors (f1 n), d) 2

end

end A160651.P3334129536454009603

namespace A160651

/-- `val(∏{d}[(2*n+1)²+1, #], 2)` -/
def P3334129536454009603.Spec : Prop :=
  ∀ n, (P3334129536454009603.a n : ℤ) = A160651 n

end A160651

/-! ## A160651.P13095199728296476638

`A000005(∑[4*n]+1)`
-/

namespace A160651.P13095199728296476638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A160651.P13095199728296476638

namespace A160651

/-- `A000005(∑[4*n]+1)` -/
def P13095199728296476638.Spec : Prop :=
  ∀ n, P13095199728296476638.a n = A160651 n

end A160651

/-! ## A160651.P6663349206005985027

`A000005((n+1)²+n²)%A000040(n+1)`
-/

namespace A160651.P6663349206005985027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 ((n + 1) ^ 2 + n ^ 2)) (A000040 (n + 1))

end

end A160651.P6663349206005985027

namespace A160651

/-- `A000005((n+1)²+n²)%A000040(n+1)` -/
def P6663349206005985027.Spec : Prop :=
  ∀ n, P6663349206005985027.a n = A160651 n

end A160651

/-!
# A160652: Express n in balanced ternary, then reverse the digits, leaving any trailing zeros alone.

The programs for A160652, there is no canonical definition to state claims against.
-/

/-! ## A160652.P17774118799074859051

`A343602(A351702(n))`
-/

namespace A160652.P17774118799074859051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343602 (A351702 n).toNat

end

end A160652.P17774118799074859051

/-! ## A160652.P9522331348728175577

`A038500(A028310(n))*A134028(n)`
-/

namespace A160652.P9522331348728175577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A028310 n).toNat * A134028 n

end

end A160652.P9522331348728175577

/-! ## A160652.P15058493849114732848

`A117966(A263273(A117967(n)))`
-/

namespace A160652.P15058493849114732848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A263273 (A117967 n).toNat).toNat

end

end A160652.P15058493849114732848

/-! ## A160652.P14976173517965693348

`A038500(A008574(n))*A134028(n)`
-/

namespace A160652.P14976173517965693348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A008574 n).toNat * A134028 n

end

end A160652.P14976173517965693348

/-! ## A160652.P8961590714638722546

`A038500(A008574(n))*A327252(A117967(n))`
-/

namespace A160652.P8961590714638722546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A008574 n).toNat * A327252 (A117967 n).toNat

end

end A160652.P8961590714638722546

/-! ## A160652.P17747739990708814940

`A038500(A008706(n))*A134028(n)`
-/

namespace A160652.P17747739990708814940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A008706 n).toNat * A134028 n

end

end A160652.P17747739990708814940

/-! ## A160652.P17996697889429650063

`A038500(A022144(n))*A134028(n)`
-/

namespace A160652.P17996697889429650063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A022144 n).toNat * A134028 n

end

end A160652.P17996697889429650063

/-! ## A160652.P4089607225522291601

`A117966(A263273(A140263(2*n)-n))`
-/

namespace A160652.P4089607225522291601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A263273 (A140263 (2 * n) - (n : ℤ)).toNat).toNat

end

end A160652.P4089607225522291601

/-! ## A160652.P8523912181904511465

`A038500(A233583(n+1))*A134028(n)`
-/

namespace A160652.P8523912181904511465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A233583 (n + 1)).toNat * A134028 n

end

end A160652.P8523912181904511465

/-! ## A160652.P14704780359814731299

`gcd(n, A000244(n))*A134028(n)`
-/

namespace A160652.P14704780359814731299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A000244 n) : ℤ) * A134028 n

end

end A160652.P14704780359814731299

/-!
# A160654: Denominator of Laguerre(n, 10).

The programs for A160654, there is no canonical definition to state claims against.
-/

/-! ## A160654.P71534641776823638

`A097706(n!/A157402(n+1))`
-/

namespace A160654.P71534641776823638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A157402 (n + 1) : ℚ))).toNat

end

end A160654.P71534641776823638

/-! ## A160654.P12926582436517901482

`A097706(A053485(n)*A206424(n))`
-/

namespace A160654.P12926582436517901482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A053485 n * A206424 n).toNat

end

end A160654.P12926582436517901482

/-! ## A160654.P9874703104666223620

`A097706(A053485(n)*A257598(n))`
-/

namespace A160654.P9874703104666223620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A053485 n * A257598 n).toNat

end

end A160654.P9874703104666223620

/-! ## A160654.P7762837196492884170

`A106621(A053485(n)*A257598(n))`
-/

namespace A160654.P7762837196492884170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A053485 n * A257598 n).toNat

end

end A160654.P7762837196492884170

/-! ## A160654.P6319356566326167668

`gcd(A000265(A160586(n)), A160589(n))`
-/

namespace A160654.P6319356566326167668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (A160586 n).toNat) (A160589 n)

end

end A160654.P6319356566326167668

/-!
# A160656: The odd prime numbers together with 0: p - (-1)^p - 1 where p = n-th prime.

The programs for A160656, there is no canonical definition to state claims against.
-/

/-! ## A160656.P3196634329385430255

`record[∑{p}[or(1, n), #]]`
-/

namespace A160656.P3196634329385430255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160656.P3196634329385430255

/-! ## A160656.P254884496616249193

`record[∑{p}[xor(1, n), #]]`
-/

namespace A160656.P254884496616249193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160656.P254884496616249193

/-! ## A160656.P10267477812629641454

`record[∑{p}[Δ[n²], #]]`
-/

namespace A160656.P10267477812629641454
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160656.P10267477812629641454

/-! ## A160656.P16268176880934810909

`xor(-p?[xor(1, n)+1], -2)`
-/

namespace A160656.P16268176880934810909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)) (-2)

end

end A160656.P16268176880934810909

/-! ## A160656.P11701852639708169549

`xor(1, p?[abs(xor(n, -2))]-1)`
-/

namespace A160656.P11701852639708169549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A160656.P11701852639708169549

/-! ## A160656.P4679795610447337134

`xor(1, p?[xor(1, n)+1]-1)`
-/

namespace A160656.P4679795610447337134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1)

end

end A160656.P4679795610447337134

/-! ## A160656.P1809524326340541453

`record[∑{p}[2*(n+1), #]-2]`
-/

namespace A160656.P1809524326340541453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160656.P1809524326340541453

/-! ## A160656.P8182597277887341375

`record[∑{p}[2*(n-1), #]]-2`
-/

namespace A160656.P8182597277887341375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 2

end

end A160656.P8182597277887341375

/-! ## A160656.P15217180223833876105

`xor(1, p?[round(n-sqrt(n))]-1)`
-/

namespace A160656.P15217180223833876105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A160656.P15217180223833876105

/-! ## A160656.P6969285120451253407

`record[sqrt(∑{p}[2*n+1, #²])]`
-/

namespace A160656.P6969285120451253407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∑ p ∈ Nat.primeFactors (f2 n), p ^ 2 : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160656.P6969285120451253407

/-!
# A160657: a(n) is the period of a 2 X 4n rectangular oscillator in the 2 X 2 (B36/S125) Life-like cellular automaton.

The programs for A160657, there is no canonical definition to state claims against.
-/

/-! ## A160657.P7206535403618296143

`A268754(2*(n+1))`
-/

namespace A160657.P7206535403618296143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268754 (2 * (n + 1))

end

end A160657.P7206535403618296143

/-! ## A160657.P5374908468772487724

`A268754(A051755(n+2))+A000007(n)`
-/

namespace A160657.P5374908468772487724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268754 (A051755 (n + 2)).toNat + A000007 n

end

end A160657.P5374908468772487724

/-! ## A160657.P6077775233318964100

`A268754(A051755(n+2))+A000038(n)/2`
-/

namespace A160657.P6077775233318964100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268754 (A051755 (n + 2)).toNat : ℚ) + (A000038 n : ℚ) / 2

end

end A160657.P6077775233318964100

/-! ## A160657.P1440509861319156097

`A268754(A051755(n+2)+A000038(n))-A000038(n)`
-/

namespace A160657.P1440509861319156097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268754 (A051755 (n + 2) + A000038 n).toNat - A000038 n

end

end A160657.P1440509861319156097

/-!
# A160663: Number of distinct sums that one can obtain by adding two squares among the n first ones.

The programs for A160663, there is no canonical definition to state claims against.
-/

/-! ## A160663.P6489463225481358920

`∑[A384797(n+1)]`
-/

namespace A160663.P6489463225481358920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160663.P6489463225481358920

/-! ## A160663.P3743239294995795933

`∑[abs(Δ[A047800(n)])]`
-/

namespace A160663.P3743239294995795933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047800 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160663.P3743239294995795933

/-! ## A160663.P11874127298537777003

`A047800(n+1)-1`
-/

namespace A160663.P11874127298537777003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047800 (n + 1) - 1

end

end A160663.P11874127298537777003

/-! ## A160663.P7857050341146151945

`∑[A000027(Δ[A047800(n)])]`
-/

namespace A160663.P7857050341146151945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047800 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160663.P7857050341146151945

/-! ## A160663.P4203867664254219377

`∑[A028310(Δ[A047800(n)])]`
-/

namespace A160663.P4203867664254219377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047800 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160663.P4203867664254219377

/-! ## A160663.P16936963045110228362

`∑[Δ[A047800(n)]%A017438(n)]`
-/

namespace A160663.P16936963045110228362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047800 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A017438 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160663.P16936963045110228362

/-! ## A160663.P5429924658586769885

`A056594(A016825(n))+A047800(n+1)`
-/

namespace A160663.P5429924658586769885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A016825 n).toNat + A047800 (n + 1)

end

end A160663.P5429924658586769885

/-! ## A160663.P13434896663573224674

`A023443(A047800(n+1))`
-/

namespace A160663.P13434896663573224674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A047800 (n + 1)).toNat

end

end A160663.P13434896663573224674

/-! ## A160663.P8104740889407228088

`A301853(∑[n+2])`
-/

namespace A160663.P8104740889407228088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301853 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160663.P8104740889407228088

/-! ## A160663.P2404458714862320567

`A301851(2*(n+1)²)`
-/

namespace A160663.P2404458714862320567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301851 (2 * (n + 1) ^ 2)

end

end A160663.P2404458714862320567

/-!
# A160664: a(n) = a(n-1) + A000203(n), a(0)=1.

The programs for A160664, the canonical program `A160664.P14996881624845338289` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160664 has offset 0).

The definition of A160664 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000203(n)` (program `A160664.P14996881624845338289`, by `A160664.P14996881624845338289.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160664.P14996881624845338289

`a(n-1)+A000203(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A160664

/-- `a(n-1)+A000203(n)` -/
def P14996881624845338289.Spec : Prop :=
  ∀ n, P14996881624845338289.a n = A160664 n

theorem P14996881624845338289.correct : P14996881624845338289.Spec := by
  intro n
  simp only [A160664]

end A160664

/-! ## A160664.P13201606662154343678

`∑[∑{d}[n, #]]+1`
-/

namespace A160664.P13201606662154343678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A160664.P13201606662154343678

namespace A160664

/-- `∑[∑{d}[n, #]]+1` -/
def P13201606662154343678.Spec : Prop :=
  ∀ n, (P13201606662154343678.a n : ℤ) = A160664 n

end A160664

/-! ## A160664.P9814729586675572258

`∑{d}[n, #]+a(n-1)` with `a(0)=1`
-/

namespace A160664.P9814729586675572258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d + a (n - 1)

end

end A160664.P9814729586675572258

namespace A160664

/-- `∑{d}[n, #]+a(n-1)` -/
def P9814729586675572258.Spec : Prop :=
  ∀ n, (P9814729586675572258.a n : ℤ) = A160664 n

end A160664

/-! ## A160664.P490652073235360239

`∑[A039653(n)+1]`
-/

namespace A160664.P490652073235360239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160664.P490652073235360239

namespace A160664

/-- `∑[A039653(n)+1]` -/
def P490652073235360239.Spec : Prop :=
  ∀ n, P490652073235360239.a n = A160664 n

end A160664

/-! ## A160664.P17175929544967585253

`∑[∑{d}[A028310(n), #]]`
-/

namespace A160664.P17175929544967585253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160664.P17175929544967585253

namespace A160664

/-- `∑[∑{d}[A028310(n), #]]` -/
def P17175929544967585253.Spec : Prop :=
  ∀ n, (P17175929544967585253.a n : ℤ) = A160664 n

end A160664

/-! ## A160664.P11753737880834800017

`∑[∑{d}[A274922(n), #]]`
-/

namespace A160664.P11753737880834800017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160664.P11753737880834800017

namespace A160664

/-- `∑[∑{d}[A274922(n), #]]` -/
def P11753737880834800017.Spec : Prop :=
  ∀ n, (P11753737880834800017.a n : ℤ) = A160664 n

end A160664

/-! ## A160664.P16676940643347301695

`∑[A000203(ceil(abs(γ-n)))]`
-/

namespace A160664.P16676940643347301695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160664.P16676940643347301695

namespace A160664

/-- `∑[A000203(ceil(abs(γ-n)))]` -/
def P16676940643347301695.Spec : Prop :=
  ∀ n, P16676940643347301695.a n = A160664 n

end A160664

/-! ## A160664.P14675893166691035330

`∑[∑{d}[n-A004277(n), #]]`
-/

namespace A160664.P14675893166691035330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004277 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160664.P14675893166691035330

namespace A160664

/-- `∑[∑{d}[n-A004277(n), #]]` -/
def P14675893166691035330.Spec : Prop :=
  ∀ n, (P14675893166691035330.a n : ℤ) = A160664 n

end A160664

/-! ## A160664.P9238630832682465354

`∑[∑{d}[gcd(n, A255177(n)), #]]`
-/

namespace A160664.P9238630832682465354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A255177 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160664.P9238630832682465354

namespace A160664

/-- `∑[∑{d}[gcd(n, A255177(n)), #]]` -/
def P9238630832682465354.Spec : Prop :=
  ∀ n, (P9238630832682465354.a n : ℤ) = A160664 n

end A160664

/-! ## A160664.P8801750313386697055

`A244048(n+1)+∑[n]+1`
-/

namespace A160664.P8801750313386697055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244048 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A160664.P8801750313386697055

namespace A160664

/-- `A244048(n+1)+∑[n]+1` -/
def P8801750313386697055.Spec : Prop :=
  ∀ n, P8801750313386697055.a n = A160664 n

end A160664

/-! ## A160664.P12803660233484567386

`a(n-1)+A001065(n)+n` with `a(0)=1`
-/

namespace A160664.P12803660233484567386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001065 n + (n : ℤ))

end

end A160664.P12803660233484567386

namespace A160664

/-- `a(n-1)+A001065(n)+n` -/
def P12803660233484567386.Spec : Prop :=
  ∀ n, P12803660233484567386.a n = A160664 n

end A160664

/-! ## A160664.P18285880314155254246

`A257644(n)-A006218(n)`
-/

namespace A160664.P18285880314155254246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257644 n - A006218 n

end

end A160664.P18285880314155254246

namespace A160664

/-- `A257644(n)-A006218(n)` -/
def P18285880314155254246.Spec : Prop :=
  ∀ n, P18285880314155254246.a n = A160664 n

end A160664

/-! ## A160664.P7246470935650090113

`A332490(n+1)-A000096(n)`
-/

namespace A160664.P7246470935650090113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332490 (n + 1) - A000096 n

end

end A160664.P7246470935650090113

namespace A160664

/-- `A332490(n+1)-A000096(n)` -/
def P7246470935650090113.Spec : Prop :=
  ∀ n, P7246470935650090113.a n = A160664 n

end A160664

/-! ## A160664.P10918160438190324307

`A000203(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A160664.P10918160438190324307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000203 n + a (A023443 n).toNat

end

end A160664.P10918160438190324307

namespace A160664

/-- `A000203(n)+a(A023443(n))` -/
def P10918160438190324307.Spec : Prop :=
  ∀ n, P10918160438190324307.a n = A160664 n

end A160664

/-! ## A160664.P15649607229166943549

`A024816(n+1)+A153485(n+1)+1`
-/

namespace A160664.P15649607229166943549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) + (A153485 (n + 1) + 1)

end

end A160664.P15649607229166943549

namespace A160664

/-- `A024816(n+1)+A153485(n+1)+1` -/
def P15649607229166943549.Spec : Prop :=
  ∀ n, P15649607229166943549.a n = A160664 n

end A160664

/-! ## A160664.P10875750873234805833

`A024916(n+1)+1-A000203(n+1)`
-/

namespace A160664.P10875750873234805833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + (1 - A000203 (n + 1))

end

end A160664.P10875750873234805833

namespace A160664

/-- `A024916(n+1)+1-A000203(n+1)` -/
def P10875750873234805833.Spec : Prop :=
  ∀ n, P10875750873234805833.a n = A160664 n

end A160664

/-! ## A160664.P8908024653526951972

`A235799(n+1)+1-A004125(n+1)`
-/

namespace A160664.P8908024653526951972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235799 (n + 1) + (1 - A004125 (n + 1))

end

end A160664.P8908024653526951972

namespace A160664

/-- `A235799(n+1)+1-A004125(n+1)` -/
def P8908024653526951972.Spec : Prop :=
  ∀ n, P8908024653526951972.a n = A160664 n

end A160664

/-! ## A160664.P6904073913773301035

`A024916(n+1)+2-A088580(n+1)`
-/

namespace A160664.P6904073913773301035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + (2 - A088580 (n + 1))

end

end A160664.P6904073913773301035

namespace A160664

/-- `A024916(n+1)+2-A088580(n+1)` -/
def P6904073913773301035.Spec : Prop :=
  ∀ n, P6904073913773301035.a n = A160664 n

end A160664

/-! ## A160664.P15104632642681059138

`A024916(n+1)-(A001065(n+1)+n)`
-/

namespace A160664.P15104632642681059138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - (A001065 (n + 1) + (n : ℤ))

end

end A160664.P15104632642681059138

namespace A160664

/-- `A024916(n+1)-(A001065(n+1)+n)` -/
def P15104632642681059138.Spec : Prop :=
  ∀ n, P15104632642681059138.a n = A160664 n

end A160664

/-! ## A160664.P7473902842905934558

`A023896(n+1)+A153485(n+1)+A066760(n+1)`
-/

namespace A160664.P7473902842905934558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) + (A153485 (n + 1) + A066760 (n + 1))

end

end A160664.P7473902842905934558

namespace A160664

/-- `A023896(n+1)+A153485(n+1)+A066760(n+1)` -/
def P7473902842905934558.Spec : Prop :=
  ∀ n, P7473902842905934558.a n = A160664 n

end A160664

/-!
# A160665: Numbers k such that the arithmetic mean of the first k Lucas numbers A000032 is an integer.

The programs for A160665, there is no canonical definition to state claims against.
-/

/-! ## A160665.P240310650925801119

`eq[1, A214968(n+2)]+1`
-/

namespace A160665.P240310650925801119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214968 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A160665.P240310650925801119

/-! ## A160665.P8625746008341342712

`lt[A214968(n+2), atan(A241951(3*n+4))]+1`
-/

namespace A160665.P8625746008341342712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214968 (n + 2)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A241951 (3 * n + 4) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A160665.P8625746008341342712

/-! ## A160665.P15193269662152460206

`lt[A214968(n+2), atan(A094398(2*(n+1)))]+1`
-/

namespace A160665.P15193269662152460206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214968 (n + 2)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A094398 (2 * (n + 1)) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A160665.P15193269662152460206

/-! ## A160665.P5767134618632580187

`∩[A140489(n+1), A263578(n+1)]`
-/

namespace A160665.P5767134618632580187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160665.P5767134618632580187

/-!
# A160666: Numbers whose distance to the closest prime number is a prime number.

The programs for A160666, the canonical program `A160666.P3015068850106569542` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160666 has offset 1).

The definition of A160666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4392 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160666.P3015068850106569542

`eq[0, A007920(A051699(n))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A160666

/-- `eq[0, A007920(A051699(n))]` -/
def P3015068850106569542.Spec : Prop :=
  ∀ n, (P3015068850106569542.a n : ℤ) = A160666 (n + 1)

theorem P3015068850106569542.correct : P3015068850106569542.Spec := by
  intro n
  simp only [A160666, Nat.add_sub_cancel]

end A160666

/-! ## A160666.P5028844337490246643

`eq[2, A074206(A051699(n)²)]`
-/

namespace A160666.P5028844337490246643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A051699 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A160666.P5028844337490246643

namespace A160666

/-- `eq[2, A074206(A051699(n)²)]` -/
def P5028844337490246643.Spec : Prop :=
  ∀ n, (P5028844337490246643.a n : ℤ) = A160666 (n + 1)

end A160666

/-! ## A160666.P12342760852088913052

`record[(n+1)*(1-A051699(A051699(n+1)))]`
-/

namespace A160666.P12342760852088913052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A051699 (A051699 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160666.P12342760852088913052

namespace A160666

/-- `record[(n+1)*(1-A051699(A051699(n+1)))]` -/
def P12342760852088913052.Spec : Prop :=
  ∀ n, P12342760852088913052.a n = A160666 (n + 1)

end A160666

/-! ## A160666.P2487968007742206168

`eq[A051699(A051699(n)), A055672(n)]`
-/

namespace A160666.P2487968007742206168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A051699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160666.P2487968007742206168

namespace A160666

/-- `eq[A051699(A051699(n)), A055672(n)]` -/
def P2487968007742206168.Spec : Prop :=
  ∀ n, (P2487968007742206168.a n : ℤ) = A160666 (n + 1)

end A160666

/-! ## A160666.P2592545661625764732

`lt[A055672(n), A055672(A051700(n))]`
-/

namespace A160666.P2592545661625764732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A051700 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A160666.P2592545661625764732

namespace A160666

/-- `lt[A055672(n), A055672(A051700(n))]` -/
def P2592545661625764732.Spec : Prop :=
  ∀ n, (P2592545661625764732.a n : ℤ) = A160666 (n + 1)

end A160666

/-! ## A160666.P2094984788018780183

`lt[A008347(n)*A051699(A051699(n)), 1]`
-/

namespace A160666.P2094984788018780183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n * A051699 (A051699 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A160666.P2094984788018780183

namespace A160666

/-- `lt[A008347(n)*A051699(A051699(n)), 1]` -/
def P2094984788018780183.Spec : Prop :=
  ∀ n, (P2094984788018780183.a n : ℤ) = A160666 (n + 1)

end A160666

/-! ## A160666.P2172307308220483724

`lt[A026741(n)*A051699(A051699(n)), 1]`
-/

namespace A160666.P2172307308220483724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A051699 (A051699 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A160666.P2172307308220483724

namespace A160666

/-- `lt[A026741(n)*A051699(A051699(n)), 1]` -/
def P2172307308220483724.Spec : Prop :=
  ∀ n, (P2172307308220483724.a n : ℤ) = A160666 (n + 1)

end A160666

/-! ## A160666.P12483909941031733879

`lt[A051699(A051699(n))*A053000(n), 1]`
-/

namespace A160666.P12483909941031733879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A051699 n).toNat * A053000 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A160666.P12483909941031733879

namespace A160666

/-- `lt[A051699(A051699(n))*A053000(n), 1]` -/
def P12483909941031733879.Spec : Prop :=
  ∀ n, (P12483909941031733879.a n : ℤ) = A160666 (n + 1)

end A160666

/-! ## A160666.P2037030994304880408

`lt[A051699(A051699(n))*A134451(n), 1]`
-/

namespace A160666.P2037030994304880408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A051699 n).toNat * A134451 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A160666.P2037030994304880408

namespace A160666

/-- `lt[A051699(A051699(n))*A134451(n), 1]` -/
def P2037030994304880408.Spec : Prop :=
  ∀ n, (P2037030994304880408.a n : ℤ) = A160666 (n + 1)

end A160666

/-! ## A160666.P9475605820186157015

`lt[A006530(n+1)*A051699(A051699(n)), 1]`
-/

namespace A160666.P9475605820186157015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A051699 (A051699 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A160666.P9475605820186157015

namespace A160666

/-- `lt[A006530(n+1)*A051699(A051699(n)), 1]` -/
def P9475605820186157015.Spec : Prop :=
  ∀ n, (P9475605820186157015.a n : ℤ) = A160666 (n + 1)

end A160666

/-! ## A160666.P4971081051217911159

`record[n-A051699(A051699(n))*A230422(n+1)]`
-/

namespace A160666.P4971081051217911159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051699 (A051699 n).toNat * A230422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160666.P4971081051217911159

namespace A160666

/-- `record[n-A051699(A051699(n))*A230422(n+1)]` -/
def P4971081051217911159.Spec : Prop :=
  ∀ n, P4971081051217911159.a n = A160666 (n + 1)

end A160666

/-! ## A160666.P16275226178007100681

`eq[0, A007920(abs(n-A051697(n)))]`
-/

namespace A160666.P16275226178007100681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 |(n : ℤ) - A051697 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A160666.P16275226178007100681

namespace A160666

/-- `eq[0, A007920(abs(n-A051697(n)))]` -/
def P16275226178007100681.Spec : Prop :=
  ∀ n, (P16275226178007100681.a n : ℤ) = A160666 (n + 1)

end A160666

/-! ## A160666.P631817511503086743

`record[n-A008585(n)*A051699(A051699(n))]`
-/

namespace A160666.P631817511503086743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008585 n * A051699 (A051699 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160666.P631817511503086743

namespace A160666

/-- `record[n-A008585(n)*A051699(A051699(n))]` -/
def P631817511503086743.Spec : Prop :=
  ∀ n, P631817511503086743.a n = A160666 (n + 1)

end A160666

/-! ## A160666.P12114586054781648119

`record[n-A051699(A051699(n))*A163655(n)]`
-/

namespace A160666.P12114586054781648119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051699 (A051699 n).toNat * A163655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160666.P12114586054781648119

namespace A160666

/-- `record[n-A051699(A051699(n))*A163655(n)]` -/
def P12114586054781648119.Spec : Prop :=
  ∀ n, P12114586054781648119.a n = A160666 (n + 1)

end A160666

/-! ## A160666.P4329153315339093222

`record[n-A051699(A051699(n))*A141429(n+1)]`
-/

namespace A160666.P4329153315339093222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051699 (A051699 n).toNat * A141429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160666.P4329153315339093222

namespace A160666

/-- `record[n-A051699(A051699(n))*A141429(n+1)]` -/
def P4329153315339093222.Spec : Prop :=
  ∀ n, P4329153315339093222.a n = A160666 (n + 1)

end A160666

/-! ## A160666.P2593012314514788374

`lt[A000032(n)*A051699(A051699(n)), 1]`
-/

namespace A160666.P2593012314514788374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A051699 (A051699 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A160666.P2593012314514788374

namespace A160666

/-- `lt[A000032(n)*A051699(A051699(n)), 1]` -/
def P2593012314514788374.Spec : Prop :=
  ∀ n, (P2593012314514788374.a n : ℤ) = A160666 (n + 1)

end A160666

/-!
# A160667: Denominator of Laguerre(n, 11).

The programs for A160667, there is no canonical definition to state claims against.
-/

/-! ## A160667.P17032028739220300026

`A000027(lcm(A160589(n), A160602(n)))`
-/

namespace A160667.P17032028739220300026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm (A160589 n) (A160602 n))

end

end A160667.P17032028739220300026

/-! ## A160667.P933889008102508905

`A000027(lcm(A160610(n), A160612(n)))`
-/

namespace A160667.P933889008102508905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm (A160610 n) (A160612 n))

end

end A160667.P933889008102508905

/-! ## A160667.P15934581088092036808

`∑{digits}[n, #!]/A045778(A262314(n+1))`
-/

namespace A160667.P15934581088092036808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℚ) / (A045778 (A262314 (n + 1)).toNat : ℚ)

end

end A160667.P15934581088092036808

/-! ## A160667.P6648222481840908789

`A000142(n)/A054990(A112987(n))`
-/

namespace A160667.P6648222481840908789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A054990 (A112987 n).toNat : ℚ)

end

end A160667.P6648222481840908789

/-! ## A160667.P7990812815145409766

`A154657(n)/A054990(A112987(n))`
-/

namespace A160667.P7990812815145409766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154657 n : ℚ) / (A054990 (A112987 n).toNat : ℚ)

end

end A160667.P7990812815145409766

/-!
# A160668: Distance between prime(n) and the next higher power of 10.

The programs for A160668, the canonical program `A160668.P17836700384560215862` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160668 has offset 1).

The definition of A160668 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A061601, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160668.P12344125916402830814

`A228628(n+1)+1`
-/

namespace A160668.P12344125916402830814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228628 (n + 1) + 1

end

end A160668.P12344125916402830814

namespace A160668

/-- `A228628(n+1)+1` -/
def P12344125916402830814.Spec : Prop :=
  ∀ n, P12344125916402830814.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P17836700384560215862

`A061601(A000040(n+1))+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A160668

/-- `A061601(A000040(n+1))+1` -/
def P17836700384560215862.Spec : Prop :=
  ∀ n, P17836700384560215862.a n = A160668 (n + 1)

theorem P17836700384560215862.correct : P17836700384560215862.Spec := by
  intro n
  simp only [A160668, Nat.add_sub_cancel]

end A160668

/-! ## A160668.P4510395474476457416

`A039790(n+1)-A100484(n+1)`
-/

namespace A160668.P4510395474476457416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1) - A100484 (n + 1)

end

end A160668.P4510395474476457416

namespace A160668

/-- `A039790(n+1)-A100484(n+1)` -/
def P4510395474476457416.Spec : Prop :=
  ∀ n, P4510395474476457416.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P1982108011005391821

`A039790(n+1)+1-A072055(n+1)`
-/

namespace A160668.P1982108011005391821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1) + (1 - A072055 (n + 1))

end

end A160668.P1982108011005391821

namespace A160668

/-- `A039790(n+1)+1-A072055(n+1)` -/
def P1982108011005391821.Spec : Prop :=
  ∀ n, P1982108011005391821.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P7219883581236488996

`A039790(n+1)-2*A000040(n+1)`
-/

namespace A160668.P7219883581236488996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1) - 2 * A000040 (n + 1)

end

end A160668.P7219883581236488996

namespace A160668

/-- `A039790(n+1)-2*A000040(n+1)` -/
def P7219883581236488996.Spec : Prop :=
  ∀ n, P7219883581236488996.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P8097619188843346177

`A039790(n+1)-2*p?[A344180(n)]`
-/

namespace A160668.P8097619188843346177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1) - 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160668.P8097619188843346177

namespace A160668

/-- `A039790(n+1)-2*p?[A344180(n)]` -/
def P8097619188843346177.Spec : Prop :=
  ∀ n, P8097619188843346177.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P15800884835645671497

`A061601(A006093(n+1))`
-/

namespace A160668.P15800884835645671497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A006093 (n + 1)).toNat

end

end A160668.P15800884835645671497

namespace A160668

/-- `A061601(A006093(n+1))` -/
def P15800884835645671497.Spec : Prop :=
  ∀ n, P15800884835645671497.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P10171690688659125338

`A061601(sqrt(A005722(n+1)))`
-/

namespace A160668.P10171690688659125338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.roundAway (Real.sqrt (A005722 (n + 1) : ℝ))).toNat

end

end A160668.P10171690688659125338

namespace A160668

/-- `A061601(sqrt(A005722(n+1)))` -/
def P10171690688659125338.Spec : Prop :=
  ∀ n, P10171690688659125338.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P4421468406278542061

`A061601(Δ[A007504(n)])+1`
-/

namespace A160668.P4421468406278542061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (f1 (n + 1) - f1 n).toNat + 1

end

end A160668.P4421468406278542061

namespace A160668

/-- `A061601(Δ[A007504(n)])+1` -/
def P4421468406278542061.Spec : Prop :=
  ∀ n, P4421468406278542061.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P5855860679399470761

`A061601(Δ[A007504(n)]-1)`
-/

namespace A160668.P5855860679399470761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (f1 (n + 1) - f1 n - 1).toNat

end

end A160668.P5855860679399470761

namespace A160668

/-- `A061601(Δ[A007504(n)]-1)` -/
def P5855860679399470761.Spec : Prop :=
  ∀ n, P5855860679399470761.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P17892733769214359885

`A061601(record[A000010(n+1)])`
-/

namespace A160668.P17892733769214359885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A160668.P17892733769214359885

namespace A160668

/-- `A061601(record[A000010(n+1)])` -/
def P17892733769214359885.Spec : Prop :=
  ∀ n, P17892733769214359885.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P12364813175882243039

`A061601(A008578(n+2))+1`
-/

namespace A160668.P12364813175882243039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A008578 (n + 2)).toNat + 1

end

end A160668.P12364813175882243039

namespace A160668

/-- `A061601(A008578(n+2))+1` -/
def P12364813175882243039.Spec : Prop :=
  ∀ n, P12364813175882243039.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P17617258564425077865

`A061601(A182986(n+2))+1`
-/

namespace A160668.P17617258564425077865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A182986 (n + 2)).toNat + 1

end

end A160668.P17617258564425077865

namespace A160668

/-- `A061601(A182986(n+2))+1` -/
def P17617258564425077865.Spec : Prop :=
  ∀ n, P17617258564425077865.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P14036711409325273025

`A061601(eq[1, A001222(n+1)])`
-/

namespace A160668.P14036711409325273025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160668.P14036711409325273025

namespace A160668

/-- `A061601(eq[1, A001222(n+1)])` -/
def P14036711409325273025.Spec : Prop :=
  ∀ n, P14036711409325273025.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P17920505799058090276

`A061601(eq[1, A010051(n+1)])`
-/

namespace A160668.P17920505799058090276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160668.P17920505799058090276

namespace A160668

/-- `A061601(eq[1, A010051(n+1)])` -/
def P17920505799058090276.Spec : Prop :=
  ∀ n, P17920505799058090276.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P4606455311001585645

`A061601(eq[1, A328771(n+1)])`
-/

namespace A160668.P4606455311001585645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160668.P4606455311001585645

namespace A160668

/-- `A061601(eq[1, A328771(n+1)])` -/
def P4606455311001585645.Spec : Prop :=
  ∀ n, P4606455311001585645.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P1679038138562050792

`A061601(eq[2, A000005(n+1)])`
-/

namespace A160668.P1679038138562050792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160668.P1679038138562050792

namespace A160668

/-- `A061601(eq[2, A000005(n+1)])` -/
def P1679038138562050792.Spec : Prop :=
  ∀ n, P1679038138562050792.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P7167972285732027710

`A061601(eq[1, A328771(n)]-1)`
-/

namespace A160668.P7167972285732027710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A160668.P7167972285732027710

namespace A160668

/-- `A061601(eq[1, A328771(n)]-1)` -/
def P7167972285732027710.Spec : Prop :=
  ∀ n, P7167972285732027710.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P8588987387164965432

`A061601(eq[n, A000010(n+1)])`
-/

namespace A160668.P8588987387164965432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160668.P8588987387164965432

namespace A160668

/-- `A061601(eq[n, A000010(n+1)])` -/
def P8588987387164965432.Spec : Prop :=
  ∀ n, P8588987387164965432.a n = A160668 (n + 1)

end A160668

/-! ## A160668.P7054040962291578282

`A061601(record[A006530(n+2)])+1`
-/

namespace A160668.P7054040962291578282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A160668.P7054040962291578282

namespace A160668

/-- `A061601(record[A006530(n+2)])+1` -/
def P7054040962291578282.Spec : Prop :=
  ∀ n, P7054040962291578282.a n = A160668 (n + 1)

end A160668

/-!
# A160669: Smallest prime divisor of A160668(n).

The programs for A160669, there is no canonical definition to state claims against.
-/

/-! ## A160669.P2503699904347820102

`A000188(A020639(A160668(n+1))²)`
-/

namespace A160669.P2503699904347820102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A020639 (A160668 (n + 1)).toNat ^ 2).toNat

end

end A160669.P2503699904347820102

/-! ## A160669.P11350433485777827079

`A000189(A020639(A160668(n+1))²)`
-/

namespace A160669.P11350433485777827079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A020639 (A160668 (n + 1)).toNat ^ 2).toNat

end

end A160669.P11350433485777827079

/-! ## A160669.P12990365055968632760

`A000196(A020639(A160668(n+1))²)`
-/

namespace A160669.P12990365055968632760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A020639 (A160668 (n + 1)).toNat ^ 2).toNat

end

end A160669.P12990365055968632760

/-! ## A160669.P11318156530500238914

`A003557(A020639(A160668(n+1))²)`
-/

namespace A160669.P11318156530500238914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A020639 (A160668 (n + 1)).toNat ^ 2).toNat

end

end A160669.P11318156530500238914

/-! ## A160669.P14172205723194051932

`A020639(A160668(n+1)%A031657(n+1))`
-/

namespace A160669.P14172205723194051932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A160668 (n + 1)) (A031657 (n + 1))).toNat

end

end A160669.P14172205723194051932

/-!
# A160672: Denominator of Laguerre(n, 12).

The programs for A160672, there is no canonical definition to state claims against.
-/

/-! ## A160672.P799573716993702220

`gcd(A000142(n), A045967(A286206(n)))`
-/

namespace A160672.P799573716993702220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A045967 (A286206 n).toNat)

end

end A160672.P799573716993702220

/-! ## A160672.P8115837999646433393

`A160555(n)%A160599(A160632(n))`
-/

namespace A160672.P8115837999646433393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160555 n) (A160599 (A160632 n).toNat)

end

end A160672.P8115837999646433393

/-! ## A160672.P9387746824049830239

`gcd(A000027(A160626(n)), A160604(n))`
-/

namespace A160672.P9387746824049830239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A160626 n).toNat) (A160604 n)

end

end A160672.P9387746824049830239

/-! ## A160672.P2816121643373028797

`gcd(A000027(A160641(n)), A160616(n))`
-/

namespace A160672.P2816121643373028797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A160641 n).toNat) (A160616 n)

end

end A160672.P2816121643373028797

/-! ## A160672.P2122847178094216014

`A028234(A160604(n))`
-/

namespace A160672.P2122847178094216014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A160604 n).toNat

end

end A160672.P2122847178094216014

/-!
# A160674: A bisection of A063522.

The programs for A160674, the canonical program `A160674.P9701766189526379957` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160674 has offset 0).

The definition of A160674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160674.P9701766189526379957

`20*n^3+30*n²+12*n+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A160674

/-- `20*n^3+30*n²+12*n+1` -/
def P9701766189526379957.Spec : Prop :=
  ∀ n, (P9701766189526379957.a n : ℤ) = A160674 n

theorem P9701766189526379957.correct : P9701766189526379957.Spec := by
  intro n
  simp only [A160674]

end A160674

/-! ## A160674.P17666088920115525853

`A005408(n)*A069133(n+1)`
-/

namespace A160674.P17666088920115525853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A069133 (n + 1)

end

end A160674.P17666088920115525853

namespace A160674

/-- `A005408(n)*A069133(n+1)` -/
def P17666088920115525853.Spec : Prop :=
  ∀ n, P17666088920115525853.a n = A160674 n

end A160674

/-! ## A160674.P10435338560700936909

`∑[and(a(n-1)+20, -2)]*(2*n+1)` with `a(0)=1`
-/

namespace A160674.P10435338560700936909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.land (f1 (n - 1) + 20) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (2 * n + 1 : ℤ)

end

end A160674.P10435338560700936909

namespace A160674

/-- `∑[and(a(n-1)+20, -2)]*(2*n+1)` -/
def P10435338560700936909.Spec : Prop :=
  ∀ n, P10435338560700936909.a n = A160674 n

end A160674

/-! ## A160674.P13828717226102907994

`floor(∑[(11*n+1)*10*n/2+1]+∑[10*C(n, 2)]+n)`
-/

namespace A160674.P13828717226102907994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * n + 1) * (10 * n) : ℚ) / 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j + n : ℕ) : ℚ)⌋

end

end A160674.P13828717226102907994

namespace A160674

/-- `floor(∑[(11*n+1)*10*n/2+1]+∑[10*C(n, 2)]+n)` -/
def P13828717226102907994.Spec : Prop :=
  ∀ n, P13828717226102907994.a n = A160674 n

end A160674

/-! ## A160674.P17415657764561602629

`ceil(∑[(11*n+1)*10*n/2+1]+∑[10*C(n, 2)]+n)`
-/

namespace A160674.P17415657764561602629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * n + 1) * (10 * n) : ℚ) / 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j + n : ℕ) : ℚ)⌉

end

end A160674.P17415657764561602629

namespace A160674

/-- `ceil(∑[(11*n+1)*10*n/2+1]+∑[10*C(n, 2)]+n)` -/
def P17415657764561602629.Spec : Prop :=
  ∀ n, P17415657764561602629.a n = A160674 n

end A160674

/-! ## A160674.P4292940704864436158

`round(∑[(11*n+1)*10*n/2+1]+∑[10*C(n, 2)]+n)`
-/

namespace A160674.P4292940704864436158
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * n + 1) * (10 * n) : ℚ) / 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j + n : ℕ) : ℚ))

end

end A160674.P4292940704864436158

namespace A160674

/-- `round(∑[(11*n+1)*10*n/2+1]+∑[10*C(n, 2)]+n)` -/
def P4292940704864436158.Spec : Prop :=
  ∀ n, P4292940704864436158.a n = A160674 n

end A160674

/-! ## A160674.P3255393714602662659

`abs(A100151(n+1)+∑[∑[11*n-9]+9]+n)`
-/

namespace A160674.P3255393714602662659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) - 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100151 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))|

end

end A160674.P3255393714602662659

namespace A160674

/-- `abs(A100151(n+1)+∑[∑[11*n-9]+9]+n)` -/
def P3255393714602662659.Spec : Prop :=
  ∀ n, P3255393714602662659.a n = A160674 n

end A160674

/-! ## A160674.P14029341196925039239

`∑[A195321(n)+A010023(n)]`
-/

namespace A160674.P14029341196925039239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195321 n + A010023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160674.P14029341196925039239

namespace A160674

/-- `∑[A195321(n)+A010023(n)]` -/
def P14029341196925039239.Spec : Prop :=
  ∀ n, P14029341196925039239.a n = A160674 n

end A160674

/-! ## A160674.P15190515745804237261

`(A000290(n+1)-A000290(n))*A069133(n+1)`
-/

namespace A160674.P15190515745804237261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000290 (n + 1) - A000290 n) * A069133 (n + 1)

end

end A160674.P15190515745804237261

namespace A160674

/-- `(A000290(n+1)-A000290(n))*A069133(n+1)` -/
def P15190515745804237261.Spec : Prop :=
  ∀ n, P15190515745804237261.a n = A160674 n

end A160674

/-! ## A160674.P9464265974193531243

`Δ[A173121(n)+n²²]`
-/

namespace A160674.P9464265974193531243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173121 n + ((n ^ 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160674.P9464265974193531243

namespace A160674

/-- `Δ[A173121(n)+n²²]` -/
def P9464265974193531243.Spec : Prop :=
  ∀ n, P9464265974193531243.a n = A160674 n

end A160674

/-! ## A160674.P13938023680016320567

`Δ[A239607(n)+n²²]`
-/

namespace A160674.P13938023680016320567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239607 n + ((n ^ 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160674.P13938023680016320567

namespace A160674

/-- `Δ[A239607(n)+n²²]` -/
def P13938023680016320567.Spec : Prop :=
  ∀ n, P13938023680016320567.a n = A160674 n

end A160674

/-! ## A160674.P15414420247217754678

`(2*n+1)*(A051874(n+1)-n)`
-/

namespace A160674.P15414420247217754678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (A051874 (n + 1) - (n : ℤ))

end

end A160674.P15414420247217754678

namespace A160674

/-- `(2*n+1)*(A051874(n+1)-n)` -/
def P15414420247217754678.Spec : Prop :=
  ∀ n, P15414420247217754678.a n = A160674 n

end A160674

/-! ## A160674.P9157303756433200506

`A063522(Δ[n²])`
-/

namespace A160674.P9157303756433200506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A160674.P9157303756433200506

namespace A160674

/-- `A063522(Δ[n²])` -/
def P9157303756433200506.Spec : Prop :=
  ∀ n, P9157303756433200506.a n = A160674 n

end A160674

/-! ## A160674.P4004525645552359980

`∑[A010005(2*n)]`
-/

namespace A160674.P4004525645552359980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010005 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160674.P4004525645552359980

namespace A160674

/-- `∑[A010005(2*n)]` -/
def P4004525645552359980.Spec : Prop :=
  ∀ n, P4004525645552359980.a n = A160674 n

end A160674

/-! ## A160674.P8584821414202992148

`A269237(2*n)/Δ[n²]`
-/

namespace A160674.P8584821414202992148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269237 (2 * n) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A160674.P8584821414202992148

namespace A160674

/-- `A269237(2*n)/Δ[n²]` -/
def P8584821414202992148.Spec : Prop :=
  ∀ n, P8584821414202992148.a n = (A160674 n : ℚ)

end A160674

/-! ## A160674.P686166499684689322

`Δ[n²]*A195142(2*n+1)`
-/

namespace A160674.P686166499684689322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A195142 (2 * n + 1)

end

end A160674.P686166499684689322

namespace A160674

/-- `Δ[n²]*A195142(2*n+1)` -/
def P686166499684689322.Spec : Prop :=
  ∀ n, P686166499684689322.a n = A160674 n

end A160674

/-! ## A160674.P7868841571839261029

`∑[A010008(2*n)-12*n²]`
-/

namespace A160674.P7868841571839261029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010008 (2 * n) - (12 * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160674.P7868841571839261029

namespace A160674

/-- `∑[A010008(2*n)-12*n²]` -/
def P7868841571839261029.Spec : Prop :=
  ∀ n, P7868841571839261029.a n = A160674 n

end A160674

/-! ## A160674.P11242357340272088571

`(2*n+1)*∑[A298040(2*n)]`
-/

namespace A160674.P11242357340272088571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298040 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160674.P11242357340272088571

namespace A160674

/-- `(2*n+1)*∑[A298040(2*n)]` -/
def P11242357340272088571.Spec : Prop :=
  ∀ n, P11242357340272088571.a n = A160674 n

end A160674

/-! ## A160674.P6244092248760947984

`lcm(2*n+1, A063522(2*n+1))`
-/

namespace A160674.P6244092248760947984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A063522 (2 * n + 1))

end

end A160674.P6244092248760947984

namespace A160674

/-- `lcm(2*n+1, A063522(2*n+1))` -/
def P6244092248760947984.Spec : Prop :=
  ∀ n, (P6244092248760947984.a n : ℤ) = A160674 n

end A160674

/-!
# A160676: Numbers k such that k and 2k use the same number of characters when expressed in Roman numerals.

The programs for A160676, there is no canonical definition to state claims against.
-/

/-! ## A160676.P17768938154877994526

`eq[A006968(2*(n+1)), A006968(n+1)]+1`
-/

namespace A160676.P17768938154877994526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A160676.P17768938154877994526

/-! ## A160676.P4786823158589667735

`A020725(eq[A006968(2*(n+1)), A006968(n+1)])`
-/

namespace A160676.P4786823158589667735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A160676.P4786823158589667735

/-!
# A160679: Square root of n under Nim (or Conway) multiplication.

The programs for A160679, there is no canonical definition to state claims against.
-/

/-! ## A160679.P1389001171788581051

`A335536(A064706(A064706(n)))`
-/

namespace A160679.P1389001171788581051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335536 (A064706 (A064706 n).toNat).toNat

end

end A160679.P1389001171788581051

/-! ## A160679.P13106751770410808100

`A335536(A100282(A100282(n)))`
-/

namespace A160679.P13106751770410808100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335536 (A100282 (A100282 n).toNat).toNat

end

end A160679.P13106751770410808100

/-! ## A160679.P11837412920719640695

`A335536(A335536(A335536(A335536(A335536(n)))))`
-/

namespace A160679.P11837412920719640695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335536 (A335536 (A335536 (A335536 (A335536 n).toNat).toNat).toNat).toNat

end

end A160679.P11837412920719640695

/-! ## A160679.P11888849375547115622

`A006042(xor(n, floor(n/4))%A333862(2*(n+2)))`
-/

namespace A160679.P11888849375547115622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006042 (Int.tmod (Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋) (A333862 (2 * (n + 2)))).toNat

end

end A160679.P11888849375547115622

/-! ## A160679.P13333714040747647977

`xor(A006068(n), A103673(A046778(3*(n+1))))`
-/

namespace A160679.P13333714040747647977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006068 n) (A103673 (A046778 (3 * (n + 1))).toNat)

end

end A160679.P13333714040747647977

/-!
# A160680: a(n) = sigma_0(F(n-1)) + sigma_0(F(n-2)) where F=A000045 and sigma_0=A000005.

The programs for A160680, the canonical program `A160680.P11171388368793991633` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160680 has offset 3).

The definition of A160680 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063375, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160680.P11171388368793991633

`A063375(n+2)+A063375(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160680

/-- `A063375(n+2)+A063375(n+1)` -/
def P11171388368793991633.Spec : Prop :=
  ∀ n, P11171388368793991633.a n = A160680 (n + 3)

theorem P11171388368793991633.correct : P11171388368793991633.Spec := by
  intro n
  simp only [A160680, Nat.add_sub_cancel]

end A160680

/-! ## A160680.P2659062389523829901

`A152774(n+1)+A152774(n+2)+2`
-/

namespace A160680.P2659062389523829901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152774 (n + 1) + (A152774 (n + 2) + 2)

end

end A160680.P2659062389523829901

namespace A160680

/-- `A152774(n+1)+A152774(n+2)+2` -/
def P2659062389523829901.Spec : Prop :=
  ∀ n, P2659062389523829901.a n = A160680 (n + 3)

end A160680

/-! ## A160680.P3035172960746381998

`A000005(A278245(n+1))+A000005(A278245(n+2))`
-/

namespace A160680.P3035172960746381998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278245 (n + 1)).toNat + A000005 (A278245 (n + 2)).toNat

end

end A160680.P3035172960746381998

namespace A160680

/-- `A000005(A278245(n+1))+A000005(A278245(n+2))` -/
def P3035172960746381998.Spec : Prop :=
  ∀ n, P3035172960746381998.a n = A160680 (n + 3)

end A160680

/-! ## A160680.P10886701096225538955

`A000005(A000045(n+1))+A000005(A000045(n+2))`
-/

namespace A160680.P10886701096225538955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000045 (n + 1)).toNat + A000005 (A000045 (n + 2)).toNat

end

end A160680.P10886701096225538955

namespace A160680

/-- `A000005(A000045(n+1))+A000005(A000045(n+2))` -/
def P10886701096225538955.Spec : Prop :=
  ∀ n, P10886701096225538955.a n = A160680 (n + 3)

end A160680

/-! ## A160680.P477508179567382362

`A000005(A212804(n+2))+A000005(A212804(n+3))`
-/

namespace A160680.P477508179567382362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A212804 (n + 2)).toNat + A000005 (A212804 (n + 3)).toNat

end

end A160680.P477508179567382362

namespace A160680

/-- `A000005(A212804(n+2))+A000005(A212804(n+3))` -/
def P477508179567382362.Spec : Prop :=
  ∀ n, P477508179567382362.a n = A160680 (n + 3)

end A160680

/-!
# A160681: Primes of form 10 * 2^(2^n) + 19.

The programs for A160681, the canonical program `A160681.P15322086970338820019` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160681 has offset 1).

The definition of A160681 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*2^2^(n+1)+19` (program `A160681.P15322086970338820019`, by `A160681.P15322086970338820019.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160681.P15322086970338820019

`10*2^2^(n+1)+19`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A160681

/-- `10*2^2^(n+1)+19` -/
def P15322086970338820019.Spec : Prop :=
  ∀ n, (P15322086970338820019.a n : ℤ) = A160681 (n + 1)

theorem P15322086970338820019.correct : P15322086970338820019.Spec := by
  intro n
  simp only [A160681, Nat.add_sub_cancel]

end A160681

/-!
# A160682: The list of the A values in the common solutions to 13*k+1 = A^2 and 17*k+1 = B^2.

The programs for A160682, the canonical program `A160682.P1251188409456780589` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160682 has offset 1).

The definition of A160682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160682.P1251188409456780589

`15*a(n-1)-a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A160682

/-- `15*a(n-1)-a(n-2)` -/
def P1251188409456780589.Spec : Prop :=
  ∀ n, P1251188409456780589.a n = A160682 (n + 1)

theorem P1251188409456780589.correct : P1251188409456780589.Spec := by
  intro n
  simp only [A160682, Nat.add_sub_cancel]

end A160682

/-! ## A160682.P17058173853625627786

`A078365(n)-a(n-1)` with `a(0)=1`
-/

namespace A160682.P17058173853625627786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078365 n - a (n - 1)

end

end A160682.P17058173853625627786

namespace A160682

/-- `A078365(n)-a(n-1)` -/
def P17058173853625627786.Spec : Prop :=
  ∀ n, P17058173853625627786.a n = A160682 (n + 1)

end A160682

/-! ## A160682.P15164282517891153336

`A099271(n+1)+A099271(n)`
-/

namespace A160682.P15164282517891153336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099271 (n + 1) + A099271 n

end

end A160682.P15164282517891153336

namespace A160682

/-- `A099271(n+1)+A099271(n)` -/
def P15164282517891153336.Spec : Prop :=
  ∀ n, P15164282517891153336.a n = A160682 (n + 1)

end A160682

/-! ## A160682.P10103066970501876811

`abs(Δ[A033999(n)*A099271(n)])`
-/

namespace A160682.P10103066970501876811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A099271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A160682.P10103066970501876811

namespace A160682

/-- `abs(Δ[A033999(n)*A099271(n)])` -/
def P10103066970501876811.Spec : Prop :=
  ∀ n, P10103066970501876811.a n = A160682 (n + 1)

end A160682

/-! ## A160682.P4945860692066794021

`Δ[A161591(n+1)-A078364(n)]`
-/

namespace A160682.P4945860692066794021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161591 (n + 1) - A078364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160682.P4945860692066794021

namespace A160682

/-- `Δ[A161591(n+1)-A078364(n)]` -/
def P4945860692066794021.Spec : Prop :=
  ∀ n, P4945860692066794021.a n = A160682 (n + 1)

end A160682

/-! ## A160682.P6939521206647419997

`Δ[A078364(n+2)]%A078364(n+1)`
-/

namespace A160682.P6939521206647419997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078364 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A078364 (n + 1))

end

end A160682.P6939521206647419997

namespace A160682

/-- `Δ[A078364(n+2)]%A078364(n+1)` -/
def P6939521206647419997.Spec : Prop :=
  ∀ n, P6939521206647419997.a n = A160682 (n + 1)

end A160682

/-!
# A160684: Numbers k >= 1 such that A000045(k)/A000005(k) is an integer.

The programs for A160684, there is no canonical definition to state claims against.
-/

/-! ## A160684.P14959667306029407793

`eq[2, a(A000045(n)%A000005(n))+1]` with `a(0)=1`
-/

namespace A160684.P14959667306029407793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (Int.tmod (A000045 n) (A000005 n)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160684.P14959667306029407793

/-! ## A160684.P12211489464593377778

`lt[∑[A212804(n)]%A000005(n+1), 1]+1`
-/

namespace A160684.P12211489464593377778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A000005 (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A160684.P12211489464593377778

/-! ## A160684.P2322744252872803250

`lt[A000045(n+1)%A000005(n+1), 1]+1`
-/

namespace A160684.P2322744252872803250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 1)) (A000005 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A160684.P2322744252872803250

/-! ## A160684.P12860677600026348423

`lt[(A000071(n+1)+1)%A000005(n+1), 1]+1`
-/

namespace A160684.P12860677600026348423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000071 (n + 1) + 1) (A000005 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A160684.P12860677600026348423

/-! ## A160684.P13869831018658573679

`∑[A284002(∑[A094527(n)])]`
-/

namespace A160684.P13869831018658573679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284002 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160684.P13869831018658573679

/-!
# A160685: Numbers k >= 1 such that A000005(A000045(k))/A000005(k) is an integer.

The programs for A160685, there is no canonical definition to state claims against.
-/

/-! ## A160685.P15414200123122847320

`lt[A111845(A226602(n)), 2*n]`
-/

namespace A160685.P15414200123122847320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111845 (A226602 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A160685.P15414200123122847320

/-! ## A160685.P7759843881410068467

`lt[1, A005704(n)/A111845(A226602(n))]`
-/

namespace A160685.P7759843881410068467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005704 n : ℚ) / (A111845 (A226602 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A160685.P7759843881410068467

/-! ## A160685.P18419953027725895502

`lt[1, A054519(n)/A111845(A226602(n))]`
-/

namespace A160685.P18419953027725895502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054519 n : ℚ) / (A111845 (A226602 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A160685.P18419953027725895502

/-! ## A160685.P18149288507258420306

`lt[1, A058314(n+1)/A111845(A226602(n))]`
-/

namespace A160685.P18149288507258420306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058314 (n + 1) : ℚ) / (A111845 (A226602 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A160685.P18149288507258420306

/-! ## A160685.P18325588682125560540

`∑[gcd(2, A217928(A083416(n+1)))]`
-/

namespace A160685.P18325588682125560540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A217928 (A083416 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160685.P18325588682125560540

/-!
# A160689: a(1)=1. a(n) = the smallest positive integer such that d(a(n)) = d(Sum_{k=1..n} a(k)), where d(m) = the number of divisors of m.

The programs for A160689, there is no canonical definition to state claims against.
-/

/-! ## A160689.P12168202113410716799

`A130706(n)+Δ[A160690(A233583(n+1))]`
-/

namespace A160689.P12168202113410716799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160690 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n + (f1 (n + 1) - f1 n)

end

end A160689.P12168202113410716799

/-! ## A160689.P1141105338548621172

`Δ[A160690(A233583(n+1))%A303748(n)]`
-/

namespace A160689.P1141105338548621172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160690 (A233583 (n + 1)).toNat) (A303748 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160689.P1141105338548621172

/-! ## A160689.P12985467551277101031

`A196441(Δ[n²]^∑{e}[n+1, #])`
-/

namespace A160689.P12985467551277101031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196441 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

end

end A160689.P12985467551277101031

/-! ## A160689.P7415724558626248185

`A196441(A389626(n))`
-/

namespace A160689.P7415724558626248185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196441 (A389626 n).toNat

end

end A160689.P7415724558626248185

/-! ## A160689.P5596082647047125256

`A196441(A173078(n+1))`
-/

namespace A160689.P5596082647047125256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196441 (A173078 (n + 1)).toNat

end

end A160689.P5596082647047125256

/-!
# A160690: a(1)=1. a(n) = the smallest integer > a(n-1) such that d(a(n)) = d(a(n) - a(n-1)), where d(m) = the number of divisors of m.

The programs for A160690, there is no canonical definition to state claims against.
-/

/-! ## A160690.P4860462366534890379

`∑[A160689(n+1)]`
-/

namespace A160690.P4860462366534890379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160690.P4860462366534890379

/-! ## A160690.P7995473839792440484

`A160689(char[1]+1+n)+a(n-1)` with `a(0)=1`
-/

namespace A160690.P7995473839792440484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160689 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + a (n - 1)

end

end A160690.P7995473839792440484

/-! ## A160690.P15409868500216892171

`a(n-1)+A160689(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A160690.P15409868500216892171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A160689 (n + 1) + A000038 n)

end

end A160690.P15409868500216892171

/-! ## A160690.P17767317406569208025

`a(n-1)+A160689(n+1)%A072154(n)` with `a(0)=1`
-/

namespace A160690.P17767317406569208025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A160689 (n + 1)) (A072154 n)

end

end A160690.P17767317406569208025

/-! ## A160690.P667881439980424641

`A065559(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A160690.P667881439980424641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065559 (a (n - 1)).toNat + a (n - 1)

end

end A160690.P667881439980424641

/-!
# A160691: a(n) = the number of divisors of A160689(n) = the number of divisors of A160690(n).

The programs for A160691, there is no canonical definition to state claims against.
-/

/-! ## A160691.P5051233633084480047

`∏{e}[A160689(n+1), #+1]`
-/

namespace A160691.P5051233633084480047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160689 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A160691.P5051233633084480047

/-! ## A160691.P17358128052862240607

`A000005(A160689(n+1))`
-/

namespace A160691.P17358128052862240607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A160689 (n + 1)).toNat

end

end A160691.P17358128052862240607

/-! ## A160691.P4722468345506334311

`A000005(A160690(n+1))`
-/

namespace A160691.P4722468345506334311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A160690 (n + 1)).toNat

end

end A160691.P4722468345506334311

/-! ## A160691.P2600448715206227325

`A046951(A160689(n+1)²)`
-/

namespace A160691.P2600448715206227325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A160689 (n + 1) ^ 2).toNat

end

end A160691.P2600448715206227325

/-! ## A160691.P2090889573024202139

`∑{d}[A160689(n+1), A191314(#²)]`
-/

namespace A160691.P2090889573024202139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A191314 (d ^ 2)

end

end A160691.P2090889573024202139

/-! ## A160691.P17498707125230874229

`∑{d}[A160689(n+1), A001222(A056206(#))]`
-/

namespace A160691.P17498707125230874229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001222 (A056206 d).toNat

end

end A160691.P17498707125230874229

/-! ## A160691.P1599077118645012917

`A046951(2*A160689(n+1)*A160689(n+1))`
-/

namespace A160691.P1599077118645012917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (2 * A160689 (n + 1) * A160689 (n + 1)).toNat

end

end A160691.P1599077118645012917

/-!
# A160692: Iteration of (k terms=k, followed by 2^k-k terms=0), beginning with k=0.

The programs for A160692, there is no canonical definition to state claims against.
-/

/-! ## A160692.P2448014724566067942

`char[A129142(n+1)]*A227177(n)`
-/

namespace A160692.P2448014724566067942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129142 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A227177 n

end

end A160692.P2448014724566067942

/-! ## A160692.P16393731749847659759

`char[A129142(n+1)]*A000523(n+1)`
-/

namespace A160692.P16393731749847659759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129142 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000523 (n + 1)

end

end A160692.P16393731749847659759

/-! ## A160692.P16290639313631275472

`A070939(∑[char[comp[2^n+n]]])%A070939(n+1)`
-/

namespace A160692.P16290639313631275472
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (∑ j ∈ Finset.range (n + 1), f1 j)) (A070939 (n + 1))

end

end A160692.P16290639313631275472

/-! ## A160692.P16238089053426483291

`A070939(floor(eq[n-2, lcm(1-and(n, n-1), n-2)]/2))%(A000523(n+1)+1)`
-/

namespace A160692.P16238089053426483291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - Int.land (n : ℤ) ((n : ℤ) - 1)) ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 ⌊(SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n : ℚ) / 2⌋.toNat) (A000523 (n + 1) + 1)

end

end A160692.P16238089053426483291

/-! ## A160692.P8561119007181965463

`A209229(A294648(n+1))*A227177(n)`
-/

namespace A160692.P8561119007181965463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A294648 (n + 1)).toNat * A227177 n

end

end A160692.P8561119007181965463

/-! ## A160692.P12348204497723357815

`A000523(A088948(n+1))%∑[A036987(n)]`
-/

namespace A160692.P12348204497723357815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000523 (A088948 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160692.P12348204497723357815

/-! ## A160692.P2262404955187825802

`A070939(A103354(n+1))%∑[A036987(n)]`
-/

namespace A160692.P2262404955187825802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A103354 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160692.P2262404955187825802

/-! ## A160692.P15893070030098036472

`A000523(n+1)*A209229(A294648(n+1))`
-/

namespace A160692.P15893070030098036472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) * A209229 (A294648 (n + 1)).toNat

end

end A160692.P15893070030098036472

/-! ## A160692.P5697645276877347216

`A070939(A247983(n+1))%A029837(n+2)`
-/

namespace A160692.P5697645276877347216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A247983 (n + 1)).toNat) (A029837 (n + 2))

end

end A160692.P5697645276877347216

/-! ## A160692.P15424653605397418037

`A036987(n+1-A004001(n+2))*A063250(n+1)`
-/

namespace A160692.P15424653605397418037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 ((n + 1 : ℤ) - A004001 (n + 2)).toNat * A063250 (n + 1)

end

end A160692.P15424653605397418037

/-!
# A160693: Numerator of the 2n-th raw moment for distribution of distances between two points picked at random in the interior of a unit cube.

The programs for A160693, there is no canonical definition to state claims against.
-/

/-! ## A160693.P3660075500679126380

`∏{p}[A284605(n), A347600(#)]`
-/

namespace A160693.P3660075500679126380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A347600 p

end

end A160693.P3660075500679126380

/-!
# A160694: Denominator of the 2n-th raw moment for distribution of distances between two points picked at random in the interior of a unit cube.

The programs for A160694, there is no canonical definition to state claims against.
-/

/-! ## A160694.P15351558618529436784

`A000041(n)*A007947(A261065(n+1))`
-/

namespace A160694.P15351558618529436784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A007947 (A261065 (n + 1)).toNat

end

end A160694.P15351558618529436784

/-!
# A160695: Integers m such that 3*m+1 and 7*m+1 are both perfect squares.

The programs for A160695, the canonical program `A160695.P3454518712255288193` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160695 has offset 1).

The definition of A160695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160695.P3454518712255288193

`23*a(n-1)-a(n-2)+5` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A160695

/-- `23*a(n-1)-a(n-2)+5` -/
def P3454518712255288193.Spec : Prop :=
  ∀ n, P3454518712255288193.a n = A160695 (n + 1)

theorem P3454518712255288193.correct : P3454518712255288193.Spec := by
  intro n
  simp only [A160695, Nat.add_sub_cancel]

end A160695

/-! ## A160695.P4956340391090298992

`5*A334673(n)`
-/

namespace A160695.P4956340391090298992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A334673 n

end

end A160695.P4956340391090298992

namespace A160695

/-- `5*A334673(n)` -/
def P4956340391090298992.Spec : Prop :=
  ∀ n, P4956340391090298992.a n = A160695 (n + 1)

end A160695

/-! ## A160695.P306536296023348113

`(A030221(n)²-1)/7`
-/

namespace A160695.P306536296023348113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030221 n ^ 2 - 1 : ℚ) / 7

end

end A160695.P306536296023348113

namespace A160695

/-- `(A030221(n)²-1)/7` -/
def P306536296023348113.Spec : Prop :=
  ∀ n, P306536296023348113.a n = (A160695 (n + 1) : ℚ)

end A160695

/-! ## A160695.P8375571410346954680

`(A004253(n+1)²-1)/3`
-/

namespace A160695.P8375571410346954680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004253 (n + 1) ^ 2 - 1 : ℚ) / 3

end

end A160695.P8375571410346954680

namespace A160695

/-- `(A004253(n+1)²-1)/3` -/
def P8375571410346954680.Spec : Prop :=
  ∀ n, P8375571410346954680.a n = (A160695 (n + 1) : ℚ)

end A160695

/-! ## A160695.P278461386769162591

`A004254(n)*A004254(n+1)`
-/

namespace A160695.P278461386769162591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n * A004254 (n + 1)

end

end A160695.P278461386769162591

namespace A160695

/-- `A004254(n)*A004254(n+1)` -/
def P278461386769162591.Spec : Prop :=
  ∀ n, P278461386769162591.a n = A160695 (n + 1)

end A160695

/-! ## A160695.P2996375848476751075

`∑[A004254(2*n)]`
-/

namespace A160695.P2996375848476751075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160695.P2996375848476751075

namespace A160695

/-- `∑[A004254(2*n)]` -/
def P2996375848476751075.Spec : Prop :=
  ∀ n, P2996375848476751075.a n = A160695 (n + 1)

end A160695

/-! ## A160695.P7825475865935861127

`A004254(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A160695.P7825475865935861127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004254 (n + n) + a (n - 1)

end

end A160695.P7825475865935861127

namespace A160695

/-- `A004254(n+n)+a(n-1)` -/
def P7825475865935861127.Spec : Prop :=
  ∀ n, P7825475865935861127.a n = A160695 (n + 1)

end A160695

/-! ## A160695.P1101033817711375437

`∑[record[A004254(A127366(n))]]`
-/

namespace A160695.P1101033817711375437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 (A127366 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160695.P1101033817711375437

namespace A160695

/-- `∑[record[A004254(A127366(n))]]` -/
def P1101033817711375437.Spec : Prop :=
  ∀ n, P1101033817711375437.a n = A160695 (n + 1)

end A160695

/-! ## A160695.P9426595396535474014

`∑[record[A004254(A275365(n))]]`
-/

namespace A160695.P9426595396535474014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 (A275365 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160695.P9426595396535474014

namespace A160695

/-- `∑[record[A004254(A275365(n))]]` -/
def P9426595396535474014.Spec : Prop :=
  ∀ n, P9426595396535474014.a n = A160695 (n + 1)

end A160695

/-! ## A160695.P2142290173693577713

`lcm(∑[A004253(n+1)], A004254(n))`
-/

namespace A160695.P2142290173693577713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A004254 n)

end

end A160695.P2142290173693577713

namespace A160695

/-- `lcm(∑[A004253(n+1)], A004254(n))` -/
def P2142290173693577713.Spec : Prop :=
  ∀ n, (P2142290173693577713.a n : ℤ) = A160695 (n + 1)

end A160695

/-!
# A160696: Largest k such that k^2 divides prime(n)+1.

The programs for A160696, the canonical program `A160696.P2688155709056415849` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160696 has offset 1).

The definition of A160696 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160696.P2688155709056415849

`A000188(A008864(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A160696

/-- `A000188(A008864(n+1))` -/
def P2688155709056415849.Spec : Prop :=
  ∀ n, P2688155709056415849.a n = A160696 (n + 1)

theorem P2688155709056415849.correct : P2688155709056415849.Spec := by
  intro n
  simp only [A160696, Nat.add_sub_cancel]

end A160696

/-! ## A160696.P6608074752827117068

`A326038(A000040(n+1))`
-/

namespace A160696.P6608074752827117068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326038 (A000040 (n + 1)).toNat

end

end A160696.P6608074752827117068

namespace A160696

/-- `A326038(A000040(n+1))` -/
def P6608074752827117068.Spec : Prop :=
  ∀ n, P6608074752827117068.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P4777793169474612576

`A326038(A006005(n+1))`
-/

namespace A160696.P4777793169474612576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326038 (A006005 (n + 1)).toNat

end

end A160696.P4777793169474612576

namespace A160696

/-- `A326038(A006005(n+1))` -/
def P4777793169474612576.Spec : Prop :=
  ∀ n, P4777793169474612576.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P11654442253022918017

`A326038(A161847(n+1))`
-/

namespace A160696.P11654442253022918017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326038 (A161847 (n + 1)).toNat

end

end A160696.P11654442253022918017

namespace A160696

/-- `A326038(A161847(n+1))` -/
def P11654442253022918017.Spec : Prop :=
  ∀ n, P11654442253022918017.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P10119405806080654549

`A326038(A296375(n+1))`
-/

namespace A160696.P10119405806080654549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326038 (A296375 (n + 1)).toNat

end

end A160696.P10119405806080654549

namespace A160696

/-- `A326038(A296375(n+1))` -/
def P10119405806080654549.Spec : Prop :=
  ∀ n, P10119405806080654549.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P5497135658074973118

`A326038(A008578(n+2))`
-/

namespace A160696.P5497135658074973118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326038 (A008578 (n + 2)).toNat

end

end A160696.P5497135658074973118

namespace A160696

/-- `A326038(A008578(n+2))` -/
def P5497135658074973118.Spec : Prop :=
  ∀ n, P5497135658074973118.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P5442689884882827896

`A326038(record[A006530(n+2)])`
-/

namespace A160696.P5442689884882827896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326038 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A160696.P5442689884882827896

namespace A160696

/-- `A326038(record[A006530(n+2)])` -/
def P5442689884882827896.Spec : Prop :=
  ∀ n, P5442689884882827896.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P12167915944880240468

`A326038(record[A020639(n+2)])`
-/

namespace A160696.P12167915944880240468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326038 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A160696.P12167915944880240468

namespace A160696

/-- `A326038(record[A020639(n+2)])` -/
def P12167915944880240468.Spec : Prop :=
  ∀ n, P12167915944880240468.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P2778803633661637324

`A000188(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1]+1)`
-/

namespace A160696.P2778803633661637324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A160696.P2778803633661637324

namespace A160696

/-- `A000188(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1]+1)` -/
def P2778803633661637324.Spec : Prop :=
  ∀ n, P2778803633661637324.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P5359166616924955007

`A000188(A028815(n+1))`
-/

namespace A160696.P5359166616924955007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A028815 (n + 1)).toNat

end

end A160696.P5359166616924955007

namespace A160696

/-- `A000188(A028815(n+1))` -/
def P5359166616924955007.Spec : Prop :=
  ∀ n, P5359166616924955007.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P9279338666165814827

`A000188(A055670(n+1))`
-/

namespace A160696.P9279338666165814827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A055670 (n + 1)).toNat

end

end A160696.P9279338666165814827

namespace A160696

/-- `A000188(A055670(n+1))` -/
def P9279338666165814827.Spec : Prop :=
  ∀ n, P9279338666165814827.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P5866198999295366055

`A000188(A306591(n+1))`
-/

namespace A160696.P5866198999295366055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A306591 (n + 1)).toNat

end

end A160696.P5866198999295366055

namespace A160696

/-- `A000188(A306591(n+1))` -/
def P5866198999295366055.Spec : Prop :=
  ∀ n, P5866198999295366055.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P4984681262988813633

`A337101(A089241(n+1))`
-/

namespace A160696.P4984681262988813633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A089241 (n + 1)).toNat

end

end A160696.P4984681262988813633

namespace A160696

/-- `A337101(A089241(n+1))` -/
def P4984681262988813633.Spec : Prop :=
  ∀ n, P4984681262988813633.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P10122672280736633723

`A000188(A299763(n+2))`
-/

namespace A160696.P10122672280736633723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A299763 (n + 2)).toNat

end

end A160696.P10122672280736633723

namespace A160696

/-- `A000188(A299763(n+2))` -/
def P10122672280736633723.Spec : Prop :=
  ∀ n, P10122672280736633723.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P4372501368475899972

`A000188(A000040(n+1)+1)`
-/

namespace A160696.P4372501368475899972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000040 (n + 1) + 1).toNat

end

end A160696.P4372501368475899972

namespace A160696

/-- `A000188(A000040(n+1)+1)` -/
def P4372501368475899972.Spec : Prop :=
  ∀ n, P4372501368475899972.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P10921188322392693526

`A000188(A006093(n+1)+2)`
-/

namespace A160696.P10921188322392693526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A006093 (n + 1) + 2).toNat

end

end A160696.P10921188322392693526

namespace A160696

/-- `A000188(A006093(n+1)+2)` -/
def P10921188322392693526.Spec : Prop :=
  ∀ n, P10921188322392693526.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P3780613499272869186

`A000188(A008578(n+2)+1)`
-/

namespace A160696.P3780613499272869186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A008578 (n + 2) + 1).toNat

end

end A160696.P3780613499272869186

namespace A160696

/-- `A000188(A008578(n+2)+1)` -/
def P3780613499272869186.Spec : Prop :=
  ∀ n, P3780613499272869186.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P2752597151941115181

`A000188(A158611(n+3)+1)`
-/

namespace A160696.P2752597151941115181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A158611 (n + 3) + 1).toNat

end

end A160696.P2752597151941115181

namespace A160696

/-- `A000188(A158611(n+3)+1)` -/
def P2752597151941115181.Spec : Prop :=
  ∀ n, P2752597151941115181.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P8437770481313098233

`A000188(A089241(n+1)/2)`
-/

namespace A160696.P8437770481313098233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2)).toNat

end

end A160696.P8437770481313098233

namespace A160696

/-- `A000188(A089241(n+1)/2)` -/
def P8437770481313098233.Spec : Prop :=
  ∀ n, P8437770481313098233.a n = A160696 (n + 1)

end A160696

/-! ## A160696.P3965567691594601697

`A000188(record[A000010(n+1)+2])`
-/

namespace A160696.P3965567691594601697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A160696.P3965567691594601697

namespace A160696

/-- `A000188(record[A000010(n+1)+2])` -/
def P3965567691594601697.Spec : Prop :=
  ∀ n, P3965567691594601697.a n = A160696 (n + 1)

end A160696

/-!
# A160697: Record values in A160696.

The programs for A160697, there is no canonical definition to state claims against.
-/

/-! ## A160697.P14664824911142017022

`eq[A130130(n), A359438(n)]`
-/

namespace A160697.P14664824911142017022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160697.P14664824911142017022

/-! ## A160697.P2633718305995260002

`∪[A014793(n), A066049(n+1)]`
-/

namespace A160697.P2633718305995260002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014793 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A160697.P2633718305995260002

/-! ## A160697.P5106531940772576794

`comp[A143834(n+1)%A143838(n+1)]`
-/

namespace A160697.P5106531940772576794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143834 (n + 1)) (A143838 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A160697.P5106531940772576794

/-! ## A160697.P16102088638478759011

`A066049(gcd(n*a(n-1), A028310(n)))` with `a(0)=1`
-/

namespace A160697.P16102088638478759011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066049 (Int.gcd ((n : ℤ) * a (n - 1)) (A028310 n))

end

end A160697.P16102088638478759011

/-! ## A160697.P18066643907152426393

`A235044(a(A001222(n)))+A066049(n)` with `a(0)=1`
-/

namespace A160697.P18066643907152426393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A235044 (a (A001222 n).toNat).toNat + A066049 n

end

end A160697.P18066643907152426393

/-! ## A160697.P17781341013152307972

`A066049(A028310(n))+n-A028310(n)`
-/

namespace A160697.P17781341013152307972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (A028310 n).toNat + ((n : ℤ) - A028310 n)

end

end A160697.P17781341013152307972

/-! ## A160697.P1843541545831682489

`record[(n+1)%A239970(n+1)]`
-/

namespace A160697.P1843541545831682489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A239970 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160697.P1843541545831682489

/-! ## A160697.P6730394514510421682

`A008611(record[A239970(n)])`
-/

namespace A160697.P6730394514510421682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A160697.P6730394514510421682

/-! ## A160697.P4919123098637179942

`A008620(record[A239970(n)])`
-/

namespace A160697.P4919123098637179942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A160697.P4919123098637179942

/-! ## A160697.P10465476626972342629

`lt[∑{d}[1-2*n², #], 2*n²+1]`
-/

namespace A160697.P10465476626972342629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n ^ 2 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A160697.P10465476626972342629

/-!
# A160698: Where record values occur in A160696.

The programs for A160698, there is no canonical definition to state claims against.
-/

/-! ## A160698.P7924805013626064923

`A091176(round(acot(a(n-1))+n))` with `a(0)=1, a(1)=2`
-/

namespace A160698.P7924805013626064923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A091176 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (a (n - 1) : ℝ) + (n : ℝ))).toNat

end

end A160698.P7924805013626064923

/-! ## A160698.P4865750572175781154

`A091176(n)/a(A130706(n))` with `a(0)=1, a(1)=2`
-/

namespace A160698.P4865750572175781154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A091176 n : ℚ) / a (A130706 n).toNat

end

end A160698.P4865750572175781154

/-! ## A160698.P12625907685800893985

`A091176(n)+C(A269591(n), a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A160698.P12625907685800893985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A091176 n + (Nat.choose (A269591 n).toNat (a (n - 1)).toNat : ℤ)

end

end A160698.P12625907685800893985

/-! ## A160698.P10339140260841842556

`gcd(A091176(A028310(n)), A130706(n))`
-/

namespace A160698.P10339140260841842556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091176 (A028310 n).toNat) (A130706 n)

end

end A160698.P10339140260841842556

/-! ## A160698.P157280828143387145

`A091176(n)+A001221(a(A130706(n)))` with `a(0)=1, a(1)=2`
-/

namespace A160698.P157280828143387145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A091176 n + A001221 (a (A130706 n).toNat).toNat

end

end A160698.P157280828143387145

/-! ## A160698.P5141269997178363730

`A091176(n)-A023869(a(A130706(n)))` with `a(0)=1, a(1)=2`
-/

namespace A160698.P5141269997178363730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A091176 n - A023869 (a (A130706 n).toNat).toNat

end

end A160698.P5141269997178363730

/-! ## A160698.P8068384053759950749

`A091176((n%A007401(a(n-1)))%(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A160698.P8068384053759950749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A091176 (Int.tmod (Int.tmod (n : ℤ) (A007401 (a (n - 1)).toNat)) (n + 1 : ℤ)).toNat

end

end A160698.P8068384053759950749

/-! ## A160698.P10590709282191045212

`A278114(A066049(n)%A087984(a(n-1)+2))` with `a(0)=1, a(1)=2`
-/

namespace A160698.P10590709282191045212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A278114 (Int.tmod (A066049 n) (A087984 (a (n - 1) + 2).toNat)).toNat

end

end A160698.P10590709282191045212

/-! ## A160698.P9959775169421248276

`record[A061395(A253909(n)+A082562(n))]`
-/

namespace A160698.P9959775169421248276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A253909 n + A082562 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160698.P9959775169421248276

/-!
# A160699: A bisection of A063522.

The programs for A160699, the canonical program `A160699.P11343078077844559299` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160699 has offset 0).

The definition of A160699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160699.P11343078077844559299

`n*(20*n²-3)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A160699

/-- `n*(20*n²-3)` -/
def P11343078077844559299.Spec : Prop :=
  ∀ n, P11343078077844559299.a n = A160699 n

theorem P11343078077844559299.correct : P11343078077844559299.Spec := by
  intro n
  simp only [A160699]

end A160699

/-! ## A160699.P1903263359481371546

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=17, a(2)=154, a(3)=531`
-/

namespace A160699.P1903263359481371546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 17, 154, 531] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A160699.P1903263359481371546

namespace A160699

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1903263359481371546.Spec : Prop :=
  ∀ n, P1903263359481371546.a n = A160699 n

theorem P1903263359481371546.correct : P1903263359481371546.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A160699, Nat.add_sub_cancel, A160699.P1903263359481371546.a, A160699.P11343078077844559299.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A160699, Nat.add_sub_cancel, A160699.P1903263359481371546.a, A160699.P11343078077844559299.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A160699

/-! ## A160699.P16867515504751783425

`2*n*A033583(n)-3*n`
-/

namespace A160699.P16867515504751783425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A033583 n) - (3 * n : ℤ)

end

end A160699.P16867515504751783425

namespace A160699

/-- `2*n*A033583(n)-3*n` -/
def P16867515504751783425.Spec : Prop :=
  ∀ n, P16867515504751783425.a n = A160699 n

end A160699

/-! ## A160699.P4817692795039815088

`2*A244729(n)-A008585(n)`
-/

namespace A160699.P4817692795039815088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244729 n - A008585 n

end

end A160699.P4817692795039815088

namespace A160699

/-- `2*A244729(n)-A008585(n)` -/
def P4817692795039815088.Spec : Prop :=
  ∀ n, P4817692795039815088.a n = A160699 n

end A160699

/-! ## A160699.P13684630702925952385

`A007588(2*n)+A036487(2*n)-n`
-/

namespace A160699.P13684630702925952385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (2 * n) + (A036487 (2 * n) - (n : ℤ))

end

end A160699.P13684630702925952385

namespace A160699

/-- `A007588(2*n)+A036487(2*n)-n` -/
def P13684630702925952385.Spec : Prop :=
  ∀ n, P13684630702925952385.a n = A160699 n

end A160699

/-! ## A160699.P8313101646926883128

`A063522(2*n)`
-/

namespace A160699.P8313101646926883128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 (2 * n)

end

end A160699.P8313101646926883128

namespace A160699

/-- `A063522(2*n)` -/
def P8313101646926883128.Spec : Prop :=
  ∀ n, P8313101646926883128.a n = A160699 n

end A160699

/-! ## A160699.P15874178734634101541

`A063521(2*n)+A000447(n)`
-/

namespace A160699.P15874178734634101541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063521 (2 * n) + A000447 n

end

end A160699.P15874178734634101541

namespace A160699

/-- `A063521(2*n)+A000447(n)` -/
def P15874178734634101541.Spec : Prop :=
  ∀ n, P15874178734634101541.a n = A160699 n

end A160699

/-! ## A160699.P3329106938229091680

`A063523(2*n)-A000447(n)`
-/

namespace A160699.P3329106938229091680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063523 (2 * n) - A000447 n

end

end A160699.P3329106938229091680

namespace A160699

/-- `A063523(2*n)-A000447(n)` -/
def P3329106938229091680.Spec : Prop :=
  ∀ n, P3329106938229091680.a n = A160699 n

end A160699

/-! ## A160699.P5096218114389203459

`A135503(2*n)+A007588(2*n)`
-/

namespace A160699.P5096218114389203459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 (2 * n) + A007588 (2 * n)

end

end A160699.P5096218114389203459

namespace A160699

/-- `A135503(2*n)+A007588(2*n)` -/
def P5096218114389203459.Spec : Prop :=
  ∀ n, P5096218114389203459.a n = A160699 n

end A160699

/-! ## A160699.P5992336999548615648

`A160378(2*n)+A007586(2*n)`
-/

namespace A160699.P5992336999548615648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 (2 * n) + A007586 (2 * n)

end

end A160699.P5992336999548615648

namespace A160699

/-- `A160378(2*n)+A007586(2*n)` -/
def P5992336999548615648.Spec : Prop :=
  ∀ n, P5992336999548615648.a n = A160699 n

end A160699

/-! ## A160699.P9887929657489689907

`A172078(2*n)-A005581(2*n)`
-/

namespace A160699.P9887929657489689907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172078 (2 * n) - A005581 (2 * n)

end

end A160699.P9887929657489689907

namespace A160699

/-- `A172078(2*n)-A005581(2*n)` -/
def P9887929657489689907.Spec : Prop :=
  ∀ n, P9887929657489689907.a n = A160699 n

end A160699

/-! ## A160699.P13738595390158585302

`A259110(2*n)-A004006(2*n)`
-/

namespace A160699.P13738595390158585302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 (2 * n) - A004006 (2 * n)

end

end A160699.P13738595390158585302

namespace A160699

/-- `A259110(2*n)-A004006(2*n)` -/
def P13738595390158585302.Spec : Prop :=
  ∀ n, P13738595390158585302.a n = A160699 n

end A160699

/-! ## A160699.P9559258779387045085

`A237617(2*n)-A051925(2*n)`
-/

namespace A160699.P9559258779387045085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237617 (2 * n) - A051925 (2 * n)

end

end A160699.P9559258779387045085

namespace A160699

/-- `A237617(2*n)-A051925(2*n)` -/
def P9559258779387045085.Spec : Prop :=
  ∀ n, P9559258779387045085.a n = A160699 n

end A160699

/-! ## A160699.P16922916353985435876

`A117642(2*n)-A229183(2*n)`
-/

namespace A160699.P16922916353985435876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 (2 * n) - A229183 (2 * n)

end

end A160699.P16922916353985435876

namespace A160699

/-- `A117642(2*n)-A229183(2*n)` -/
def P16922916353985435876.Spec : Prop :=
  ∀ n, P16922916353985435876.a n = A160699 n

end A160699

/-! ## A160699.P10895253335598457489

`A237616(2*n)-A161680(2*n)`
-/

namespace A160699.P10895253335598457489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 (2 * n) - A161680 (2 * n)

end

end A160699.P10895253335598457489

namespace A160699

/-- `A237616(2*n)-A161680(2*n)` -/
def P10895253335598457489.Spec : Prop :=
  ∀ n, P10895253335598457489.a n = A160699 n

end A160699

/-! ## A160699.P1111682259682865194

`A249354(2*n)-A267370(2*n)`
-/

namespace A160699.P1111682259682865194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 (2 * n) - A267370 (2 * n)

end

end A160699.P1111682259682865194

namespace A160699

/-- `A249354(2*n)-A267370(2*n)` -/
def P1111682259682865194.Spec : Prop :=
  ∀ n, P1111682259682865194.a n = A160699 n

end A160699

/-! ## A160699.P8326227830659974709

`A007531(2*n+1)+A004188(2*n)`
-/

namespace A160699.P8326227830659974709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (2 * n + 1) + A004188 (2 * n)

end

end A160699.P8326227830659974709

namespace A160699

/-- `A007531(2*n+1)+A004188(2*n)` -/
def P8326227830659974709.Spec : Prop :=
  ∀ n, P8326227830659974709.a n = A160699 n

end A160699

/-! ## A160699.P11781011763637578623

`A062025(2*n)+A007290(2*n+1)`
-/

namespace A160699.P11781011763637578623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062025 (2 * n) + A007290 (2 * n + 1)

end

end A160699.P11781011763637578623

namespace A160699

/-- `A062025(2*n)+A007290(2*n+1)` -/
def P11781011763637578623.Spec : Prop :=
  ∀ n, P11781011763637578623.a n = A160699 n

end A160699

/-! ## A160699.P4821065584814802512

`A212343(2*(n+1))+A015237(2*n)`
-/

namespace A160699.P4821065584814802512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212343 (2 * (n + 1)) + A015237 (2 * n)

end

end A160699.P4821065584814802512

namespace A160699

/-- `A212343(2*(n+1))+A015237(2*n)` -/
def P4821065584814802512.Spec : Prop :=
  ∀ n, P4821065584814802512.a n = A160699 n

end A160699

/-! ## A160699.P2470161560358068900

`A172225(2*n+1)-A100855(2*n)`
-/

namespace A160699.P2470161560358068900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172225 (2 * n + 1) - A100855 (2 * n)

end

end A160699.P2470161560358068900

namespace A160699

/-- `A172225(2*n+1)-A100855(2*n)` -/
def P2470161560358068900.Spec : Prop :=
  ∀ n, P2470161560358068900.a n = A160699 n

end A160699

