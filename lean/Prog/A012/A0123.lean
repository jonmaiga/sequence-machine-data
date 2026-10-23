import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C018
import Seq.B000.C023
import Seq.B000.C025
import Seq.B001.C000
import Seq.B001.C002
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C002
import Seq.B005.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
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
# A012301: Expansion of e.g.f. arctanh(sin(x)*sin(x)), even powers only.

The programs for A012301, there is no canonical definition to state claims against.
-/

/-! ## A012301.P10958549363102925008

`A013208(2*n)/(-1)^n`
-/

namespace A012301.P10958549363102925008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013208 (2 * n) : ℚ) / ((-1) ^ n : ℚ)

end

end A012301.P10958549363102925008

/-! ## A012301.P5938769784154539745

`A013208(2*n)*A033999(n)`
-/

namespace A012301.P5938769784154539745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013208 (2 * n) * A033999 n

end

end A012301.P5938769784154539745

/-! ## A012301.P13045245123462348110

`-(A013208(2*n)*A062157(n))`
-/

namespace A012301.P13045245123462348110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A013208 (2 * n) * A062157 n)

end

end A012301.P13045245123462348110

/-! ## A012301.P8309884185779900128

`A013208(2*n)*A062157(n+1)`
-/

namespace A012301.P8309884185779900128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013208 (2 * n) * A062157 (n + 1)

end

end A012301.P8309884185779900128

/-!
# A012303: Expansion of e.g.f. sech(sin(x)*sin(x)), even powers only.

The programs for A012303, there is no canonical definition to state claims against.
-/

/-! ## A012303.P10295010716004854851

`A009259(2*n+1)*A206437(A181825(n+1))`
-/

namespace A012303.P10295010716004854851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009259 (2 * n + 1) * A206437 (A181825 (n + 1)).toNat

end

end A012303.P10295010716004854851

/-!
# A012304: Expansion of e.g.f.: exp(arcsin(x)*log(x+1)).

The programs for A012304, there is no canonical definition to state claims against.
-/

/-! ## A012304.P16963969530574826957

`A012313(n)+A012309(n)`
-/

namespace A012304.P16963969530574826957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012313 n + A012309 n

end

end A012304.P16963969530574826957

/-! ## A012304.P16800656651206952717

`A012313(n)+A012305(A051022(n))`
-/

namespace A012304.P16800656651206952717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012313 n + A012305 (A051022 n).toNat

end

end A012304.P16800656651206952717

/-! ## A012304.P11787820800303318271

`A012313(A004902(n+1))+A012305(n)`
-/

namespace A012304.P11787820800303318271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012313 (A004902 (n + 1)).toNat + A012305 n

end

end A012304.P11787820800303318271

/-! ## A012304.P13335309557412754557

`A012314(A004902(n+1))+A012309(n)`
-/

namespace A012304.P13335309557412754557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012314 (A004902 (n + 1)).toNat + A012309 n

end

end A012304.P13335309557412754557

/-!
# A012305: Expansion of e.g.f. arcsin(arcsin(x)*log(x+1)).

The programs for A012305, there is no canonical definition to state claims against.
-/

/-! ## A012305.P15749084851832695445

`A012309(A002998(n))`
-/

namespace A012305.P15749084851832695445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012309 (A002998 n).toNat

end

end A012305.P15749084851832695445

/-! ## A012305.P13223322246995482037

`A012309(A039723(n))`
-/

namespace A012305.P13223322246995482037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012309 (A039723 n).toNat

end

end A012305.P13223322246995482037

/-! ## A012305.P16898324863227412881

`A012309(A051022(n))`
-/

namespace A012305.P16898324863227412881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012309 (A051022 n).toNat

end

end A012305.P16898324863227412881

/-! ## A012305.P5838330475145690030

`A012309(n)%A174250(n+1)`
-/

namespace A012305.P5838330475145690030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012309 n) (A174250 (n + 1))

end

end A012305.P5838330475145690030

/-!
# A012306: Expansion of e.g.f. tan(arcsin(x) * log(x+1)).

The programs for A012306, there is no canonical definition to state claims against.
-/

/-! ## A012306.P2693050238645446083

`A012312(A087051(n))`
-/

namespace A012306.P2693050238645446083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012312 (A087051 n).toNat

end

end A012306.P2693050238645446083

/-! ## A012306.P11011552454110163402

`A012312(A001633(n+1))`
-/

namespace A012306.P11011552454110163402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012312 (A001633 (n + 1)).toNat

end

end A012306.P11011552454110163402

/-! ## A012306.P8621189001454770333

`A012312(A004882(n+1))`
-/

namespace A012306.P8621189001454770333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012312 (A004882 (n + 1)).toNat

