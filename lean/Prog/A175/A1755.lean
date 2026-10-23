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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
import Seq.Opaque.C025

/-!
# A175501: a(n) = the number of divisors of A175500(n).

The programs for A175501, there is no canonical definition to state claims against.
-/

/-! ## A175501.P9343225911821985307

`∏{e}[A175500(n+1), #+1]`
-/

namespace A175501.P9343225911821985307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A175501.P9343225911821985307

/-! ## A175501.P6127013329139963258

`∑{d}[A175500(n+1), gcd(#, A006005(n+1))]`
-/

namespace A175501.P6127013329139963258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A006005 (n + 1))

end

end A175501.P6127013329139963258

/-! ## A175501.P8767201854426212292

`A000005(A175500(n+1))`
-/

namespace A175501.P8767201854426212292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A175500 (n + 1)).toNat

end

end A175501.P8767201854426212292

/-! ## A175501.P5523720892365450219

`∑{d}[A175500(n+1), A000188(A007947(#))]`
-/

namespace A175501.P5523720892365450219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000188 (A007947 d).toNat

end

end A175501.P5523720892365450219

/-! ## A175501.P1900820228295189686

`∑{d}[A175500(n+1), A000688(A020639(#))]`
-/

namespace A175501.P1900820228295189686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000688 (A020639 d).toNat

end

end A175501.P1900820228295189686

/-! ## A175501.P11174570163308474952

`∑{d}[A175500(n+1), A000188(A336643(#))]`
-/

namespace A175501.P11174570163308474952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000188 (A336643 d).toNat

end

end A175501.P11174570163308474952

/-! ## A175501.P17479311354413416619

`∑{d}[A175500(n+1), A000035(A000265(#))]`
-/

namespace A175501.P17479311354413416619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 (A000265 d).toNat

end

end A175501.P17479311354413416619

/-! ## A175501.P7896945080017449565

`∑{d}[A175500(n+1), A010052(A008833(#))]`
-/

namespace A175501.P7896945080017449565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010052 (A008833 d).toNat

end

end A175501.P7896945080017449565

/-! ## A175501.P12455122439187062784

`∑{d}[A175500(n+1), abs(A020985(#))]`
-/

namespace A175501.P12455122439187062784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, |A020985 d|

end

end A175501.P12455122439187062784

/-! ## A175501.P14029906936535684188

`∑{d}[A175500(n+1), A000688(A014963(#))]`
-/

namespace A175501.P14029906936535684188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000688 (A014963 d).toNat

end

end A175501.P14029906936535684188

/-! ## A175501.P12557638872790955606

`A032741(A175500(n+1))+abs(A020985(n))`
-/

namespace A175501.P12557638872790955606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A175500 (n + 1)).toNat + |A020985 n|

end

end A175501.P12557638872790955606

/-! ## A175501.P13326229784432115269

`A032741(A175500(n+1))+A000034(4*n)`
-/

namespace A175501.P13326229784432115269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A175500 (n + 1)).toNat + A000034 (4 * n)

end

end A175501.P13326229784432115269

/-! ## A175501.P4761174608075601926

`A032741(A175500(n+1))+A000161(C(n, n²))`
-/

namespace A175501.P4761174608075601926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A175500 (n + 1)).toNat + A000161 (Nat.choose n (n ^ 2))

end

end A175501.P4761174608075601926

/-! ## A175501.P714738904564679270

`A032741(A175500(n+1))+A007318(C(n, n²))`
-/

namespace A175501.P714738904564679270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A175500 (n + 1)).toNat + A007318 (Nat.choose n (n ^ 2))

end

end A175501.P714738904564679270

/-! ## A175501.P9679295301409261439

`A000007(n+1)+A032741(A175500(n+1))+1`
-/

namespace A175501.P9679295301409261439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A032741 (A175500 (n + 1)).toNat + 1)

end

end A175501.P9679295301409261439

/-! ## A175501.P12104473912861211720

`A032741(A175500(n+1))+A014963(4*n+10)`
-/

namespace A175501.P12104473912861211720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A175500 (n + 1)).toNat + A014963 (4 * n + 10)

end

end A175501.P12104473912861211720

/-! ## A175501.P9654993532224001262

`A032741(A175500(n+1))+A007318(val(n+1, 5))`
-/

namespace A175501.P9654993532224001262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A175500 (n + 1)).toNat + A007318 (SequenceMachineLib.valuation (n + 1) 5)

end

end A175501.P9654993532224001262

/-! ## A175501.P679979517216613570

`A032741(A175500(n+1))+(A000010(n+1)%2)!`
-/

namespace A175501.P679979517216613570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A175500 (n + 1)).toNat + (Nat.factorial (Int.tmod (A000010 (n + 1)) 2).toNat : ℤ)

end

end A175501.P679979517216613570

/-! ## A175501.P1109751404238446931

`A032741(A175500(n+1))+(A000040(n+1)%2)!`
-/

namespace A175501.P1109751404238446931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A175500 (n + 1)).toNat + (Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat : ℤ)

end

end A175501.P1109751404238446931

/-! ## A175501.P5642615682071911123

`A032741(A175500(n+1))+A010051(A000040(n+1))`
-/

namespace A175501.P5642615682071911123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A175500 (n + 1)).toNat + A010051 (A000040 (n + 1)).toNat

end

end A175501.P5642615682071911123

/-!
# A175503: a(n) = the number of divisors of A175502(n).

The programs for A175503, there is no canonical definition to state claims against.
-/

/-! ## A175503.P1998609064733149648

`∏{e}[A175502(n+1), #+1]`
-/

namespace A175503.P1998609064733149648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A175503.P1998609064733149648

/-! ## A175503.P15907397914590527208

`A000005(A175502(n+1))`
-/

namespace A175503.P15907397914590527208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A175502 (n + 1)).toNat

end

end A175503.P15907397914590527208

/-! ## A175503.P15248567600492342651

`∑{d}[A175502(n+1), A077565(A020639(#))]`
-/

namespace A175503.P15248567600492342651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A077565 (A020639 d).toNat

end

end A175503.P15248567600492342651

/-! ## A175503.P6106403589069430042

`∑{d}[A175502(n+1), A343785(#)²]`
-/

namespace A175503.P6106403589069430042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A343785 d ^ 2

end

end A175503.P6106403589069430042

/-! ## A175503.P15999666068560109959

`∑{d}[A175502(n+1), A000188(A014963(#))]`
-/

namespace A175503.P15999666068560109959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000188 (A014963 d).toNat

end

end A175503.P15999666068560109959

/-! ## A175503.P13111320760042281246

`∑{d}[A175502(n+1), A115583(A000120(#))]`
-/

namespace A175503.P13111320760042281246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A115583 (A000120 d).toNat

end

end A175503.P13111320760042281246

/-! ## A175503.P6538269330958866932

`∑{d}[A175502(n+1), A343785(A102376(#))]`
-/

namespace A175503.P6538269330958866932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A343785 (A102376 d).toNat

end

end A175503.P6538269330958866932

/-! ## A175503.P13841323177298158241

`A175501(A272570(A175502(A272570(A175500(n+1)))))`
-/

namespace A175503.P13841323177298158241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175501 (A272570 (A175502 (A272570 (A175500 (n + 1)).toNat).toNat).toNat).toNat

end

end A175503.P13841323177298158241

/-! ## A175503.P2366889041628808110

`A175501(A272570(A175502(A287929(A287928(n+1)))))`
-/

namespace A175503.P2366889041628808110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175501 (A272570 (A175502 (A287929 (A287928 (n + 1)).toNat).toNat).toNat).toNat

end

end A175503.P2366889041628808110

/-!
# A175504: a(n) = n ^ (phi(n) - 1), phi(n) = A000010(n) = Euler totient function.

The programs for A175504, there is no canonical definition to state claims against.
-/

/-! ## A175504.P15131640912996709856

`A062981(n+1)/(n+1)`
-/

namespace A175504.P15131640912996709856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062981 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A175504.P15131640912996709856

/-! ## A175504.P13486315807449826937

`(n+1)^A109606(n+1)`
-/

namespace A175504.P13486315807449826937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A109606 (n + 1) : ℤ)

end

end A175504.P13486315807449826937

/-! ## A175504.P4368703856125317503

`(A066916(n+1)+1)/(n+1)`
-/

namespace A175504.P4368703856125317503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066916 (n + 1) + 1 : ℚ) / (n + 1 : ℚ)

end

end A175504.P4368703856125317503

/-! ## A175504.P15118394833050164042

`(A066915(n+1)-1)/(n+1)`
-/

namespace A175504.P15118394833050164042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066915 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A175504.P15118394833050164042

/-! ## A175504.P1610807204756957583

`(n+1)^(A000010(n+1)-1)`
-/

namespace A175504.P1610807204756957583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000010 (n + 1) - 1 : ℤ)

end

end A175504.P1610807204756957583

/-! ## A175504.P5935150862051895339

`(n+1)^(A225530(n+1)-1)`
-/

namespace A175504.P5935150862051895339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A225530 (n + 1) - 1 : ℤ)

end

end A175504.P5935150862051895339

/-! ## A175504.P7706502592795050548

`(n+1)^(A384710(n+1)-1)`
-/

namespace A175504.P7706502592795050548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A384710 (n + 1) - 1 : ℤ)

end

end A175504.P7706502592795050548

/-! ## A175504.P7026092699490536396

`(n+1)^(A039649(n+1)-2)`
-/

namespace A175504.P7026092699490536396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A039649 (n + 1) - 2 : ℤ)

end

end A175504.P7026092699490536396

/-! ## A175504.P17765939851751758703

`(n+1)^(n-A051953(n+1))`
-/

namespace A175504.P17765939851751758703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - A051953 (n + 1) : ℤ)

end

end A175504.P17765939851751758703

/-! ## A175504.P12896830251806498262

`A175701(n+1)/((n+1)*(n+1))`
-/

namespace A175504.P12896830251806498262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175701 (n + 1) : ℚ) / ((n + 1) * (n + 1) : ℚ)

end

end A175504.P12896830251806498262

/-!
# A175505: Numerator of A053818(n)/A023896(n) = antiharmonic mean of numbers k such that gcd(k,n) = 1, 1 <= k < n.

The programs for A175505, there is no canonical definition to state claims against.
-/

/-! ## A175505.P674721918736177823

`A053818(n+1)*A175506(n+1)/A023896(n+1)`
-/

namespace A175505.P674721918736177823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053818 (n + 1) * A175506 (n + 1) : ℚ) / (A023896 (n + 1) : ℚ)

end

end A175505.P674721918736177823

/-! ## A175505.P2368987984901947325

`A053818(n+1)/gcd(A002618(n+1), A053818(n+1))`
-/

namespace A175505.P2368987984901947325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053818 (n + 1) : ℚ) / (Int.gcd (A002618 (n + 1)) (A053818 (n + 1)) : ℚ)

end

end A175505.P2368987984901947325

/-! ## A175505.P16667340603272725012

`lcm(A053191(n+1), A053818(n+1))/A053191(n+1)`
-/

namespace A175505.P16667340603272725012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A053191 (n + 1)) (A053818 (n + 1)) : ℚ) / (A053191 (n + 1) : ℚ)

end

end A175505.P16667340603272725012

/-! ## A175505.P17122465588957857266

`A175506(n+1)/A023896(n+1)*A308477(A034856(n+2))`
-/

namespace A175505.P17122465588957857266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175506 (n + 1) : ℚ) / (A023896 (n + 1) : ℚ) * (A308477 (A034856 (n + 2)).toNat : ℚ)

end

end A175505.P17122465588957857266

/-! ## A175505.P9724566845439631215

`(2*A127415(n+1)-A023896(n+1))/A023896(n+1)*A175506(n+1)`
-/

namespace A175505.P9724566845439631215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A127415 (n + 1) - A023896 (n + 1) : ℚ) / (A023896 (n + 1) : ℚ) * (A175506 (n + 1) : ℚ)

end

end A175505.P9724566845439631215

/-! ## A175505.P6020233757997942104

`((n+1)*A023896(n+1)-A057789(n+1))/A023896(n+1)*A175506(n+1)`
-/

namespace A175505.P6020233757997942104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A023896 (n + 1) - A057789 (n + 1) : ℚ) / (A023896 (n + 1) : ℚ) * (A175506 (n + 1) : ℚ)

end

end A175505.P6020233757997942104

/-!
# A175506: Denominators of the antiharmonic means B of numbers k such that gcd(k, n) = 1 for numbers n >= 1 and k < n.

The programs for A175506, there is no canonical definition to state claims against.
-/

/-! ## A175506.P4907808576334728532

`A175505(n+1)*A023896(n+1)/A053818(n+1)`
-/

namespace A175506.P4907808576334728532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175505 (n + 1) * A023896 (n + 1) : ℚ) / (A053818 (n + 1) : ℚ)

end

end A175506.P4907808576334728532

/-! ## A175506.P5823250768133526873

`A023896(n+1)/gcd(A002618(n+1), A053818(n+1))`
-/

namespace A175506.P5823250768133526873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023896 (n + 1) : ℚ) / (Int.gcd (A002618 (n + 1)) (A053818 (n + 1)) : ℚ)

end

end A175506.P5823250768133526873

/-! ## A175506.P6945030179802166579

`A023896(n+1)/gcd(A023896(n+1), A057789(n+1))`
-/

namespace A175506.P6945030179802166579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023896 (n + 1) : ℚ) / (Int.gcd (A023896 (n + 1)) (A057789 (n + 1)) : ℚ)

end

end A175506.P6945030179802166579

/-! ## A175506.P2017501384001314461

`floor(A032766(A175505(n+1))/A028310(n))`
-/

namespace A175506.P2017501384001314461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032766 (A175505 (n + 1)).toNat : ℚ) / (A028310 n : ℚ)⌋

end

end A175506.P2017501384001314461

/-! ## A175506.P13019284218601912348

`A003557(A064400(n+1))/A003557(A299822(n+1))`
-/

namespace A175506.P13019284218601912348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (A064400 (n + 1)).toNat : ℚ) / (A003557 (A299822 (n + 1)).toNat : ℚ)

end

end A175506.P13019284218601912348

/-!
# A175508: a(n) is the difference of n and the product of the indices of prime factors of n with multiplicity, a(1) = 0.

The programs for A175508, the canonical program `A175508.P14316043966977483729` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175508 has offset 1).

The definition of A175508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175508.P14316043966977483729

`1-(A003963(n+1)-n)%(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A175508

/-- `1-(A003963(n+1)-n)%(n+1)` -/
def P14316043966977483729.Spec : Prop :=
  ∀ n, P14316043966977483729.a n = A175508 (n + 1)

theorem P14316043966977483729.correct : P14316043966977483729.Spec := by
  intro n
  simp only [A175508, Nat.add_sub_cancel]

end A175508

/-! ## A175508.P8597141214106014343

`abs(1-n)+2-A003963(abs(1-n)+2)`
-/

namespace A175508.P8597141214106014343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 2 - A003963 (|1 - (n : ℤ)| + 2).toNat

end

end A175508.P8597141214106014343

namespace A175508

/-- `abs(1-n)+2-A003963(abs(1-n)+2)` -/
def P8597141214106014343.Spec : Prop :=
  ∀ n, P8597141214106014343.a n = A175508 (n + 1)

end A175508

/-! ## A175508.P13896289456083061062

`A028310(1-A003963(n+1)+n)`
-/

namespace A175508.P13896289456083061062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (1 - A003963 (n + 1) + (n : ℤ)).toNat

end

end A175508.P13896289456083061062

namespace A175508

/-- `A028310(1-A003963(n+1)+n)` -/
def P13896289456083061062.Spec : Prop :=
  ∀ n, P13896289456083061062.a n = A175508 (n + 1)

end A175508

/-! ## A175508.P15802405337780336743

`A000007(n)+1-A003963(n+1)+n`
-/

namespace A175508.P15802405337780336743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (1 - A003963 (n + 1)) + (n : ℤ)

end

end A175508.P15802405337780336743

namespace A175508

/-- `A000007(n)+1-A003963(n+1)+n` -/
def P15802405337780336743.Spec : Prop :=
  ∀ n, P15802405337780336743.a n = A175508 (n + 1)

end A175508

/-! ## A175508.P4967596970940140087

`n-A057427(n)-A003963(n+1)+2`
-/

namespace A175508.P4967596970940140087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057427 n - A003963 (n + 1) + 2

end

end A175508.P4967596970940140087

namespace A175508

/-- `n-A057427(n)-A003963(n+1)+2` -/
def P4967596970940140087.Spec : Prop :=
  ∀ n, P4967596970940140087.a n = A175508 (n + 1)

end A175508

/-! ## A175508.P2483624523473350491

`n+1-A003963(n+1)%A080036(n)`
-/

namespace A175508.P2483624523473350491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A003963 (n + 1)) (A080036 n)

end

end A175508.P2483624523473350491

namespace A175508

/-- `n+1-A003963(n+1)%A080036(n)` -/
def P2483624523473350491.Spec : Prop :=
  ∀ n, P2483624523473350491.a n = A175508 (n + 1)

end A175508

/-! ## A175508.P4051414942964226854

`A010051(2*(n+1))+n+1-A003963(n+1)`
-/

namespace A175508.P4051414942964226854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + ((n + 1 : ℤ) - A003963 (n + 1))

end

end A175508.P4051414942964226854

namespace A175508

/-- `A010051(2*(n+1))+n+1-A003963(n+1)` -/
def P4051414942964226854.Spec : Prop :=
  ∀ n, P4051414942964226854.a n = A175508 (n + 1)

end A175508

/-! ## A175508.P10389899107588949224

`A028310(n)-A023443(A003963(n+1))`
-/

namespace A175508.P10389899107588949224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A023443 (A003963 (n + 1)).toNat

end

end A175508.P10389899107588949224

namespace A175508

/-- `A028310(n)-A023443(A003963(n+1))` -/
def P10389899107588949224.Spec : Prop :=
  ∀ n, P10389899107588949224.a n = A175508 (n + 1)

end A175508

/-! ## A175508.P6393551678488772987

`A003963(A008578(n+1))+1-A003963(n+1)`
-/

namespace A175508.P6393551678488772987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A008578 (n + 1)).toNat + (1 - A003963 (n + 1))

end

end A175508.P6393551678488772987

namespace A175508

/-- `A003963(A008578(n+1))+1-A003963(n+1)` -/
def P6393551678488772987.Spec : Prop :=
  ∀ n, P6393551678488772987.a n = A175508 (n + 1)

end A175508

/-!
# A175509: a(n) = ((2*n)-th semiprime) minus 2*(n-th semiprime).

The programs for A175509, the canonical program `A175509.P4197014076791799754` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175509 has offset 1).

The definition of A175509 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075818, A099981, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175509.P4197014076791799754

`A099981(n)-A075818(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A175509

/-- `A099981(n)-A075818(n+1)` -/
def P4197014076791799754.Spec : Prop :=
  ∀ n, P4197014076791799754.a n = A175509 (n + 1)

theorem P4197014076791799754.correct : P4197014076791799754.Spec := by
  intro n
  simp only [A175509, Nat.add_sub_cancel]

end A175509

/-! ## A175509.P5380099454769345214

`A099981(n)-2*A001358(n+1)`
-/

namespace A175509.P5380099454769345214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099981 n - 2 * A001358 (n + 1)

end

end A175509.P5380099454769345214

namespace A175509

/-- `A099981(n)-2*A001358(n+1)` -/
def P5380099454769345214.Spec : Prop :=
  ∀ n, P5380099454769345214.a n = A175509 (n + 1)

end A175509

/-! ## A175509.P9562411369090482178

`A001358(2*(n+1))-A075818(n+1)`
-/

namespace A175509.P9562411369090482178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (2 * (n + 1)) - A075818 (n + 1)

end

end A175509.P9562411369090482178

namespace A175509

/-- `A001358(2*(n+1))-A075818(n+1)` -/
def P9562411369090482178.Spec : Prop :=
  ∀ n, P9562411369090482178.a n = A175509 (n + 1)

end A175509

/-! ## A175509.P6271603264643462258

`A001358(2*(n+1))-2*A129767(2*(n+1))`
-/

namespace A175509.P6271603264643462258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (2 * (n + 1)) - 2 * A129767 (2 * (n + 1))

end

end A175509.P6271603264643462258

namespace A175509

/-- `A001358(2*(n+1))-2*A129767(2*(n+1))` -/
def P6271603264643462258.Spec : Prop :=
  ∀ n, P6271603264643462258.a n = A175509 (n + 1)

end A175509

/-! ## A175509.P11465121535250880449

`A099981(n)-A005843(eq[2, A226378(n)])`
-/

namespace A175509.P11465121535250880449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099981 n - A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175509.P11465121535250880449

namespace A175509

/-- `A099981(n)-A005843(eq[2, A226378(n)])` -/
def P11465121535250880449.Spec : Prop :=
  ∀ n, P11465121535250880449.a n = A175509 (n + 1)

end A175509

/-! ## A175509.P9933746611359454444

`A001358(2*(n+1))-A004277(A001358(n+1))`
-/

namespace A175509.P9933746611359454444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (2 * (n + 1)) - A004277 (A001358 (n + 1)).toNat

end

end A175509.P9933746611359454444

namespace A175509

/-- `A001358(2*(n+1))-A004277(A001358(n+1))` -/
def P9933746611359454444.Spec : Prop :=
  ∀ n, P9933746611359454444.a n = A175509 (n + 1)

end A175509

/-! ## A175509.P4522745737706770059

`A032742(A075818(2*(n+1)))-A075818(n+1)`
-/

namespace A175509.P4522745737706770059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A075818 (2 * (n + 1))).toNat - A075818 (n + 1)

end

end A175509.P4522745737706770059

namespace A175509

/-- `A032742(A075818(2*(n+1)))-A075818(n+1)` -/
def P4522745737706770059.Spec : Prop :=
  ∀ n, P4522745737706770059.a n = A175509 (n + 1)

end A175509

/-! ## A175509.P7056370155481480228

`A062828(A075818(2*(n+1)))-A075818(A062828(2*(n+1)))`
-/

namespace A175509.P7056370155481480228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (A075818 (2 * (n + 1))).toNat - A075818 (A062828 (2 * (n + 1))).toNat

end

end A175509.P7056370155481480228

namespace A175509

/-- `A062828(A075818(2*(n+1)))-A075818(A062828(2*(n+1)))` -/
def P7056370155481480228.Spec : Prop :=
  ∀ n, P7056370155481480228.a n = A175509 (n + 1)

end A175509

/-! ## A175509.P10674550280233849415

`A178804(A075818(2*(n+1)))-A075818(A178804(2*(n+1)))`
-/

namespace A175509.P10674550280233849415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178804 (A075818 (2 * (n + 1))).toNat - A075818 (A178804 (2 * (n + 1))).toNat

end

end A175509.P10674550280233849415

namespace A175509

/-- `A178804(A075818(2*(n+1)))-A075818(A178804(2*(n+1)))` -/
def P10674550280233849415.Spec : Prop :=
  ∀ n, P10674550280233849415.a n = A175509 (n + 1)

end A175509

/-!
# A175510: (2*n)-th twin prime minus 2*(n-th twin prime).

The programs for A175510, the canonical program `A175510.P13248822475687542466` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175510 has offset 1).

The definition of A175510 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175510.P13248822475687542466

`A001097(2*(n+1))-2*A001097(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A175510

/-- `A001097(2*(n+1))-2*A001097(n+1)` -/
def P13248822475687542466.Spec : Prop :=
  ∀ n, P13248822475687542466.a n = A175510 (n + 1)

theorem P13248822475687542466.correct : P13248822475687542466.Spec := by
  intro n
  simp only [A175510, Nat.add_sub_cancel]

end A175510

/-! ## A175510.P6596744773872296160

`A001359(n+2)-A278972(n+1)`
-/

namespace A175510.P6596744773872296160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2) - A278972 (n + 1)

end

end A175510.P6596744773872296160

namespace A175510

/-- `A001359(n+2)-A278972(n+1)` -/
def P6596744773872296160.Spec : Prop :=
  ∀ n, P6596744773872296160.a n = A175510 (n + 1)

end A175510

/-! ## A175510.P1044455839613509038

`A111166(n+2)-A278972(n+1)`
-/

namespace A175510.P1044455839613509038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 2) - A278972 (n + 1)

end

end A175510.P1044455839613509038

namespace A175510

/-- `A111166(n+2)-A278972(n+1)` -/
def P1044455839613509038.Spec : Prop :=
  ∀ n, P1044455839613509038.a n = A175510 (n + 1)

end A175510

/-! ## A175510.P10271181868602250108

`A171688(Δ[n²])-A278972(n+1)`
-/

namespace A175510.P10271181868602250108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A278972 (n + 1)

end

end A175510.P10271181868602250108

namespace A175510

/-- `A171688(Δ[n²])-A278972(n+1)` -/
def P10271181868602250108.Spec : Prop :=
  ∀ n, P10271181868602250108.a n = A175510 (n + 1)

end A175510

/-! ## A175510.P1098103124870621613

`p?[A120811(n+2)]-A278972(n+1)`
-/

namespace A175510.P1098103124870621613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A278972 (n + 1)

end

end A175510.P1098103124870621613

namespace A175510

/-- `p?[A120811(n+2)]-A278972(n+1)` -/
def P1098103124870621613.Spec : Prop :=
  ∀ n, P1098103124870621613.a n = A175510 (n + 1)

end A175510

/-! ## A175510.P17877323606103283539

`A001097(2*(n+1))-A278972(n+1)`
-/

namespace A175510.P17877323606103283539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (2 * (n + 1)) - A278972 (n + 1)

end

end A175510.P17877323606103283539

namespace A175510

/-- `A001097(2*(n+1))-A278972(n+1)` -/
def P17877323606103283539.Spec : Prop :=
  ∀ n, P17877323606103283539.a n = A175510 (n + 1)

end A175510

/-! ## A175510.P2310973949746019839

`A001359(n+2)-2*A001097(n+1)`
-/

namespace A175510.P2310973949746019839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2) - 2 * A001097 (n + 1)

end

end A175510.P2310973949746019839

namespace A175510

/-- `A001359(n+2)-2*A001097(n+1)` -/
def P2310973949746019839.Spec : Prop :=
  ∀ n, P2310973949746019839.a n = A175510 (n + 1)

end A175510

/-! ## A175510.P15413320798569092877

`A001359(n+2)-2*A171821(n+2)`
-/

namespace A175510.P15413320798569092877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2) - 2 * A171821 (n + 2)

end

end A175510.P15413320798569092877

namespace A175510

/-- `A001359(n+2)-2*A171821(n+2)` -/
def P15413320798569092877.Spec : Prop :=
  ∀ n, P15413320798569092877.a n = A175510 (n + 1)

end A175510

/-! ## A175510.P12401898793753898782

`A077800(2*n+3)-A278972(n+1)`
-/

namespace A175510.P12401898793753898782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (2 * n + 3) - A278972 (n + 1)

end

end A175510.P12401898793753898782

namespace A175510

/-- `A077800(2*n+3)-A278972(n+1)` -/
def P12401898793753898782.Spec : Prop :=
  ∀ n, P12401898793753898782.a n = A175510 (n + 1)

end A175510

/-!
# A175511: n-th even semiprime minus n-th semiprime.

The programs for A175511, the canonical program `A175511.P1932674187093907269` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175511 has offset 1).

The definition of A175511 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A100484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175511.P1932674187093907269

`A100484(n+1)-A001358(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A175511

/-- `A100484(n+1)-A001358(n+1)` -/
def P1932674187093907269.Spec : Prop :=
  ∀ n, P1932674187093907269.a n = A175511 (n + 1)

theorem P1932674187093907269.correct : P1932674187093907269.Spec := by
  intro n
  simp only [A175511, Nat.add_sub_cancel]

end A175511

/-! ## A175511.P11911246831176816350

`A065870(n+1)+Δ[A007504(n)]`
-/

namespace A175511.P11911246831176816350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065870 (n + 1) + (f1 (n + 1) - f1 n)

end

end A175511.P11911246831176816350

namespace A175511

/-- `A065870(n+1)+Δ[A007504(n)]` -/
def P11911246831176816350.Spec : Prop :=
  ∀ n, P11911246831176816350.a n = A175511 (n + 1)

end A175511

/-! ## A175511.P16544131799144476536

`A065870(n+1)+A000040(n+1)`
-/

namespace A175511.P16544131799144476536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065870 (n + 1) + A000040 (n + 1)

end

end A175511.P16544131799144476536

namespace A175511

/-- `A065870(n+1)+A000040(n+1)` -/
def P16544131799144476536.Spec : Prop :=
  ∀ n, P16544131799144476536.a n = A175511 (n + 1)

end A175511

/-! ## A175511.P15105677899533132659

`A001748(n+1)-A133796(n+1)`
-/

namespace A175511.P15105677899533132659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - A133796 (n + 1)

end

end A175511.P15105677899533132659

namespace A175511

/-- `A001748(n+1)-A133796(n+1)` -/
def P15105677899533132659.Spec : Prop :=
  ∀ n, P15105677899533132659.a n = A175511 (n + 1)

end A175511

/-! ## A175511.P14442854175336416480

`A072055(n+1)-A088707(n+1)`
-/

namespace A175511.P14442854175336416480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - A088707 (n + 1)

end

end A175511.P14442854175336416480

namespace A175511

/-- `A072055(n+1)-A088707(n+1)` -/
def P14442854175336416480.Spec : Prop :=
  ∀ n, P14442854175336416480.a n = A175511 (n + 1)

end A175511

/-! ## A175511.P13826397604785399907

`A134591(n+1)-A175708(n+1)`
-/

namespace A175511.P13826397604785399907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) - A175708 (n + 1)

end

end A175511.P13826397604785399907

namespace A175511

/-- `A134591(n+1)-A175708(n+1)` -/
def P13826397604785399907.Spec : Prop :=
  ∀ n, P13826397604785399907.a n = A175511 (n + 1)

end A175511

/-! ## A175511.P7143575995253043615

`Δ[2*A007504(n)]-A001358(n+1)`
-/

namespace A175511.P7143575995253043615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001358 (n + 1)

end

end A175511.P7143575995253043615

namespace A175511

/-- `Δ[2*A007504(n)]-A001358(n+1)` -/
def P7143575995253043615.Spec : Prop :=
  ∀ n, P7143575995253043615.a n = A175511 (n + 1)

end A175511

/-! ## A175511.P8919868347071026887

`A006093(n+1)+A065870(n+1)+1`
-/

namespace A175511.P8919868347071026887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A065870 (n + 1) + 1)

end

end A175511.P8919868347071026887

namespace A175511

/-- `A006093(n+1)+A065870(n+1)+1` -/
def P8919868347071026887.Spec : Prop :=
  ∀ n, P8919868347071026887.a n = A175511 (n + 1)

end A175511

/-! ## A175511.P6282413845524372472

`A008864(n+1)+A065870(n+1)-1`
-/

namespace A175511.P6282413845524372472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A065870 (n + 1) - 1)

end

end A175511.P6282413845524372472

namespace A175511

/-- `A008864(n+1)+A065870(n+1)-1` -/
def P6282413845524372472.Spec : Prop :=
  ∀ n, P6282413845524372472.a n = A175511 (n + 1)

end A175511

/-! ## A175511.P16852941221871772233

`A100484(n+1)+1-A088707(n+1)`
-/

namespace A175511.P16852941221871772233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + (1 - A088707 (n + 1))

end

end A175511.P16852941221871772233

namespace A175511

/-- `A100484(n+1)+1-A088707(n+1)` -/
def P16852941221871772233.Spec : Prop :=
  ∀ n, P16852941221871772233.a n = A175511 (n + 1)

end A175511

/-! ## A175511.P15430643369144739998

`A001358(n+1)+2*A065870(n+1)`
-/

namespace A175511.P15430643369144739998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + 2 * A065870 (n + 1)

end

end A175511.P15430643369144739998

namespace A175511

/-- `A001358(n+1)+2*A065870(n+1)` -/
def P15430643369144739998.Spec : Prop :=
  ∀ n, P15430643369144739998.a n = A175511 (n + 1)

end A175511

/-! ## A175511.P10012119357354466903

`2*A000040(n+1)-A001358(n+1)`
-/

namespace A175511.P10012119357354466903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A001358 (n + 1)

end

end A175511.P10012119357354466903

namespace A175511

/-- `2*A000040(n+1)-A001358(n+1)` -/
def P10012119357354466903.Spec : Prop :=
  ∀ n, P10012119357354466903.a n = A175511 (n + 1)

end A175511

/-! ## A175511.P17809358282587668366

`A065870(n+1)+A100484(n+1)/2`
-/

namespace A175511.P17809358282587668366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065870 (n + 1) : ℚ) + (A100484 (n + 1) : ℚ) / 2

end

end A175511.P17809358282587668366

namespace A175511

/-- `A065870(n+1)+A100484(n+1)/2` -/
def P17809358282587668366.Spec : Prop :=
  ∀ n, P17809358282587668366.a n = (A175511 (n + 1) : ℚ)

end A175511

/-! ## A175511.P3696394085166668948

`A001749(n+1)/2-A001358(n+1)`
-/

namespace A175511.P3696394085166668948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 2 - (A001358 (n + 1) : ℚ)

end

end A175511.P3696394085166668948

namespace A175511

/-- `A001749(n+1)/2-A001358(n+1)` -/
def P3696394085166668948.Spec : Prop :=
  ∀ n, P3696394085166668948.a n = (A175511 (n + 1) : ℚ)

end A175511

/-! ## A175511.P17499907711435444977

`2*sqrt(A001248(n+1))-A001358(n+1)`
-/

namespace A175511.P17499907711435444977
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A001248 (n + 1) : ℝ) - (A001358 (n + 1) : ℝ)

end

end A175511.P17499907711435444977

namespace A175511

/-- `2*sqrt(A001248(n+1))-A001358(n+1)` -/
def P17499907711435444977.Spec : Prop :=
  ∀ n, P17499907711435444977.a n = (A175511 (n + 1) : ℝ)

end A175511

/-! ## A175511.P3853704278722198942

`2*A000040(n+1)-sqrt(A074985(n+1))`
-/

namespace A175511.P3853704278722198942
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A000040 (n + 1) : ℝ) - Real.sqrt (A074985 (n + 1) : ℝ)

end

end A175511.P3853704278722198942

namespace A175511

/-- `2*A000040(n+1)-sqrt(A074985(n+1))` -/
def P3853704278722198942.Spec : Prop :=
  ∀ n, P3853704278722198942.a n = (A175511 (n + 1) : ℝ)

end A175511

/-! ## A175511.P8987749502655110744

`A100484(n+1)-(eq[2, A001222(n+1)]+1)`
-/

namespace A175511.P8987749502655110744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A175511.P8987749502655110744

namespace A175511

/-- `A100484(n+1)-(eq[2, A001222(n+1)]+1)` -/
def P8987749502655110744.Spec : Prop :=
  ∀ n, P8987749502655110744.a n = A175511 (n + 1)

end A175511

/-! ## A175511.P11907542280476965145

`2*A000040(n+1)-(eq[2, A001222(n+1)]+1)`
-/

namespace A175511.P11907542280476965145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A175511.P11907542280476965145

namespace A175511

/-- `2*A000040(n+1)-(eq[2, A001222(n+1)]+1)` -/
def P11907542280476965145.Spec : Prop :=
  ∀ n, P11907542280476965145.a n = A175511 (n + 1)

end A175511

/-! ## A175511.P201319124483987265

`A059788(n+1)+A059789(n)-A001358(n+1)`
-/

namespace A175511.P201319124483987265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059788 (n + 1) + (A059789 n - A001358 (n + 1))

end

end A175511.P201319124483987265

namespace A175511

/-- `A059788(n+1)+A059789(n)-A001358(n+1)` -/
def P201319124483987265.Spec : Prop :=
  ∀ n, P201319124483987265.a n = A175511 (n + 1)

end A175511

/-! ## A175511.P17670138894899022594

`A002808(n+1)+A065870(n+1)+A038529(n+1)`
-/

namespace A175511.P17670138894899022594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A065870 (n + 1) + A038529 (n + 1))

end

end A175511.P17670138894899022594

namespace A175511

/-- `A002808(n+1)+A065870(n+1)+A038529(n+1)` -/
def P17670138894899022594.Spec : Prop :=
  ∀ n, P17670138894899022594.a n = A175511 (n + 1)

end A175511

/-!
# A175512: (Digit sum of 7^n) mod n.

The programs for A175512, the canonical program `A175512.P1488611551688082023` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175512 has offset 1).

The definition of A175512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175512.P1488611551688082023

`A066003(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A175512

/-- `A066003(n+1)%(n+1)` -/
def P1488611551688082023.Spec : Prop :=
  ∀ n, P1488611551688082023.a n = A175512 (n + 1)

theorem P1488611551688082023.correct : P1488611551688082023.Spec := by
  intro n
  simp only [A175512, Nat.add_sub_cancel]

end A175512

/-! ## A175512.P13554051590155555019

`∑{digits}[7^(n+1), #]%(n+1)`
-/

namespace A175512.P13554051590155555019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum % (n + 1)

end

end A175512.P13554051590155555019

namespace A175512

/-- `∑{digits}[7^(n+1), #]%(n+1)` -/
def P13554051590155555019.Spec : Prop :=
  ∀ n, (P13554051590155555019.a n : ℤ) = A175512 (n + 1)

end A175512

/-! ## A175512.P3473942250430299764

`(∑{digits}[A024075(n+1), #]+1)%(n+1)`
-/

namespace A175512.P3473942250430299764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024075 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1) % (n + 1)

end

end A175512.P3473942250430299764

namespace A175512

/-- `(∑{digits}[A024075(n+1), #]+1)%(n+1)` -/
def P3473942250430299764.Spec : Prop :=
  ∀ n, (P3473942250430299764.a n : ℤ) = A175512 (n + 1)

end A175512

/-!
# A175514: Numbers k such that the base-2 expansion of k ends with the base-5 expansion of k.

The programs for A175514, there is no canonical definition to state claims against.
-/

/-! ## A175514.P15847309750820657197

`floor(5^n/4)*A063994(∑[6*5^n])`
-/

namespace A175514.P15847309750820657197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * 5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 ^ n : ℚ) / 4⌋ * A063994 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175514.P15847309750820657197

/-!
# A175515: 1,2,3 together with the semiprimes A001358.

The programs for A175515, there is no canonical definition to state claims against.
-/

/-! ## A175515.P1663935478714235283

`eq[(2-n)², (n-2)^∑{e}[n, #]]`
-/

namespace A175515.P1663935478714235283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175515.P1663935478714235283

/-! ## A175515.P12776909487523462419

`eq[(2-n)², ∏{e}[n, (n-2)^#]]`
-/

namespace A175515.P12776909487523462419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((n : ℤ) - 2) ^ Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175515.P12776909487523462419

/-! ## A175515.P4207363150493758858

`A165712(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A175515.P4207363150493758858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  A165712 (a (n - 1)).toNat

end

end A175515.P4207363150493758858

/-! ## A175515.P5665285498773319410

`comp[A100959(n+4)-1]+1`
-/

namespace A175515.P5665285498773319410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 4) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175515.P5665285498773319410

/-! ## A175515.P3227581920662373478

`record[n/a(A001222(n))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A175515.P3227581920662373478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 1, 3] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175515.P3227581920662373478

/-! ## A175515.P2299236972413809148