end

end A012306.P8621189001454770333

/-! ## A012306.P8340548207393176758

`A012312(n*A040790(n))`
-/

namespace A012306.P8340548207393176758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012312 ((n : ℤ) * A040790 n).toNat

end

end A012306.P8340548207393176758

/-! ## A012306.P10077790810744494427

`A012312(n*A123895(n))`
-/

namespace A012306.P10077790810744494427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012312 ((n : ℤ) * A123895 n).toNat

end

end A012306.P10077790810744494427

/-!
# A012307: Expansion of e.g.f. arctan(arcsin(x) * log(x+1)).

The programs for A012307, there is no canonical definition to state claims against.
-/

/-! ## A012307.P7778742600855095712

`A012311(A051022(n))`
-/

namespace A012307.P7778742600855095712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012311 (A051022 n).toNat

end

end A012307.P7778742600855095712

/-! ## A012307.P8983122933666219566

`A012311(A106003(n))`
-/

namespace A012307.P8983122933666219566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012311 (A106003 n).toNat

end

end A012307.P8983122933666219566

/-! ## A012307.P12128760139630129870

`A012311(A004904(n+1))`
-/

namespace A012307.P12128760139630129870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012311 (A004904 (n + 1)).toNat

end

end A012307.P12128760139630129870

/-! ## A012307.P5527852371870239858

`A012311(A085908(n+1)-1)`
-/

namespace A012307.P5527852371870239858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012311 (A085908 (n + 1) - 1).toNat

end

end A012307.P5527852371870239858

/-! ## A012307.P2642434723986024738

`A347246(A086302(n))+A012311(n)`
-/

namespace A012307.P2642434723986024738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347246 (A086302 n).toNat + A012311 n

end

end A012307.P2642434723986024738

/-!
# A012309: Expansion of e.g.f. sinh(arcsin(x) * log(x+1)).

The programs for A012309, there is no canonical definition to state claims against.
-/

/-! ## A012309.P2748229412360075623

`A012304(n)-A012313(n)`
-/

namespace A012309.P2748229412360075623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012304 n - A012313 n

end

end A012309.P2748229412360075623

/-! ## A012309.P10242799611293057431

`A012304(n)+A008683(A068486(n+1))*A012313(n)`
-/

namespace A012309.P10242799611293057431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012304 n + A008683 (A068486 (n + 1)).toNat * A012313 n

end

end A012309.P10242799611293057431

/-!
# A012310: Expansion of e.g.f. arcsinh(arcsin(x) * log(x+1)).

The programs for A012310, there is no canonical definition to state claims against.
-/

/-! ## A012310.P3865385156646803676

`xor(A012511(n), A343722(n!))`
-/

namespace A012310.P3865385156646803676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A012511 n) (A343722 (Nat.factorial n))

end

end A012310.P3865385156646803676

/-! ## A012310.P16255720276596657086

`A012511(n)%A169874(n+1)`
-/

namespace A012310.P16255720276596657086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012511 n) (A169874 (n + 1))

end

end A012310.P16255720276596657086

/-! ## A012310.P16376607692510238103

`A012309(n)%A000005(A175925(n))`
-/

namespace A012310.P16376607692510238103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012309 n) (A000005 (A175925 n).toNat)

end

end A012310.P16376607692510238103

/-!
# A012313: Expansion of e.g.f.: cosh(arcsin(x)*log(x+1)).

The programs for A012313, there is no canonical definition to state claims against.
-/

/-! ## A012313.P5301442559227811756

`A012304(n)-A012309(n)`
-/

namespace A012313.P5301442559227811756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012304 n - A012309 n

end

end A012313.P5301442559227811756

/-! ## A012313.P6503240331994536237

`A012304(n)+A008683(A068486(n+1))*A012309(n)`
-/

namespace A012313.P6503240331994536237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012304 n + A008683 (A068486 (n + 1)).toNat * A012309 n

end

end A012313.P6503240331994536237

/-! ## A012313.P10514770671734914700

`A012304(n)-A012305(A051022(n))`
-/

namespace A012313.P10514770671734914700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012304 n - A012305 (A051022 n).toNat

end

end A012313.P10514770671734914700

/-!
# A012316: Expansion of e.g.f.: exp(arcsin(x)*exp(x)).

The programs for A012316, there is no canonical definition to state claims against.
-/

/-! ## A012316.P286404137413054829

`A012325(n)+A012321(n)`
-/

namespace A012316.P286404137413054829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012325 n + A012321 n

end

end A012316.P286404137413054829

/-! ## A012316.P1357209023588062514

`A012325(n)-A012321(n)*A057428(n)`
-/