`A001358(n-a(2%n)+1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A175515.P2299236972413809148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A001358 ((n : ℤ) - a (2 % n) + 1).toNat

end

end A175515.P2299236972413809148

/-! ## A175515.P17200054221917904837

`record[gcd(n+1, xor(4, A001222((n+1)²)))]`
-/

namespace A175515.P17200054221917904837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.xor 4 (A001222 ((n + 1) ^ 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175515.P17200054221917904837

/-! ## A175515.P13090933185395086800

`eq[2, A001222(n+4-3%(n+1))]+1`
-/

namespace A175515.P13090933185395086800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 4 - 3 % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175515.P13090933185395086800

/-! ## A175515.P11486379364973637394

`eq[ceil(3/(n+1)*n/2), A001222(n+1)]+1`
-/

namespace A175515.P11486379364973637394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / (n + 1 : ℚ) * ((n : ℚ) / 2)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175515.P11486379364973637394

/-! ## A175515.P14556492806253381631

`eq[log2(A166974(n)), A185114(n)]`
-/

namespace A175515.P14556492806253381631
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A166974 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A175515.P14556492806253381631

/-!
# A175516: a(n) = smallest positive even integer k such that k or one of its left substrings is divisible by any integer from {1..n}.

The programs for A175516, there is no canonical definition to state claims against.
-/

/-! ## A175516.P17971273331970993166

`lcm(n+1, A137767(A365903(n)))`
-/

namespace A175516.P17971273331970993166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A137767 (A365903 n).toNat)

end

end A175516.P17971273331970993166

/-! ## A175516.P2310815646955773307

`A275735(A091240(n+1)+A023531(n))`
-/

namespace A175516.P2310815646955773307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275735 (A091240 (n + 1) + A023531 n).toNat

end

end A175516.P2310815646955773307

/-! ## A175516.P4333159468084937744

`lcm(A162214(n+1), A364384(A221858(3*(n+1))))`
-/

namespace A175516.P4333159468084937744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A162214 (n + 1)) (A364384 (A221858 (3 * (n + 1))).toNat)

end

end A175516.P4333159468084937744

/-!
# A175517: Smaller members of Ormiston prime pairs with the minimal gap d=18.

The programs for A175517, there is no canonical definition to state claims against.
-/

/-! ## A175517.P786093596987806206

`A163678(comp[(7*n)²])`
-/

namespace A175517.P786093596987806206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163678 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A175517.P786093596987806206

/-! ## A175517.P15154056506873550886

`A163678(n+1)+char[34]`
-/

namespace A175517.P15154056506873550886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163678 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A175517.P15154056506873550886

/-! ## A175517.P18439466902628900390

`record[A163678(gcd(59, n+1)+n)]`
-/

namespace A175517.P18439466902628900390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163678 (Nat.gcd 59 (n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175517.P18439466902628900390

/-! ## A175517.P13326177351060493575

`char[34]+p?[A072274(2*(n+1))-18]`
-/

namespace A175517.P13326177351060493575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072274 (2 * (n + 1)) - 18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A175517.P13326177351060493575

/-! ## A175517.P15773079174098414978

`A178780(n)+A163678(n+1)`
-/

namespace A175517.P15773079174098414978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 n + A163678 (n + 1)

end

end A175517.P15773079174098414978

/-!
# A175518: Numbers k such that 9k+4 are terms in A072841.

The programs for A175518, there is no canonical definition to state claims against.
-/

/-! ## A175518.P3605369882874825971

`(A072841(n+1)-4)/9`
-/

namespace A175518.P3605369882874825971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072841 (n + 1) - 4 : ℚ) / 9

end

end A175518.P3605369882874825971

/-! ## A175518.P7364886320626970301

`floor(A072841(n+1)/9)`
-/

namespace A175518.P7364886320626970301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072841 (n + 1) : ℚ) / 9⌋

end

end A175518.P7364886320626970301

/-! ## A175518.P8961699020763282015

`round(A072841(n+1)/9)%A000045(n+28)`
-/

namespace A175518.P8961699020763282015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A072841 (n + 1) : ℚ) / 9)) (A000045 (n + 28))

end

end A175518.P8961699020763282015

/-! ## A175518.P6361065989239673802

`∑{d}[round(A072841(n+1)/9), A000010(#)]`
-/

namespace A175518.P6361065989239673802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A072841 (n + 1) : ℚ) / 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A175518.P6361065989239673802

/-! ## A175518.P2953704564877002432

`A007318(∑[n])*round(A072841(n+1)/9)`
-/

namespace A175518.P2953704564877002432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A072841 (n + 1) : ℚ) / 9)

end

end A175518.P2953704564877002432

/-!
# A175519: Prime numbers p such that p^2 and (p+1)^2 are anagrams.

The programs for A175519, there is no canonical definition to state claims against.
-/

/-! ## A175519.P8760424670464341446

`p?[A072841(n+1)]`
-/

namespace A175519.P8760424670464341446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175519.P8760424670464341446

/-! ## A175519.P9080667747184322107

`record[p?[A072841(A052938(n))]]`
-/

namespace A175519.P9080667747184322107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072841 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175519.P9080667747184322107

/-! ## A175519.P7646654442859827410

`p?[record[A072841(A133310(n))]]`
-/

namespace A175519.P7646654442859827410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072841 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175519.P7646654442859827410

/-! ## A175519.P17222852715154066950

`p?[record[A072841(A324344(n))]]`
-/

namespace A175519.P17222852715154066950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072841 (A324344 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175519.P17222852715154066950

/-!
# A175520: Number of distinct transpositions of digits (zeros and units) in n-th semiprime written in base 2.

The programs for A175520, there is no canonical definition to state claims against.
-/

/-! ## A175520.P6840422163673527411

`A178244(A001358(n+1))`
-/

namespace A175520.P6840422163673527411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 (A001358 (n + 1)).toNat

end

end A175520.P6840422163673527411

/-! ## A175520.P16287290575021397410

`A178244(A176540(n+2))`
-/

namespace A175520.P16287290575021397410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 (A176540 (n + 2)).toNat

end

end A175520.P16287290575021397410

/-! ## A175520.P7843003242331093100

`A090706(A075818(n+1)+1)`
-/

namespace A175520.P7843003242331093100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (A075818 (n + 1) + 1).toNat

end

end A175520.P7843003242331093100

/-! ## A175520.P18419896213171246670

`A090706(2*A001358(n+1)+1)`
-/

namespace A175520.P18419896213171246670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (2 * A001358 (n + 1) + 1).toNat

end

end A175520.P18419896213171246670

/-! ## A175520.P6290496753613170046

`A001358(n+1)-A178043(n+1)`
-/

namespace A175520.P6290496753613170046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - A178043 (n + 1)

end

end A175520.P6290496753613170046

/-! ## A175520.P3738213928300161358

`eq[2, A105700(n)]-A178043(n+1)`
-/

namespace A175520.P3738213928300161358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A178043 (n + 1)

end

end A175520.P3738213928300161358

/-! ## A175520.P17168685457955517844

`sqrt(A074985(n+1))-A178043(n+1)`
-/

namespace A175520.P17168685457955517844
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (n + 1) : ℝ) - (A178043 (n + 1) : ℝ)

end

end A175520.P17168685457955517844

/-! ## A175520.P10997480720975715486

`A075818(n+1)/2-A178043(n+1)`
-/

namespace A175520.P10997480720975715486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 1) : ℚ) / 2 - (A178043 (n + 1) : ℚ)

end

end A175520.P10997480720975715486

/-! ## A175520.P17545940071537340486

`eq[2, A001222(n+1)]+1-A178043(n+1)`
-/

namespace A175520.P17545940071537340486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A178043 (n + 1)

end

end A175520.P17545940071537340486

/-! ## A175520.P4242579938297015713

`A004526(A075818(n+1))-A178043(n+1)`
-/

namespace A175520.P4242579938297015713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A075818 (n + 1)).toNat - A178043 (n + 1)

end

end A175520.P4242579938297015713

/-!
# A175521: Nonprimes k such that 9*k divides 2^(k-1) - 1.

The programs for A175521, there is no canonical definition to state claims against.
-/

/-! ## A175521.P7421125330421700116

`abs(record[A128213(A001567(n+2))])`
-/

namespace A175521.P7421125330421700116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128213 (A001567 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A175521.P7421125330421700116

/-! ## A175521.P15026444647911726548

`record[A128213(A001567(n+1)+1)]`
-/

namespace A175521.P15026444647911726548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128213 (A001567 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175521.P15026444647911726548

/-! ## A175521.P11896342268064812669

`record[A019426(A008620(A001567(n+1)))]`
-/

namespace A175521.P11896342268064812669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A008620 (A001567 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175521.P11896342268064812669

/-!
# A175522: A000120-perfect numbers.

The programs for A175522, the canonical program `A175522.P8282898112769869061` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175522 has offset 1).

The definition of A175522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175522.P8282898112769869061

`eq[0, A192895(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A175522

/-- `eq[0, A192895(n+1)]+1` -/
def P8282898112769869061.Spec : Prop :=
  ∀ n, (P8282898112769869061.a n : ℤ) = A175522 (n + 1)

theorem P8282898112769869061.correct : P8282898112769869061.Spec := by
  intro n
  simp only [A175522, Nat.add_sub_cancel]

end A175522

/-! ## A175522.P1297279790343478961

`eq[0, A192895(A028310(n))]`
-/

namespace A175522.P1297279790343478961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175522.P1297279790343478961

namespace A175522

/-- `eq[0, A192895(A028310(n))]` -/
def P1297279790343478961.Spec : Prop :=
  ∀ n, (P1297279790343478961.a n : ℤ) = A175522 (n + 1)

end A175522

/-! ## A175522.P2946814684426907294

`A020725(eq[0, A192895(n+1)])`
-/

namespace A175522.P2946814684426907294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175522.P2946814684426907294

namespace A175522

/-- `A020725(eq[0, A192895(n+1)])` -/
def P2946814684426907294.Spec : Prop :=
  ∀ n, P2946814684426907294.a n = A175522 (n + 1)

end A175522

/-! ## A175522.P3157490392712720450

`A113636(eq[0, A192895(n+1)])`
-/

namespace A175522.P3157490392712720450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175522.P3157490392712720450

namespace A175522

/-- `A113636(eq[0, A192895(n+1)])` -/
def P3157490392712720450.Spec : Prop :=
  ∀ n, P3157490392712720450.a n = A175522 (n + 1)

end A175522

/-! ## A175522.P514986517052723491

`A141310(eq[0, A192895(n+1)])`
-/

namespace A175522.P514986517052723491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175522.P514986517052723491

namespace A175522

/-- `A141310(eq[0, A192895(n+1)])` -/
def P514986517052723491.Spec : Prop :=
  ∀ n, P514986517052723491.a n = A175522 (n + 1)

end A175522

/-!
# A175523: a(n)=a(n-1)+ p, where p is the least prime whose first digit equals the first digit of a(n-1) and p>=a(n-1).

The programs for A175523, there is no canonical definition to state claims against.
-/

/-! ## A175523.P4271304720850855550

`∑[p?[A335372(3*n)]]-2`
-/

namespace A175523.P4271304720850855550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335372 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A175523.P4271304720850855550

/-!
# A175524: A000120-deficient numbers.

The programs for A175524, the canonical program `A175524.P5660943286196365058` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175524 has offset 1).

The definition of A175524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175524.P5660943286196365058

`lt[A192895(n+1), 0]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A175524

/-- `lt[A192895(n+1), 0]+1` -/
def P5660943286196365058.Spec : Prop :=
  ∀ n, (P5660943286196365058.a n : ℤ) = A175524 (n + 1)

theorem P5660943286196365058.correct : P5660943286196365058.Spec := by
  intro n
  simp only [A175524, Nat.add_sub_cancel]

end A175524

/-! ## A175524.P13436628579257327170

`lt[A292257(n+1), A000120(n+1)]+1`
-/

namespace A175524.P13436628579257327170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A175524.P13436628579257327170

namespace A175524

/-- `lt[A292257(n+1), A000120(n+1)]+1` -/
def P13436628579257327170.Spec : Prop :=
  ∀ n, (P13436628579257327170.a n : ℤ) = A175524 (n + 1)

end A175524

/-! ## A175524.P1742272295620773789

`lt[A292257(A028310(n)), A000120(n)]`
-/

namespace A175524.P1742272295620773789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175524.P1742272295620773789

namespace A175524

/-- `lt[A292257(A028310(n)), A000120(n)]` -/
def P1742272295620773789.Spec : Prop :=
  ∀ n, (P1742272295620773789.a n : ℤ) = A175524 (n + 1)

end A175524

/-! ## A175524.P3841963494567552853

`lt[A292257(A257088(n)), A000120(n)]`
-/

namespace A175524.P3841963494567552853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175524.P3841963494567552853

namespace A175524

/-- `lt[A292257(A257088(n)), A000120(n)]` -/
def P3841963494567552853.Spec : Prop :=
  ∀ n, (P3841963494567552853.a n : ℤ) = A175524 (n + 1)

end A175524

/-! ## A175524.P12772997311775141324

`lt[A292257(A028310(n)), 2*n-A005187(n)]`
-/

namespace A175524.P12772997311775141324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175524.P12772997311775141324

namespace A175524

/-- `lt[A292257(A028310(n)), 2*n-A005187(n)]` -/
def P12772997311775141324.Spec : Prop :=
  ∀ n, (P12772997311775141324.a n : ℤ) = A175524 (n + 1)

end A175524

/-! ## A175524.P756533096053045535

`eq[2, A105222(A127812(n))]`
-/

namespace A175524.P756533096053045535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (A127812 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175524.P756533096053045535

namespace A175524

/-- `eq[2, A105222(A127812(n))]` -/
def P756533096053045535.Spec : Prop :=
  ∀ n, (P756533096053045535.a n : ℤ) = A175524 (n + 1)

end A175524

/-! ## A175524.P5803164452716184527

`eq[A029578(A104725(n)), A262693(n)]`
-/

namespace A175524.P5803164452716184527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A104725 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175524.P5803164452716184527

namespace A175524

/-- `eq[A029578(A104725(n)), A262693(n)]` -/
def P5803164452716184527.Spec : Prop :=
  ∀ n, (P5803164452716184527.a n : ℤ) = A175524 (n + 1)

end A175524

/-! ## A175524.P2456652888798012804

`record[A345941(A007947(n+1)*A061345(n))]`
-/

namespace A175524.P2456652888798012804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (A007947 (n + 1) * A061345 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175524.P2456652888798012804

namespace A175524

/-- `record[A345941(A007947(n+1)*A061345(n))]` -/
def P2456652888798012804.Spec : Prop :=
  ∀ n, P2456652888798012804.a n = A175524 (n + 1)

end A175524

/-! ## A175524.P15313378943041094238

`record[A345941(A061345(n)*A072593(n+1))]`
-/

namespace A175524.P15313378943041094238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (A061345 n * A072593 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175524.P15313378943041094238

namespace A175524

/-- `record[A345941(A061345(n)*A072593(n+1))]` -/
def P15313378943041094238.Spec : Prop :=
  ∀ n, P15313378943041094238.a n = A175524 (n + 1)

end A175524

/-! ## A175524.P9077697015712509521

`record[A345941(A061345(n)*A345941(n+1))]`
-/

namespace A175524.P9077697015712509521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (A061345 n * A345941 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175524.P9077697015712509521

namespace A175524

/-- `record[A345941(A061345(n)*A345941(n+1))]` -/
def P9077697015712509521.Spec : Prop :=
  ∀ n, P9077697015712509521.a n = A175524 (n + 1)

end A175524

/-!
# A175525: Numbers k that divide the sum of digits of 13^k.

The programs for A175525, there is no canonical definition to state claims against.
-/

/-! ## A175525.P7901106739956088418

`eq[n, gcd(n, A175527(n))]`
-/

namespace A175525.P7901106739956088418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A175527 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175525.P7901106739956088418

/-! ## A175525.P15585254463278928402

`eq[0, A175528(n+1)]+1`
-/

namespace A175525.P15585254463278928402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175525.P15585254463278928402

/-! ## A175525.P18396774599507033437

`A004482(eq[0, A175528(n+1)])`
-/

namespace A175525.P18396774599507033437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175525.P18396774599507033437

/-! ## A175525.P17756995573602249388

`eq[A000007(n), A175528(A028310(n))]`
-/

namespace A175525.P17756995573602249388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175528 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175525.P17756995573602249388

/-! ## A175525.P11425186921684579135

`eq[A000038(n), A175528(A028310(n))]`
-/

namespace A175525.P11425186921684579135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175528 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175525.P11425186921684579135

/-!
# A175526: A000120-abundant numbers.

The programs for A175526, there is no canonical definition to state claims against.
-/

/-! ## A175526.P2351736595930020259

`eq[0, A294905(n+1)]+1`
-/

namespace A175526.P2351736595930020259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175526.P2351736595930020259

/-! ## A175526.P1536599028159009242

`comp[A257691(n+1)-1]+1`
-/

namespace A175526.P1536599028159009242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257691 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175526.P1536599028159009242

/-! ## A175526.P13559784929289404906

`a(n-1)+A294905(a(n-1)+1)+1` with `a(0)=4`
-/

namespace A175526.P13559784929289404906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (A294905 (a (n - 1) + 1).toNat + 1)

end

end A175526.P13559784929289404906

/-! ## A175526.P12341387952760367487

`eq[A294901(n+1), A294903(n+1)]+1`
-/

namespace A175526.P12341387952760367487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175526.P12341387952760367487

/-! ## A175526.P18372725695029946465

`lt[A294903(n+1), A000005(n+1)]+1`
-/

namespace A175526.P18372725695029946465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A175526.P18372725695029946465

/-! ## A175526.P1342980767022186824

`record[A294905(A262672(n))+A262672(n)]`
-/

namespace A175526.P1342980767022186824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294905 (A262672 n).toNat + A262672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175526.P1342980767022186824

/-! ## A175526.P14235466138003633920

`eq[0, A294905(A233583(n+1))]`
-/

namespace A175526.P14235466138003633920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294905 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175526.P14235466138003633920

/-! ## A175526.P3027407770170788662

`lt[A326840(n+1), A072721(n)²]`
-/

namespace A175526.P3027407770170788662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175526.P3027407770170788662

/-!
# A175527: Digit sum of 13^n.

The programs for A175527, there is no canonical definition to state claims against.
-/

/-! ## A175527.P11243563507872204872

`∑{digits}[13^n, #]`
-/

namespace A175527.P11243563507872204872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A175527.P11243563507872204872

/-! ## A175527.P15500685221416546056

`or(char[3], ∑{digits}[A001022(n), #])`
-/

namespace A175527.P15500685221416546056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

end

end A175527.P15500685221416546056

/-! ## A175527.P15224014780218929374

`A000027(∑{digits}[A001022(n), #])`
-/

namespace A175527.P15224014780218929374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A175527.P15224014780218929374

/-! ## A175527.P18263104262902965116

`A065033(2*∑{digits}[A001022(n), #])`
-/

namespace A175527.P18263104262902965116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A175527.P18263104262902965116

/-! ## A175527.P8027003860944849505

`char[A014682(n)]*∑{digits}[A001022(n), #]`
-/

namespace A175527.P8027003860944849505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) * ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

end

end A175527.P8027003860944849505

/-! ## A175527.P17908146195171977692

`∑{digits}[A001022(n), #]*A057427(n+1)`
-/

namespace A175527.P17908146195171977692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * A057427 (n + 1)

end

end A175527.P17908146195171977692

/-! ## A175527.P5978103235778103027

`A000035(2*n)+∑{digits}[A001022(n), #]`
-/

namespace A175527.P5978103235778103027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A175527.P5978103235778103027

/-! ## A175527.P13631849936174315388

`A014893(or(1, n))+∑{digits}[A001022(n), #]`
-/

namespace A175527.P13631849936174315388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014893 (Nat.lor 1 n) + ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A175527.P13631849936174315388

/-! ## A175527.P8752878614632823761

`∑{digits}[A001022(n), #]*A000035(or(1, n))`
-/

namespace A175527.P8752878614632823761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * A000035 (Nat.lor 1 n)

end

end A175527.P8752878614632823761

/-!
# A175528: (Digit sum of 13^n) mod n.

The programs for A175528, there is no canonical definition to state claims against.
-/

/-! ## A175528.P5150499190962755268

`A175527(n+1)%(n+1)`
-/

namespace A175528.P5150499190962755268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175527 (n + 1)) (n + 1 : ℤ)

end

end A175528.P5150499190962755268

/-! ## A175528.P16782252552049561015

`∑{digits}[13^(n+1), #]%(n+1)`
-/

namespace A175528.P16782252552049561015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum % (n + 1)

end

end A175528.P16782252552049561015

/-! ## A175528.P11365734518044358009

`A000027(∑{digits}[13*a(n-1), #])%(n+1)` with `a(0)=13`
-/

namespace A175528.P11365734518044358009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13] fun n f1 =>
  13 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum) (n + 1 : ℤ)

end

end A175528.P11365734518044358009

/-!
# A175529: a(n) = a(n-1) + s, where s is the least square >= a(n-1) and the first digit of s equals the first digit of a(n-1). a(0)=1.

The programs for A175529, there is no canonical definition to state claims against.
-/

/-! ## A175529.P7719170605147105965

`∑[A098287(A041471(n))²]`
-/

namespace A175529.P7719170605147105965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098287 (A041471 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175529.P7719170605147105965

/-!
# A175532: a(1) = 1; a(2) = 9; for n>2, a(n) = smallest number of the form 4k+1 and a(n) > a(n-1) such that the pairwise sums of elements are all semiprimes.

The programs for A175532, there is no canonical definition to state claims against.
-/

/-! ## A175532.P14374954370800345317

`A323106(A261208(n+1))`
-/

namespace A175532.P14374954370800345317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323106 (A261208 (n + 1)).toNat

end

end A175532.P14374954370800345317

/-!
# A175539: a(1)=1, then a(n) = smallest number whose square is larger than 2*(a(n-1))^2.

The programs for A175539, the canonical program `A175539.P2254493124592026053` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175539 has offset 1).

The definition of A175539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175539.P2254493124592026053

`ceil(sqrt(2)*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175539

/-- `ceil(sqrt(2)*a(n-1))` -/
def P2254493124592026053.Spec : Prop :=
  ∀ n, P2254493124592026053.a n = A175539 (n + 1)

theorem P2254493124592026053.correct : P2254493124592026053.Spec := by
  intro n
  simp only [A175539, Nat.add_sub_cancel]

end A175539

/-! ## A175539.P8381661047351385316

`floor(sqrt(2)*a(n-1))+1` with `a(0)=1`
-/

namespace A175539.P8381661047351385316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.sqrt (2 : ℝ) * (a (n - 1) : ℝ)⌋ + 1

end

end A175539.P8381661047351385316

namespace A175539

/-- `floor(sqrt(2)*a(n-1))+1` -/
def P8381661047351385316.Spec : Prop :=
  ∀ n, P8381661047351385316.a n = A175539 (n + 1)

end A175539

/-! ## A175539.P14368394918688062410

`ceil(a(n-1)/sqrt(1/2))` with `a(0)=1`
-/

namespace A175539.P14368394918688062410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) / Real.sqrt ((1 : ℚ) / 2 : ℝ)⌉

end

end A175539.P14368394918688062410

namespace A175539

/-- `ceil(a(n-1)/sqrt(1/2))` -/
def P14368394918688062410.Spec : Prop :=
  ∀ n, P14368394918688062410.a n = A175539 (n + 1)

end A175539

/-! ## A175539.P14929829941047176632

`-floor(-(sqrt(2)*a(n-1)))` with `a(0)=1`
-/

namespace A175539.P14929829941047176632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -⌊-(Real.sqrt (2 : ℝ) * (a (n - 1) : ℝ))⌋

end

end A175539.P14929829941047176632

namespace A175539

/-- `-floor(-(sqrt(2)*a(n-1)))` -/
def P14929829941047176632.Spec : Prop :=
  ∀ n, P14929829941047176632.a n = A175539 (n + 1)

end A175539

/-! ## A175539.P14818318372468022040

`sqrt(A175627(n+1))`
-/

namespace A175539.P14818318372468022040
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A175627 (n + 1) : ℝ)

end

end A175539.P14818318372468022040

namespace A175539

/-- `sqrt(A175627(n+1))` -/
def P14818318372468022040.Spec : Prop :=
  ∀ n, P14818318372468022040.a n = (A175539 (n + 1) : ℝ)

end A175539

/-!
# A175540: a(n) = A067076(n) + n.

The programs for A175540, the canonical program `A175540.P17413733986559148913` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175540 has offset 1).

The definition of A175540 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067076, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175540.P17413733986559148913

`A067076(n+1)+n+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A175540

/-- `A067076(n+1)+n+1` -/
def P17413733986559148913.Spec : Prop :=
  ∀ n, P17413733986559148913.a n = A175540 (n + 1)

theorem P17413733986559148913.correct : P17413733986559148913.Spec := by
  intro n
  simp only [A175540, Nat.add_sub_cancel]

end A175540

/-! ## A175540.P1209646624977322799

`(p?[2*n+1]-1)/2+n`
-/

namespace A175540.P1209646624977322799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ) / 2 + (n : ℚ)

end

end A175540.P1209646624977322799

namespace A175540

/-- `(p?[2*n+1]-1)/2+n` -/
def P1209646624977322799.Spec : Prop :=
  ∀ n, P1209646624977322799.a n = (A175540 (n + 1) : ℚ)

end A175540

/-! ## A175540.P2133438178081221409

`A163057(n+1)-1`
-/

namespace A175540.P2133438178081221409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1) - 1

end

end A175540.P2133438178081221409

namespace A175540

/-- `A163057(n+1)-1` -/
def P2133438178081221409.Spec : Prop :=
  ∀ n, P2133438178081221409.a n = A175540 (n + 1)

end A175540

/-! ## A175540.P16426317476592979057

`A005097(n+1)+n`
-/

namespace A175540.P16426317476592979057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + (n : ℤ)

end

end A175540.P16426317476592979057

namespace A175540

/-- `A005097(n+1)+n` -/
def P16426317476592979057.Spec : Prop :=
  ∀ n, P16426317476592979057.a n = A175540 (n + 1)

end A175540

/-! ## A175540.P2530921392494487373

`A006254(n+1)-1+n`
-/

namespace A175540.P2530921392494487373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) - 1 + (n : ℤ)

end

end A175540.P2530921392494487373

namespace A175540

/-- `A006254(n+1)-1+n` -/
def P2530921392494487373.Spec : Prop :=
  ∀ n, P2530921392494487373.a n = A175540 (n + 1)

end A175540

/-! ## A175540.P1874251543511824705

`A098090(n+1)-2+n`
-/

namespace A175540.P1874251543511824705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - 2 + (n : ℤ)

end

end A175540.P1874251543511824705

namespace A175540

/-- `A098090(n+1)-2+n` -/
def P1874251543511824705.Spec : Prop :=
  ∀ n, P1874251543511824705.a n = A175540 (n + 1)

end A175540

/-! ## A175540.P4063277123958969160

`A089253(n+1)-3+n`
-/

namespace A175540.P4063277123958969160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) - 3 + (n : ℤ)

end

end A175540.P4063277123958969160

namespace A175540

/-- `A089253(n+1)-3+n` -/
def P4063277123958969160.Spec : Prop :=
  ∀ n, P4063277123958969160.a n = A175540 (n + 1)

end A175540

/-! ## A175540.P2715650314727783957

`A089192(n+1)-4+n`
-/

namespace A175540.P2715650314727783957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) - 4 + (n : ℤ)

end

end A175540.P2715650314727783957

namespace A175540

/-- `A089192(n+1)-4+n` -/
def P2715650314727783957.Spec : Prop :=
  ∀ n, P2715650314727783957.a n = A175540 (n + 1)

end A175540

/-! ## A175540.P10169764133557483941

`A097069(n+1)-5+n`
-/

namespace A175540.P10169764133557483941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) - 5 + (n : ℤ)

end

end A175540.P10169764133557483941

namespace A175540

/-- `A097069(n+1)-5+n` -/
def P10169764133557483941.Spec : Prop :=
  ∀ n, P10169764133557483941.a n = A175540 (n + 1)

end A175540

/-! ## A175540.P7800385714609897492

`A179893(n+2)/3+n`
-/

namespace A175540.P7800385714609897492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179893 (n + 2) : ℚ) / 3 + (n : ℚ)

end

end A175540.P7800385714609897492

namespace A175540

/-- `A179893(n+2)/3+n` -/
def P7800385714609897492.Spec : Prop :=
  ∀ n, P7800385714609897492.a n = (A175540 (n + 1) : ℚ)

end A175540

/-! ## A175540.P2902512319003931853

`A008507(n+1)+Δ[n²]`
-/

namespace A175540.P2902512319003931853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A175540.P2902512319003931853

namespace A175540

/-- `A008507(n+1)+Δ[n²]` -/
def P2902512319003931853.Spec : Prop :=
  ∀ n, P2902512319003931853.a n = A175540 (n + 1)

end A175540

/-! ## A175540.P9915736784625101915

`A154115(n+1)/2+n+1`
-/

namespace A175540.P9915736784625101915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154115 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A175540.P9915736784625101915

namespace A175540

/-- `A154115(n+1)/2+n+1` -/
def P9915736784625101915.Spec : Prop :=
  ∀ n, P9915736784625101915.a n = (A175540 (n + 1) : ℚ)

end A175540

/-! ## A175540.P4545820876315863941

`A023443(n)+A006254(n+1)`
-/

namespace A175540.P4545820876315863941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + A006254 (n + 1)

end

end A175540.P4545820876315863941

namespace A175540

/-- `A023443(n)+A006254(n+1)` -/
def P4545820876315863941.Spec : Prop :=
  ∀ n, P4545820876315863941.a n = A175540 (n + 1)

end A175540

/-! ## A175540.P2836127349345272136

`A089192(n+1)+A023446(n)`
-/

namespace A175540.P2836127349345272136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) + A023446 n

end

end A175540.P2836127349345272136

namespace A175540

/-- `A089192(n+1)+A023446(n)` -/
def P2836127349345272136.Spec : Prop :=
  ∀ n, P2836127349345272136.a n = A175540 (n + 1)

end A175540

/-! ## A175540.P1089013893056744214

`A089253(n+1)+A023445(n)`
-/

namespace A175540.P1089013893056744214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + A023445 n

end

end A175540.P1089013893056744214

namespace A175540

/-- `A089253(n+1)+A023445(n)` -/
def P1089013893056744214.Spec : Prop :=
  ∀ n, P1089013893056744214.a n = A175540 (n + 1)

end A175540

/-! ## A175540.P3575596324793700903

`A097069(n+1)+A023447(n)`
-/

namespace A175540.P3575596324793700903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) + A023447 n

end

end A175540.P3575596324793700903

namespace A175540

/-- `A097069(n+1)+A023447(n)` -/
def P3575596324793700903.Spec : Prop :=
  ∀ n, P3575596324793700903.a n = A175540 (n + 1)

end A175540

/-! ## A175540.P4455891496964205784

`A097338(n+1)+A023448(n)`
-/

namespace A175540.P4455891496964205784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) + A023448 n

end

end A175540.P4455891496964205784

namespace A175540

/-- `A097338(n+1)+A023448(n)` -/
def P4455891496964205784.Spec : Prop :=
  ∀ n, P4455891496964205784.a n = A175540 (n + 1)

end A175540

/-! ## A175540.P8811126978368900861

`A097363(n+1)+A023449(n)`
-/

namespace A175540.P8811126978368900861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) + A023449 n

end

end A175540.P8811126978368900861

namespace A175540

/-- `A097363(n+1)+A023449(n)` -/
def P8811126978368900861.Spec : Prop :=
  ∀ n, P8811126978368900861.a n = A175540 (n + 1)

end A175540

/-! ## A175540.P53452140811692288

`A097480(n+1)+A023450(n)`
-/

namespace A175540.P53452140811692288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) + A023450 n

end

end A175540.P53452140811692288

namespace A175540

/-- `A097480(n+1)+A023450(n)` -/
def P53452140811692288.Spec : Prop :=
  ∀ n, P53452140811692288.a n = A175540 (n + 1)

end A175540

/-!
# A175541: A007505 in binary.

The programs for A175541, there is no canonical definition to state claims against.
-/

/-! ## A175541.P14391195957123654893

`A267623(A002235(n+1)+1)`
-/

namespace A175541.P14391195957123654893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267623 (A002235 (n + 1) + 1).toNat

end

end A175541.P14391195957123654893

/-! ## A175541.P4407792507619447873

`A267623(floor(log2(A007505(n+1))))`
-/

namespace A175541.P4407792507619447873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267623 (Nat.log 2 (A007505 (n + 1)).toNat)

end

end A175541.P4407792507619447873

/-! ## A175541.P14640802435953821543

`A007088(p?[3*2^n-1])`
-/

namespace A175541.P14640802435953821543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A175541.P14640802435953821543

/-! ## A175541.P2886932914498713845

`A007088(A007505(n+1))`
-/

namespace A175541.P2886932914498713845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A007505 (n + 1)).toNat

end

end A175541.P2886932914498713845

/-!
# A175542: Smallest integer t such that 1 + binomial(n,1) + binomial(n,2) + ... + binomial(n,t) is a power of 2.

The programs for A175542, there is no canonical definition to state claims against.
-/

/-! ## A175542.P17643631580699136481

`A000005(A043529(n+1)^A225058(2*n))`
-/

namespace A175542.P17643631580699136481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A043529 (n + 1) : ℚ) ^ (A225058 (2 * n) : ℤ))).toNat

end

end A175542.P17643631580699136481

/-! ## A175542.P7365814799966700646

`A088388(A051437(n+1))`
-/

namespace A175542.P7365814799966700646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (A051437 (n + 1)).toNat

end

end A175542.P7365814799966700646

/-! ## A175542.P8432017851037461305

`A088388(Δ[A005418(n+3)])`
-/

namespace A175542.P8432017851037461305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (f1 (n + 1) - f1 n).toNat

end

end A175542.P8432017851037461305

/-! ## A175542.P479430524703979137

`ratio[a(n-1)*A088388(A051437(n))]` with `a(0)=1`
-/

namespace A175542.P479430524703979137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A088388 (A051437 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A175542.P479430524703979137

/-! ## A175542.P12859387949382177144

`A088388(ratio[A051437(n)]*A051437(n))`
-/

namespace A175542.P12859387949382177144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A051437 n : ℚ))).toNat

end

end A175542.P12859387949382177144

/-!
# A175543: Nonnegative integers that, when written in binary, are palindromes with a middle run of 0's.

The programs for A175543, the canonical program `A175543.P16940315139074741168` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175543 has offset 1).

The definition of A175543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175543.P16940315139074741168

`A006995(record[2-xor(1, -n)])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A175543

/-- `A006995(record[2-xor(1, -n)])` -/
def P16940315139074741168.Spec : Prop :=
  ∀ n, P16940315139074741168.a n = A175543 (n + 1)

theorem P16940315139074741168.correct : P16940315139074741168.Spec := by
  intro n
  simp only [A175543, Nat.add_sub_cancel]

end A175543

/-! ## A175543.P3423975617726391001

`A006995(record[abs(xor(n+1, -2))])`
-/

namespace A175543.P3423975617726391001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n + 1 : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175543.P3423975617726391001

namespace A175543

/-- `A006995(record[abs(xor(n+1, -2))])` -/
def P3423975617726391001.Spec : Prop :=
  ∀ n, P3423975617726391001.a n = A175543 (n + 1)

end A175543

/-! ## A175543.P15495961858718514709

`record[A006995(xor(1, n+1)+1)]`
-/

namespace A175543.P15495961858718514709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (Nat.xor 1 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175543.P15495961858718514709

namespace A175543

/-- `record[A006995(xor(1, n+1)+1)]` -/
def P15495961858718514709.Spec : Prop :=
  ∀ n, P15495961858718514709.a n = A175543 (n + 1)

end A175543

/-! ## A175543.P8372164005038586945

`record[n%2*A006995(n+3)]`
-/

namespace A175543.P8372164005038586945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A006995 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175543.P8372164005038586945

namespace A175543

/-- `record[n%2*A006995(n+3)]` -/
def P8372164005038586945.Spec : Prop :=
  ∀ n, P8372164005038586945.a n = A175543 (n + 1)

end A175543

/-! ## A175543.P13080138165815305366

`A006995((n+1)*ceil(cosh(sin(n))))`
-/

namespace A175543.P13080138165815305366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 ((n + 1 : ℤ) * ⌈Real.cosh (Real.sin (n : ℝ))⌉).toNat

end

end A175543.P13080138165815305366

namespace A175543

/-- `A006995((n+1)*ceil(cosh(sin(n))))` -/
def P13080138165815305366.Spec : Prop :=
  ∀ n, P13080138165815305366.a n = A175543 (n + 1)

end A175543

/-! ## A175543.P16571402860739670096

`A006995(Δ[n²]+ceil(sin(n)²))`
-/

namespace A175543.P16571402860739670096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A175543.P16571402860739670096

namespace A175543

/-- `A006995(Δ[n²]+ceil(sin(n)²))` -/
def P16571402860739670096.Spec : Prop :=
  ∀ n, P16571402860739670096.a n = A175543 (n + 1)

end A175543

/-! ## A175543.P10046592499378501487

`A006995(2*(n+1)-floor(acot(n)))`
-/

namespace A175543.P10046592499378501487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 ((2 * (n + 1) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A175543.P10046592499378501487

namespace A175543

/-- `A006995(2*(n+1)-floor(acot(n)))` -/
def P10046592499378501487.Spec : Prop :=
  ∀ n, P10046592499378501487.a n = A175543 (n + 1)

end A175543

/-! ## A175543.P8199555972286797632

`A006995(2*(n+1)/ceil(acot(n)))`
-/

namespace A175543.P8199555972286797632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ))).toNat

end

end A175543.P8199555972286797632

namespace A175543

/-- `A006995(2*(n+1)/ceil(acot(n)))` -/
def P8199555972286797632.Spec : Prop :=
  ∀ n, P8199555972286797632.a n = A175543 (n + 1)

end A175543

/-! ## A175543.P11339174355242540694

`A006995(2*n+3-ceil(acot(n)))`
-/

namespace A175543.P11339174355242540694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 ((2 * n + 3 : ℤ) - ⌈SequenceMachineLib.acot (n : ℝ)⌉).toNat

end

end A175543.P11339174355242540694

namespace A175543

/-- `A006995(2*n+3-ceil(acot(n)))` -/
def P11339174355242540694.Spec : Prop :=
  ∀ n, P11339174355242540694.a n = A175543 (n + 1)

end A175543

/-! ## A175543.P5107972691372243249

`A006995(xor(2*n+3, ceil(acot(n))))`
-/

namespace A175543.P5107972691372243249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (Int.xor (2 * n + 3 : ℤ) ⌈SequenceMachineLib.acot (n : ℝ)⌉).toNat

end

end A175543.P5107972691372243249

namespace A175543

/-- `A006995(xor(2*n+3, ceil(acot(n))))` -/
def P5107972691372243249.Spec : Prop :=
  ∀ n, P5107972691372243249.a n = A175543 (n + 1)

end A175543

/-! ## A175543.P11923940213035099760

`A006995(A103517(n))`
-/

namespace A175543.P11923940213035099760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A103517 n).toNat

end

end A175543.P11923940213035099760

namespace A175543

/-- `A006995(A103517(n))` -/
def P11923940213035099760.Spec : Prop :=
  ∀ n, P11923940213035099760.a n = A175543 (n + 1)

end A175543

/-! ## A175543.P8634750250624265643

`A006995(2*(n+1))-A000007(n)`
-/

namespace A175543.P8634750250624265643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (2 * (n + 1)) - A000007 n

end

end A175543.P8634750250624265643

namespace A175543

/-- `A006995(2*(n+1))-A000007(n)` -/
def P8634750250624265643.Spec : Prop :=
  ∀ n, P8634750250624265643.a n = A175543 (n + 1)

end A175543

/-! ## A175543.P5699329926480337424

`A006995(2*(n+1))-A063524(n+1)`
-/

namespace A175543.P5699329926480337424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (2 * (n + 1)) - A063524 (n + 1)

end

end A175543.P5699329926480337424

namespace A175543

/-- `A006995(2*(n+1))-A063524(n+1)` -/
def P5699329926480337424.Spec : Prop :=
  ∀ n, P5699329926480337424.a n = A175543 (n + 1)

end A175543

/-! ## A175543.P15250895616835004434

`A006995(A178226(2*n)+2*n+1)`
-/

namespace A175543.P15250895616835004434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A178226 (2 * n) + (2 * n + 1 : ℤ)).toNat

end

end A175543.P15250895616835004434

namespace A175543

/-- `A006995(A178226(2*n)+2*n+1)` -/
def P15250895616835004434.Spec : Prop :=
  ∀ n, P15250895616835004434.a n = A175543 (n + 1)

end A175543

/-! ## A175543.P9296155559625623012

`A006995(2*(n+1))-A099894(2*n)`
-/

namespace A175543.P9296155559625623012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (2 * (n + 1)) - A099894 (2 * n)

end

end A175543.P9296155559625623012

namespace A175543

/-- `A006995(2*(n+1))-A099894(2*n)` -/
def P9296155559625623012.Spec : Prop :=
  ∀ n, P9296155559625623012.a n = A175543 (n + 1)

end A175543

/-! ## A175543.P15783744760942826841

`A006995(2*(n+1))-A178225(2*n)`
-/

namespace A175543.P15783744760942826841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (2 * (n + 1)) - A178225 (2 * n)

end

end A175543.P15783744760942826841

namespace A175543

/-- `A006995(2*(n+1))-A178225(2*n)` -/
def P15783744760942826841.Spec : Prop :=
  ∀ n, P15783744760942826841.a n = A175543 (n + 1)

end A175543

/-! ## A175543.P5726917709637519469

`A006995((n+1)*A261679(A006995(n+1)))`
-/

namespace A175543.P5726917709637519469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 ((n + 1 : ℤ) * A261679 (A006995 (n + 1)).toNat).toNat

end

end A175543.P5726917709637519469

namespace A175543

/-- `A006995((n+1)*A261679(A006995(n+1)))` -/
def P5726917709637519469.Spec : Prop :=
  ∀ n, P5726917709637519469.a n = A175543 (n + 1)

end A175543

/-! ## A175543.P4278305925870070987

`∩[A006995(n+1), A268412(n)]`
-/

namespace A175543.P4278305925870070987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175543.P4278305925870070987

namespace A175543

/-- `∩[A006995(n+1), A268412(n)]` -/
def P4278305925870070987.Spec : Prop :=
  ∀ n, (P4278305925870070987.a n : ℤ) = A175543 (n + 1)

end A175543

/-! ## A175543.P10466453010239270579

`A175298(A006995(2*(n+1))-1)`
-/

namespace A175543.P10466453010239270579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (A006995 (2 * (n + 1)) - 1).toNat

end

end A175543.P10466453010239270579

namespace A175543

/-- `A175298(A006995(2*(n+1))-1)` -/
def P10466453010239270579.Spec : Prop :=
  ∀ n, P10466453010239270579.a n = A175543 (n + 1)

end A175543

/-! ## A175543.P5659726931752930330

`A000035(A006995(2*n+1))*A006995(2*(n+1))`
-/

namespace A175543.P5659726931752930330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A006995 (2 * n + 1)).toNat * A006995 (2 * (n + 1))

end

end A175543.P5659726931752930330

namespace A175543

/-- `A000035(A006995(2*n+1))*A006995(2*(n+1))` -/
def P5659726931752930330.Spec : Prop :=
  ∀ n, P5659726931752930330.a n = A175543 (n + 1)

end A175543

/-!
# A175544: Positive integers that, when written in binary, are palindromes with a middle run of 1's.

The programs for A175544, the canonical program `A175544.P6769416257308526754` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175544 has offset 1).

The definition of A175544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175544.P6769416257308526754

`or(1, A006995(Δ[n²]))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A175544