namespace A012316.P1357209023588062514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012325 n - A012321 n * A057428 n

end

end A012316.P1357209023588062514

/-! ## A012316.P1055377709944014397

`A004525(A162326(n)+A151458(n))`
-/

namespace A012316.P1055377709944014397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A162326 n + A151458 n).toNat

end

end A012316.P1055377709944014397

/-!
# A012317: Expansion of e.g.f. arcsin(arcsin(x) * exp(x)).

The programs for A012317, there is no canonical definition to state claims against.
-/

/-! ## A012317.P9405211463741161534

`A367405(2*n+7)+A060715(A001147(n))`
-/

namespace A012317.P9405211463741161534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367405 (2 * n + 7) + A060715 (A001147 n).toNat

end

end A012317.P9405211463741161534

/-! ## A012317.P3175893406628660764

`A023443(A076795(n))+A001818(A156883(n))`
-/

namespace A012317.P3175893406628660764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A076795 n).toNat + A001818 (A156883 n).toNat

end

end A012317.P3175893406628660764

/-!
# A012318: tan(arcsin(x)*exp(x))=x+2/2!*x^2+6/3!*x^3+32/4!*x^4+240/5!*x^5...

The programs for A012318, there is no canonical definition to state claims against.
-/

/-! ## A012318.P8764390584801463367

`A002264(A294381(n))-A002264(A000142(n))`
-/

namespace A012318.P8764390584801463367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A294381 n).toNat - A002264 (A000142 n).toNat

end

end A012318.P8764390584801463367

/-! ## A012318.P1095945567841289770

`n*∏{p}[A052713(n), #-1]`
-/

namespace A012318.P1095945567841289770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1))

end

end A012318.P1095945567841289770

/-!
# A012319: Expansion of e.g.f. arctan(arcsin(x) * exp(x)).

The programs for A012319, there is no canonical definition to state claims against.
-/

/-! ## A012319.P7066041779017290935

`A235796(A213918(n+1))+n`
-/

namespace A012319.P7066041779017290935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (A213918 (n + 1)).toNat + (n : ℤ)

end

end A012319.P7066041779017290935

/-! ## A012319.P14852540595594507305

`n-A085862(A082245(n+1))`
-/

namespace A012319.P14852540595594507305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A085862 (A082245 (n + 1)).toNat

end

end A012319.P14852540595594507305

/-!
# A012321: Expansion of e.g.f. sinh(arcsin(x) * exp(x)).

The programs for A012321, there is no canonical definition to state claims against.
-/

/-! ## A012321.P10577219626080797991

`A012316(n)-A012325(n)`
-/

namespace A012321.P10577219626080797991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012316 n - A012325 n

end

end A012321.P10577219626080797991

/-! ## A012321.P15565193385309926556

`A012316(n)+A008683(A068486(n+1))*A012325(n)`
-/

namespace A012321.P15565193385309926556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012316 n + A008683 (A068486 (n + 1)).toNat * A012325 n

end

end A012321.P15565193385309926556

/-! ## A012321.P8791592942113198477

`A051626(n+2)+A008612(A005395(n+1))`
-/

namespace A012321.P8791592942113198477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 2) + A008612 (A005395 (n + 1)).toNat

end

end A012321.P8791592942113198477

/-!
# A012322: Expansion of e.g.f. arcsinh(arcsin(x) * exp(x)).

The programs for A012322, there is no canonical definition to state claims against.
-/

/-! ## A012322.P16521551498507189348

`or(n, n-A088169(A052302(n)))`
-/

namespace A012322.P16521551498507189348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - A088169 (A052302 n).toNat)

end

end A012322.P16521551498507189348

/-! ## A012322.P1171244839799356225

`or(n, n-A054899(A162723(n)))`
-/

namespace A012322.P1171244839799356225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - A054899 (A162723 n).toNat)

end

end A012322.P1171244839799356225

/-! ## A012322.P4344783058638005367

`2*n-∑[A178334(A015555(n)+n)]`
-/

namespace A012322.P4344783058638005367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A015555 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012322.P4344783058638005367

/-!
# A012323: Expansion of e.g.f.: tanh(arcsin(x)*exp(x))=x+2/2!*x^2+2/3!*x^3-16/4!*x^4-160/5!*x^5...

The programs for A012323, there is no canonical definition to state claims against.
-/

/-! ## A012323.P13278874686277678947

`∑{d}[n+1, #]-(A048865((n-1)^n+2*n+1)+1)`
-/

namespace A012323.P13278874686277678947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (A048865 (((n : ℤ) - 1) ^ n + (2 * n : ℤ) + 1).toNat + 1)

end

end A012323.P13278874686277678947