/-- `or(1, A006995(Δ[n²]))` -/
def P6769416257308526754.Spec : Prop :=
  ∀ n, P6769416257308526754.a n = A175544 (n + 1)

theorem P6769416257308526754.correct : P6769416257308526754.Spec := by
  intro n
  simp only [A175544, Nat.add_sub_cancel]

end A175544

/-! ## A175544.P8783550402994982099

`A006995(ceil(acot(n))+2*n)`
-/

namespace A175544.P8783550402994982099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (⌈SequenceMachineLib.acot (n : ℝ)⌉ + (2 * n : ℤ)).toNat

end

end A175544.P8783550402994982099

namespace A175544

/-- `A006995(ceil(acot(n))+2*n)` -/
def P8783550402994982099.Spec : Prop :=
  ∀ n, P8783550402994982099.a n = A175544 (n + 1)

end A175544

/-! ## A175544.P11987967447753525406

`A006995(or(2*n, ceil(acot(n))))`
-/

namespace A175544.P11987967447753525406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (Int.lor (2 * n : ℤ) ⌈SequenceMachineLib.acot (n : ℝ)⌉).toNat

end

end A175544.P11987967447753525406

namespace A175544

/-- `A006995(or(2*n, ceil(acot(n))))` -/
def P11987967447753525406.Spec : Prop :=
  ∀ n, P11987967447753525406.a n = A175544 (n + 1)

end A175544

/-! ## A175544.P14310241956290434667

`A006995(xor(2*n, ceil(acot(n))))`
-/

namespace A175544.P14310241956290434667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (Int.xor (2 * n : ℤ) ⌈SequenceMachineLib.acot (n : ℝ)⌉).toNat

end

end A175544.P14310241956290434667

namespace A175544

/-- `A006995(xor(2*n, ceil(acot(n))))` -/
def P14310241956290434667.Spec : Prop :=
  ∀ n, P14310241956290434667.a n = A175544 (n + 1)

end A175544

/-! ## A175544.P7176217633448673888

`A006995(ceil(acot(n)+n)+n)`
-/

namespace A175544.P7176217633448673888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉ + (n : ℤ)).toNat

end

end A175544.P7176217633448673888

namespace A175544

/-- `A006995(ceil(acot(n)+n)+n)` -/
def P7176217633448673888.Spec : Prop :=
  ∀ n, P7176217633448673888.a n = A175544 (n + 1)

end A175544

/-! ## A175544.P2126455546285904809

`A006995(Δ[n²]+floor(acot(n)))`
-/

namespace A175544.P2126455546285904809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A175544.P2126455546285904809

namespace A175544

/-- `A006995(Δ[n²]+floor(acot(n)))` -/
def P2126455546285904809.Spec : Prop :=
  ∀ n, P2126455546285904809.a n = A175544 (n + 1)

end A175544

/-! ## A175544.P16426823747111583493

`A006995(comp[2*(n+1)]+2)`
-/

namespace A175544.P16426823747111583493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A175544.P16426823747111583493

namespace A175544

/-- `A006995(comp[2*(n+1)]+2)` -/
def P16426823747111583493.Spec : Prop :=
  ∀ n, P16426823747111583493.a n = A175544 (n + 1)

end A175544

/-! ## A175544.P10846695485027471476

`record[A006995(n+2)^(n%2)]`
-/

namespace A175544.P10846695485027471476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 2) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175544.P10846695485027471476

namespace A175544

/-- `record[A006995(n+2)^(n%2)]` -/
def P10846695485027471476.Spec : Prop :=
  ∀ n, P10846695485027471476.a n = A175544 (n + 1)

end A175544

/-! ## A175544.P8299169671565766290

`or(1, or(1, A006995(2*n+1)))`
-/

namespace A175544.P8299169671565766290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.lor 1 (A006995 (2 * n + 1)))

end

end A175544.P8299169671565766290

namespace A175544

/-- `or(1, or(1, A006995(2*n+1)))` -/
def P8299169671565766290.Spec : Prop :=
  ∀ n, P8299169671565766290.a n = A175544 (n + 1)

end A175544

/-! ## A175544.P17500521799267343767

`record[or((-1)^n, A006995(n+1))]`
-/

namespace A175544.P17500521799267343767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((-1) ^ n) (A006995 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175544.P17500521799267343767

namespace A175544

/-- `record[or((-1)^n, A006995(n+1))]` -/
def P17500521799267343767.Spec : Prop :=
  ∀ n, P17500521799267343767.a n = A175544 (n + 1)

end A175544

/-! ## A175544.P13662735211190369045

`A006995(2*n+1)+A000007(n)`
-/

namespace A175544.P13662735211190369045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (2 * n + 1) + A000007 n

end

end A175544.P13662735211190369045

namespace A175544

/-- `A006995(2*n+1)+A000007(n)` -/
def P13662735211190369045.Spec : Prop :=
  ∀ n, P13662735211190369045.a n = A175544 (n + 1)

end A175544

/-! ## A175544.P1403717816844507240

`A063524(n+1)+A006995(2*n+1)`
-/

namespace A175544.P1403717816844507240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + A006995 (2 * n + 1)

end

end A175544.P1403717816844507240

namespace A175544

/-- `A063524(n+1)+A006995(2*n+1)` -/
def P1403717816844507240.Spec : Prop :=
  ∀ n, P1403717816844507240.a n = A175544 (n + 1)

end A175544

/-! ## A175544.P7197260849605438195

`A099894(2*n)+A006995(2*n+1)`
-/

namespace A175544.P7197260849605438195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (2 * n) + A006995 (2 * n + 1)

end

end A175544.P7197260849605438195

namespace A175544

/-- `A099894(2*n)+A006995(2*n+1)` -/
def P7197260849605438195.Spec : Prop :=
  ∀ n, P7197260849605438195.a n = A175544 (n + 1)

end A175544

/-! ## A175544.P1621035807967461035

`A178225(2*n)+A006995(2*n+1)`
-/

namespace A175544.P1621035807967461035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (2 * n) + A006995 (2 * n + 1)

end

end A175544.P1621035807967461035

namespace A175544

/-- `A178225(2*n)+A006995(2*n+1)` -/
def P1621035807967461035.Spec : Prop :=
  ∀ n, P1621035807967461035.a n = A175544 (n + 1)

end A175544

/-! ## A175544.P14448031031828547712

`∩[2*n+1, A044918(2*n+1)]`
-/

namespace A175544.P14448031031828547712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175544.P14448031031828547712

namespace A175544

/-- `∩[2*n+1, A044918(2*n+1)]` -/
def P14448031031828547712.Spec : Prop :=
  ∀ n, (P14448031031828547712.a n : ℤ) = A175544 (n + 1)

end A175544

/-! ## A175544.P9625220207987631602

`∩[A006995(n+1), A043725(n+1)]`
-/

namespace A175544.P9625220207987631602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175544.P9625220207987631602

namespace A175544

/-- `∩[A006995(n+1), A043725(n+1)]` -/
def P9625220207987631602.Spec : Prop :=
  ∀ n, (P9625220207987631602.a n : ℤ) = A175544 (n + 1)

end A175544

/-! ## A175544.P10465501816151286969

`∩[A043725(n+1), A057890(n+1)]`
-/

namespace A175544.P10465501816151286969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175544.P10465501816151286969

namespace A175544

/-- `∩[A043725(n+1), A057890(n+1)]` -/
def P10465501816151286969.Spec : Prop :=
  ∀ n, (P10465501816151286969.a n : ℤ) = A175544 (n + 1)

end A175544

/-! ## A175544.P5395911829760078971

`∩[A043725(n+1), A161604(n+1)]`
-/

namespace A175544.P5395911829760078971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175544.P5395911829760078971

namespace A175544

/-- `∩[A043725(n+1), A161604(n+1)]` -/
def P5395911829760078971.Spec : Prop :=
  ∀ n, (P5395911829760078971.a n : ℤ) = A175544 (n + 1)

end A175544

/-! ## A175544.P4010029442175270506

`∩[A043725(n+1), A180204(n+1)]`
-/

namespace A175544.P4010029442175270506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175544.P4010029442175270506

namespace A175544

/-- `∩[A043725(n+1), A180204(n+1)]` -/
def P4010029442175270506.Spec : Prop :=
  ∀ n, (P4010029442175270506.a n : ℤ) = A175544 (n + 1)

end A175544

/-! ## A175544.P1033306790692502103

`∩[A043725(n+1), A334918(n+1)]`
-/

namespace A175544.P1033306790692502103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175544.P1033306790692502103

namespace A175544

/-- `∩[A043725(n+1), A334918(n+1)]` -/
def P1033306790692502103.Spec : Prop :=
  ∀ n, (P1033306790692502103.a n : ℤ) = A175544 (n + 1)

end A175544

/-!
# A175545: Numbers n (relatively prime to 10) such that the decimal form of the period of 1/n is prime.

The programs for A175545, there is no canonical definition to state claims against.
-/

/-! ## A175545.P17355977177602473542

`filter[A061564(n+1), A356172(#)]`
-/

namespace A175545.P17355977177602473542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A175545.P17355977177602473542

/-! ## A175545.P1276062372504987887

`filter[A061564(n+1), A356173(#)]`
-/

namespace A175545.P1276062372504987887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A175545.P1276062372504987887

/-! ## A175545.P15552844604298689673

`∩[A061564(n+1), A251535(n)]`
-/

namespace A175545.P15552844604298689673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175545.P15552844604298689673

/-!
# A175546: Primes p such that sod(p)=2*sod(nextprime(p)).

The programs for A175546, there is no canonical definition to state claims against.
-/

/-! ## A175546.P432607632177405990

`p?[A164903(9*n+1)]`
-/

namespace A175546.P432607632177405990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164903 (9 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175546.P432607632177405990

/-! ## A175546.P5558786495393263428

`A122072(A038106(n+1)+A146562(n+1)-Δ[n²])`
-/

namespace A175546.P5558786495393263428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (A038106 (n + 1) + (A146562 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))).toNat

end

end A175546.P5558786495393263428

/-!
# A175548: Binary weight of sigma(n).

The programs for A175548, the canonical program `A175548.P12094352498918124215` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175548 has offset 1).

The definition of A175548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175548.P12094352498918124215

`A000120(A000203(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A175548

/-- `A000120(A000203(n+1))` -/
def P12094352498918124215.Spec : Prop :=
  ∀ n, P12094352498918124215.a n = A175548 (n + 1)

theorem P12094352498918124215.correct : P12094352498918124215.Spec := by
  intro n
  simp only [A175548, Nat.add_sub_cancel]

end A175548

/-! ## A175548.P16439575894023983060

`val(A001316(A161942(n+1)), 2)`
-/

namespace A175548.P16439575894023983060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A161942 (n + 1)).toNat).toNat 2

end

end A175548.P16439575894023983060

namespace A175548

/-- `val(A001316(A161942(n+1)), 2)` -/
def P16439575894023983060.Spec : Prop :=
  ∀ n, (P16439575894023983060.a n : ℤ) = A175548 (n + 1)

end A175548

/-! ## A175548.P4860403530835912288

`val(A001316(∑[A340793(n+1)]), 2)`
-/

namespace A175548.P4860403530835912288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat 2

end

end A175548.P4860403530835912288

namespace A175548

/-- `val(A001316(∑[A340793(n+1)]), 2)` -/
def P4860403530835912288.Spec : Prop :=
  ∀ n, (P4860403530835912288.a n : ℤ) = A175548 (n + 1)

end A175548

/-! ## A175548.P14415850561933916957

`A146076(2*(n+1))-A005187(A000203(n+1))`
-/

namespace A175548.P14415850561933916957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (2 * (n + 1)) - A005187 (A000203 (n + 1)).toNat

end

end A175548.P14415850561933916957

namespace A175548

/-- `A146076(2*(n+1))-A005187(A000203(n+1))` -/
def P14415850561933916957.Spec : Prop :=
  ∀ n, P14415850561933916957.a n = A175548 (n + 1)

end A175548

/-! ## A175548.P10277612144312975924

`A000120(A161942(n+1))`
-/

namespace A175548.P10277612144312975924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A161942 (n + 1)).toNat

end

end A175548.P10277612144312975924

namespace A175548

/-- `A000120(A161942(n+1))` -/
def P10277612144312975924.Spec : Prop :=
  ∀ n, P10277612144312975924.a n = A175548 (n + 1)

end A175548

/-! ## A175548.P1129720663166615472

`A000120(A337194(n+1)-1)`
-/

namespace A175548.P1129720663166615472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A337194 (n + 1) - 1).toNat

end

end A175548.P1129720663166615472

namespace A175548

/-- `A000120(A337194(n+1)-1)` -/
def P1129720663166615472.Spec : Prop :=
  ∀ n, P1129720663166615472.a n = A175548 (n + 1)

end A175548

/-! ## A175548.P8529349463413721315

`A048881(A161942(n+1)-1)+1`
-/

namespace A175548.P8529349463413721315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A161942 (n + 1) - 1).toNat + 1

end

end A175548.P8529349463413721315

namespace A175548

/-- `A048881(A161942(n+1)-1)+1` -/
def P8529349463413721315.Spec : Prop :=
  ∀ n, P8529349463413721315.a n = A175548 (n + 1)

end A175548

/-! ## A175548.P11637900154626823809

`A000120(A003961(A350073(n+1)))`
-/

namespace A175548.P11637900154626823809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003961 (A350073 (n + 1)).toNat).toNat

end

end A175548.P11637900154626823809

namespace A175548

/-- `A000120(A003961(A350073(n+1)))` -/
def P11637900154626823809.Spec : Prop :=
  ∀ n, P11637900154626823809.a n = A175548 (n + 1)

end A175548

/-! ## A175548.P13077482103086705241

`A000120(A000265(A001065(n+1)+n+1))`
-/

namespace A175548.P13077482103086705241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000265 (A001065 (n + 1) + (n : ℤ) + 1).toNat).toNat

end

end A175548.P13077482103086705241

namespace A175548

/-- `A000120(A000265(A001065(n+1)+n+1))` -/
def P13077482103086705241.Spec : Prop :=
  ∀ n, P13077482103086705241.a n = A175548 (n + 1)

end A175548

/-! ## A175548.P1502920197984932412

`A000120(∑{d}[n+1, #])`
-/

namespace A175548.P1502920197984932412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A175548.P1502920197984932412

namespace A175548

/-- `A000120(∑{d}[n+1, #])` -/
def P1502920197984932412.Spec : Prop :=
  ∀ n, P1502920197984932412.a n = A175548 (n + 1)

end A175548

/-! ## A175548.P17613960627317405331

`A000120(Δ[A160664(n)])`
-/

namespace A175548.P17613960627317405331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (n + 1) - f1 n).toNat

end

end A175548.P17613960627317405331

namespace A175548

/-- `A000120(Δ[A160664(n)])` -/
def P17613960627317405331.Spec : Prop :=
  ∀ n, P17613960627317405331.a n = A175548 (n + 1)

end A175548

/-! ## A175548.P9322594122279713605

`A000120(A039653(n+1)+1)`
-/

namespace A175548.P9322594122279713605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A039653 (n + 1) + 1).toNat

end

end A175548.P9322594122279713605

namespace A175548

/-- `A000120(A039653(n+1)+1)` -/
def P9322594122279713605.Spec : Prop :=
  ∀ n, P9322594122279713605.a n = A175548 (n + 1)

end A175548

/-! ## A175548.P12330831426751903168

`A000120(A088580(n+1)-1)`
-/

namespace A175548.P12330831426751903168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A088580 (n + 1) - 1).toNat

end

end A175548.P12330831426751903168

namespace A175548

/-- `A000120(A088580(n+1)-1)` -/
def P12330831426751903168.Spec : Prop :=
  ∀ n, P12330831426751903168.a n = A175548 (n + 1)

end A175548

/-! ## A175548.P5107491682771932190

`A000120(A245092(2*n+1))`
-/

namespace A175548.P5107491682771932190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A245092 (2 * n + 1)).toNat

end

end A175548.P5107491682771932190

namespace A175548

/-- `A000120(A245092(2*n+1))` -/
def P5107491682771932190.Spec : Prop :=
  ∀ n, P5107491682771932190.a n = A175548 (n + 1)

end A175548

/-! ## A175548.P13929552609182138551

`A000120(A074400(n+1)/2)`
-/

namespace A175548.P13929552609182138551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A175548.P13929552609182138551

namespace A175548

/-- `A000120(A074400(n+1)/2)` -/
def P13929552609182138551.Spec : Prop :=
  ∀ n, P13929552609182138551.a n = A175548 (n + 1)

end A175548

/-! ## A175548.P13988390047028437921

`A048881(A000203(n+1)-1)+1`
-/

namespace A175548.P13988390047028437921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A000203 (n + 1) - 1).toNat + 1

end

end A175548.P13988390047028437921

namespace A175548

/-- `A048881(A000203(n+1)-1)+1` -/
def P13988390047028437921.Spec : Prop :=
  ∀ n, P13988390047028437921.a n = A175548 (n + 1)

end A175548

/-! ## A175548.P1485206385921576170

`A063787(A000203(n+1)+1)-1`
-/

namespace A175548.P1485206385921576170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (A000203 (n + 1) + 1).toNat - 1

end

end A175548.P1485206385921576170

namespace A175548

/-- `A063787(A000203(n+1)+1)-1` -/
def P1485206385921576170.Spec : Prop :=
  ∀ n, P1485206385921576170.a n = A175548 (n + 1)

end A175548

/-! ## A175548.P5842609713897803009

`A000120(A001065(n+1)+1+n)`
-/

namespace A175548.P5842609713897803009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A175548.P5842609713897803009

namespace A175548

/-- `A000120(A001065(n+1)+1+n)` -/
def P5842609713897803009.Spec : Prop :=
  ∀ n, P5842609713897803009.a n = A175548 (n + 1)

end A175548

/-! ## A175548.P6136294712507184332

`A000120(A173455(n+1)+n+1)`
-/

namespace A175548.P6136294712507184332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A173455 (n + 1) + (n + 1 : ℤ)).toNat

end

end A175548.P6136294712507184332

namespace A175548

/-- `A000120(A173455(n+1)+n+1)` -/
def P6136294712507184332.Spec : Prop :=
  ∀ n, P6136294712507184332.a n = A175548 (n + 1)

end A175548

/-! ## A175548.P2461293759891394327

`A000120(A344765(n+1)+A011772(n+1))`
-/

namespace A175548.P2461293759891394327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A344765 (n + 1) + A011772 (n + 1)).toNat

end

end A175548.P2461293759891394327

namespace A175548

/-- `A000120(A344765(n+1)+A011772(n+1))` -/
def P2461293759891394327.Spec : Prop :=
  ∀ n, P2461293759891394327.a n = A175548 (n + 1)

end A175548

/-!
# A175549: Number of triples (a, b, c) with gcd(a, b, c) = 1 and -n <= a,b,c <= n.

The programs for A175549, there is no canonical definition to state claims against.
-/

/-! ## A175549.P780003770678638391

`xor(2, A105453(A001844(n)))`
-/

namespace A175549.P780003770678638391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A105453 (A001844 n).toNat)

end

end A175549.P780003770678638391

/-!
# A175550: Period of the decimal expansion of 1/F as F runs through the Fibonacci numbers greater than 1 and not divisible by 2 or 5.

The programs for A175550, there is no canonical definition to state claims against.
-/

/-! ## A175550.P8985967582846327377

`A064797(a(n-1)+12)` with `a(0)=1, a(1)=6, a(2)=6`
-/

namespace A175550.P8985967582846327377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 6] fun n a =>
  A064797 (a (n - 1) + 12).toNat

end

end A175550.P8985967582846327377

/-!
# A175552: Numbers k such that the digit sum of 167^k is divisible by k.

The programs for A175552, there is no canonical definition to state claims against.
-/

/-! ## A175552.P13930891399901788064

`record[A168020(A332638(n))]`
-/