/-! ## A012323.P6670869309797604892

`n-A352669(A005578(n))`
-/

namespace A012323.P6670869309797604892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A352669 (A005578 n).toNat

end

end A012323.P6670869309797604892

/-!
# A012324: arctanh(arcsin(x)*exp(x))=x+2/2!*x^2+6/3!*x^3+32/4!*x^4+248/5!*x^5...

The programs for A012324, there is no canonical definition to state claims against.
-/

/-! ## A012324.P1486400299291828029

`A042948(A127610(n))+A000720(n+1)`
-/

namespace A012324.P1486400299291828029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A127610 n).toNat + A000720 (n + 1)

end

end A012324.P1486400299291828029

/-! ## A012324.P18300428225618078707

`A373067(A266335(n))`
-/

namespace A012324.P18300428225618078707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373067 (A266335 n).toNat

end

end A012324.P18300428225618078707

/-!
# A012325: cosh(arcsin(x)*exp(x))=1+1/2!*x^2+6/3!*x^3+29/4!*x^4+140/5!*x^5...

The programs for A012325, there is no canonical definition to state claims against.
-/

/-! ## A012325.P6847003980506452887

`A012316(n)-A012321(n)`
-/

namespace A012325.P6847003980506452887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012316 n - A012321 n

end

end A012325.P6847003980506452887

/-! ## A012325.P13779912721578079837

`A012316(n)+A008683(A068486(n+1))*A012321(n)`
-/

namespace A012325.P13779912721578079837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012316 n + A008683 (A068486 (n + 1)).toNat * A012321 n

end

end A012325.P13779912721578079837

/-! ## A012325.P3864518354693940569

`A012316(n)+A012321(n)*A316441(A020639(n+1))`
-/

namespace A012325.P3864518354693940569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012316 n + A012321 n * A316441 (A020639 (n + 1)).toNat

end

end A012325.P3864518354693940569

/-!
# A012326: sec(arcsin(x)*exp(x))=1+1/2!*x^2+6/3!*x^3+33/4!*x^4+220/5!*x^5...

The programs for A012326, there is no canonical definition to state claims against.
-/

/-! ## A012326.P6961581826545867271

`A325353(∑[floor(ϕ²*a(n-1))])-n` with `a(0)=0, a(1)=1`
-/

namespace A012326.P6961581826545867271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325353 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A012326.P6961581826545867271

/-! ## A012326.P16856997423671830732

`A325353(Δ[floor(ϕ*ϕ*a(n-1))])-n` with `a(0)=0, a(1)=1`
-/

namespace A012326.P16856997423671830732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325353 (f1 (n + 1) - f1 n).toNat - (n : ℤ)

end

end A012326.P16856997423671830732

/-!
# A012328: exp(arcsin(x)*sin(x))=1+2/2!*x^2+12/4!*x^4+160/6!*x^6+5264/8!*x^8...

The programs for A012328, there is no canonical definition to state claims against.
-/

/-! ## A012328.P5849924525531790074

`A012337(n)+A012333(abs(1-n))`
-/

namespace A012328.P5849924525531790074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012337 n + A012333 |1 - (n : ℤ)|.toNat

end

end A012328.P5849924525531790074

/-!
# A012330: tan(arcsin(x)*sin(x))=2/2!*x^2+280/6!*x^6+1344/8!*x^8+770848/10!*x^10...

The programs for A012330, there is no canonical definition to state claims against.
-/

/-! ## A012330.P7688573773948710467

`A012336(abs(A100443(n)))`
-/

namespace A012330.P7688573773948710467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012336 |A100443 n|.toNat

end

end A012330.P7688573773948710467

/-!
# A012331: arctan(arcsin(x)*sin(x))=2/2!*x^2-200/6!*x^6+1344/8!*x^8+609568/10!*x^10...

The programs for A012331, there is no canonical definition to state claims against.
-/

/-! ## A012331.P7489676961980248741

`A012335(A000166(n)/A008278(n+1))`
-/

namespace A012331.P7489676961980248741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012335 (SequenceMachineLib.roundAway ((A000166 n : ℚ) / (A008278 (n + 1) : ℚ))).toNat

end

end A012331.P7489676961980248741

/-!
# A012332: cos(arcsin(x)*sin(x))=1-12/4!*x^4-560/8!*x^8-120960/10!*x^10...

The programs for A012332, there is no canonical definition to state claims against.
-/

/-! ## A012332.P15865693272084420282

`A012455(n)^(3^n)^and(1, n)`
-/

namespace A012332.P15865693272084420282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012455 n ^ (3 ^ n) ^ Nat.land 1 n

end

end A012332.P15865693272084420282

/-!
# A012333: sinh(arcsin(x)*sin(x))=2/2!*x^2+160/6!*x^6+1344/8!*x^8+216448/10!*x^10...

The programs for A012333, there is no canonical definition to state claims against.
-/

/-! ## A012333.P2577619039557700146

`A012328(n+1)-A012337(n+1)`
-/

namespace A012333.P2577619039557700146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012328 (n + 1) - A012337 (n + 1)

end

end A012333.P2577619039557700146

/-!
# A012337: cosh(arcsin(x)*sin(x))=1+12/4!*x^4+3920/8!*x^8+120960/10!*x^10...

The programs for A012337, there is no canonical definition to state claims against.
-/

/-! ## A012337.P8510709630848626082

`A028711(C(n²+2, 3))`
-/

namespace A012337.P8510709630848626082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028711 (Nat.choose (n ^ 2 + 2) 3)

end

end A012337.P8510709630848626082

/-!
# A012338: sec(arcsin(x)*sin(x))=1+12/4!*x^4+10640/8!*x^8+120960/10!*x^10...

The programs for A012338, there is no canonical definition to state claims against.
-/

/-! ## A012338.P12446630829570390409

`A378855(A356288(n+2))`
-/

namespace A012338.P12446630829570390409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378855 (A356288 (n + 2)).toNat

end

end A012338.P12446630829570390409

/-!
# A012339: Expansion of e.g.f.: sech(arcsin(x)*sin(x)).

The programs for A012339, there is no canonical definition to state claims against.
-/

/-! ## A012339.P14713573774180107951

`A214554(2*n²)*A214568(n+1)`
-/

namespace A012339.P14713573774180107951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214554 (2 * n ^ 2) * A214568 (n + 1)

end

end A012339.P14713573774180107951

/-!
# A012340: exp(arcsin(x)*arcsin(x))=1+2/2!*x^2+20/4!*x^4+488/6!*x^6+22416/8!*x^8...

The programs for A012340, there is no canonical definition to state claims against.
-/

/-! ## A012340.P4238443717080576413

`A000027(A012349(n)+A012341(n))`
-/

namespace A012340.P4238443717080576413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A012349 n + A012341 n).toNat

end

end A012340.P4238443717080576413

/-!
# A012341: arcsin(arcsin(x)*arcsin(x))=2/2!*x^2+8/4!*x^4+248/6!*x^6+11328/8!*x^8...

The programs for A012341, there is no canonical definition to state claims against.
-/

/-! ## A012341.P15826941163281163279

`A000027(A012340(n))-A012349(n)`
-/

namespace A012341.P15826941163281163279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A012340 n).toNat - A012349 n

end

end A012341.P15826941163281163279

/-!
# A012342: tan(arcsin(x)*arcsin(x))=2/2!*x^2+8/4!*x^4+368/6!*x^6+18048/8!*x^8...

The programs for A012342, there is no canonical definition to state claims against.
-/

/-! ## A012342.P10555702263705320599

`A012348(abs(A012322(n)))`
-/

namespace A012342.P10555702263705320599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012348 |A012322 n|.toNat

end

end A012342.P10555702263705320599

/-!
# A012344: cos(arcsin(x)*arcsin(x))=1-12/4!*x^4-240/6!*x^6-7728/8!*x^8...

The programs for A012344, there is no canonical definition to state claims against.
-/

/-! ## A012344.P2398288169578195817

`A000005(A000612(n))*A012003(n)`
-/

namespace A012344.P2398288169578195817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000612 n).toNat * A012003 n

end

end A012344.P2398288169578195817

/-!
# A012345: Coefficients in the expansion sinh(arcsin(x)*arcsin(x)) = 2*x^2/2!+8*x^4/4!+248*x^6/6!+11328*x^8/8!+...

The programs for A012345, there is no canonical definition to state claims against.
-/

/-! ## A012345.P17204102551482039169

`A012340(n+1)-A012349(n+1)`
-/

namespace A012345.P17204102551482039169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012340 (n + 1) - A012349 (n + 1)

end

end A012345.P17204102551482039169

/-!
# A012346: E.g.f.: arcsinh(arcsin(x)^2) (even powers only).

The programs for A012346, there is no canonical definition to state claims against.
-/

/-! ## A012346.P4527034526515751702

`A012649(n)*A062157(n^6)`
-/

namespace A012346.P4527034526515751702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012649 n * A062157 (n ^ 6)

end

end A012346.P4527034526515751702

/-!
# A012347: tanh(arcsin(x)*arcsin(x))=2/2!*x^2+8/4!*x^4-112/6!*x^6-8832/8!*x^8...