namespace A175552.P13930891399901788064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168020 (A332638 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175552.P13930891399901788064

/-! ## A175552.P9525022347796099490

`record[A035377(A036173(n+1))]`
-/

namespace A175552.P9525022347796099490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (A036173 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175552.P9525022347796099490

/-!
# A175553: Product of first k triangular numbers divided by the sum of first k triangular numbers is an integer.

The programs for A175553, the canonical program `A175553.P5108297307299290706` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175553 has offset 1).

The definition of A175553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175553.P5108297307299290706

`A176423(n+1)-2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A175553

/-- `A176423(n+1)-2` -/
def P5108297307299290706.Spec : Prop :=
  ∀ n, P5108297307299290706.a n = A175553 (n + 1)

theorem P5108297307299290706.correct : P5108297307299290706.Spec := by
  intro n
  simp only [A175553, Nat.add_sub_cancel]

end A175553

/-! ## A175553.P1178730713873120454

`∪[3*(n+1), A018252(n+5)]-2`
-/

namespace A175553.P1178730713873120454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A175553.P1178730713873120454

namespace A175553

/-- `∪[3*(n+1), A018252(n+5)]-2` -/
def P1178730713873120454.Spec : Prop :=
  ∀ n, P1178730713873120454.a n = A175553 (n + 1)

end A175553

/-! ## A175553.P15964071850193788822

`∪[A009188(n+1), A055632(n+1)]-2`
-/

namespace A175553.P15964071850193788822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055632 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A175553.P15964071850193788822

namespace A175553

/-- `∪[A009188(n+1), A055632(n+1)]-2` -/
def P15964071850193788822.Spec : Prop :=
  ∀ n, P15964071850193788822.a n = A175553 (n + 1)

end A175553

/-! ## A175553.P13021489910445612301

`∪[A088005(n+1), A343311(n+1)]-2`
-/

namespace A175553.P13021489910445612301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A175553.P13021489910445612301

namespace A175553

/-- `∪[A088005(n+1), A343311(n+1)]-2` -/
def P13021489910445612301.Spec : Prop :=
  ∀ n, P13021489910445612301.a n = A175553 (n + 1)

end A175553

/-! ## A175553.P10175691264893786864

`∪[A123581(n+1), A343311(n+1)]-2`
-/

namespace A175553.P10175691264893786864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A175553.P10175691264893786864

namespace A175553

/-- `∪[A123581(n+1), A343311(n+1)]-2` -/
def P10175691264893786864.Spec : Prop :=
  ∀ n, P10175691264893786864.a n = A175553 (n + 1)

end A175553

/-! ## A175553.P5739887696184851037

`∪[A201533(n+1), A343311(n+1)]-2`
-/

namespace A175553.P5739887696184851037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A175553.P5739887696184851037

namespace A175553

/-- `∪[A201533(n+1), A343311(n+1)]-2` -/
def P5739887696184851037.Spec : Prop :=
  ∀ n, P5739887696184851037.a n = A175553 (n + 1)

end A175553

/-! ## A175553.P13878480740974608599

`∪[A324584(n+1), A343311(n+1)]-2`
-/

namespace A175553.P13878480740974608599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A175553.P13878480740974608599

namespace A175553

/-- `∪[A324584(n+1), A343311(n+1)]-2` -/
def P13878480740974608599.Spec : Prop :=
  ∀ n, P13878480740974608599.a n = A175553 (n + 1)

end A175553

/-! ## A175553.P17801038258460939750

`A000720(A018252(n+2)%(n+1)²+1)+n+1`
-/

namespace A175553.P17801038258460939750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.tmod (A018252 (n + 2)) ((n + 1) ^ 2 : ℤ) + 1).toNat + (n + 1 : ℤ)

end

end A175553.P17801038258460939750

namespace A175553

/-- `A000720(A018252(n+2)%(n+1)²+1)+n+1` -/
def P17801038258460939750.Spec : Prop :=
  ∀ n, P17801038258460939750.a n = A175553 (n + 1)

end A175553

/-! ## A175553.P15795477744966634638

`A036234(a(n-1)+3)+n` with `a(0)=1`
-/

namespace A175553.P15795477744966634638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036234 (a (n - 1) + 3).toNat + (n : ℤ)

end

end A175553.P15795477744966634638

namespace A175553

/-- `A036234(a(n-1)+3)+n` -/
def P15795477744966634638.Spec : Prop :=
  ∀ n, P15795477744966634638.a n = A175553 (n + 1)

end A175553

/-! ## A175553.P2933550865278977820

`lt[2*A243984(A014963(n+2)), n]`
-/

namespace A175553.P2933550865278977820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A243984 (A014963 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A175553.P2933550865278977820

namespace A175553

/-- `lt[2*A243984(A014963(n+2)), n]` -/
def P2933550865278977820.Spec : Prop :=
  ∀ n, (P2933550865278977820.a n : ℤ) = A175553 (n + 1)

end A175553

/-! ## A175553.P17369731842260365471

`lt[A138188(n)+A014963(n+2), n]`
-/

namespace A175553.P17369731842260365471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138188 n + A014963 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A175553.P17369731842260365471

namespace A175553

/-- `lt[A138188(n)+A014963(n+2), n]` -/
def P17369731842260365471.Spec : Prop :=
  ∀ n, (P17369731842260365471.a n : ℤ) = A175553 (n + 1)

end A175553

/-! ## A175553.P8786774644957815870

`lt[A243984(A014963(n+2)), A222235(n)/3]`
-/

namespace A175553.P8786774644957815870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243984 (A014963 (n + 2)).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222235 n : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A175553.P8786774644957815870

namespace A175553

/-- `lt[A243984(A014963(n+2)), A222235(n)/3]` -/
def P8786774644957815870.Spec : Prop :=
  ∀ n, (P8786774644957815870.a n : ℤ) = A175553 (n + 1)

end A175553

/-! ## A175553.P3805545520521743396

`lt[A243984(A014963(n+2)), A016873(n)/18]`
-/

namespace A175553.P3805545520521743396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243984 (A014963 (n + 2)).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016873 n : ℚ) / 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A175553.P3805545520521743396

namespace A175553

/-- `lt[A243984(A014963(n+2)), A016873(n)/18]` -/
def P3805545520521743396.Spec : Prop :=
  ∀ n, (P3805545520521743396.a n : ℤ) = A175553 (n + 1)

end A175553

/-! ## A175553.P5506653346725659316

`lt[(A243984(A014963(n+2))+1)², A000203(n+1)]`
-/

namespace A175553.P5506653346725659316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243984 (A014963 (n + 2)).toNat + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175553.P5506653346725659316

namespace A175553

/-- `lt[(A243984(A014963(n+2))+1)², A000203(n+1)]` -/
def P5506653346725659316.Spec : Prop :=
  ∀ n, (P5506653346725659316.a n : ℤ) = A175553 (n + 1)

end A175553

/-! ## A175553.P3226005934427912539

`A023444(A176423(n+1))`
-/

namespace A175553.P3226005934427912539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A176423 (n + 1)).toNat

end

end A175553.P3226005934427912539

namespace A175553

/-- `A023444(A176423(n+1))` -/
def P3226005934427912539.Spec : Prop :=
  ∀ n, P3226005934427912539.a n = A175553 (n + 1)

end A175553

/-! ## A175553.P17394875058461508181

`lt[dr(A167362(n+5)), A167401(n+2)]`
-/

namespace A175553.P17394875058461508181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A167362 (n + 5))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167401 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A175553.P17394875058461508181

namespace A175553

/-- `lt[dr(A167362(n+5)), A167401(n+2)]` -/
def P17394875058461508181.Spec : Prop :=
  ∀ n, (P17394875058461508181.a n : ℤ) = A175553 (n + 1)

end A175553

/-! ## A175553.P11566712809782669977

`lt[A060474(A014963(n+2))², A060474(2*(n+1))]`
-/

namespace A175553.P11566712809782669977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060474 (A014963 (n + 2)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060474 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175553.P11566712809782669977

namespace A175553

/-- `lt[A060474(A014963(n+2))², A060474(2*(n+1))]` -/
def P11566712809782669977.Spec : Prop :=
  ∀ n, (P11566712809782669977.a n : ℤ) = A175553 (n + 1)

end A175553

/-! ## A175553.P16579432936395139240

`A000720(A002808(n+1)%A006508(n)+1)+n+1`
-/

namespace A175553.P16579432936395139240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.tmod (A002808 (n + 1)) (A006508 n) + 1).toNat + (n + 1 : ℤ)

end

end A175553.P16579432936395139240

namespace A175553

/-- `A000720(A002808(n+1)%A006508(n)+1)+n+1` -/
def P16579432936395139240.Spec : Prop :=
  ∀ n, P16579432936395139240.a n = A175553 (n + 1)

end A175553

/-! ## A175553.P18392143317202437908

`lt[sqrt(A326837(n+1)), A326851(2*(n+2))]`
-/

namespace A175553.P18392143317202437908
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A326837 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326851 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A175553.P18392143317202437908

namespace A175553

/-- `lt[sqrt(A326837(n+1)), A326851(2*(n+2))]` -/
def P18392143317202437908.Spec : Prop :=
  ∀ n, (P18392143317202437908.a n : ℤ) = A175553 (n + 1)

end A175553

/-! ## A175553.P3689165942729273876

`lt[sqrt(A326847(n+1)), A326851(2*(n+2))]`
-/

namespace A175553.P3689165942729273876
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A326847 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326851 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A175553.P3689165942729273876

namespace A175553

/-- `lt[sqrt(A326847(n+1)), A326851(2*(n+2))]` -/
def P3689165942729273876.Spec : Prop :=
  ∀ n, (P3689165942729273876.a n : ℤ) = A175553 (n + 1)

end A175553

/-!
# A175555: Preperiodic part of the decimal expansion of 1/k as k runs through A065502.

The programs for A175555, there is no canonical definition to state claims against.
-/

/-! ## A175555.P15018466915557731203

`A088756(A055482(n+2))`
-/

namespace A175555.P15018466915557731203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088756 (A055482 (n + 2)).toNat

end

end A175555.P15018466915557731203

/-!
# A175558: a(n) = 167^n.

The programs for A175558, the canonical program `A175558.P1731217106501903367` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175558 has offset 0).

The definition of A175558 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `167^n` (program `A175558.P1731217106501903367`, by `A175558.P1731217106501903367.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175558.P1731217106501903367

`167^n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175558

/-- `167^n` -/
def P1731217106501903367.Spec : Prop :=
  ∀ n, (P1731217106501903367.a n : ℤ) = A175558 n

theorem P1731217106501903367.correct : P1731217106501903367.Spec := by
  intro n
  simp only [A175558]

end A175558

/-!
# A175559: Digit sum of 167^n.

The programs for A175559, there is no canonical definition to state claims against.
-/

/-! ## A175559.P10208335216318382005

`∑{digits}[4*42*a(n-1)-a(n-1), #]` with `a(0)=1`
-/

namespace A175559.P10208335216318382005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * (42 * f1 (n - 1)) - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A175559.P10208335216318382005

/-! ## A175559.P4931120996610117043

`∑{digits}[A175558(n), #]`
-/

namespace A175559.P4931120996610117043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A175559.P4931120996610117043

/-!
# A175560: (Digit sum of 167^n) mod n.

The programs for A175560, there is no canonical definition to state claims against.
-/

/-! ## A175560.P5643355539084611606

`A175559(n+1)%(n+1)`
-/

namespace A175560.P5643355539084611606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175559 (n + 1)) (n + 1 : ℤ)

end

end A175560.P5643355539084611606

/-!
# A175561: Period of the decimal representation of 1/Fibonacci(n).

The programs for A175561, there is no canonical definition to state claims against.
-/

/-! ## A175561.P3832849156532304942

`A007732(A000045(n+3))`
-/

namespace A175561.P3832849156532304942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A000045 (n + 3)).toNat

end

end A175561.P3832849156532304942

/-! ## A175561.P14534984011939456212

`A007732(A000265(A020695(n)))`
-/

namespace A175561.P14534984011939456212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A000265 (A020695 n).toNat).toNat

end

end A175561.P14534984011939456212

/-! ## A175561.P2046917403765247230

`A007732(A000265(A071679(n+1)))`
-/

namespace A175561.P2046917403765247230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A000265 (A071679 (n + 1)).toNat).toNat

end

end A175561.P2046917403765247230

/-! ## A175561.P9988757989044687562

`A007732(A000265(A047992(n+2)))`
-/

namespace A175561.P9988757989044687562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A000265 (A047992 (n + 2)).toNat).toNat

end

end A175561.P9988757989044687562

/-! ## A175561.P6678308542816162004

`A007732(record[round(ϕ*a(n-2))])` with `a(0)=2, a(1)=0`
-/

namespace A175561.P6678308542816162004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175561.P6678308542816162004

/-!
# A175564: Number of n X n binary matrices that contain no 2 X 2 submatrix consisting of all zeros or all ones.

The programs for A175564, there is no canonical definition to state claims against.
-/

/-! ## A175564.P12617347822027113217

`A377475(A320651(n+1))`
-/

namespace A175564.P12617347822027113217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377475 (A320651 (n + 1)).toNat

end

end A175564.P12617347822027113217

/-!
# A175565: a(n) = smallest prime > a(n-1) such that in the sum a(n-1) + a(n) there are no carries, with a(1)=2.

The programs for A175565, there is no canonical definition to state claims against.
-/

/-! ## A175565.P5979097288194638501

`eq[A288226(n+1), A327766(n)]`
-/

namespace A175565.P5979097288194638501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175565.P5979097288194638501

/-! ## A175565.P2419234006558015316

`eq[A003415(n), A010060(A081581(n))]`
-/

namespace A175565.P2419234006558015316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A081581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175565.P2419234006558015316

/-! ## A175565.P10933411168293784242

`eq[A003415(n), A028235(A290365(n+1))]`
-/