The programs for A012347, there is no canonical definition to state claims against.
-/

/-! ## A012347.P17387174644815273226

`A045891(2*n)-A000010(A000142(2*n))`
-/

namespace A012347.P17387174644815273226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (2 * n) - A000010 (A000142 (2 * n)).toNat

end

end A012347.P17387174644815273226

/-!
# A012349: cosh(arcsin(x)*arcsin(x))=1+12/4!*x^4+240/6!*x^6+11088/8!*x^8...

The programs for A012349, there is no canonical definition to state claims against.
-/

/-! ## A012349.P3448498614427701877

`A000027(A012340(n))-A012341(n)`
-/

namespace A012349.P3448498614427701877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A012340 n).toNat - A012341 n

end

end A012349.P3448498614427701877

/-!
# A012350: sec(arcsin(x)*arcsin(x))=1+12/4!*x^4+240/6!*x^6+17808/8!*x^8...

The programs for A012350, there is no canonical definition to state claims against.
-/

/-! ## A012350.P1653976122969125475

`(A339947(n!)-(sqrt(and(4, n))+n))*2^n`
-/

namespace A012350.P1653976122969125475
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A339947 (Nat.factorial n) : ℝ) - (Real.sqrt (Nat.land 4 n : ℝ) + (n : ℝ))) * (2 ^ n : ℝ)

end

end A012350.P1653976122969125475

/-!
# A012351: sech(arcsin(x)*arcsin(x))=1-12/4!*x^4-240/6!*x^6-1008/8!*x^8...

The programs for A012351, there is no canonical definition to state claims against.
-/

/-! ## A012351.P14015151769839206082

`A125208(A083413(n+1))*A328079(n)`
-/

namespace A012351.P14015151769839206082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125208 (A083413 (n + 1)).toNat * A328079 n

end

end A012351.P14015151769839206082

/-!
# A012352: Expansion of e.g.f.: sin(tan(x)*log(x+1))=2/2!*x^2-3/3!*x^3+16/4!*x^4-50/5!*x^5...

The programs for A012352, there is no canonical definition to state claims against.
-/

/-! ## A012352.P11500864106851705182

`A012356(lcm(n, C(n, floor(n/5))))`
-/

namespace A012352.P11500864106851705182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012356 (Nat.lcm n (Nat.choose n ⌊(n : ℚ) / 5⌋.toNat))

end

end A012352.P11500864106851705182

/-! ## A012352.P889872362947173267

`A012356(A051022(n))`
-/

namespace A012352.P889872362947173267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012356 (A051022 n).toNat

end

end A012352.P889872362947173267

/-! ## A012352.P5252742823862861371

`A012356(A001633(n+1))`
-/

namespace A012352.P5252742823862861371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012356 (A001633 (n + 1)).toNat

end

end A012352.P5252742823862861371

/-! ## A012352.P4566797961063728766

`A012356(A050783(n+1))`
-/

namespace A012352.P4566797961063728766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012356 (A050783 (n + 1)).toNat

end

end A012352.P4566797961063728766

/-! ## A012352.P10464869271714446214

`A012356(A282782(n+1))`
-/

namespace A012352.P10464869271714446214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012356 (A282782 (n + 1)).toNat

end

end A012352.P10464869271714446214

/-!
# A012353: Expansion of e.g.f. arcsin(tan(x) * log(x+1)).

The programs for A012353, there is no canonical definition to state claims against.
-/

/-! ## A012353.P14822179473379132208

`A012355(lcm(n, C(n, floor(n/5))))`
-/

namespace A012353.P14822179473379132208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012355 (Nat.lcm n (Nat.choose n ⌊(n : ℚ) / 5⌋.toNat))

end

end A012353.P14822179473379132208

/-! ## A012353.P1427941468393963538

`A012355(A039723(n))`
-/

namespace A012353.P1427941468393963538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012355 (A039723 n).toNat

end

end A012353.P1427941468393963538

/-! ## A012353.P9703451199857461201

`A012355(A051022(n))`
-/

namespace A012353.P9703451199857461201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012355 (A051022 n).toNat

end

end A012353.P9703451199857461201

/-! ## A012353.P10418862022777975275

`A012355(A001633(n+1))`
-/

namespace A012353.P10418862022777975275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012355 (A001633 (n + 1)).toNat

end

end A012353.P10418862022777975275

/-! ## A012353.P3539451850186278116

`A012355(A282782(n+1))`
-/

namespace A012353.P3539451850186278116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012355 (A282782 (n + 1)).toNat

end

end A012353.P3539451850186278116

/-!
# A012354: Expansion of e.g.f. tan(tan(x) * log(x+1)).

The programs for A012354, there is no canonical definition to state claims against.
-/