namespace A175565.P10933411168293784242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028235 (A290365 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175565.P10933411168293784242

/-! ## A175565.P11249365255514136059

`eq[A003415(n), A378985(A232941(n+1))]`
-/

namespace A175565.P11249365255514136059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378985 (A232941 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175565.P11249365255514136059

/-! ## A175565.P4767965020656658176

`eq[A003415(n), A091438(A140998(2*(n+2)))]`
-/

namespace A175565.P4767965020656658176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091438 (A140998 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175565.P4767965020656658176

/-!
# A175566: a(n) = the least prime p such that (2*k + 1)*p - 2*k, k=1..n are all prime.

The programs for A175566, there is no canonical definition to state claims against.
-/

/-! ## A175566.P13075722355540609204

`A164325(n+2)+1`
-/

namespace A175566.P13075722355540609204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164325 (n + 2) + 1

end

end A175566.P13075722355540609204

/-!
# A175567: (n!)^2 modulo n(n+1)/2.

The programs for A175567, the canonical program `A175567.P16821500222834983336` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175567 has offset 1).

The definition of A175567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175567.P16821500222834983336

`C(A119690(n+1), 2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A175567

/-- `C(A119690(n+1), 2)` -/
def P16821500222834983336.Spec : Prop :=
  ∀ n, (P16821500222834983336.a n : ℤ) = A175567 (n + 1)

theorem P16821500222834983336.correct : P16821500222834983336.Spec := by
  intro n
  simp only [A175567, Nat.add_sub_cancel]

end A175567

/-! ## A175567.P9846128995455355673

`∑[n]*A010051(n+2)`
-/

namespace A175567.P9846128995455355673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A010051 (n + 2)

end

end A175567.P9846128995455355673

namespace A175567

/-- `∑[n]*A010051(n+2)` -/
def P9846128995455355673.Spec : Prop :=
  ∀ n, P9846128995455355673.a n = A175567 (n + 1)

end A175567

/-! ## A175567.P9184076758618997589

`C(C(A000010(n+2), n), 2)`
-/

namespace A175567.P9184076758618997589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A000010 (n + 2)).toNat n) 2

end

end A175567.P9184076758618997589

namespace A175567

/-- `C(C(A000010(n+2), n), 2)` -/
def P9184076758618997589.Spec : Prop :=
  ∀ n, (P9184076758618997589.a n : ℤ) = A175567 (n + 1)

end A175567

/-! ## A175567.P689529286833468817

`C(C(A060680(n+2), n), 2)`
-/

namespace A175567.P689529286833468817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A060680 (n + 2)).toNat n) 2

end

end A175567.P689529286833468817

namespace A175567

/-- `C(C(A060680(n+2), n), 2)` -/
def P689529286833468817.Spec : Prop :=
  ∀ n, (P689529286833468817.a n : ℤ) = A175567 (n + 1)

end A175567

/-! ## A175567.P13046482346899448571

`∑[n]*Δ[A000720(n+1)]`
-/

namespace A175567.P13046482346899448571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A175567.P13046482346899448571

namespace A175567

/-- `∑[n]*Δ[A000720(n+1)]` -/
def P13046482346899448571.Spec : Prop :=
  ∀ n, P13046482346899448571.a n = A175567 (n + 1)

end A175567

/-! ## A175567.P8930538617968388086

`∑[n]*char[A040976(n+1)]`
-/

namespace A175567.P8930538617968388086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A175567.P8930538617968388086

namespace A175567

/-- `∑[n]*char[A040976(n+1)]` -/
def P8930538617968388086.Spec : Prop :=
  ∀ n, (P8930538617968388086.a n : ℤ) = A175567 (n + 1)

end A175567

/-! ## A175567.P14440904535932933412

`C(2, A000005(n+2))*∑[n]`
-/

namespace A175567.P14440904535932933412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 2)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175567.P14440904535932933412

namespace A175567

/-- `C(2, A000005(n+2))*∑[n]` -/
def P14440904535932933412.Spec : Prop :=
  ∀ n, (P14440904535932933412.a n : ℤ) = A175567 (n + 1)

end A175567

/-! ## A175567.P10945021253282188832

`C(C(A006530(n+2)-1, n), 2)`
-/

namespace A175567.P10945021253282188832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A006530 (n + 2) - 1).toNat n) 2

end

end A175567.P10945021253282188832

namespace A175567

/-- `C(C(A006530(n+2)-1, n), 2)` -/
def P10945021253282188832.Spec : Prop :=
  ∀ n, (P10945021253282188832.a n : ℤ) = A175567 (n + 1)

end A175567

/-! ## A175567.P1946341926940294669

`floor(1/A001222(n+2))*∑[n]`
-/

namespace A175567.P1946341926940294669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A001222 (n + 2) : ℚ)⌋ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A175567.P1946341926940294669

namespace A175567

/-- `floor(1/A001222(n+2))*∑[n]` -/
def P1946341926940294669.Spec : Prop :=
  ∀ n, P1946341926940294669.a n = A175567 (n + 1)

end A175567

/-! ## A175567.P15480653277202357041

`∑[n]*char[A000040(n+1)-2]`
-/

namespace A175567.P15480653277202357041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A175567.P15480653277202357041

namespace A175567

/-- `∑[n]*char[A000040(n+1)-2]` -/
def P15480653277202357041.Spec : Prop :=
  ∀ n, (P15480653277202357041.a n : ℤ) = A175567 (n + 1)

end A175567

/-! ## A175567.P6614137215748047460

`∑[n]*char[A006530(n+1)-2]`
-/

namespace A175567.P6614137215748047460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A175567.P6614137215748047460

namespace A175567

/-- `∑[n]*char[A006530(n+1)-2]` -/
def P6614137215748047460.Spec : Prop :=
  ∀ n, (P6614137215748047460.a n : ℤ) = A175567 (n + 1)

end A175567

/-! ## A175567.P13067049970759818352

`∑[n]*char[A020639(n+1)-2]`
-/

namespace A175567.P13067049970759818352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A175567.P13067049970759818352

namespace A175567

/-- `∑[n]*char[A020639(n+1)-2]` -/
def P13067049970759818352.Spec : Prop :=
  ∀ n, (P13067049970759818352.a n : ℤ) = A175567 (n + 1)

end A175567

/-! ## A175567.P8820300186578722588

`C(n+3, A000203(n+2))*∑[n]`
-/

namespace A175567.P8820300186578722588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) (A000203 (n + 2)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175567.P8820300186578722588

namespace A175567

/-- `C(n+3, A000203(n+2))*∑[n]` -/
def P8820300186578722588.Spec : Prop :=
  ∀ n, (P8820300186578722588.a n : ℤ) = A175567 (n + 1)

end A175567

/-! ## A175567.P2514989161397764040

`A000741(A090585(n+1))`
-/

namespace A175567.P2514989161397764040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000741 (A090585 (n + 1)).toNat

end

end A175567.P2514989161397764040

namespace A175567

/-- `A000741(A090585(n+1))` -/
def P2514989161397764040.Spec : Prop :=
  ∀ n, P2514989161397764040.a n = A175567 (n + 1)

end A175567

/-! ## A175567.P14697294097228698155

`A161680(A119690(n+1))`
-/

namespace A175567.P14697294097228698155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119690 (n + 1)).toNat

end

end A175567.P14697294097228698155

namespace A175567

/-- `A161680(A119690(n+1))` -/
def P14697294097228698155.Spec : Prop :=
  ∀ n, P14697294097228698155.a n = A175567 (n + 1)

end A175567

/-! ## A175567.P13798154133140907231

`A120387(A327529(n+1))`
-/

namespace A175567.P13798154133140907231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120387 (A327529 (n + 1)).toNat

end

end A175567.P13798154133140907231

namespace A175567

/-- `A120387(A327529(n+1))` -/
def P13798154133140907231.Spec : Prop :=
  ∀ n, P13798154133140907231.a n = A175567 (n + 1)

end A175567

/-! ## A175567.P8886553242412418483

`A000035(n)*A120387(n+1)`
-/

namespace A175567.P8886553242412418483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A120387 (n + 1)

end

end A175567.P8886553242412418483

namespace A175567

/-- `A000035(n)*A120387(n+1)` -/
def P8886553242412418483.Spec : Prop :=
  ∀ n, P8886553242412418483.a n = A175567 (n + 1)

end A175567

/-! ## A175567.P6991481477789458061

`A000217(n*A010051(n+2))`
-/

namespace A175567.P6991481477789458061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n : ℤ) * A010051 (n + 2)).toNat

end

end A175567.P6991481477789458061

namespace A175567

/-- `A000217(n*A010051(n+2))` -/
def P6991481477789458061.Spec : Prop :=
  ∀ n, P6991481477789458061.a n = A175567 (n + 1)

end A175567

/-! ## A175567.P190371597716247991

`lcm(A073097(n), A120387(n+1))`
-/

namespace A175567.P190371597716247991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073097 n) (A120387 (n + 1))

end

end A175567.P190371597716247991

namespace A175567

/-- `lcm(A073097(n), A120387(n+1))` -/
def P190371597716247991.Spec : Prop :=
  ∀ n, (P190371597716247991.a n : ℤ) = A175567 (n + 1)

end A175567

/-! ## A175567.P11481864139677816

`A079748(n+1)*A120387(n+1)`
-/

namespace A175567.P11481864139677816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079748 (n + 1) * A120387 (n + 1)

end

end A175567.P11481864139677816

namespace A175567

/-- `A079748(n+1)*A120387(n+1)` -/
def P11481864139677816.Spec : Prop :=
  ∀ n, P11481864139677816.a n = A175567 (n + 1)

end A175567

/-!
# A175578: Decimal expansion of the sum over the inverse icosahedral numbers.

The programs for A175578, there is no canonical definition to state claims against.
-/

/-! ## A175578.P18080702375990326563

`A008619(n)+A001222(A036727(n))`
-/

namespace A175578.P18080702375990326563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + A001222 (A036727 n).toNat

end

end A175578.P18080702375990326563

/-!
# A175579: Triangle T(n,d) read by rows: Number of ascent sequences of length n with d zeros.

The programs for A175579, there is no canonical definition to state claims against.
-/

/-! ## A175579.P3258009200571875073

`A133137(A259691(n))`
-/

namespace A175579.P3258009200571875073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A259691 n).toNat

end

end A175579.P3258009200571875073

/-! ## A175579.P15801031044978526534

`A133137(A056857(n+1))`
-/

namespace A175579.P15801031044978526534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A056857 (n + 1)).toNat

end

end A175579.P15801031044978526534

/-! ## A175579.P6001334862036720464

`A069219(n+8)+A056857(n+1)`
-/

namespace A175579.P6001334862036720464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069219 (n + 8) + A056857 (n + 1)

end

end A175579.P6001334862036720464

/-! ## A175579.P12285288175448289010

`A259691(n)+A185284(A038207(n))`
-/

namespace A175579.P12285288175448289010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259691 n + A185284 (A038207 n).toNat

end

end A175579.P12285288175448289010

/-! ## A175579.P1491672746864941902

`A321936(A143494(n+2))+A259691(n)`
-/

namespace A175579.P1491672746864941902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A143494 (n + 2)).toNat + A259691 n

end

end A175579.P1491672746864941902

/-!
# A175581: a(n)=(A175580(n)-1)/210.

The programs for A175581, there is no canonical definition to state claims against.
-/

/-! ## A175581.P6224441937086265696

`(A175580(n+1)-1)/210`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175581.P6224441937086265696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175580 (n + 1) - 1 : ℚ) / 210

end

end A175581.P6224441937086265696

/-!
# A175582: a(n) = sigma(n-th Zumkeller number)/2.

The programs for A175582, there is no canonical definition to state claims against.
-/

/-! ## A175582.P6627148429528816691

`A000203(A083207(n+1))/2`
-/

namespace A175582.P6627148429528816691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A083207 (n + 1)).toNat : ℚ) / 2

end

end A175582.P6627148429528816691

/-! ## A175582.P6755404172428629953

`A175591(n+1)+A083207(n+1)`
-/

namespace A175582.P6755404172428629953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175591 (n + 1) + A083207 (n + 1)

end

end A175582.P6755404172428629953

/-! ## A175582.P15248504261157802836

`A014682(∑{d}[A083207(n+1), #])`
-/

namespace A175582.P15248504261157802836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A175582.P15248504261157802836

/-! ## A175582.P15091946490817142244

`A000203(lt[A103977(n+1), 1]+1)/2`
-/

namespace A175582.P15091946490817142244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℚ) / 2

end

end A175582.P15091946490817142244

/-! ## A175582.P6708490339188610737

`A368582(A083207(n+1))`
-/

namespace A175582.P6708490339188610737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368582 (A083207 (n + 1)).toNat

end

end A175582.P6708490339188610737

/-! ## A175582.P6672829967058259998

`A175591(n+1)+lt[1, A083206(A028310(n))+1]`
-/

namespace A175582.P6672829967058259998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (A028310 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175591 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A175582.P6672829967058259998

/-! ## A175582.P9890002107521440943

`A038572(∑{d}[A083207(n+1), #])`
-/

namespace A175582.P9890002107521440943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A175582.P9890002107521440943

/-! ## A175582.P9723786150728633590

`A032742(∑{d}[A083207(n+1), #])`
-/

namespace A175582.P9723786150728633590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A175582.P9723786150728633590

/-!
# A175583: Zumkeller numbers n such that sigma(n)/2 - n is prime.

The programs for A175583, there is no canonical definition to state claims against.
-/

/-! ## A175583.P2059637451436291367

`∩[A083207(n+1), A124109(n+1)]`
-/

namespace A175583.P2059637451436291367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175583.P2059637451436291367

/-! ## A175583.P16929858039200119744

`filter[A124109(n+1), A179527(#)]`
-/

namespace A175583.P16929858039200119744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A175583.P16929858039200119744

/-!
# A175584: Prime numbers p with property that sums of neighbor digits of p are all less than 10.

The programs for A175584, there is no canonical definition to state claims against.
-/

/-! ## A175584.P5082244184900306459

`p?[A039691(n+1)]`
-/

namespace A175584.P5082244184900306459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175584.P5082244184900306459

/-! ## A175584.P17611768508118699274

`record[A006530(A039691(n+3))]`
-/

namespace A175584.P17611768508118699274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A039691 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175584.P17611768508118699274

/-! ## A175584.P12340975258888401030

`filter[A039691(n+2), A010051(#)]`
-/

namespace A175584.P12340975258888401030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039691 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A175584.P12340975258888401030

/-! ## A175584.P3968484138232503417

`filter[A039691(n+3), A080339(#)]`
-/

namespace A175584.P3968484138232503417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039691 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A175584.P3968484138232503417

/-! ## A175584.P5859637679226444691

`∩[A000040(n+1), A039691(n+1)]`
-/

namespace A175584.P5859637679226444691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175584.P5859637679226444691

/-! ## A175584.P746596620617422945

`∩[A039691(n+1), A049551(n+1)]`
-/

namespace A175584.P746596620617422945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175584.P746596620617422945

/-! ## A175584.P754086193961180503

`∩[A039691(n+1), A049555(n+1)]`
-/

namespace A175584.P754086193961180503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175584.P754086193961180503

/-! ## A175584.P7958100828053861031

`∩[A039691(n+1), A049573(n+1)]`
-/

namespace A175584.P7958100828053861031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175584.P7958100828053861031

/-! ## A175584.P7855495049488654454

`∩[A039691(n+1), A057448(n+1)]`
-/

namespace A175584.P7855495049488654454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175584.P7855495049488654454

/-! ## A175584.P5391082412449951431

`∩[A039691(n+1), A216884(n+1)]`
-/

namespace A175584.P5391082412449951431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175584.P5391082412449951431

/-!
# A175585: Numbers n with property that sums of neighbor digits of n^2 are all less than 10.

The programs for A175585, there is no canonical definition to state claims against.
-/

/-! ## A175585.P75330942750237400

`record[A056926(A039691(n+1))]`
-/

namespace A175585.P75330942750237400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A039691 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175585.P75330942750237400

/-!
# A175587: a(1) = 4; a(n) = smallest semiprime such that a(n) - a(n-1) is prime.

The programs for A175587, there is no canonical definition to state claims against.
-/

/-! ## A175587.P4195801727183659259

`A001358(lt[A022167(2*n), A108052(n+1)])`
-/

namespace A175587.P4195801727183659259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A175587.P4195801727183659259

/-! ## A175587.P17924628136007842994

`A001358(lt[A187521(2*n+1), A272239(n+1)])`
-/

namespace A175587.P17924628136007842994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187521 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A175587.P17924628136007842994

/-! ## A175587.P17237190012472132626

`A001358(A285090(∑[n+1]))`
-/

namespace A175587.P17237190012472132626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A285090 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A175587.P17237190012472132626

/-! ## A175587.P7809176498306237070

`∩[record[A279385(3*n+1)], A001358(n+1)]`
-/

namespace A175587.P7809176498306237070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279385 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A175587.P7809176498306237070

/-! ## A175587.P6088819427582277286

`A001358(A325460(n+1)%A006033(n+1))`
-/

namespace A175587.P6088819427582277286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (Int.tmod (A325460 (n + 1)) (A006033 (n + 1))).toNat

end

end A175587.P6088819427582277286

/-!
# A175588: a(1) = 4; a(n) = smallest semiprime > a(n-1) such that a(n) - a(n-1) is semiprime.

The programs for A175588, there is no canonical definition to state claims against.
-/

/-! ## A175588.P8161788033733744867

`A255013(a(n-1))+a(n-1)` with `a(0)=4`
-/

namespace A175588.P8161788033733744867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A255013 (a (n - 1)).toNat + a (n - 1)

end

end A175588.P8161788033733744867

/-! ## A175588.P7276144366440632198

`A365145(n+1)/A290110(A107689(n+1))`
-/

namespace A175588.P7276144366440632198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365145 (n + 1) : ℚ) / (A290110 (A107689 (n + 1)).toNat : ℚ)

end

end A175588.P7276144366440632198

/-!
# A175590: Numbers k with prime signature(k) = prime signature(k+1) = prime signature(k+2) = prime signature(k+3).

The programs for A175590, there is no canonical definition to state claims against.
-/

/-! ## A175590.P15617050785563778491

`∩[A006601(n+1), A071320(n+1)]`
-/

namespace A175590.P15617050785563778491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175590.P15617050785563778491

/-!
# A175591: a(n) = (sigma(n-th Zumkeller number)/2) - (n-th Zumkeller number).

The programs for A175591, there is no canonical definition to state claims against.
-/

/-! ## A175591.P13048789258508059946

`A175582(n+1)-A083207(n+1)`
-/

namespace A175591.P13048789258508059946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175582 (n + 1) - A083207 (n + 1)

end

end A175591.P13048789258508059946

/-! ## A175591.P13675765717385309903

`A014682(∑{d}[A083207(n+1), #])-A083207(n+1)`
-/

namespace A175591.P13675765717385309903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) - A083207 (n + 1)

end

end A175591.P13675765717385309903

/-! ## A175591.P15752760642144899458

`A175582(n+1)-(lt[A103977(n+1), 1]+1)`
-/

namespace A175591.P15752760642144899458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175582 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ)

end

end A175591.P15752760642144899458

/-! ## A175591.P621126027744526855

`A175582(n+1)-(eq[2, A020639(A119347(n+1))]+1)`
-/

namespace A175591.P621126027744526855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A119347 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175582 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A175591.P621126027744526855

/-! ## A175591.P640706506683962304

`A033880(A083207(n+1))/2`
-/

namespace A175591.P640706506683962304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033880 (A083207 (n + 1)).toNat : ℚ) / 2

end

end A175591.P640706506683962304

/-! ## A175591.P8467646822933614936

`A175582(n+1)-(eq[1, A179527(n+1)]+1)`
-/

namespace A175591.P8467646822933614936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175582 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A175591.P8467646822933614936

/-! ## A175591.P1426192029976834785

`A175582(n+1)-A153152(eq[1, A179527(n+1)])`
-/

namespace A175591.P1426192029976834785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175582 (n + 1) - A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175591.P1426192029976834785

/-! ## A175591.P18160664763741070718

`A001281(A033880(A083207(n+1)))`
-/

namespace A175591.P18160664763741070718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A033880 (A083207 (n + 1)).toNat).toNat

end

end A175591.P18160664763741070718

/-! ## A175591.P13462461261309737803

`A038572(∑{d}[A083207(n+1), #])-A083207(n+1)`
-/

namespace A175591.P13462461261309737803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) - A083207 (n + 1)

end

end A175591.P13462461261309737803

/-! ## A175591.P737601324326754236

`A032742(∑{d}[A083207(n+1), #])-A083207(n+1)`
-/

namespace A175591.P737601324326754236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) - A083207 (n + 1)

end

end A175591.P737601324326754236

/-! ## A175591.P642709553625222217

`A175582(n+1)-eq[1, A179527(A233583(n+1))]`
-/

namespace A175591.P642709553625222217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175582 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A175591.P642709553625222217

/-!
# A175592: Numbers n whose prime factors can be partitioned into two disjoint sets whose sums are both (sum of primes dividing n (with repetition))/2.

The programs for A175592, there is no canonical definition to state claims against.
-/

/-! ## A175592.P17602545934633989024

`∩[A194469(n+1), A395784(n+1)]`
-/

namespace A175592.P17602545934633989024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175592.P17602545934633989024

/-! ## A175592.P12789075828746723691

`lt[A216724(2*n+1), A010048(A062854(n+1))]`
-/