/-! ## A012354.P13560384324204194060

`A012358(lcm(n, C(n, floor(n/5))))`
-/

namespace A012354.P13560384324204194060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012358 (Nat.lcm n (Nat.choose n ⌊(n : ℚ) / 5⌋.toNat))

end

end A012354.P13560384324204194060

/-! ## A012354.P6435007562559780273

`A012358(A001633(n+1))`
-/

namespace A012354.P6435007562559780273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012358 (A001633 (n + 1)).toNat

end

end A012354.P6435007562559780273

/-! ## A012354.P9547193673587995019

`A012358(A032799(n+1))`
-/

namespace A012354.P9547193673587995019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012358 (A032799 (n + 1)).toNat

end

end A012354.P9547193673587995019

/-! ## A012354.P10820077447744715955

`A012358(A050783(n+1))`
-/

namespace A012354.P10820077447744715955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012358 (A050783 (n + 1)).toNat

end

end A012354.P10820077447744715955

/-! ## A012354.P156151657712587330

`A012358(A047842(n)-10)`
-/

namespace A012354.P156151657712587330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012358 (A047842 n - 10).toNat

end

end A012354.P156151657712587330

/-!
# A012355: Expansion of e.g.f. sinh(tan(x) * log(x+1)).

The programs for A012355, there is no canonical definition to state claims against.
-/

/-! ## A012355.P18132371014477766987

`A009249(n)-A009163(n)`
-/

namespace A012355.P18132371014477766987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009249 n - A009163 n

end

end A012355.P18132371014477766987

/-!
# A012361: Expansion of e.g.f. arcsin(tan(x) * exp(x)).

The programs for A012361, there is no canonical definition to state claims against.
-/

/-! ## A012361.P5018512743597016490

`A334267(A302905(n)+n)`
-/

namespace A012361.P5018512743597016490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (A302905 n + (n : ℤ)).toNat

end

end A012361.P5018512743597016490

/-! ## A012361.P13399044370104425476

`n*A091543(A000111(n))`
-/

namespace A012361.P13399044370104425476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A091543 (A000111 n).toNat

end

end A012361.P13399044370104425476

/-!
# A012363: arctanh(tan(x)*exp(x))=x+2/2!*x^2+7/3!*x^3+36/4!*x^4+285/5!*x^5...

The programs for A012363, there is no canonical definition to state claims against.
-/

/-! ## A012363.P11384862239753226174

`Δ[A241086(A289004(n))]`
-/

namespace A012363.P11384862239753226174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 (A289004 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A012363.P11384862239753226174

/-! ## A012363.P6477193230769245560

`A012712(A214815(n)+n)`
-/

namespace A012363.P6477193230769245560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012712 (A214815 n + (n : ℤ)).toNat

end

end A012363.P6477193230769245560

/-!
# A012364: E.g.f.: sec(tan(x)*exp(x))=1+1/2!*x^2+6/3!*x^3+37/4!*x^4+260/5!*x^5...

The programs for A012364, there is no canonical definition to state claims against.
-/

/-! ## A012364.P5458153939167527833

`A088312(n)+A005872(A260278(n+1))`
-/

namespace A012364.P5458153939167527833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088312 n + A005872 (A260278 (n + 1)).toNat

end

end A012364.P5458153939167527833

/-!
# A012373: sec(tan(x)*sin(x))=1+12/4!*x^4+120/6!*x^6+12432/8!*x^8...

The programs for A012373, there is no canonical definition to state claims against.
-/

/-! ## A012373.P12630336667147939715

`A112049(A079853(n+1))*A356968(2*n)`
-/

namespace A012373.P12630336667147939715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (A079853 (n + 1)).toNat * A356968 (2 * n)

end

end A012373.P12630336667147939715

/-!
# A012378: tan(tan(x)*arcsin(x))=2/2!*x^2+12/4!*x^4+430/6!*x^6+26040/8!*x^8...

The programs for A012378, there is no canonical definition to state claims against.
-/

/-! ## A012378.P3186128399035427980

`A300234(A012383(n)+1)`
-/

namespace A012378.P3186128399035427980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300234 (A012383 n + 1).toNat

end

end A012378.P3186128399035427980

/-!
# A012379: Expansion of e.g.f. cos(tan(x)*arcsin(x)) (even powers only).

The programs for A012379, there is no canonical definition to state claims against.
-/

/-! ## A012379.P17943137421581785901

`A009001(A012432(n))*A012424(n)`
-/

namespace A012379.P17943137421581785901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A012432 n).toNat * A012424 n

end

end A012379.P17943137421581785901