namespace A175592.P12789075828746723691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216724 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (A062854 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175592.P12789075828746723691

/-! ## A175592.P8973448405339400582

`lt[A216724(2*n+1), A010048(A162348(2*(n+1)))]`
-/

namespace A175592.P8973448405339400582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216724 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (A162348 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175592.P8973448405339400582

/-!
# A175594: Numbers having no primitive root.

The programs for A175594, the canonical program `A175594.P11317406959744859583` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175594 has offset 1).

The definition of A175594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175594.P6538735870744420521

`comp[A033948(n+1)]`
-/

namespace A175594.P6538735870744420521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175594.P6538735870744420521

namespace A175594

/-- `comp[A033948(n+1)]` -/
def P6538735870744420521.Spec : Prop :=
  ∀ n, (P6538735870744420521.a n : ℤ) = A175594 (n + 1)

end A175594

/-! ## A175594.P11317406959744859583

`eq[0, A211487(C(2, n)+n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A175594

/-- `eq[0, A211487(C(2, n)+n)]` -/
def P11317406959744859583.Spec : Prop :=
  ∀ n, (P11317406959744859583.a n : ℤ) = A175594 (n + 1)

theorem P11317406959744859583.correct : P11317406959744859583.Spec := by
  intro n
  simp only [A175594, Nat.add_sub_cancel]

end A175594

/-! ## A175594.P11342968839575236452

`∪[A033949(n+1), A004930(n)]`
-/

namespace A175594.P11342968839575236452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004930 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175594.P11342968839575236452

namespace A175594

/-- `∪[A033949(n+1), A004930(n)]` -/
def P11342968839575236452.Spec : Prop :=
  ∀ n, (P11342968839575236452.a n : ℤ) = A175594 (n + 1)

end A175594

/-! ## A175594.P6743161368416198760

`∪[A033949(n+1), A004933(n)]`
-/

namespace A175594.P6743161368416198760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175594.P6743161368416198760

namespace A175594

/-- `∪[A033949(n+1), A004933(n)]` -/
def P6743161368416198760.Spec : Prop :=
  ∀ n, (P6743161368416198760.a n : ℤ) = A175594 (n + 1)

end A175594

/-! ## A175594.P17692361542061517684

`∪[A033949(n+1), A004935(n)]`
-/

namespace A175594.P17692361542061517684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004935 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175594.P17692361542061517684

namespace A175594

/-- `∪[A033949(n+1), A004935(n)]` -/
def P17692361542061517684.Spec : Prop :=
  ∀ n, (P17692361542061517684.a n : ℤ) = A175594 (n + 1)

end A175594

/-! ## A175594.P4550927686574178815

`∪[A033949(n+1), A004947(n)]`
-/

namespace A175594.P4550927686574178815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004947 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175594.P4550927686574178815

namespace A175594

/-- `∪[A033949(n+1), A004947(n)]` -/
def P4550927686574178815.Spec : Prop :=
  ∀ n, (P4550927686574178815.a n : ℤ) = A175594 (n + 1)

end A175594

/-! ## A175594.P12554252445261145132

`∪[A033949(n+1), A004949(n)]`
-/

namespace A175594.P12554252445261145132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004949 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175594.P12554252445261145132

namespace A175594

/-- `∪[A033949(n+1), A004949(n)]` -/
def P12554252445261145132.Spec : Prop :=
  ∀ n, (P12554252445261145132.a n : ℤ) = A175594 (n + 1)

end A175594

/-! ## A175594.P694377744566072934

`∪[A033949(n+1), A004965(n)]`
-/

namespace A175594.P694377744566072934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004965 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175594.P694377744566072934

namespace A175594

/-- `∪[A033949(n+1), A004965(n)]` -/
def P694377744566072934.Spec : Prop :=
  ∀ n, (P694377744566072934.a n : ℤ) = A175594 (n + 1)

end A175594

/-! ## A175594.P12591150154074620830

`∪[A033949(n+1), A004974(n)]`
-/

namespace A175594.P12591150154074620830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004974 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175594.P12591150154074620830

namespace A175594

/-- `∪[A033949(n+1), A004974(n)]` -/
def P12591150154074620830.Spec : Prop :=
  ∀ n, (P12591150154074620830.a n : ℤ) = A175594 (n + 1)

end A175594

/-! ## A175594.P8706757568312862192

`∪[A008594(n), A033949(n+1)]`
-/

namespace A175594.P8706757568312862192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175594.P8706757568312862192

namespace A175594

/-- `∪[A008594(n), A033949(n+1)]` -/
def P8706757568312862192.Spec : Prop :=
  ∀ n, (P8706757568312862192.a n : ℤ) = A175594 (n + 1)

end A175594

/-! ## A175594.P8201984679286527867

`∪[A014794(n), A033949(n+1)]`
-/

namespace A175594.P8201984679286527867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014794 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175594.P8201984679286527867

namespace A175594

/-- `∪[A014794(n), A033949(n+1)]` -/
def P8201984679286527867.Spec : Prop :=
  ∀ n, (P8201984679286527867.a n : ℤ) = A175594 (n + 1)

end A175594

/-! ## A175594.P6153903500182869126

`∪[A016912(n), A033949(n+1)]`
-/

namespace A175594.P6153903500182869126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016912 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175594.P6153903500182869126

namespace A175594

/-- `∪[A016912(n), A033949(n+1)]` -/
def P6153903500182869126.Spec : Prop :=
  ∀ n, (P6153903500182869126.a n : ℤ) = A175594 (n + 1)

end A175594

/-! ## A175594.P2591739662086640280

`∪[A032780(n), A033949(n+1)]`
-/

namespace A175594.P2591739662086640280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032780 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175594.P2591739662086640280

namespace A175594

/-- `∪[A032780(n), A033949(n+1)]` -/
def P2591739662086640280.Spec : Prop :=
  ∀ n, (P2591739662086640280.a n : ℤ) = A175594 (n + 1)

end A175594

/-! ## A175594.P17833453315571400411

`∪[A063497(n), A033949(n+1)]`
-/

namespace A175594.P17833453315571400411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063497 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175594.P17833453315571400411

namespace A175594

/-- `∪[A063497(n), A033949(n+1)]` -/
def P17833453315571400411.Spec : Prop :=
  ∀ n, (P17833453315571400411.a n : ℤ) = A175594 (n + 1)

end A175594

/-! ## A175594.P10757772461017343261

`A180634(n+2)%(13*n+1)`
-/

namespace A175594.P10757772461017343261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180634 (n + 2)) (13 * n + 1 : ℤ)

end

end A175594.P10757772461017343261

namespace A175594

/-- `A180634(n+2)%(13*n+1)` -/
def P10757772461017343261.Spec : Prop :=
  ∀ n, P10757772461017343261.a n = A175594 (n + 1)

end A175594

/-! ## A175594.P9942542570328254202

`eq[C(C(2, n), 2), A046145(n)]`
-/

namespace A175594.P9942542570328254202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175594.P9942542570328254202

namespace A175594

/-- `eq[C(C(2, n), 2), A046145(n)]` -/
def P9942542570328254202.Spec : Prop :=
  ∀ n, (P9942542570328254202.a n : ℤ) = A175594 (n + 1)

end A175594

/-! ## A175594.P8502104657462166127

`A028253(A180634(n+2))`
-/

namespace A175594.P8502104657462166127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 (A180634 (n + 2)).toNat

end

end A175594.P8502104657462166127

namespace A175594

/-- `A028253(A180634(n+2))` -/
def P8502104657462166127.Spec : Prop :=
  ∀ n, P8502104657462166127.a n = A175594 (n + 1)

end A175594

/-! ## A175594.P11485026822309397791

`eq[A046145(n), A063524(n)]`
-/

namespace A175594.P11485026822309397791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175594.P11485026822309397791

namespace A175594

/-- `eq[A046145(n), A063524(n)]` -/
def P11485026822309397791.Spec : Prop :=
  ∀ n, (P11485026822309397791.a n : ℤ) = A175594 (n + 1)

end A175594

/-! ## A175594.P4269494390090941629

`eq[A046146(n), A063524(n)]`
-/

namespace A175594.P4269494390090941629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175594.P4269494390090941629

namespace A175594

/-- `eq[A046146(n), A063524(n)]` -/
def P4269494390090941629.Spec : Prop :=
  ∀ n, (P4269494390090941629.a n : ℤ) = A175594 (n + 1)

end A175594

/-!
# A175595: Square array A(n,t), n>=0, t>=0, read by antidiagonals: A(n,t) is the number of t-core partitions of n.

The programs for A175595, there is no canonical definition to state claims against.
-/

/-! ## A175595.P13678872960342038790

`or(A054522(n+1), A267676(A000032(n)))`
-/

namespace A175595.P13678872960342038790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054522 (n + 1)) (A267676 (A000032 n).toNat)

end

end A175595.P13678872960342038790

/-! ## A175595.P15128333920998574906

`or(A128589(n+1), A267676(A000032(n)))`
-/

namespace A175595.P15128333920998574906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A128589 (n + 1)) (A267676 (A000032 n).toNat)

end

end A175595.P15128333920998574906

/-! ## A175595.P2118115812757921553

`or(A143810(n+1), A267676(A000032(n)))`
-/

namespace A175595.P2118115812757921553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A143810 (n + 1)) (A267676 (A000032 n).toNat)

end

end A175595.P2118115812757921553

/-! ## A175595.P7157069317175019398

`or(A000035(A025620(n+1)), A128589(n+1))`
-/

namespace A175595.P7157069317175019398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A025620 (n + 1)).toNat) (A128589 (n + 1))

end

end A175595.P7157069317175019398

/-! ## A175595.P8940382484671306615

`or(A000035(A025620(n+1)), A143810(n+1))`
-/

namespace A175595.P8940382484671306615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A025620 (n + 1)).toNat) (A143810 (n + 1))

end

end A175595.P8940382484671306615

/-!
# A175596: Partial products of A007425.

The programs for A175596, the canonical program `A175596.P12327750007802474995` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175596 has offset 1).

The definition of A175596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175596.P12327750007802474995

`∏[∏{e}[n+1, C(#+2, 2)]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175596

/-- `∏[∏{e}[n+1, C(#+2, 2)]]` -/
def P12327750007802474995.Spec : Prop :=
  ∀ n, (P12327750007802474995.a n : ℤ) = A175596 (n + 1)

theorem P12327750007802474995.correct : P12327750007802474995.Spec := by
  intro n
  simp only [A175596, Nat.add_sub_cancel]

end A175596

/-! ## A175596.P169151557555565074

`a(n-1)*∏{e}[n+1, C(#+2, 2)]` with `a(0)=1`
-/

namespace A175596.P169151557555565074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 2) 2)

end

end A175596.P169151557555565074

namespace A175596

/-- `a(n-1)*∏{e}[n+1, C(#+2, 2)]` -/
def P169151557555565074.Spec : Prop :=
  ∀ n, (P169151557555565074.a n : ℤ) = A175596 (n + 1)

end A175596

/-! ## A175596.P15531252808507204229

`∏[A007425(n+1)]`
-/

namespace A175596.P15531252808507204229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175596.P15531252808507204229

namespace A175596

/-- `∏[A007425(n+1)]` -/
def P15531252808507204229.Spec : Prop :=
  ∀ n, P15531252808507204229.a n = A175596 (n + 1)

end A175596

/-! ## A175596.P13576609326649518819

`∏[sqrt(A097988(n+1))]`
-/

namespace A175596.P13576609326649518819
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A097988 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175596.P13576609326649518819

namespace A175596

/-- `∏[sqrt(A097988(n+1))]` -/
def P13576609326649518819.Spec : Prop :=
  ∀ n, P13576609326649518819.a n = (A175596 (n + 1) : ℝ)

end A175596

/-! ## A175596.P3933389611467399066

`∏[∑{d}[n+1, A000005(#)]]`
-/

namespace A175596.P3933389611467399066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000005 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175596.P3933389611467399066

namespace A175596

/-- `∏[∑{d}[n+1, A000005(#)]]` -/
def P3933389611467399066.Spec : Prop :=
  ∀ n, P3933389611467399066.a n = A175596 (n + 1)

end A175596

/-! ## A175596.P6315904994757168895

`∏[A034718(n+1)/(n+1)]`
-/

namespace A175596.P6315904994757168895
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034718 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175596.P6315904994757168895

namespace A175596

/-- `∏[A034718(n+1)/(n+1)]` -/
def P6315904994757168895.Spec : Prop :=
  ∀ n, P6315904994757168895.a n = (A175596 (n + 1) : ℚ)

end A175596

/-! ## A175596.P11213299370083573030

`∏[∑{d}[n+1, A032741(#)+1]]`
-/

namespace A175596.P11213299370083573030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A032741 d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175596.P11213299370083573030

namespace A175596

/-- `∏[∑{d}[n+1, A032741(#)+1]]` -/
def P11213299370083573030.Spec : Prop :=
  ∀ n, P11213299370083573030.a n = A175596 (n + 1)

end A175596

/-! ## A175596.P3004260516173755981

`∏[∏{e}[n+1, A000217(#+1)]]`
-/

namespace A175596.P3004260516173755981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000217 (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175596.P3004260516173755981

namespace A175596

/-- `∏[∏{e}[n+1, A000217(#+1)]]` -/
def P3004260516173755981.Spec : Prop :=
  ∀ n, P3004260516173755981.a n = A175596 (n + 1)

end A175596

/-! ## A175596.P8145477892928518799

`a(n-1)*A007425(A064988(n+1))` with `a(0)=1`
-/

namespace A175596.P8145477892928518799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A007425 (A064988 (n + 1)).toNat

end

end A175596.P8145477892928518799

namespace A175596

/-- `a(n-1)*A007425(A064988(n+1))` -/
def P8145477892928518799.Spec : Prop :=
  ∀ n, P8145477892928518799.a n = A175596 (n + 1)

end A175596

/-! ## A175596.P11038696123520643400

`a(n-1)*A000027(∑{d}[n+1, A000005(#)])` with `a(0)=1`
-/

namespace A175596.P11038696123520643400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000027 (∑ d ∈ Nat.divisors (f1 n), A000005 d).toNat

end

end A175596.P11038696123520643400

namespace A175596

/-- `a(n-1)*A000027(∑{d}[n+1, A000005(#)])` -/
def P11038696123520643400.Spec : Prop :=
  ∀ n, P11038696123520643400.a n = A175596 (n + 1)

end A175596

/-! ## A175596.P9644001286935234501

`∏[A388067((n+1)²)]`
-/

namespace A175596.P9644001286935234501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388067 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175596.P9644001286935234501

namespace A175596

/-- `∏[A388067((n+1)²)]` -/
def P9644001286935234501.Spec : Prop :=
  ∀ n, P9644001286935234501.a n = A175596 (n + 1)

end A175596

/-!
# A175597: Minimal run length in binary representation of n.

The programs for A175597, the canonical program `A175597.P7832513630052633468` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175597 has offset 1).

The definition of A175597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175597.P7832513630052633468

`A144790(A035928(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A175597

/-- `A144790(A035928(n+1))` -/
def P7832513630052633468.Spec : Prop :=
  ∀ n, P7832513630052633468.a n = A175597 (n + 1)

theorem P7832513630052633468.correct : P7832513630052633468.Spec := by
  intro n
  simp only [A175597, Nat.add_sub_cancel]

end A175597

/-! ## A175597.P6514039106686072174

`A144790(A253608(n+1))`
-/

namespace A175597.P6514039106686072174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (A253608 (n + 1)).toNat

end

end A175597.P6514039106686072174

namespace A175597

/-- `A144790(A253608(n+1))` -/
def P6514039106686072174.Spec : Prop :=
  ∀ n, P6514039106686072174.a n = A175597 (n + 1)

end A175597

/-! ## A175597.P12450853495005674270

`A090996(A335834(n+1))`
-/

namespace A175597.P12450853495005674270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A335834 (n + 1)).toNat

end

end A175597.P12450853495005674270

namespace A175597

/-- `A090996(A335834(n+1))` -/
def P12450853495005674270.Spec : Prop :=
  ∀ n, P12450853495005674270.a n = A175597 (n + 1)

end A175597

/-! ## A175597.P13609679664100977610

`A055396(A382255(n+1))`
-/

namespace A175597.P13609679664100977610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A382255 (n + 1)).toNat

end

end A175597.P13609679664100977610

namespace A175597

/-- `A055396(A382255(n+1))` -/
def P13609679664100977610.Spec : Prop :=
  ∀ n, P13609679664100977610.a n = A175597 (n + 1)

end A175597

/-! ## A175597.P11039532085060875278

`A090996(A361479(n+1))`
-/

namespace A175597.P11039532085060875278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A361479 (n + 1)).toNat

end

end A175597.P11039532085060875278

namespace A175597

/-- `A090996(A361479(n+1))` -/
def P11039532085060875278.Spec : Prop :=
  ∀ n, P11039532085060875278.a n = A175597 (n + 1)

end A175597

/-! ## A175597.P14653144253592046553

`A136480(A335835(n+1))`
-/

namespace A175597.P14653144253592046553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A335835 (n + 1)).toNat

end

end A175597.P14653144253592046553

namespace A175597

/-- `A136480(A335835(n+1))` -/
def P14653144253592046553.Spec : Prop :=
  ∀ n, P14653144253592046553.a n = A175597 (n + 1)

end A175597

/-! ## A175597.P8219645871495274496

`A144790(A290254(n+2))`
-/

namespace A175597.P8219645871495274496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (A290254 (n + 2)).toNat

end

end A175597.P8219645871495274496

namespace A175597

/-- `A144790(A290254(n+2))` -/
def P8219645871495274496.Spec : Prop :=
  ∀ n, P8219645871495274496.a n = A175597 (n + 1)

end A175597

/-! ## A175597.P1602151873139754822

`A043276(n+1)-A175599(n+1)`
-/

namespace A175597.P1602151873139754822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1) - A175599 (n + 1)

end

end A175597.P1602151873139754822

namespace A175597

/-- `A043276(n+1)-A175599(n+1)` -/
def P1602151873139754822.Spec : Prop :=
  ∀ n, P1602151873139754822.a n = A175597 (n + 1)

end A175597

/-! ## A175597.P17964836279618329563

`A175681(n+1)-A043276(n+1)`
-/

namespace A175597.P17964836279618329563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175681 (n + 1) - A043276 (n + 1)

end

end A175597.P17964836279618329563

namespace A175597

/-- `A175681(n+1)-A043276(n+1)` -/
def P17964836279618329563.Spec : Prop :=
  ∀ n, P17964836279618329563.a n = A175597 (n + 1)

end A175597

/-! ## A175597.P4043883077145999534

`A175665(n+1)/A043276(n+1)`
-/

namespace A175597.P4043883077145999534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175665 (n + 1) : ℚ) / (A043276 (n + 1) : ℚ)

end

end A175597.P4043883077145999534

namespace A175597

/-- `A175665(n+1)/A043276(n+1)` -/
def P4043883077145999534.Spec : Prop :=
  ∀ n, P4043883077145999534.a n = (A175597 (n + 1) : ℚ)

end A175597

/-!
# A175599: The difference between maximal run length and minimal run length in binary representation of n.

The programs for A175599, the canonical program `A175599.P15103203248488645960` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175599 has offset 1).

The definition of A175599 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043276, A175597, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175599.P15103203248488645960

`A043276(n+1)-A175597(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A175599

/-- `A043276(n+1)-A175597(n+1)` -/
def P15103203248488645960.Spec : Prop :=
  ∀ n, P15103203248488645960.a n = A175599 (n + 1)

theorem P15103203248488645960.correct : P15103203248488645960.Spec := by
  intro n
  simp only [A175599, Nat.add_sub_cancel]

end A175599

/-! ## A175599.P10503412467756989040

`A243055(A382255(n+1))`
-/

namespace A175599.P10503412467756989040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A382255 (n + 1)).toNat

end

end A175599.P10503412467756989040

namespace A175599

/-- `A243055(A382255(n+1))` -/
def P10503412467756989040.Spec : Prop :=
  ∀ n, P10503412467756989040.a n = A175599 (n + 1)

end A175599

/-! ## A175599.P938112857708182172

`A043278(A000695(n+1))-A175597(n+1)`
-/

namespace A175599.P938112857708182172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A000695 (n + 1)).toNat - A175597 (n + 1)

end

end A175599.P938112857708182172

namespace A175599

/-- `A043278(A000695(n+1))-A175597(n+1)` -/
def P938112857708182172.Spec : Prop :=
  ∀ n, P938112857708182172.a n = A175599 (n + 1)

end A175599

/-! ## A175599.P14619313454568010269

`A043276(n+1)-A144790(A035928(n+1))`
-/

namespace A175599.P14619313454568010269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1) - A144790 (A035928 (n + 1)).toNat

end

end A175599.P14619313454568010269

namespace A175599

/-- `A043276(n+1)-A144790(A035928(n+1))` -/
def P14619313454568010269.Spec : Prop :=
  ∀ n, P14619313454568010269.a n = A175599 (n + 1)

end A175599

/-! ## A175599.P3070793533667839520

`A043277(A055661(n+1))-A175597(n+1)`
-/

namespace A175599.P3070793533667839520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A055661 (n + 1)).toNat - A175597 (n + 1)

end

end A175599.P3070793533667839520

namespace A175599

/-- `A043277(A055661(n+1))-A175597(n+1)` -/
def P3070793533667839520.Spec : Prop :=
  ∀ n, P3070793533667839520.a n = A175599 (n + 1)

end A175599

/-! ## A175599.P17138657014602489594

`A043276(n+1)-A144790(A253608(n+1))`
-/

namespace A175599.P17138657014602489594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1) - A144790 (A253608 (n + 1)).toNat

end

end A175599.P17138657014602489594

namespace A175599

/-- `A043276(n+1)-A144790(A253608(n+1))` -/
def P17138657014602489594.Spec : Prop :=
  ∀ n, P17138657014602489594.a n = A175599 (n + 1)

end A175599

/-! ## A175599.P5267404202646523059

`A043276(n+1)-A090996(A335834(n+1))`
-/

namespace A175599.P5267404202646523059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1) - A090996 (A335834 (n + 1)).toNat

end

end A175599.P5267404202646523059

namespace A175599

/-- `A043276(n+1)-A090996(A335834(n+1))` -/
def P5267404202646523059.Spec : Prop :=
  ∀ n, P5267404202646523059.a n = A175599 (n + 1)

end A175599

/-! ## A175599.P1227516030963582274

`A043276(n+1)-A136480(A335835(n+1))`
-/

namespace A175599.P1227516030963582274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1) - A136480 (A335835 (n + 1)).toNat

end

end A175599.P1227516030963582274

namespace A175599

/-- `A043276(n+1)-A136480(A335835(n+1))` -/
def P1227516030963582274.Spec : Prop :=
  ∀ n, P1227516030963582274.a n = A175599 (n + 1)

end A175599

/-! ## A175599.P18329072297084760222

`A067132(A286468(n+1))-A175597(n+1)`
-/

namespace A175599.P18329072297084760222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (A286468 (n + 1)).toNat - A175597 (n + 1)

end

end A175599.P18329072297084760222

namespace A175599

/-- `A067132(A286468(n+1))-A175597(n+1)` -/
def P18329072297084760222.Spec : Prop :=
  ∀ n, P18329072297084760222.a n = A175599 (n + 1)

end A175599

/-! ## A175599.P9746831886115912426

`A038374(A335835(n+1))-A175597(n+1)`
-/

namespace A175599.P9746831886115912426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A335835 (n + 1)).toNat - A175597 (n + 1)

end

end A175599.P9746831886115912426

namespace A175599

/-- `A038374(A335835(n+1))-A175597(n+1)` -/
def P9746831886115912426.Spec : Prop :=
  ∀ n, P9746831886115912426.a n = A175599 (n + 1)

end A175599

/-! ## A175599.P8816070956938660649

`A043277(A005836(n+2))-A175597(n+1)`
-/

namespace A175599.P8816070956938660649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A005836 (n + 2)).toNat - A175597 (n + 1)

end

end A175599.P8816070956938660649

namespace A175599

/-- `A043277(A005836(n+2))-A175597(n+1)` -/
def P8816070956938660649.Spec : Prop :=
  ∀ n, P8816070956938660649.a n = A175599 (n + 1)

end A175599

/-! ## A175599.P11226415492533112685

`A038374(A290254(n+2))-A175597(n+1)`
-/

namespace A175599.P11226415492533112685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A290254 (n + 2)).toNat - A175597 (n + 1)

end

end A175599.P11226415492533112685

namespace A175599

/-- `A038374(A290254(n+2))-A175597(n+1)` -/
def P11226415492533112685.Spec : Prop :=
  ∀ n, P11226415492533112685.a n = A175599 (n + 1)

end A175599

/-! ## A175599.P18302693695462494513

`A043276(n+1)+A043276(n+1)-A175681(n+1)`
-/

namespace A175599.P18302693695462494513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1) + (A043276 (n + 1) - A175681 (n + 1))

end

end A175599.P18302693695462494513

namespace A175599

/-- `A043276(n+1)+A043276(n+1)-A175681(n+1)` -/
def P18302693695462494513.Spec : Prop :=
  ∀ n, P18302693695462494513.a n = A175599 (n + 1)

end A175599

/-! ## A175599.P1291611929954873780

`A175681(n+1)-A175597(n+1)-A175597(n+1)`
-/

namespace A175599.P1291611929954873780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175681 (n + 1) - A175597 (n + 1) - A175597 (n + 1)

end

end A175599.P1291611929954873780

namespace A175599

/-- `A175681(n+1)-A175597(n+1)-A175597(n+1)` -/
def P1291611929954873780.Spec : Prop :=
  ∀ n, P1291611929954873780.a n = A175599 (n + 1)

end A175599

/-! ## A175599.P12634206973727516637

`A043276(n+1)-A175665(n+1)/A043276(n+1)`
-/

namespace A175599.P12634206973727516637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043276 (n + 1) : ℚ) - (A175665 (n + 1) : ℚ) / (A043276 (n + 1) : ℚ)

end

end A175599.P12634206973727516637

namespace A175599

/-- `A043276(n+1)-A175665(n+1)/A043276(n+1)` -/
def P12634206973727516637.Spec : Prop :=
  ∀ n, P12634206973727516637.a n = (A175599 (n + 1) : ℚ)

end A175599

/-! ## A175599.P1396315033670813884

`A175665(n+1)/A175597(n+1)-A175597(n+1)`
-/

namespace A175599.P1396315033670813884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175665 (n + 1) : ℚ) / (A175597 (n + 1) : ℚ) - (A175597 (n + 1) : ℚ)

end

end A175599.P1396315033670813884

namespace A175599

/-- `A175665(n+1)/A175597(n+1)-A175597(n+1)` -/
def P1396315033670813884.Spec : Prop :=
  ∀ n, P1396315033670813884.a n = (A175599 (n + 1) : ℚ)

end A175599