/-!
# A012380: sinh(tan(x)*arcsin(x))=2/2!*x^2+12/4!*x^4+310/6!*x^6+15960/8!*x^8...

The programs for A012380, there is no canonical definition to state claims against.
-/

/-! ## A012380.P6787328666349964071

`A012375(n+1)-A012384(n+1)`
-/

namespace A012380.P6787328666349964071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012375 (n + 1) - A012384 (n + 1)

end

end A012380.P6787328666349964071

/-!
# A012384: Expansion of e.g.f. cosh(tan(x)*arcsin(x)) (only even powers).

The programs for A012384, there is no canonical definition to state claims against.
-/

/-! ## A012384.P7631957544825881339

`∑{d}[A012429(n), A000010(#)]`
-/

namespace A012384.P7631957544825881339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A012384.P7631957544825881339

/-!
# A012385: Expansion of e.g.f. sec(tan(x)*arcsin(x)) (only even powers).

The programs for A012385, there is no canonical definition to state claims against.
-/

/-! ## A012385.P840571305381787619

`∑{d}[A012430(n), A000010(#)]`
-/

namespace A012385.P840571305381787619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A012385.P840571305381787619

/-!
# A012386: Expansion of e.g.f. sech(tan(x)*arcsin(x)) (only even powers).

The programs for A012386, there is no canonical definition to state claims against.
-/

/-! ## A012386.P4170469612666857848

`-A038608(abs(A012431(n)))`
-/

namespace A012386.P4170469612666857848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A038608 |A012431 n|.toNat

end

end A012386.P4170469612666857848

/-!
# A012393: Expansion of e.g.f. arctanh(tan(x)*tan(x)) (even powers only).

The programs for A012393, there is no canonical definition to state claims against.
-/

/-! ## A012393.P6494326196889333651

`record[n%2*A000831(n)]`
-/

namespace A012393.P6494326196889333651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A000831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012393.P6494326196889333651

/-! ## A012393.P4555560802856343952

`(2^(n-1))²*A012509(n)`
-/

namespace A012393.P4555560802856343952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2 * (A012509 n : ℚ)

end

end A012393.P4555560802856343952

/-! ## A012393.P5092496594209599189

`record[A000035(n)*A000831(n)]`
-/

namespace A012393.P5092496594209599189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A000831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012393.P5092496594209599189

/-! ## A012393.P440208536005960857

`record[A000079(n)*A009386(n)]`
-/

namespace A012393.P440208536005960857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A009386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012393.P440208536005960857

/-! ## A012393.P14927392116249170171

`record[lcm(A000831(n), A010673(n))]`
-/

namespace A012393.P14927392116249170171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000831 n) (A010673 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012393.P14927392116249170171

/-!
# A012396: Expansion of e.g.f. exp(arctan(x)*log(x+1)).

The programs for A012396, there is no canonical definition to state claims against.
-/

/-! ## A012396.P4042012854318861827

`A012405(n)+A012401(n)`
-/

namespace A012396.P4042012854318861827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012405 n + A012401 n

end

end A012396.P4042012854318861827

/-! ## A012396.P6799311371653884811

`A012405(n)+A012398(A082216(n))`
-/

namespace A012396.P6799311371653884811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012405 n + A012398 (A082216 n).toNat

end

end A012396.P6799311371653884811

/-! ## A012396.P13973293360834695616

`A012405(A029966(n+1))+A012398(n)`
-/

namespace A012396.P13973293360834695616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012405 (A029966 (n + 1)).toNat + A012398 n

end

end A012396.P13973293360834695616

/-!
# A012398: Expansion of e.g.f. arcsin(arctan(x) * log(x+1)).

The programs for A012398, there is no canonical definition to state claims against.
-/

/-! ## A012398.P14149158427500597979

`A012401(A002998(n))`
-/

namespace A012398.P14149158427500597979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012401 (A002998 n).toNat

end

end A012398.P14149158427500597979

/-! ## A012398.P2676198078177825449

`A012401(A024664(n))`
-/

namespace A012398.P2676198078177825449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012401 (A024664 n).toNat

end

end A012398.P2676198078177825449

/-! ## A012398.P9138125273898366052

`A012401(A039723(n))`
-/

namespace A012398.P9138125273898366052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012401 (A039723 n).toNat

end

end A012398.P9138125273898366052

/-! ## A012398.P6569721325252515787

`A012401(A046469(n))`
-/

namespace A012398.P6569721325252515787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012401 (A046469 n).toNat

end

end A012398.P6569721325252515787

/-! ## A012398.P4096339320129516844

`A012401(A082216(n))`
-/

namespace A012398.P4096339320129516844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012401 (A082216 n).toNat

end

end A012398.P4096339320129516844

